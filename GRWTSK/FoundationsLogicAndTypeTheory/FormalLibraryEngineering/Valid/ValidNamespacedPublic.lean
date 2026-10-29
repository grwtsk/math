-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.FormatValid.Variantbe693f94365541b17ac9fde105f1eb6e66faa1f8da817e5f8dce8727f1c97a54","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"be693f94365541b17ac9fde105f1eb6e66faa1f8da817e5f8dce8727f1c97a54","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.NumbersAndBasicStructures.SourceCorpus.FormatValid.Variantbe693f94365541b17ac9fde105f1eb6e66faa1f8da817e5f8dce8727f1c97a54","mathematical_subject":"Foundations.NumbersAndBasicStructures","original_sha256":"be693f94365541b17ac9fde105f1eb6e66faa1f8da817e5f8dce8727f1c97a54","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/t-001-v1-export-v1/toolchain/src/lean/Init/Data/Float/Model/Format/Valid.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2026 Lean FRO, LLC. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Julia M. Himmel
-/
module

prelude
public import Init.Data.Float.Model.Unpacked.Pack.Basic

-- This file is part of the logical model for floats which authors of float libraries
-- need to rely on.

namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.FormatValid.Variantbe693f94365541b17ac9fde105f1eb6e66faa1f8da817e5f8dce8727f1c97a54

@[expose] public section

namespace Float.Model

open UnpackedFloat

/--
Predicate asserting that the bit representation of a float is valid according to the given
format. By 'valid' we mean that `NaN` is encoded using the canonical `NaN`.
-/
structure Format.Valid (spec : Format) (b : BitVec spec.numBits) : Prop where
  /-- If the bit vector encodes a `NaN`, then it is the canonical `NaN`. -/
  eq_packedNaN : unpackExponent b = (-1#_) → unpackMantissa b ≠ 0#_ → b = packedNaN spec

end Float.Model
