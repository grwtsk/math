# Complete source: GRWTSK.Topology.MetricTopology.Curve.Variant2f5432d0520de883683801688aadb5367e4a8b651fab6c2e356f1e1925042c2c

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `09263097a789311baff16ab571b087c1f00bd6e0` · SHA-256 `e965c79d1f9fb616bbadd8de33f06a7628b0e8f0151384234545097b9190e3ec`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Topology.MetricTopology
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Topology.MetricTopology.ShortWeierstrassCurve.Variant08cbb7cc68dcf97aac05f2749bfc59dd8855df5cb1fb70be66ef21f023c703b9","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"08cbb7cc68dcf97aac05f2749bfc59dd8855df5cb1fb70be66ef21f023c703b9","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Topology.MetricSpaces.SourceCorpus.ShortWeierstrassCurve.Variant08cbb7cc68dcf97aac05f2749bfc59dd8855df5cb1fb70be66ef21f023c703b9","mathematical_subject":"Topology.MetricSpaces","original_sha256":"08cbb7cc68dcf97aac05f2749bfc59dd8855df5cb1fb70be66ef21f023c703b9","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Head/Think/.think/Think/Kakeya/HasseWeil/Curve.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Think.Kakeya.Gauge.Reference


namespace GRWTSK.Topology.MetricTopology.ShortWeierstrassCurve.Variant08cbb7cc68dcf97aac05f2749bfc59dd8855df5cb1fb70be66ef21f023c703b9

namespace Think.Kakeya.HasseWeil

/-!
Reference data for the Hasse-Weil torsion transport layer.

This lightweight mirror keeps exact curve-side language separate from K128
client measurement. It does not assert global Hasse-Weil arithmetic results.
-/

structure ShortWeierstrassCurve where
  a : ℝ
  b : ℝ
  discriminant : ℝ
  nonsingular : Bool

def KEqual (eps d : ℝ) : Prop :=
  d ≤ eps

def TorsionResidueHeat (eps dist : ℝ) : ℝ :=
  if dist - eps < 0 then 0 else dist - eps

def KTorsionClaim (eps dist_nP_O : ℝ) : Prop :=
  KEqual eps dist_nP_O

end Think.Kakeya.HasseWeil
```
