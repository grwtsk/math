# Complete source: GRWTSK.Topology.MetricTopology.RobustObservation.Variantff9344872f3ae2381934578dff239ecdac9f475793e2bc6e61da503fa9cc0130

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `26af6344c0948062ea53e4966d8d4abf33188ccf` · SHA-256 `262578c442203a88783ca3cbd38f466b056f04f0c416225e290ed006a077ea3e`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Topology.MetricTopology
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Topology.MetricTopology.RobustObservation.Variant2a1123ce69e451fe6c8c877e27f5b5697eedae89821108c79fec97e35cad30ca","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"2a1123ce69e451fe6c8c877e27f5b5697eedae89821108c79fec97e35cad30ca","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Topology.MetricSpaces.SourceCorpus.RobustObservation.Variant2a1123ce69e451fe6c8c877e27f5b5697eedae89821108c79fec97e35cad30ca","mathematical_subject":"Topology.MetricSpaces","original_sha256":"2a1123ce69e451fe6c8c877e27f5b5697eedae89821108c79fec97e35cad30ca","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/Surface/Mathematics/MobiusOntology/RobustObservation.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Mathlib.Topology.MetricSpace.Pseudo.Defs

/-!
# Metric identification and robust semantic observation

Threshold proximity is never used as a quotient relation.  Zero distance is
first quotiented, and semantic equivalence is induced only by a certified
observation.
-/


namespace GRWTSK.Topology.MetricTopology.RobustObservation.Variant2a1123ce69e451fe6c8c877e27f5b5697eedae89821108c79fec97e35cad30ca

namespace Mathematics.MobiusOntology

universe u v

def ZeroDistance
    (X : Type u) [PseudoMetricSpace X]
    (left right : X) : Prop :=
  dist left right = 0

theorem zeroDistance_equivalence
    (X : Type u) [PseudoMetricSpace X] :
    Equivalence (ZeroDistance X) := by
  refine ⟨?_, ?_, ?_⟩
  · intro point
    exact dist_self point
  · intro left right equal
    simpa [ZeroDistance, dist_comm] using equal
  · intro left middle right leftMiddle middleRight
    apply le_antisymm
    · calc
        dist left right ≤ dist left middle + dist middle right :=
          dist_triangle left middle right
        _ = 0 := by rw [leftMiddle, middleRight, add_zero]
    · exact dist_nonneg

def zeroDistanceSetoid
    (X : Type u) [PseudoMetricSpace X] :
    Setoid X where
  r := ZeroDistance X
  iseqv := zeroDistance_equivalence X

abbrev MetricIdentification
    (X : Type u) [PseudoMetricSpace X] :=
  Quotient (zeroDistanceSetoid X)

structure RobustObservation
    (X : Type u) (Label : Type v)
    [PseudoMetricSpace X] where
  observe : X → Label
  budget : ℝ≥0
  zeroDistanceInvariant :
    ∀ {left right},
      ZeroDistance X left right →
        observe left = observe right
  robust :
    ∀ {left right},
      nndist left right ≤ budget →
        observe left = observe right

namespace RobustObservation

def observeMetric
    {X : Type u} {Label : Type v}
    [PseudoMetricSpace X]
    (observation : RobustObservation X Label) :
    MetricIdentification X → Label :=
  Quotient.lift observation.observe
    (fun _ _ equal =>
      observation.zeroDistanceInvariant equal)

def SemanticOntology
    {X : Type u} {Label : Type v}
    [PseudoMetricSpace X]
    (observation : RobustObservation X Label) :
    Set Label :=
  Set.range observation.observeMetric

end RobustObservation

def ObservationEquivalent
    {X : Type u} {Label : Type v}
    [PseudoMetricSpace X]
    (observation : RobustObservation X Label)
    (left right : X) : Prop :=
  observation.observe left = observation.observe right

theorem observationEquivalent_equivalence
    {X : Type u} {Label : Type v}
    [PseudoMetricSpace X]
    (observation : RobustObservation X Label) :
    Equivalence (ObservationEquivalent observation) := by
  refine ⟨?_, ?_, ?_⟩
  · intro point
    rfl
  · intro left right equal
    exact equal.symm
  · intro left middle right leftMiddle middleRight
    exact leftMiddle.trans middleRight

/-- Semantic separation is stronger than robustness and has its own proof. -/
structure ObservationSeparationCertificate
    {X : Type u} {Label : Type v}
    [PseudoMetricSpace X]
    (observation : RobustObservation X Label) : Prop where
  separated :
    ∀ {left right},
      observation.observe left ≠ observation.observe right →
        2 * observation.budget < nndist left right

end Mathematics.MobiusOntology
```
