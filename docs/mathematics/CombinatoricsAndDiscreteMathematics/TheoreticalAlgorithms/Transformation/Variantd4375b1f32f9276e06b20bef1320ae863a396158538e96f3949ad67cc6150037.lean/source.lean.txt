-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.MaterializationRule.Variant4ffacceb42d6a114d6927b5e022a7113233c3b1fc6fc27ac5dd7b42321a61df3","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"4ffacceb42d6a114d6927b5e022a7113233c3b1fc6fc27ac5dd7b42321a61df3","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.DataStructures.SourceCorpus.MaterializationRule.Variant4ffacceb42d6a114d6927b5e022a7113233c3b1fc6fc27ac5dd7b42321a61df3","mathematical_subject":"Computation.DataStructures","original_sha256":"4ffacceb42d6a114d6927b5e022a7113233c3b1fc6fc27ac5dd7b42321a61df3","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/TestProject/Surface/ContinuousAssurance/Transformation.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Surface.ContinuousAssurance.Evidence
import Surface.ContinuousAssurance.QuantizationLevel

/-!
# Evidence transformation contracts

Transformations state preservation and loss explicitly.  A lossy
transformation is traceable only when the complete source remains recoverable
by stable evidence reference; retaining a candidate substring does not by
itself make extraction injective.
-/


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.MaterializationRule.Variant4ffacceb42d6a114d6927b5e022a7113233c3b1fc6fc27ac5dd7b42321a61df3

namespace Surface.ContinuousAssurance

open Surface.Quantization

/-- How downstream material relates to an earlier evidence object. -/
inductive MaterializationRule
  | reference
  | byteIdenticalCopy
  | normalizedCopy
  | summarized
  | transformed
  | independentRerun
  deriving DecidableEq, Repr

/-- Declared information-preservation strength. -/
inductive TransformationPreservation
  | none
  | injective
  | surjectiveTraceability
  deriving DecidableEq, Repr

/-- Stable identity of a representation or evidence object. -/
structure ArtifactIdentity where
  digest : String
  deriving DecidableEq, Repr

/-- Machine-readable contract for a representation transformation. -/
structure TransformationContract where
  identifier : String
  sourceRepresentation : String
  targetRepresentation : String
  preservation : TransformationPreservation
  reversible : Bool
  relevantInformation : List String
  knownLosses : List String
  affectedClaims : List String
  supportingEvidence : List ArtifactIdentity
  recoveryEvidence : List ArtifactIdentity
  deriving DecidableEq, Repr

/-- A traceable lossy transformation must retain recovery evidence. -/
structure TraceableTransformation where
  contract : TransformationContract
  recoveryForLoss :
    contract.knownLosses ≠ [] → contract.recoveryEvidence ≠ []

/-- Lossy traceable transformations expose a content-addressable recovery item. -/
theorem TraceableTransformation.lossy_has_recovery
    (transformation : TraceableTransformation)
    (lossy : transformation.contract.knownLosses ≠ []) :
    ∃ identity, identity ∈ transformation.contract.recoveryEvidence := by
  have nonempty := transformation.recoveryForLoss lossy
  cases recovery : transformation.contract.recoveryEvidence with
  | nil => exact False.elim (nonempty recovery)
  | cons identity rest => exact ⟨identity, by simp⟩

/-- An executable witness of an injective representation transformation. -/
structure InjectiveTransformation (Source Target : Type) where
  contract : TransformationContract
  preservation_is_injective : contract.preservation = .injective
  encode : Source → Target
  encode_injective : Function.Injective encode
  decode : Target → Option Source
  decode_encode : ∀ source, decode (encode source) = some source

/-- The declared injective transformation really preserves source distinctions. -/
theorem InjectiveTransformation.preserves_distinctions
    {Source Target : Type}
    (transformation : InjectiveTransformation Source Target) :
    Function.Injective transformation.encode :=
  transformation.encode_injective

/-- How a quantized representation changes its finite resolution or carrier. -/
inductive QuantizationTransition
  | preserve
  | refine
  | coarsen
  | independentlyRecompute
  | saturateAtCompilerMaximum
  | decompose
  | assemble
  deriving DecidableEq, Repr

/-- Transitions that necessarily discard requested/source resolution detail. -/
def QuantizationTransition.IsLossy : QuantizationTransition → Prop
  | .coarsen => True
  | .saturateAtCompilerMaximum => True
  | _ => False

/--
A quantization-specific transformation contract.  Its proof fields prevent a
transition label from silently asserting an invalid numerical direction, and
require recoverable lineage for lossy transitions.  Refinement does not claim
to recreate distinctions absent from the source; new evidence is still listed
explicitly in `targetEvidence` and `recoveryEvidence`.
-/
structure QuantizationTransitionContract where
  identifier : String
  sourceResolution : ResolutionBits
  targetResolution : ResolutionBits
  transition : QuantizationTransition
  sourceEvidence : List ArtifactIdentity
  targetEvidence : ArtifactIdentity
  transformation : TransformationContract
  sourceDecomposition : Option ArtifactIdentity
  targetDecomposition : Option ArtifactIdentity
  knownLosses : List String
  affectedClaims : List ArtifactIdentity
  recoveryEvidence : List ArtifactIdentity
  transitionSound :
    match transition with
    | .preserve => sourceResolution.value = targetResolution.value
    | .refine => sourceResolution.value ≤ targetResolution.value
    | .coarsen => targetResolution.value ≤ sourceResolution.value
    | .saturateAtCompilerMaximum =>
        targetResolution.value ≤ sourceResolution.value
    | .independentlyRecompute | .decompose | .assemble => True
  lossyHasRecovery :
    transition.IsLossy →
      knownLosses ≠ [] ∧ recoveryEvidence ≠ []

namespace QuantizationTransitionContract

theorem preserve_bits_eq
    (contract : QuantizationTransitionContract)
    (htransition : contract.transition = .preserve) :
    contract.sourceResolution.value = contract.targetResolution.value := by
  have sound := contract.transitionSound
  rw [htransition] at sound
  exact sound

theorem refine_bits_le
    (contract : QuantizationTransitionContract)
    (htransition : contract.transition = .refine) :
    contract.sourceResolution.value ≤ contract.targetResolution.value := by
  have sound := contract.transitionSound
  rw [htransition] at sound
  exact sound

theorem coarsen_bits_le
    (contract : QuantizationTransitionContract)
    (htransition : contract.transition = .coarsen) :
    contract.targetResolution.value ≤ contract.sourceResolution.value := by
  have sound := contract.transitionSound
  rw [htransition] at sound
  exact sound

theorem lossy_has_recovery
    (contract : QuantizationTransitionContract)
    (hlossy : contract.transition.IsLossy) :
    ∃ identity, identity ∈ contract.recoveryEvidence := by
  have nonempty := (contract.lossyHasRecovery hlossy).2
  cases recovery : contract.recoveryEvidence with
  | nil => exact False.elim (nonempty recovery)
  | cons identity rest => exact ⟨identity, by simp⟩

end QuantizationTransitionContract

end Surface.ContinuousAssurance
