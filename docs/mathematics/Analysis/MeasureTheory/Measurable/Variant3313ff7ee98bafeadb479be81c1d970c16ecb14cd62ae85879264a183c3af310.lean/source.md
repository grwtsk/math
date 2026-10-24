# Complete source: GRWTSK.Analysis.MeasureTheory.Measurable.Variant3313ff7ee98bafeadb479be81c1d970c16ecb14cd62ae85879264a183c3af310

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `45f7ae58b0cea587cac1fcb1c53196ad80e5cefb` · SHA-256 `3eca741d0bcddf239277e88eac093008d8470afd0876a516ef5f87e14845f19a`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Analysis.MeasureTheory
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Analysis.MeasureTheory.MeasurableSpace.Variant808e23be81783d1f3a5b14178ca02128a1678b4ac2e3d9d326facffde66feb19","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"808e23be81783d1f3a5b14178ca02128a1678b4ac2e3d9d326facffde66feb19","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Analysis.MeasureTheory.SourceCorpus.MeasurableSpace.Variant808e23be81783d1f3a5b14178ca02128a1678b4ac2e3d9d326facffde66feb19","mathematical_subject":"Analysis.MeasureTheory","original_sha256":"808e23be81783d1f3a5b14178ca02128a1678b4ac2e3d9d326facffde66feb19","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/07/21/Surface/formal/.surface/overlays/session:2e628ee6531784ebd1c16c0e/workspace/Surface/Legacy/BinaryLogicMatrix/Measurable.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Surface.Legacy.BinaryLogicMatrix.Gamma


namespace GRWTSK.Analysis.MeasureTheory.MeasurableSpace.Variant808e23be81783d1f3a5b14178ca02128a1678b4ac2e3d9d326facffde66feb19

namespace Surface.Legacy

abbrev MeasurableSet (α : Type) := α -> Prop

structure MeasurableSpace (α : Type) where
  isMeasurableSet : MeasurableSet α -> Prop

def Measurable {α β : Type} (_f : α -> β) : Prop := True

structure CertifiedMeasurableSpace where
  Carrier : Type
  measurableSpace : MeasurableSpace Carrier

inductive MeasurableConvergenceMode where
  | pointwise
  | almostEverywhere
  | inMeasure
  | Lp
  | uniform
deriving DecidableEq, Repr

structure CertifiedSimpleApproximation (Ω : CertifiedMeasurableSpace) where
  codomain : Type
  codomainMeasurable : MeasurableSpace codomain
  approximants : Nat -> Ω.Carrier -> codomain
  approximantsMeasurable : ∀ n, Measurable (approximants n)
  convergenceMode : MeasurableConvergenceMode
  convergenceCertificate : Prop

structure CertifiedMeasurableFunction where
  Ω : CertifiedMeasurableSpace
  codomain : Type
  codomainMeasurable : MeasurableSpace codomain
  value : Ω.Carrier -> codomain
  measurable : Measurable value
  approximation? : Option (CertifiedSimpleApproximation Ω)

structure CertifiedSimpleApproximationRef where
  id : String
  mode : MeasurableConvergenceMode

structure CertifiedMeasurableLimitRef where
  id : String
  mode : MeasurableConvergenceMode

theorem certifiedMeasurable_has_measurability (f : CertifiedMeasurableFunction) :
    Measurable f.value := by
  exact f.measurable

end Surface.Legacy
```
