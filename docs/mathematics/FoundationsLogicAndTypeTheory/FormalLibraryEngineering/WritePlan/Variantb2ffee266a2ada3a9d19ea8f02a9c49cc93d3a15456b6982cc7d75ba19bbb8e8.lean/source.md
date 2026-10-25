# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.WritePlan.Variantb2ffee266a2ada3a9d19ea8f02a9c49cc93d3a15456b6982cc7d75ba19bbb8e8

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `14ba657a531a94889a27686b13e57194b3e532ed` · SHA-256 `b2ffee266a2ada3a9d19ea8f02a9c49cc93d3a15456b6982cc7d75ba19bbb8e8`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Folder.Basic

/-!
# Folder.Morphism.Effect.WritePlan

Radiation role: topology-sheaf
BinaryMatrix spine: This module supplies topology, sheaf, morphism, or descent infrastructure around the BinaryMatrix-centered program.
Ontology: morphism.effect.write_plan
Pivot role: none
Zero typology: none
Contract boundary: definition
Composite stack role: infrastructure
-/


namespace Folder
namespace Morphism
namespace Effect

structure WriteTarget where
  path : String
  payload : String
deriving DecidableEq, Repr

def CompatibleTargets (a b : WriteTarget) : Prop :=
  a.path = b.path → a.payload = b.payload

def PairwiseCompatible (targets : List WriteTarget) : Prop :=
  ∀ a, a ∈ targets → ∀ b, b ∈ targets → CompatibleTargets a b

structure WriteConflict where
  path : String
  leftPayload : String
  rightPayload : String
deriving Repr, DecidableEq

structure RawWritePlan where
  targets : List WriteTarget
  initial : String → Option String

structure WritePlan where
  targets : List WriteTarget
  compatible : PairwiseCompatible targets
  initial : String → Option String

def FileState := String → Option String

noncomputable def declaredTarget? (P : WritePlan) (path : String) :
    Option {t : WriteTarget // t ∈ P.targets ∧ t.path = path} :=
  if h : ∃ t : WriteTarget, t ∈ P.targets ∧ t.path = path then
    some ⟨Classical.choose h, Classical.choose_spec h⟩
  else
    none

noncomputable def apply (P : WritePlan) : FileState :=
  fun path =>
    match declaredTarget? P path with
    | some t => some t.1.payload
    | none => P.initial path

noncomputable def safeApply (P : WritePlan) : FileState :=
  apply P

def hasConflictWith (a : WriteTarget) (targets : List WriteTarget) : Option WriteConflict :=
  match targets with
  | [] => none
  | b :: rest =>
      if a.path = b.path then
        if a.payload = b.payload then
          hasConflictWith a rest
        else
          some ⟨a.path, a.payload, b.payload⟩
      else
        hasConflictWith a rest

def firstConflict : List WriteTarget → Option WriteConflict
  | [] => none
  | a :: rest =>
      match hasConflictWith a rest with
      | some c => some c
      | none => firstConflict rest

private theorem compatibleTargets_symm {a b : WriteTarget}
    (h : CompatibleTargets a b) : CompatibleTargets b a := by
  intro hpath
  exact (h hpath.symm).symm

private theorem compatible_self (a : WriteTarget) :
    CompatibleTargets a a := by
  intro _
  rfl

theorem hasConflictWith_eq_none_iff
    (a : WriteTarget)
    (targets : List WriteTarget) :
    hasConflictWith a targets = none ↔
      ∀ b, b ∈ targets → CompatibleTargets a b := by
  induction targets with
  | nil =>
      simp [hasConflictWith]
  | cons b rest ih =>
      by_cases hpath : a.path = b.path
      · by_cases hpayload : a.payload = b.payload
        · simp [hasConflictWith, hpath, hpayload, ih, CompatibleTargets]
        · simp [hasConflictWith, hpath, hpayload, CompatibleTargets]
      · simp [hasConflictWith, hpath, ih, CompatibleTargets]

private theorem pairwise_cons_iff
    (a : WriteTarget)
    (rest : List WriteTarget) :
    PairwiseCompatible (a :: rest) ↔
      (∀ b, b ∈ rest → CompatibleTargets a b) ∧
        PairwiseCompatible rest := by
  constructor
  · intro h
    constructor
    · intro b hb
      exact h a (by simp) b (by simp [hb])
    · intro b hb c hc
      exact h b (by simp [hb]) c (by simp [hc])
  · intro h
    rcases h with ⟨ha, hrest⟩
    intro b hb c hc
    simp only [List.mem_cons] at hb hc
    rcases hb with hb_eq | hb_rest
    · subst b
      rcases hc with hc_eq | hc_rest
      · subst c
        exact compatible_self a
      · exact ha c hc_rest
    · rcases hc with hc_eq | hc_rest
      · subst c
        exact compatibleTargets_symm (ha b hb_rest)
      · exact hrest b hb_rest c hc_rest

theorem firstConflict_eq_none_iff
    (targets : List WriteTarget) :
    firstConflict targets = none ↔ PairwiseCompatible targets := by
  induction targets with
  | nil =>
      simp [firstConflict, PairwiseCompatible]
  | cons a rest ih =>
      constructor
      · intro hfc
        unfold firstConflict at hfc
        cases hconf : hasConflictWith a rest with
        | none =>
            simp [hconf] at hfc
            exact (pairwise_cons_iff a rest).mpr
              ⟨(hasConflictWith_eq_none_iff a rest).mp hconf, ih.mp hfc⟩
        | some c =>
            simp [hconf] at hfc
      · intro hp
        have ha : ∀ b, b ∈ rest → CompatibleTargets a b :=
          (pairwise_cons_iff a rest).mp hp |>.1
        have hrest : PairwiseCompatible rest :=
          (pairwise_cons_iff a rest).mp hp |>.2
        have hconf : hasConflictWith a rest = none :=
          (hasConflictWith_eq_none_iff a rest).mpr ha
        have hfc_rest : firstConflict rest = none := ih.mpr hrest
        unfold firstConflict
        rw [hconf, hfc_rest]

def validate (raw : RawWritePlan) :
    Except WriteConflict WritePlan :=
  match h : firstConflict raw.targets with
  | none =>
      Except.ok
        { targets := raw.targets
          initial := raw.initial
          compatible := (firstConflict_eq_none_iff raw.targets).mp h }
  | some c =>
      Except.error c

theorem no_conflicting_duplicates
    (P : WritePlan)
    {a b : WriteTarget}
    (ha : a ∈ P.targets)
    (hb : b ∈ P.targets)
    (hpath : a.path = b.path) :
    a.payload = b.payload :=
  P.compatible a ha b hb hpath

theorem apply_deterministic
    (P : WritePlan) :
    safeApply P = apply P :=
  rfl

theorem safe_apply_preserves_unmentioned_files
    (P : WritePlan)
    (path : String)
    (h : ¬ ∃ t : WriteTarget, t ∈ P.targets ∧ t.path = path) :
    safeApply P path = P.initial path := by
  unfold safeApply apply declaredTarget?
  simp [h]

theorem safe_apply_writes_declared_payloads
    (P : WritePlan)
    {t : WriteTarget}
    (ht : t ∈ P.targets) :
    safeApply P t.path = some t.payload := by
  unfold safeApply apply declaredTarget?
  have h : ∃ u : WriteTarget, u ∈ P.targets ∧ u.path = t.path :=
    ⟨t, ht, rfl⟩
  simp [h]
  let u := Classical.choose h
  have hu := Classical.choose_spec h
  have hp : u.payload = t.payload :=
    P.compatible u hu.1 t ht hu.2
  change u.payload = t.payload
  exact hp

end Effect
end Morphism
end Folder
```
