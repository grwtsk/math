# Complete source: GRWTSK.Algebra.LinearAlgebra.BooleanMatrix.Variant08b33821cd1773c1082e3ca6ad5fa7cbf7e125bcb82390905e09bafe4f353e46

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `c402ae6f5d9bbc1075cc2549f254c3849d40efcf` · SHA-256 `40697440801db1fd80654ff5f0bece25ce9b6c5508c15e23095ed18096d0044d`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Algebra.LinearAlgebra
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Algebra.LinearAlgebra.Pointwise.Variant698687a7d1ca9c19711c558be83371602537f4991c72dd38ec0bb8bc336f2505","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"698687a7d1ca9c19711c558be83371602537f4991c72dd38ec0bb8bc336f2505","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.Unclassified.SourceCorpus.Pointwise.Variant698687a7d1ca9c19711c558be83371602537f4991c72dd38ec0bb8bc336f2505","mathematical_subject":"Foundations.Unclassified","original_sha256":"698687a7d1ca9c19711c558be83371602537f4991c72dd38ec0bb8bc336f2505","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/TestProject/BooleanMatrix.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import BooleanMatrix.Matrix.Pointwise
import BooleanMatrix.Matrix.Update
import BooleanMatrix.Application.Iteration
import BooleanMatrix.TypedApplication
import BooleanMatrix.Codec.Bool

/-!
# BooleanMatrix

A `Matrix` is a countably indexed Boolean carrier.

An `Application` accepts exactly one matrix and emits exactly one matrix:

    Application = Matrix → Matrix

Formats, codecs, and typed applications supply interpretation without changing
the common carrier.

This declaration-free module is the public aggregate.
-/

namespace GRWTSK.Algebra.LinearAlgebra.Pointwise.Variant698687a7d1ca9c19711c558be83371602537f4991c72dd38ec0bb8bc336f2505

```
