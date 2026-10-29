-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Body.Variantdaace5b60064968e9a591451e4941966967a95aa3231f48744a283d723629445","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"daace5b60064968e9a591451e4941966967a95aa3231f48744a283d723629445","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.NumbersAndBasicStructures.SourceCorpus.Body.Variantdaace5b60064968e9a591451e4941966967a95aa3231f48744a283d723629445","mathematical_subject":"Foundations.NumbersAndBasicStructures","original_sha256":"daace5b60064968e9a591451e4941966967a95aa3231f48744a283d723629445","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/t-001-v1-export-v1/toolchain/src/lean/Std/Http/Data/Body.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2025 Lean FRO, LLC. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Sofia Rodrigues
-/
module

prelude
public import Std.Http.Data.Body.Basic
public import Std.Http.Data.Body.Length
public import Std.Http.Data.Body.Any
public import Std.Http.Data.Body.Stream
public import Std.Http.Data.Body.Empty
public import Std.Http.Data.Body.Full


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Body.Variantdaace5b60064968e9a591451e4941966967a95aa3231f48744a283d723629445

public section

/-!
# Body

This module re-exports all HTTP body types: `Body.Empty`, `Body.Full`, `Body.Stream`,
`Body.Any`, and `Body.Length`, along with the `Http.Body` typeclass and conversion
utilities (`ToByteArray`, `FromByteArray`).
-/
