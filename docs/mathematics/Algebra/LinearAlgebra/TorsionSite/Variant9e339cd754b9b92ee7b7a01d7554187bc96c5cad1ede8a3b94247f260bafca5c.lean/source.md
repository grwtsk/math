# Complete source: GRWTSK.Algebra.LinearAlgebra.TorsionSite.Variant9e339cd754b9b92ee7b7a01d7554187bc96c5cad1ede8a3b94247f260bafca5c

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `10061340f5ceb7da8d9e18238e1e2f9fea89e94e` · SHA-256 `6ba3dc7c7d529155d6cb9985eb33d45f0693be8618059f074b3b2268dfe9d60b`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Algebra.LinearAlgebra
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Algebra.LinearAlgebra.TorsionAtSite.Variant32b949d30234c2e037defd3f9194f034ddf81977448cde548912f1430cab20b4","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"32b949d30234c2e037defd3f9194f034ddf81977448cde548912f1430cab20b4","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.Unclassified.SourceCorpus.TorsionAtSite.Variant32b949d30234c2e037defd3f9194f034ddf81977448cde548912f1430cab20b4","mathematical_subject":"Foundations.Unclassified","original_sha256":"32b949d30234c2e037defd3f9194f034ddf81977448cde548912f1430cab20b4","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/07/21/Surface/formal/.surface/overlays/session:2e628ee6531784ebd1c16c0e/workspace/Surface/Legacy/BinaryLogicMatrix/TorsionSite.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Surface.Legacy.BinaryLogicMatrix.Symmetry


namespace GRWTSK.Algebra.LinearAlgebra.TorsionAtSite.Variant32b949d30234c2e037defd3f9194f034ddf81977448cde548912f1430cab20b4

namespace Surface.Legacy

def iteratedAction
    {G : FiniteSymmetryGroup}
    (act : G.carrier → FiberTensorSite → FiberTensorSite)
    (element : G.carrier) : Nat → FiberTensorSite → FiberTensorSite
| 0, site => site
| Nat.succ n, site => act element (iteratedAction act element n site)

structure TorsionAtSite
    (G : FiniteSymmetryGroup)
    (T : BinaryMatrixFiberTensor)
    (tw : FiberTwist G T) where
  site : FiberTensorSite
  element : G.carrier
  order : Nat
  order_pos : 0 < order
  torsionSound :
    iteratedAction tw.actOnSite element order site = site

theorem torsionAtSite_has_positive_order
    {G : FiniteSymmetryGroup}
    {T : BinaryMatrixFiberTensor}
    {tw : FiberTwist G T}
    (tor : TorsionAtSite G T tw) :
    0 < tor.order := by
  exact tor.order_pos

theorem torsionAtSite_returns_to_site
    {G : FiniteSymmetryGroup}
    {T : BinaryMatrixFiberTensor}
    {tw : FiberTwist G T}
    (tor : TorsionAtSite G T tw) :
    iteratedAction tw.actOnSite tor.element tor.order tor.site = tor.site := by
  exact tor.torsionSound

end Surface.Legacy
```
