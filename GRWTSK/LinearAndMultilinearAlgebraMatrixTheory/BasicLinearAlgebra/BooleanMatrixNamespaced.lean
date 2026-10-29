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

