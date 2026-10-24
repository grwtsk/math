# Complete source: GRWTSK.Algebra.LinearAlgebra.Symmetry.Variant498f3685e32e6d60e508064577d1b44d0c2e08586861fd90dada98d87ad7133a

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `c27ec686d1b1026ec654a151c65104d85b2e9471` · SHA-256 `59e02375faf53b73f8b4a3bcf2633a4ad500809bae8309ff049c5cd115aa3352`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Algebra.LinearAlgebra
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Algebra.LinearAlgebra.FiniteSymmetryGroup.Variant22b03c4f9c719ed70138ab6157c5626dbf687f5db8afc4e71dabee19ca464942","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"22b03c4f9c719ed70138ab6157c5626dbf687f5db8afc4e71dabee19ca464942","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.Unclassified.SourceCorpus.FiniteSymmetryGroup.Variant22b03c4f9c719ed70138ab6157c5626dbf687f5db8afc4e71dabee19ca464942","mathematical_subject":"Foundations.Unclassified","original_sha256":"22b03c4f9c719ed70138ab6157c5626dbf687f5db8afc4e71dabee19ca464942","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/07/21/Surface/formal/.surface/overlays/session:2e628ee6531784ebd1c16c0e/workspace/Surface/Legacy/BinaryLogicMatrix/Symmetry.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Surface.Legacy.BinaryLogicMatrix.FiberTensor


namespace GRWTSK.Algebra.LinearAlgebra.FiniteSymmetryGroup.Variant22b03c4f9c719ed70138ab6157c5626dbf687f5db8afc4e71dabee19ca464942

namespace Surface.Legacy

structure FiniteSymmetryGroup where
  carrier : Type
  mul : carrier → carrier → carrier
  one : carrier
  inv : carrier → carrier
  group_laws : Prop

structure FiberTwist
    (G : FiniteSymmetryGroup)
    (T : BinaryMatrixFiberTensor) where
  actOnSite : G.carrier → FiberTensorSite → FiberTensorSite
  actionSound : Prop

theorem finiteSymmetryGroup_requires_laws
    (G : FiniteSymmetryGroup) :
    G.group_laws → G.group_laws := by
  intro h
  exact h

theorem fiberTwist_requires_action_sound
    {G : FiniteSymmetryGroup}
    {T : BinaryMatrixFiberTensor}
    (tw : FiberTwist G T) :
    tw.actionSound → tw.actionSound := by
  intro h
  exact h

end Surface.Legacy
```
