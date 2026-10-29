-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.MathematicalLogic
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.InvariantTheory.Variantfd1d345c65bf7935e2c2ee219758cc25c4b74c67fc2efe6c9a2a54f1ddc49d0e","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"fd1d345c65bf7935e2c2ee219758cc25c4b74c67fc2efe6c9a2a54f1ddc49d0e","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Logic.Foundations.SourceCorpus.InvariantTheory.Variantfd1d345c65bf7935e2c2ee219758cc25c4b74c67fc2efe6c9a2a54f1ddc49d0e","mathematical_subject":"Logic.Foundations","original_sha256":"fd1d345c65bf7935e2c2ee219758cc25c4b74c67fc2efe6c9a2a54f1ddc49d0e","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/Native/continuous-assurance/audit/evidence-resume-workspaces/producer/fdbafaa0423a4c4347f7e99685014d246e83641877c4a213d8d057c1676522d5/workspace/Surface/BitMatrix/Rhetorical/Coverage.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import BitMatrix.Codec.Source
import BitMatrix.Rhetorical.Core

/-!
# One invariant theory in four rhetorical modes

This module is the formal correspondence layer for the four presentations in
`docs/bit/mapping-rhetorical-systems.md`.
-/


namespace GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.InvariantTheory.Variantfd1d345c65bf7935e2c2ee219758cc25c4b74c67fc2efe6c9a2a54f1ddc49d0e

namespace BitMatrix.Rhetorical

/-- The invariant interpreter tuple, parameterized by its exact capabilities. -/
structure InvariantTheory where
  Address : Type
  enumeration : BitMatrix.Carrier.AddressEnumeration Address
  cantor : BitMatrix.Carrier.DesignatedCantorRepresentation
  baseline : BitMatrix.Carrier.BooleanState Address

/-- An optional source specialization of the invariant interpreter tuple. -/
structure SourceSpecialization (theory : InvariantTheory) where
  codec : BitMatrix.Codec.SourceCodec theory.Address
  source : BitMatrix.Codec.CanonicalSource
  baseline_eq : codec.encode source = theory.baseline

private def quadrantCoordinate
    (horizontal vertical : ℝ)
    (horizontalLower : -1 ≤ horizontal)
    (horizontalUpper : horizontal ≤ 1)
    (verticalLower : -1 ≤ vertical)
    (verticalUpper : vertical ≤ 1) :
    RhetoricalCoordinate where
  structuralHierarchy := horizontal
  interpreterPrecision := vertical
  structuralLower := horizontalLower
  structuralUpper := horizontalUpper
  precisionLower := verticalLower
  precisionUpper := verticalUpper

/-- Canonical witnesses occupying the four open quadrants. -/
noncomputable def fourModePresentation (theory : InvariantTheory) :
    FourModePresentation InvariantTheory where
  invariant := theory
  formalHypotactic :=
    ⟨.formalHypotaxis,
      quadrantCoordinate (1 / 2) (1 / 2) (by norm_num) (by norm_num)
        (by norm_num) (by norm_num), theory⟩
  formalParatactic :=
    ⟨.formalParataxis,
      quadrantCoordinate (-1 / 2) (1 / 2) (by norm_num) (by norm_num)
        (by norm_num) (by norm_num), theory⟩
  pragmaticParatactic :=
    ⟨.pragmaticParataxis,
      quadrantCoordinate (-1 / 2) (-1 / 2) (by norm_num) (by norm_num)
        (by norm_num) (by norm_num), theory⟩
  pragmaticHypotactic :=
    ⟨.pragmaticHypotaxis,
      quadrantCoordinate (1 / 2) (-1 / 2) (by norm_num) (by norm_num)
        (by norm_num) (by norm_num), theory⟩
  formalHypotactic_mode := rfl
  formalParatactic_mode := rfl
  pragmaticParatactic_mode := rfl
  pragmaticHypotactic_mode := rfl
  formalHypotactic_semantic := rfl
  formalParatactic_semantic := rfl
  pragmaticParatactic_semantic := rfl
  pragmaticHypotactic_semantic := rfl

/-- Kernel-checked four-mode coverage and semantic invariance. -/
theorem four_mode_coverage (theory : InvariantTheory) :
    let presentations := fourModePresentation theory
    presentations.formalHypotactic.mode = .formalHypotaxis ∧
    presentations.formalParatactic.mode = .formalParataxis ∧
    presentations.pragmaticParatactic.mode = .pragmaticParataxis ∧
    presentations.pragmaticHypotactic.mode = .pragmaticHypotaxis ∧
    classify origin presentations.formalHypotactic.coordinate =
      .formalHypotaxis ∧
    classify origin presentations.formalParatactic.coordinate =
      .formalParataxis ∧
    classify origin presentations.pragmaticParatactic.coordinate =
      .pragmaticParataxis ∧
    classify origin presentations.pragmaticHypotactic.coordinate =
      .pragmaticHypotaxis ∧
    presentations.formalHypotactic.semanticValue =
      presentations.formalParatactic.semanticValue ∧
    presentations.formalParatactic.semanticValue =
      presentations.pragmaticParatactic.semanticValue ∧
      presentations.pragmaticParatactic.semanticValue =
      presentations.pragmaticHypotactic.semanticValue := by
  norm_num [fourModePresentation, classify, quadrantCoordinate, origin]

/-- Every target Boolean state has exactly one scalar relative to the baseline. -/
theorem source_relative_scalar_exists_unique
    (theory : InvariantTheory)
    (target : BitMatrix.Carrier.BooleanState theory.Address) :
    ∃! scalar : theory.cantor.Scalar,
      BitMatrix.Carrier.distinguishedInterpreter
        theory.enumeration.enumerate theory.cantor theory.baseline scalar = target := by
  let equivalence := BitMatrix.Carrier.baselineEquiv
    theory.enumeration.enumerate theory.cantor theory.baseline
  refine ⟨equivalence.symm target, equivalence.apply_symm_apply target, ?_⟩
  intro scalar equal
  apply equivalence.injective
  calc
    equivalence scalar = target := equal
    _ = equivalence (equivalence.symm target) :=
      (equivalence.apply_symm_apply target).symm

/-- Restricting an equivalence to a validity predicate remains an equivalence. -/
def validityRestrictedEquiv
    (theory : InvariantTheory)
    (Valid : BitMatrix.Carrier.BooleanState theory.Address → Prop) :
    { scalar : theory.cantor.Scalar //
      Valid ((BitMatrix.Carrier.baselineEquiv
        theory.enumeration.enumerate theory.cantor theory.baseline) scalar) } ≃
    { state : BitMatrix.Carrier.BooleanState theory.Address // Valid state } where
  toFun scalar := ⟨
    (BitMatrix.Carrier.baselineEquiv
      theory.enumeration.enumerate theory.cantor theory.baseline) scalar,
    scalar.property⟩
  invFun state := ⟨
    (BitMatrix.Carrier.baselineEquiv
      theory.enumeration.enumerate theory.cantor theory.baseline).symm state,
    by
      rw [(BitMatrix.Carrier.baselineEquiv
        theory.enumeration.enumerate theory.cantor theory.baseline).apply_symm_apply]
      exact state.property⟩
  left_inv scalar := by
    apply Subtype.ext
    exact (BitMatrix.Carrier.baselineEquiv
      theory.enumeration.enumerate theory.cantor theory.baseline).symm_apply_apply scalar
  right_inv state := by
    apply Subtype.ext
    exact (BitMatrix.Carrier.baselineEquiv
      theory.enumeration.enumerate theory.cantor theory.baseline).apply_symm_apply state

/--
Formal classification of the transformation-cardinality boundary.  A proof of
this proposition for the concrete infinite carrier remains an external set-
theoretic theorem; the interface prevents it from being confused with the
state-parameterization theorem above.
-/
def TransformationCardinalityBoundary
    (theory : InvariantTheory)
    (program : theory.cantor.Scalar →
      BitMatrix.Carrier.BooleanState theory.Address →
        BitMatrix.Carrier.BooleanState theory.Address) : Prop :=
  ¬Function.Surjective program

end BitMatrix.Rhetorical
