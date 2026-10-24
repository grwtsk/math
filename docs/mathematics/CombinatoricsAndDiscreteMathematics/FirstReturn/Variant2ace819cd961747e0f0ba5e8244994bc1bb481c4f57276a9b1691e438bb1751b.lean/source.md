# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.FirstReturn.Variant2ace819cd961747e0f0ba5e8244994bc1bb481c4f57276a9b1691e438bb1751b

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `17db2565bdef52ae10964e870a60c8aedb5c7473` · SHA-256 `fc0424478d667d1f82cd1a92b50a85b8c5ad4db29dd4ba2ce2e4ea0536cef51b`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.ReturnAt.Variant1957bfffc2c969e39772325346a527b8bfd8a5a94b854bbea360ff91abc28fb6","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"1957bfffc2c969e39772325346a527b8bfd8a5a94b854bbea360ff91abc28fb6","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Combinatorics.FiniteCombinatorics.SourceCorpus.ReturnAt.Variant1957bfffc2c969e39772325346a527b8bfd8a5a94b854bbea360ff91abc28fb6","mathematical_subject":"Combinatorics.FiniteCombinatorics","original_sha256":"1957bfffc2c969e39772325346a527b8bfd8a5a94b854bbea360ff91abc28fb6","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/TestProject/DAF/FiniteDynamics/FirstReturn.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Mathlib.Dynamics.PeriodicPts.Lemmas
import Mathlib.Data.Finset.Order

/-!
# DAF first return of a finite permutation

An ambient permutation need not preserve a chosen predicate at every step.
Nevertheless, on a finite type every valid point eventually returns to itself,
and hence to the valid subset.  Advancing to the least positive valid return
defines a permutation of the valid subtype.

The inverse theorem below is genuinely a first-return argument.  It compares
the least forward and backward return times: a shorter backward return would
produce a valid point strictly between the starting point and its first
forward return.  Thus the backward first-return map, rather than an unrelated
finite-cardinality inverse, supplies the inverse permutation.

The logical definition uses classical least choice.  A separate executable
definition searches the bounded interval through `Fintype.card α` and is
proved extensionally equal to the logical construction.
-/


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.ReturnAt.Variant1957bfffc2c969e39772325346a527b8bfd8a5a94b854bbea360ff91abc28fb6

namespace FirstReturn

universe u

variable {α : Type u}
variable [Fintype α] [DecidableEq α]

/-- A positive iterate of `x` lands in the selected valid subset. -/
def ReturnAt
    (P : Equiv.Perm α)
    (Valid : α → Prop)
    (x : α)
    (t : Nat) : Prop :=
  0 < t ∧ Valid ((P ^ t) x)

/-- The subtype selected by `Valid`. -/
abbrev ValidState (Valid : α → Prop) :=
  {x : α // Valid x}

/-- Every valid point of a finite permutation has a positive valid return. -/
theorem exists_return
    (P : Equiv.Perm α)
    (Valid : α → Prop)
    (x : ValidState Valid) :
    ∃ t, ReturnAt P Valid x.1 t := by
  let t := Function.minimalPeriod P x.1
  have hmem : x.1 ∈ Function.periodicPts P :=
    P.injective.mem_periodicPts x.1
  have ht : 0 < t :=
    Function.minimalPeriod_pos_of_mem_periodicPts hmem
  have hperiod : Function.IsPeriodicPt P t x.1 :=
    Function.isPeriodicPt_minimalPeriod P x.1
  refine ⟨t, ht, ?_⟩
  have hfixed : (P ^ t) x.1 = x.1 := by
    change (⇑P)^[t] x.1 = x.1
    exact hperiod
  simpa [hfixed] using x.2

/-- The least positive iterate of `x` that satisfies `Valid`. -/
noncomputable def firstReturnTime
    (P : Equiv.Perm α)
    (Valid : α → Prop)
    (x : ValidState Valid) : Nat := by
  classical
  exact Nat.find (exists_return P Valid x)

/-- The first-return time is positive. -/
theorem firstReturnTime_pos
    (P : Equiv.Perm α)
    (Valid : α → Prop)
    (x : ValidState Valid) :
    0 < firstReturnTime P Valid x := by
  classical
  exact (Nat.find_spec (exists_return P Valid x)).1

/-- The first-return iterate belongs to the valid subset. -/
theorem firstReturnTime_returns
    (P : Equiv.Perm α)
    (Valid : α → Prop)
    (x : ValidState Valid) :
    Valid ((P ^ firstReturnTime P Valid x) x.1) := by
  classical
  exact (Nat.find_spec (exists_return P Valid x)).2

/-- No earlier positive iterate belongs to the valid subset. -/
theorem firstReturnTime_minimal
    (P : Equiv.Perm α)
    (Valid : α → Prop)
    (x : ValidState Valid)
    {d : Nat}
    (hd : 0 < d)
    (hlt : d < firstReturnTime P Valid x) :
    ¬ Valid ((P ^ d) x.1) := by
  classical
  exact fun hvalid =>
    Nat.find_min (exists_return P Valid x) hlt ⟨hd, hvalid⟩

/-- Any positive valid return bounds the least return time. -/
theorem firstReturnTime_le_of_return
    (P : Equiv.Perm α)
    (Valid : α → Prop)
    (x : ValidState Valid)
    {t : Nat}
    (ht : ReturnAt P Valid x.1 t) :
    firstReturnTime P Valid x ≤ t := by
  classical
  exact Nat.find_min' (exists_return P Valid x) ht

/-- Returning to the starting point bounds first return by minimal period. -/
theorem firstReturnTime_le_minimalPeriod
    (P : Equiv.Perm α)
    (Valid : α → Prop)
    (x : ValidState Valid) :
    firstReturnTime P Valid x ≤ Function.minimalPeriod P x.1 := by
  apply firstReturnTime_le_of_return P Valid x
  have hmem : x.1 ∈ Function.periodicPts P :=
    P.injective.mem_periodicPts x.1
  have hpos := Function.minimalPeriod_pos_of_mem_periodicPts hmem
  have hperiod := Function.isPeriodicPt_minimalPeriod P x.1
  refine ⟨hpos, ?_⟩
  have hfixed : (P ^ Function.minimalPeriod P x.1) x.1 = x.1 := by
    change (⇑P)^[Function.minimalPeriod P x.1] x.1 = x.1
    exact hperiod
  simpa [hfixed] using x.2

/-- First return occurs within the cardinality of the finite ambient type. -/
theorem firstReturnTime_le_card
    (P : Equiv.Perm α)
    (Valid : α → Prop)
    (x : ValidState Valid) :
    firstReturnTime P Valid x ≤ Fintype.card α :=
  (firstReturnTime_le_minimalPeriod P Valid x).trans
    Function.minimalPeriod_le_card

/-- Advance a valid point to its least positive valid return. -/
noncomputable def firstReturn
    (P : Equiv.Perm α)
    (Valid : α → Prop)
    (x : ValidState Valid) :
    ValidState Valid :=
  ⟨(P ^ firstReturnTime P Valid x) x.1,
    firstReturnTime_returns P Valid x⟩

@[simp]
theorem firstReturn_val
    (P : Equiv.Perm α)
    (Valid : α → Prop)
    (x : ValidState Valid) :
    (firstReturn P Valid x).1 =
      (P ^ firstReturnTime P Valid x) x.1 :=
  rfl

/-- The backward first return uses the inverse ambient permutation. -/
noncomputable def previousReturn
    (P : Equiv.Perm α)
    (Valid : α → Prop) :
    ValidState Valid → ValidState Valid :=
  firstReturn P.symm Valid

private theorem symm_pow_apply_pow_apply_of_le
    (P : Equiv.Perm α)
    (x : α)
    {a b : Nat}
    (hba : b ≤ a) :
    (P.symm ^ b) ((P ^ a) x) = (P ^ (a - b)) x := by
  change (P⁻¹ ^ b) ((P ^ a) x) = _
  rw [← Equiv.Perm.mul_apply]
  congr 1
  rw [show a = b + (a - b) by omega, pow_add]
  simp

private theorem symm_pow_apply_pow_apply
    (P : Equiv.Perm α)
    (x : α)
    (a : Nat) :
    (P.symm ^ a) ((P ^ a) x) = x := by
  change (P⁻¹ ^ a) ((P ^ a) x) = x
  rw [← Equiv.Perm.mul_apply]
  simp

/-- Backward first return undoes forward first return. -/
theorem previousReturn_firstReturn
    (P : Equiv.Perm α)
    (Valid : α → Prop)
    (x : ValidState Valid) :
    previousReturn P Valid (firstReturn P Valid x) = x := by
  let a := firstReturnTime P Valid x
  let y := firstReturn P Valid x
  let b := firstReturnTime P.symm Valid y
  have ha : 0 < a := firstReturnTime_pos P Valid x
  have hbackAtA : ReturnAt P.symm Valid y.1 a := by
    refine ⟨ha, ?_⟩
    change Valid ((P.symm ^ a) ((P ^ a) x.1))
    rw [symm_pow_apply_pow_apply]
    exact x.2
  have hba : b ≤ a :=
    firstReturnTime_le_of_return P.symm Valid y hbackAtA
  have hab : a ≤ b := by
    by_contra hnot
    have hlt : b < a := Nat.lt_of_not_ge hnot
    have hpos : 0 < a - b := Nat.sub_pos_of_lt hlt
    have hshort : a - b < a := Nat.sub_lt ha (firstReturnTime_pos P.symm Valid y)
    apply firstReturnTime_minimal P Valid x hpos hshort
    have hvalid := firstReturnTime_returns P.symm Valid y
    change Valid ((P.symm ^ b) ((P ^ a) x.1)) at hvalid
    rwa [symm_pow_apply_pow_apply_of_le P x.1 hba] at hvalid
  have hab_eq : a = b := Nat.le_antisymm hab hba
  apply Subtype.ext
  change (P.symm ^ b) ((P ^ a) x.1) = x.1
  rw [← hab_eq, symm_pow_apply_pow_apply]

/-- Forward first return undoes backward first return. -/
theorem firstReturn_previousReturn
    (P : Equiv.Perm α)
    (Valid : α → Prop)
    (x : ValidState Valid) :
    firstReturn P Valid (previousReturn P Valid x) = x := by
  simpa [previousReturn] using
    (previousReturn_firstReturn P.symm Valid x)

/-- First return bundled as a permutation of the valid subtype. -/
noncomputable def firstReturnPerm
    (P : Equiv.Perm α)
    (Valid : α → Prop) :
    Equiv.Perm (ValidState Valid) where
  toFun := firstReturn P Valid
  invFun := previousReturn P Valid
  left_inv := previousReturn_firstReturn P Valid
  right_inv := firstReturn_previousReturn P Valid

@[simp]
theorem firstReturnPerm_apply_val
    (P : Equiv.Perm α)
    (Valid : α → Prop)
    (x : ValidState Valid) :
    (firstReturnPerm P Valid x).1 =
      (P ^ firstReturnTime P Valid x) x.1 :=
  rfl

/-- The bundled first-return map is bijective. -/
theorem firstReturnPerm_bijective
    (P : Equiv.Perm α)
    (Valid : α → Prop) :
    Function.Bijective (firstReturnPerm P Valid) :=
  (firstReturnPerm P Valid).bijective

@[simp]
theorem firstReturnPerm_symm
    (P : Equiv.Perm α)
    (Valid : α → Prop) :
    (firstReturnPerm P Valid).symm = firstReturnPerm P.symm Valid := by
  ext x
  rfl

/-! ## Invariant subsets -/

/-- Ordinary restriction of an ambient permutation to an invariant subtype. -/
def invariantRestriction
    (P : Equiv.Perm α)
    (Valid : α → Prop)
    (hInvariant : ∀ x, Valid (P x) ↔ Valid x) :
    Equiv.Perm (ValidState Valid) where
  toFun x := ⟨P x.1, (hInvariant x.1).2 x.2⟩
  invFun x := ⟨P.symm x.1, by
    apply (hInvariant (P.symm x.1)).1
    simpa using x.2⟩
  left_inv x := by ext; simp
  right_inv x := by ext; simp

/-- On an invariant subset every first-return time is exactly one. -/
theorem firstReturnTime_eq_one_of_invariant
    (P : Equiv.Perm α)
    (Valid : α → Prop)
    (hInvariant : ∀ x, Valid (P x) ↔ Valid x)
    (x : ValidState Valid) :
    firstReturnTime P Valid x = 1 := by
  have hle : firstReturnTime P Valid x ≤ 1 := by
    apply firstReturnTime_le_of_return P Valid x
    refine ⟨by omega, ?_⟩
    simpa using (hInvariant x.1).2 x.2
  have hpos := firstReturnTime_pos P Valid x
  omega

/-- For an invariant subset, first return is the ordinary restriction. -/
theorem firstReturnPerm_eq_restriction
    (P : Equiv.Perm α)
    (Valid : α → Prop)
    (hInvariant : ∀ x, Valid (P x) ↔ Valid x) :
    firstReturnPerm P Valid = invariantRestriction P Valid hInvariant := by
  ext x
  rw [firstReturnPerm_apply_val,
    firstReturnTime_eq_one_of_invariant P Valid hInvariant]
  rfl

/-! ## Bounded executable refinement -/

/-- Decidability of a return test follows from decidability of the predicate. -/
instance returnAtDecidable
    (P : Equiv.Perm α)
    (Valid : α → Prop)
    [DecidablePred Valid]
    (x : α)
    (t : Nat) : Decidable (ReturnAt P Valid x t) := by
  unfold ReturnAt
  infer_instance

/-- Positive valid return times within the finite ambient cardinal bound. -/
def returnTimesWithin
    (P : Equiv.Perm α)
    (Valid : α → Prop)
    [DecidablePred Valid]
    (x : ValidState Valid) : Finset Nat :=
  (Finset.range (Fintype.card α + 1)).filter
    (ReturnAt P Valid x.1)

/-- Bounded executable search for the least positive valid return. -/
def firstReturnSearch
    (P : Equiv.Perm α)
    (Valid : α → Prop)
    [DecidablePred Valid]
    (x : ValidState Valid) : Option Nat :=
  if h : (returnTimesWithin P Valid x).Nonempty then
    some ((returnTimesWithin P Valid x).min' h)
  else
    none

private theorem firstReturnTime_mem_returnTimesWithin
    (P : Equiv.Perm α)
    (Valid : α → Prop)
    [DecidablePred Valid]
    (x : ValidState Valid) :
    firstReturnTime P Valid x ∈ returnTimesWithin P Valid x := by
  rw [returnTimesWithin, Finset.mem_filter, Finset.mem_range]
  exact ⟨Nat.lt_succ_of_le (firstReturnTime_le_card P Valid x),
    firstReturnTime_pos P Valid x,
    firstReturnTime_returns P Valid x⟩

private theorem returnTimesWithin_nonempty
    (P : Equiv.Perm α)
    (Valid : α → Prop)
    [DecidablePred Valid]
    (x : ValidState Valid) :
    (returnTimesWithin P Valid x).Nonempty :=
  ⟨firstReturnTime P Valid x,
    firstReturnTime_mem_returnTimesWithin P Valid x⟩

private theorem min_returnTimesWithin_eq
    (P : Equiv.Perm α)
    (Valid : α → Prop)
    [DecidablePred Valid]
    (x : ValidState Valid)
    (h : (returnTimesWithin P Valid x).Nonempty) :
    (returnTimesWithin P Valid x).min' h = firstReturnTime P Valid x := by
  apply (Finset.min'_eq_iff _ _ _).2
  refine ⟨firstReturnTime_mem_returnTimesWithin P Valid x, ?_⟩
  intro t ht
  exact firstReturnTime_le_of_return P Valid x
    (Finset.mem_filter.1 ht).2

/-- The bounded search always succeeds. -/
theorem firstReturnSearch_ne_none
    (P : Equiv.Perm α)
    (Valid : α → Prop)
    [DecidablePred Valid]
    (x : ValidState Valid) :
    firstReturnSearch P Valid x ≠ none := by
  simp [firstReturnSearch, returnTimesWithin_nonempty P Valid x]

/-- Bounded search computes the declarative least return time. -/
theorem firstReturnSearch_eq_firstReturnTime
    (P : Equiv.Perm α)
    (Valid : α → Prop)
    [DecidablePred Valid]
    (x : ValidState Valid) :
    firstReturnSearch P Valid x = some (firstReturnTime P Valid x) := by
  rw [firstReturnSearch]
  split
  next h => rw [min_returnTimesWithin_eq P Valid x h]
  next h => exact False.elim (h (returnTimesWithin_nonempty P Valid x))

/-- Fully bounded executable first-return map. -/
def firstReturnExec
    (P : Equiv.Perm α)
    (Valid : α → Prop)
    [DecidablePred Valid]
    (x : ValidState Valid) : ValidState Valid :=
  if h : (returnTimesWithin P Valid x).Nonempty then
    ⟨(P ^ (returnTimesWithin P Valid x).min' h) x.1,
      (Finset.mem_filter.1
        ((returnTimesWithin P Valid x).min'_mem h)).2.2⟩
  else
    x

/-- Executable bounded search refines the declarative first-return map. -/
theorem firstReturnExec_refines
    (P : Equiv.Perm α)
    (Valid : α → Prop)
    [DecidablePred Valid]
    (x : ValidState Valid) :
    firstReturnExec P Valid x = firstReturnPerm P Valid x := by
  rw [firstReturnExec]
  split
  next h =>
    apply Subtype.ext
    change (P ^ (returnTimesWithin P Valid x).min' h) x.1 =
      (P ^ firstReturnTime P Valid x) x.1
    rw [min_returnTimesWithin_eq P Valid x h]
  next h => exact False.elim (h (returnTimesWithin_nonempty P Valid x))

end FirstReturn
```
