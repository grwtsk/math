# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.Spectral.Variantf50728068adae017d8b7eb98ef469eebee15cc35ba61598116626f5d90d8f4c1

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `22b96afa63f2cd30876a0b613ee2fea758a6c3ae` · SHA-256 `68096184a6507250b59ab437c57b117ac9220106c08e054c3402ae253afafb7e`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.DistanceProvider.Variantbe269bdc7949677572f4d73441341f16e6e7a2f8561a28b07ee0c0c45a3cf267","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"be269bdc7949677572f4d73441341f16e6e7a2f8561a28b07ee0c0c45a3cf267","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.NumbersAndBasicStructures.SourceCorpus.DistanceProvider.Variantbe269bdc7949677572f4d73441341f16e6e7a2f8561a28b07ee0c0c45a3cf267","mathematical_subject":"Foundations.NumbersAndBasicStructures","original_sha256":"be269bdc7949677572f4d73441341f16e6e7a2f8561a28b07ee0c0c45a3cf267","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/TestProject/BitMatrix/Runtime/Spectral.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Mathlib.Data.Real.Basic

/-!
# Conditional pointed spectral contracts

The runtime accepts an external distance provider. These declarations model
that dependency explicitly and do not construct a Dirac operator or assert a
general Connes distance theorem.
-/


namespace GRWTSK.FoundationsLogicAndTypeTheory.DistanceProvider.Variantbe269bdc7949677572f4d73441341f16e6e7a2f8561a28b07ee0c0c45a3cf267

namespace BitMatrix.Runtime.Spectral

/-- A supplied nonnegative distance-like provider. -/
structure DistanceProvider (Point : Type) where
  distance : Point → Point → ℝ
  nonnegative : ∀ left right, 0 ≤ distance left right

/-- Pointed data packages a finite point family with an explicit provider. -/
structure PointedData (Point : Type) where
  points : List Point
  spectralDistance : DistanceProvider Point

/-- Equality with an independently supplied metric is a separate obligation. -/
def RecoversMetric {Point : Type}
    (spectral geodesic : DistanceProvider Point) : Prop :=
  ∀ left right, spectral.distance left right = geodesic.distance left right

/-- Conditional evidence for metric recovery; no provider is manufactured. -/
structure MetricRecoveryCapability (Point : Type) where
  spectral : DistanceProvider Point
  geodesic : DistanceProvider Point
  recovers : RecoversMetric spectral geodesic

end BitMatrix.Runtime.Spectral
```
