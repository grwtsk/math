import FormalResearch.MathematicalTooling.Semantics.Atlas.Obstruction
import Mathlib.Tactic.FinCases
import Mathlib.Data.Fin.VecNotation

/-! # Executable target quotient, collision, and refinement examples -/

namespace FormalResearch.MathematicalTooling.Semantics.Atlas.TargetFixtures

/-- Two papers may print the same symbol without sharing occurrence identity. -/
abbrev occurrences : OccurrenceUniverse where
  size := 2
  identity := ![⟨"source-a", "D"⟩, ⟨"source-b", "D"⟩]
  unique := by decide

theorem same_local_name_distinct_occurrences :
    (occurrences.identity 0).localId = (occurrences.identity 1).localId ∧
      occurrences.identity 0 ≠ occurrences.identity 1 := by decide

/-- Two heterogeneous targets observe parity in different codomains. -/
abbrev parityTargets : TargetFamily (Fin 4) where
  count := 2
  Value := fun i => if i.val = 0 then Bool else ℕ
  valueEquality := by
    intro i
    split <;> infer_instance
  value := by
    intro i x
    split
    · exact x.val % 2 == 0
    · exact x.val % 2

theorem parity_quotient_exact (x y : Fin 4) :
    targetClass parityTargets x = targetClass parityTargets y ↔ x.val % 2 = y.val % 2 := by
  rw [target_class_eq_iff]
  constructor
  · intro same
    exact same 1
  · intro same i
    fin_cases i
    · change (x.val % 2 == 0) = (y.val % 2 == 0)
      rw [same]
    · exact same

theorem quotient_merges_invisible_pair :
    targetClass parityTargets 0 = targetClass parityTargets 2 :=
  (parity_quotient_exact 0 2).mpr rfl

theorem quotient_retains_required_distinction :
    targetClass parityTargets 0 ≠ targetClass parityTargets 1 := by
  intro same
  have impossible := (parity_quotient_exact 0 1).mp same
  contradiction

/-- The proposed over-coarse coordinate sees nothing. -/
def coarse : Coordinate (Fin 4) where
  relation := ⊤
  relationDecidable := fun _ _ => isTrue trivial

/-- This particular pair is a proof-carrying counterexample, not a search failure. -/
def parityCollision : AtlasObstruction parityTargets coarse where
  target := 1
  collision := ⟨0, 1, Quotient.sound trivial, by change (0 : ℕ) ≠ 1; decide⟩

theorem coarse_cannot_recover_parity :
    ¬ RecoverableFrom coarse.observe (parityTargets.value 1) :=
  obstruction_requires_refinement parityCollision

theorem exhaustive_check_rejects_collision :
    (inspectCoordinate parityTargets coarse).tag = .provedObstructed := by decide

theorem exhaustive_check_certifies_target_coordinate :
    (inspectCoordinate parityTargets (targetCoordinate parityTargets)).tag = .provedSafe := by
  decide

theorem target_coordinate_refines_coarse :
    Refines (targetCoordinate parityTargets) coarse := fun _ _ _ => trivial

/-- Adding the missing parity distinction gives an actual decoder. -/
theorem refinement_restores_recoverability :
    RecoverableFrom (targetCoordinate parityTargets).observe (parityTargets.value 1) :=
  targetQuotient_targets_recoverable parityTargets 1

theorem refined_coordinate_family_separates :
    TargetSeparating parityTargets ![coarse, targetCoordinate parityTargets] := by
  intro i x y different
  refine ⟨1, ?_⟩
  intro same
  exact different (same i)

end FormalResearch.MathematicalTooling.Semantics.Atlas.TargetFixtures
