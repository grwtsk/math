-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.SetTheory
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.SetTheory.Collapse.Variant32d70689c2b13b97bd22a5071ff0dc4e05ad7a94a41a0ab6759846787d824e8d","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"32d70689c2b13b97bd22a5071ff0dc4e05ad7a94a41a0ab6759846787d824e8d","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Logic.SetTheory.SourceCorpus.Collapse.Variant32d70689c2b13b97bd22a5071ff0dc4e05ad7a94a41a0ab6759846787d824e8d","mathematical_subject":"Logic.SetTheory","original_sha256":"32d70689c2b13b97bd22a5071ff0dc4e05ad7a94a41a0ab6759846787d824e8d","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal.worktrees/type-theory-reconstruction/FormalResearch/SpectralUnificationOfComputabilityAndAlgebraicSymmetry/Model/ReconstructionControls.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.Model.DerivationSemantics
import Mathlib.SetTheory.Cardinal.Basic

/-!
# Unsupported pullback and variable-index transport controls

The constant Bool-to-Unit map has a singleton target with a two-element
preimage. All cardinal statements use universe zero. Thus an arbitrary
preimage cannot inherit a target cardinal bound without a fiber hypothesis.

The index-shift control uses the actual licensed Tag generator's variable
endpoint, original Model signature and original one-variable context. The
shift preserves constructor IDs but is not an admitted context transport:
its endpoint is invalid, its readout loses the required assignment, and the
actual equation checker rejects the resulting substitution. This is the
existing binder-free grammar, not a dependent or de Bruijn transport theorem.
Human research direction: grwtsk contributors. Implementation: OpenAI Codex.
-/


namespace GRWTSK.FoundationsLogicAndTypeTheory.SetTheory.Collapse.Variant32d70689c2b13b97bd22a5071ff0dc4e05ad7a94a41a0ab6759846787d824e8d

namespace FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.Model

namespace ReconstructionControls

open Cardinal

/-- Actual constant map from the two-element Bool carrier to the singleton Unit carrier. -/
def collapse : Bool → Unit := fun _ => ()

/-- Singleton target set whose constant-map preimage has two elements. -/
def singletonTarget : Set Unit := {()}

theorem collapse_not_injective : ¬Function.Injective collapse := by
  intro injective
  have impossible := injective (a₁ := false) (a₂ := true) rfl
  cases impossible

theorem pullback_set_univ : collapse ⁻¹' singletonTarget = Set.univ := by
  ext point
  simp [singletonTarget, collapse]

/-- Actual preimage cardinals, with both sides in the same explicit universe. -/
theorem pullback_cardinals : #(collapse ⁻¹' singletonTarget) = 2 ∧ #singletonTarget = 1 := by
  constructor
  · rw [pullback_set_univ, Cardinal.mk_univ, Cardinal.mk_bool]
  · exact Cardinal.mk_singleton ()

theorem pullback_cardinal_bound_false : ¬#(collapse ⁻¹' singletonTarget) ≤ #singletonTarget := by
  rw [pullback_cardinals.1, pullback_cardinals.2]
  have finite : ((1 : ℕ) : Cardinal.{0}) < ((2 : ℕ) : Cardinal.{0}) :=
    Nat.cast_lt.mpr (by decide : (1 : ℕ) < 2)
  exact not_le.mpr finite

/-- Finite singleton target inventory used by the cardinal-pullback hostile control. -/
def targetInventory : Finset Unit := {()}

/-- Actual filtered Bool preimage of the singleton target inventory under collapse. -/
def pulledInventory : Finset Bool :=
  Finset.univ.filter (fun point => collapse point ∈ targetInventory)

theorem finite_pullback_count : pulledInventory.card = 2 ∧ targetInventory.card = 1 ∧
    ¬pulledInventory.card ≤ targetInventory.card := by decide

/-- An unsupported shift of the actual source variable indices, with constructors retained. -/
def shiftVariableIndices : Term → Term
  | .variable index => .variable (index + 1)
  | .nullary constructor => .nullary constructor
  | .unary constructor argument => .unary constructor (shiftVariableIndices argument)

/-- The licensed variable endpoint loses validity when the original context is kept fixed. -/
theorem licensed_endpoint_shift_invalid :
    TermValid FullFixtures.snapshot FullFixtures.declaration.variableCount
      AssemblyFixtures.generator.equation.right ∧
    ¬TermValid FullFixtures.snapshot FullFixtures.declaration.variableCount
      (shiftVariableIndices AssemblyFixtures.generator.equation.right) := by decide

theorem shifted_support : AssemblyFixtures.generator.equation.right.variableSupport = {0} ∧
    (shiftVariableIndices AssemblyFixtures.generator.equation.right).variableSupport = {1} := by
  decide

/-- The actual list-assignment semantics distinguishes the original and misplaced variable. -/
theorem shifted_readout_loses_assignment :
    evaluateTerm FullFixtures.interpreterTable [0] AssemblyFixtures.generator.equation.right =
      some 0 ∧
    evaluateTerm FullFixtures.interpreterTable [0]
      (shiftVariableIndices AssemblyFixtures.generator.equation.right) = none := by decide

/-- The real checker rejects the bad shifted image rather than accepting an untyped equation. -/
theorem shifted_generator_substitution_rejected :
    (verifyEquation FullFixtures.declaration
      (.substitution [shiftVariableIndices AssemblyFixtures.generator.equation.right]
        (.generator 0))).isSome = false := by decide

end ReconstructionControls
end FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.Model
