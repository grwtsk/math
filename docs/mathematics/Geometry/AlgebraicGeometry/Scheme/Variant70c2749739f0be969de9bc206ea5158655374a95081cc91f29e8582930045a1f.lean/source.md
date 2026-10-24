# Complete source: GRWTSK.Geometry.AlgebraicGeometry.Scheme.Variant70c2749739f0be969de9bc206ea5158655374a95081cc91f29e8582930045a1f

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `2816ff771276642babdb6de38fbb704587c393f0` · SHA-256 `eb6af1b2e51955892946f6fc060f0505e5cc16e60c1cbd1735eca3bb38e6bdbf`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Geometry.AlgebraicGeometry
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Geometry.AlgebraicGeometry.Restrict.Variant6398fea307d4a45f59bdad7ba8a9d5c34fbeb536c99c96559d1c49446c26cbec","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"6398fea307d4a45f59bdad7ba8a9d5c34fbeb536c99c96559d1c49446c26cbec","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Geometry.AlgebraicGeometry.SourceCorpus.Restrict.Variant6398fea307d4a45f59bdad7ba8a9d5c34fbeb536c99c96559d1c49446c26cbec","mathematical_subject":"Geometry.AlgebraicGeometry","original_sha256":"6398fea307d4a45f59bdad7ba8a9d5c34fbeb536c99c96559d1c49446c26cbec","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/MathlibTest/Delab/Scheme.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Mathlib.AlgebraicGeometry.Restrict


namespace GRWTSK.Geometry.AlgebraicGeometry.Restrict.Variant6398fea307d4a45f59bdad7ba8a9d5c34fbeb536c99c96559d1c49446c26cbec

universe u

open AlgebraicGeometry

variable (X : Scheme.{u}) (x : X) in
/-- info: x : ↥X -/
#guard_msgs in
#check x

variable (R : CommRingCat.{u}) (x : Spec R) in
/-- info: x : ↥(Spec R) -/
#guard_msgs in
#check x

variable (X : Scheme.{u}) (U : X.Opens) (x : U.toScheme) in
/-- info: x : ↥↑U -/
#guard_msgs in
#check x

variable (X : Scheme.{u}) (U : X.Opens) (x : U) in
/-- info: x : ↥U -/
#guard_msgs in
#check x
```
