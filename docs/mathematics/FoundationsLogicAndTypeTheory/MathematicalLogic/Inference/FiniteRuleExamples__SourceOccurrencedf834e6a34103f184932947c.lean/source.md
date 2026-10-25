# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.Inference.FiniteRuleExamples

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `32e1ca278b5e3701c267c65bc4b51db53717039c` · SHA-256 `f8142c4306c4770b4c44e7963011de6008db1dd6ae8808b6794860275969c3cb`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/- Copyright (c) 2026 grwtsk contributors. MIT.
Human mathematical direction: grwtsk contributors. Formalization assistance: OpenAI Codex.
Mathlib results retain their upstream authorship and Apache-2.0 license. -/
import GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.Inference.FiniteRuleSystems

/-!
# Grounded and cyclic finite-rule examples

Conditional cycles supply no ground proof. An independent current provider can
survive the loss of another route, while a whole-claim withdrawal excludes all
of its routes. These are exact finite mathematical models, not runtime tests or
source-specific arithmetic estimates.

Human mathematical direction: grwtsk contributors.
Formal implementation: OpenAI Codex.
-/

namespace GRWTSK.ProofHorizon.CorkscrewChamberCap.AlternativeFixtures

/-- Two conditional routes form a cycle, with neither route grounded. -/
def cycleRoutes (provider : Bool) : ProofRoute Bool where
  conclusion := provider
  premises := {!provider}

/-- The supplied rules are honest implications of false targets, never proofs of falsehood. -/
def falseCycleProviders (provider : Bool) :
    CertifiedProofRoute Unit ℕ Bool (fun _ _ ↦ False) where
  route := cycleRoutes provider
  certificate := {
    recorded := fun _ ↦ 0
    reads := ∅
    proved := fun premises ↦ premises (!provider) (by simp [cycleRoutes])
    locality := fun _ _ _ proved ↦ proved }

/-- All cyclic rule certificates are fresh, but no claim is grounded. -/
theorem false_cycle_rules_eligible (snapshot : SourceSnapshot Unit ℕ) :
    eligibleProviders falseCycleProviders Finset.univ ∅ ∅ snapshot = Finset.univ := by
  ext provider
  simp [eligibleProviders, falseCycleProviders, RevisionCertificate.Fresh, SnapshotAgreesOn]

theorem false_cycle_support_empty :
    supportedClaims cycleRoutes Finset.univ = ∅ := by
  apply supportedClaims_empty_of_no_ground
  intro provider _
  exact ⟨!provider, by simp [cycleRoutes]⟩

/-- Greatest/self-supported closure would admit the whole cycle despite no grounding. -/
theorem false_cycle_self_closed_but_not_grounded :
    supportStep cycleRoutes Finset.univ Finset.univ = Finset.univ ∧
      supportedClaims cycleRoutes Finset.univ = ∅ := by
  constructor
  · apply (supportStep_eq_iff_closed _ _ _).mpr
    intro provider _ _
    exact Finset.mem_univ provider
  · exact false_cycle_support_empty

/-- Even fresh cyclic conditional evidence yields no terminal false target. -/
theorem false_cycle_cannot_supply_target (snapshot : SourceSnapshot Unit ℕ) (claim : Bool) :
    claim ∉ supportedClaims (fun provider ↦ (falseCycleProviders provider).route)
      (eligibleProviders falseCycleProviders Finset.univ ∅ ∅ snapshot) := by
  intro supported
  exact certified_supported_target falseCycleProviders Finset.univ ∅ ∅ snapshot claim supported

/-- Two independent providers prove one claim; only the first declares a mutable read. -/
def alternateProviders (provider : Bool) :
    CertifiedProofRoute Unit ℕ Bool (fun _ _ ↦ True) where
  route := { conclusion := false, premises := ∅ }
  certificate := {
    recorded := fun _ ↦ 0
    reads := if provider then {()} else ∅
    proved := fun _ ↦ True.intro
    locality := fun _ _ _ _ _ ↦ True.intro }

/-- A changed declared read rejects one provider, without invalidating its alternative. -/
theorem stale_primary_fresh_alternative :
    true ∉ eligibleProviders alternateProviders Finset.univ ∅ ∅ (fun _ ↦ 1) ∧
      false ∈ eligibleProviders alternateProviders Finset.univ ∅ ∅ (fun _ ↦ 1) := by
  simp [eligibleProviders, alternateProviders, RevisionCertificate.Fresh, SnapshotAgreesOn]

theorem alternate_route_survives_changed_read :
    false ∈ supportedClaims (fun provider ↦ (alternateProviders provider).route)
      (eligibleProviders alternateProviders Finset.univ ∅ ∅ (fun _ ↦ 1)) := by
  apply (mem_supportedClaims_iff _ _ false).mpr
  apply GroundedSupport.via false stale_primary_fresh_alternative.2
  intro prerequisite member
  exact False.elim (Finset.notMem_empty prerequisite member)

/-- Withdrawing a provider alone leaves the independent proof route available. -/
theorem alternate_route_survives_provider_withdrawal :
    false ∈ supportedClaims (fun provider ↦ (alternateProviders provider).route)
      (eligibleProviders alternateProviders Finset.univ {true} ∅ (fun _ ↦ 0)) := by
  apply (mem_supportedClaims_iff _ _ false).mpr
  apply GroundedSupport.via false
  · simp [eligibleProviders, alternateProviders, RevisionCertificate.Fresh, SnapshotAgreesOn]
  · intro prerequisite member
    exact False.elim (Finset.notMem_empty prerequisite member)

/-- Withdrawing the conclusion blocks every otherwise eligible alternative. -/
theorem whole_claim_withdrawal_blocks_alternatives :
    false ∉ supportedClaims (fun provider ↦ (alternateProviders provider).route)
      (eligibleProviders alternateProviders Finset.univ ∅ {false} (fun _ ↦ 0)) := by
  intro supported
  exact certified_supported_not_withdrawn alternateProviders Finset.univ ∅ {false}
    (fun _ ↦ 0) false supported (by simp)

/-- A ground route supports the first claim; two additional routes form its cycle. -/
def groundedCycleRoutes (provider : Fin 3) : ProofRoute Bool where
  conclusion := if provider = 1 then true else false
  premises := if provider = 0 then ∅ else if provider = 1 then {false} else {true}

def groundedCycleProviders (provider : Fin 3) :
    CertifiedProofRoute Unit ℕ Bool (fun _ _ ↦ True) where
  route := groundedCycleRoutes provider
  certificate := {
    recorded := fun _ ↦ 0
    reads := if provider = 0 then {()} else ∅
    proved := fun _ ↦ True.intro
    locality := fun _ _ _ _ _ ↦ True.intro }

theorem grounded_cycle_supported_before_change :
    true ∈ supportedClaims (fun provider ↦ (groundedCycleProviders provider).route)
      (eligibleProviders groundedCycleProviders Finset.univ ∅ ∅ (fun _ ↦ 0)) := by
  apply (mem_supportedClaims_iff _ _ true).mpr
  have ground : GroundedSupport (fun provider ↦ (groundedCycleProviders provider).route)
      (eligibleProviders groundedCycleProviders Finset.univ ∅ ∅ (fun _ ↦ 0)) false := by
    apply GroundedSupport.via 0
    · simp [eligibleProviders, groundedCycleProviders, RevisionCertificate.Fresh, SnapshotAgreesOn]
    · intro prerequisite member
      simp [groundedCycleProviders, groundedCycleRoutes] at member
  apply GroundedSupport.via 1
  · simp [eligibleProviders, groundedCycleProviders, RevisionCertificate.Fresh, SnapshotAgreesOn]
  · intro prerequisite member
    have equal : prerequisite = false := by
      simpa [groundedCycleProviders, groundedCycleRoutes] using member
    simpa only [equal] using ground

/-- When the sole grounding route becomes stale, fresh cyclic rules do not rescue it. -/
theorem grounded_cycle_empty_after_ground_loss :
    supportedClaims (fun provider ↦ (groundedCycleProviders provider).route)
      (eligibleProviders groundedCycleProviders Finset.univ ∅ ∅ (fun _ ↦ 1)) = ∅ := by
  apply supportedClaims_empty_of_no_ground
  intro provider admitted
  have notGround : provider ≠ 0 := by
    intro equal
    subst provider
    simp [eligibleProviders, groundedCycleProviders, RevisionCertificate.Fresh,
      SnapshotAgreesOn] at admitted
  simp only [groundedCycleProviders, groundedCycleRoutes, notGround, ↓reduceIte]
  split_ifs <;> simp

/-- Independent routes can carry different reads for an actually source-dependent target. -/
def sourceDependentAlternates (provider : Bool) :
    CertifiedProofRoute Bool ℕ Unit (fun snapshot _ ↦ snapshot false = 7) where
  route := { conclusion := (), premises := ∅ }
  certificate := {
    recorded := fun _ ↦ 7
    reads := if provider then {false, true} else {false}
    proved := fun _ ↦ rfl
    locality := by
      intro left right agreement proved _
      have read : false ∈ (if provider then {false, true} else {false} : Finset Bool) := by
        cases provider <;> simp
      have oldTarget := proved (fun prerequisite member ↦
        False.elim (Finset.notMem_empty prerequisite member))
      exact (agreement false read).trans oldTarget }

theorem source_dependent_alternate_returns_exact_target :
    let current : SourceSnapshot Bool ℕ := fun artifact ↦ if artifact then 9 else 7
    () ∈ supportedClaims (fun provider ↦ (sourceDependentAlternates provider).route)
      (eligibleProviders sourceDependentAlternates Finset.univ ∅ ∅ current) ∧
        current false = 7 := by
  dsimp only
  have admitted : false ∈ eligibleProviders sourceDependentAlternates Finset.univ ∅ ∅
      (fun artifact ↦ if artifact then 9 else 7) := by
    simp [eligibleProviders, sourceDependentAlternates, RevisionCertificate.Fresh,
      SnapshotAgreesOn]
  have supported : () ∈ supportedClaims
      (fun provider ↦ (sourceDependentAlternates provider).route)
      (eligibleProviders sourceDependentAlternates Finset.univ ∅ ∅
        (fun artifact ↦ if artifact then 9 else 7)) := by
    apply (mem_supportedClaims_iff _ _ ()).mpr
    apply GroundedSupport.via false admitted
    intro prerequisite member
    exact False.elim (Finset.notMem_empty prerequisite member)
  exact ⟨supported, certified_supported_target sourceDependentAlternates Finset.univ ∅ ∅
    (fun artifact ↦ if artifact then 9 else 7) () supported⟩

/-- A third claim requires both independent prerequisites. -/
def andRoutes (provider : Fin 3) : ProofRoute (Fin 3) where
  conclusion := provider
  premises := if provider = 2 then {0, 1} else ∅

theorem and_route_not_supported_with_missing_premise :
    (2 : Fin 3) ∉ supportedClaims andRoutes {0, 2} := by
  have closed : SupportClosed andRoutes {0, 2} {0} := by
    intro provider admitted premises
    rcases Finset.mem_insert.mp admitted with equal | equal
    · subst provider
      simp [andRoutes]
    · have providerTwo : provider = 2 := by simpa only [Finset.mem_singleton] using equal
      subst provider
      have missing : (1 : Fin 3) ∈ ({0} : Finset (Fin 3)) :=
        premises (by simp [andRoutes])
      simp at missing
  intro supported
  have member := supportedClaims_least andRoutes {0, 2} closed supported
  simp at member

theorem and_route_supported_with_both_premises :
    (2 : Fin 3) ∈ supportedClaims andRoutes Finset.univ := by
  apply (mem_supportedClaims_iff _ _ 2).mpr
  apply GroundedSupport.via 2 (by simp)
  intro prerequisite member
  have either : prerequisite = 0 ∨ prerequisite = 1 := by
    simpa [andRoutes] using member
  rcases either with equal | equal
  · subst prerequisite
    apply GroundedSupport.via 0 (by simp)
    intro earlier impossible
    simp [andRoutes] at impossible
  · subst prerequisite
    apply GroundedSupport.via 1 (by simp)
    intro earlier impossible
    simp [andRoutes] at impossible

end GRWTSK.ProofHorizon.CorkscrewChamberCap.AlternativeFixtures
```
