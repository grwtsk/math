# Complete source: GRWTSK.Topology.GeneralTopology.Sphere.Variant77652b0de1e79729ff2bb2e808a29b4698404f031a78ea868d7d9c99f9e6eb99

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `ccc30fb76093c0c0b697e0061a5bbe752b6999da` · SHA-256 `fee5af6fd81814be5f027ba28d29da49b8e8ffc244e3e1d1259a3d67bc9d13ab`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Topology.GeneralTopology
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Topology.GeneralTopology.Sphere1.Varianteadd81174da26c023d5e0cdebc29a13f185fa70e10941b51782a7a13a0e2edc5","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"eadd81174da26c023d5e0cdebc29a13f185fa70e10941b51782a7a13a0e2edc5","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Topology.GeneralTopology.SourceCorpus.Sphere1.Varianteadd81174da26c023d5e0cdebc29a13f185fa70e10941b51782a7a13a0e2edc5","mathematical_subject":"Topology.GeneralTopology","original_sha256":"eadd81174da26c023d5e0cdebc29a13f185fa70e10941b51782a7a13a0e2edc5","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/22/Reflexive/formal/lean/fcrs/FCRS/Topology/Sphere.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import FCRS.Topology.Foundations


namespace GRWTSK.Topology.GeneralTopology.Sphere1.Varianteadd81174da26c023d5e0cdebc29a13f185fa70e10941b51782a7a13a0e2edc5

universe u1 u2 u3

namespace FCRS.Topology

/-- Abstract topological circle with genuine open-cover compactness evidence. -/
structure Sphere1 where
  Point : Type u1
  topology : TopologicalSpaceLike Point
  compact : Compact topology

/-- Abstract topological two-sphere with genuine open-cover compactness evidence. -/
structure Sphere2 where
  Point : Type u2
  topology : TopologicalSpaceLike Point
  compact : Compact topology

/-- Abstract topological three-sphere with genuine open-cover compactness evidence. -/
structure Sphere3 where
  Point : Type u3
  topology : TopologicalSpaceLike Point
  compact : Compact topology

end FCRS.Topology
```
