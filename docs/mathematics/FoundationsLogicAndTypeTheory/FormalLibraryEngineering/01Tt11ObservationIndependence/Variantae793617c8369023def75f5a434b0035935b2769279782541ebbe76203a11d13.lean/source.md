# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.01Tt11ObservationIndependence.Variantae793617c8369023def75f5a434b0035935b2769279782541ebbe76203a11d13

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `0dfaf3785bbf40848ecf515e0cdf28a66c8a8e9c` · SHA-256 `371e4c0412edfcd1de49ce2dbb2a0bbf8d183dc559a7f5dbb347578162ffa08b`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Ref.Variant312ef79e490f0cff41de6c59ddd05803d8270875bbdded06b413435f9a765ebd","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"312ef79e490f0cff41de6c59ddd05803d8270875bbdded06b413435f9a765ebd","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.Unclassified.SourceCorpus.Ref.Variant312ef79e490f0cff41de6c59ddd05803d8270875bbdded06b413435f9a765ebd","mathematical_subject":"Foundations.Unclassified","original_sha256":"312ef79e490f0cff41de6c59ddd05803d8270875bbdded06b413435f9a765ebd","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/22/Reflexive/docs/theorem-transfer/audits/internal-lean-semantic-correction-cycle-11/reproductions/01_tt11_observation_independence.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["lake_or_runtime_control","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import FCRS.Transport.Theorems.TT11_ReflectiveRecovery

/-!
Adversarial cycle-11 boundary: target-occurrence data can be constructed for a
profile whose source admissibility proposition is false.  Therefore the
observation itself does not contain the recovered conclusion; TT-11 can reach
that conclusion only through its separately supplied reflection capabilities.
-/


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Ref.Variant312ef79e490f0cff41de6c59ddd05803d8270875bbdded06b413435f9a765ebd

namespace FCRS.Transport.Cycle11Probe

def ref {kind : ArtifactKind} (name : String) : ArtifactRef kind where
  authority := "cycle11-audit"
  localName := name
  version := "1"
  digest := "sha256:audit-probe"

def inadmissibleProfile : IntervalProfile Unit Unit where
  version := ref "profile"
  sourceTheorem := ref "source-theorem"
  domainVersion := ref "domain"
  lowerVersion := ref "lower"
  upperVersion := ref "upper"
  assumptionSet := ref "assumptions"
  orientation := .Forward
  sourceNotation := "probe"
  domain := fun _ => False
  lower := fun _ => ()
  upper := fun _ => ()
  lowerMode := .Closed
  upperMode := .Closed
  witnessQualifies := fun _ => True
  order := fun _ _ => False

def unitInterpretation : BinaryInterpretation Unit Unit Unit where
  version := ref "interpretation"
  sourceSystem := {
    version := ref "source-system"
    denotes := fun _ _ => True
  }
  targetSystem := {
    version := ref "target-system"
    denotes := fun _ _ => True
  }
  source := fun _ => ()
  target := fun _ => ()

def unitGraph : CoordinateGraph .Materialized Unit Unit where
  version := ref "graph"
  identityPolicy := .PairFunctional
  source := fun _ => ()
  target := fun _ => ()

def unitOccurrence : EdgeOccurrence unitGraph () () where
  occurrenceArtifact := ref "occurrence"
  edge := ()
  sourceVertex := { occurrenceArtifact := ref "source-vertex" }
  targetVertex := { occurrenceArtifact := ref "target-vertex" }
  sourceEquation := rfl
  targetEquation := rfl

def inadmissibleObservation : ReflectiveRecoveryObservation
    inadmissibleProfile () unitInterpretation unitGraph where
  witness := ()
  occurrence := unitOccurrence
  declaration := { declarationArtifact := ref "declaration" }

/-- The observation is inhabited while the recovered source proposition is false. -/
example : ¬ inadmissibleProfile.admissible () inadmissibleObservation.witness := by
  simp [IntervalProfile.admissible, inadmissibleProfile]

#print axioms FCRS.Transport.Theorems.tt11_reflectiveRecovery
#check FCRS.Transport.Theorems.tt11_reflectiveRecovery

end FCRS.Transport.Cycle11Probe
```
