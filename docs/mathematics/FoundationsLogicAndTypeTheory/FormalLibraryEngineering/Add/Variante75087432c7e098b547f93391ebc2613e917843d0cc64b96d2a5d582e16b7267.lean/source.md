# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Add.Variante75087432c7e098b547f93391ebc2613e917843d0cc64b96d2a5d582e16b7267

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `dec3a51eba738bdb5abf15f6402d62b92b7c9548` · SHA-256 `6e7a4c4257432b0dc927bc4cfee9c50a0ad7cb6fefb9b66400f8037d4db6adfb`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Add.Variantce81910623440279ad5da52be8c9b662326b84936ae46c5037ebb21fdf6e34ac","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"ce81910623440279ad5da52be8c9b662326b84936ae46c5037ebb21fdf6e34ac","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.NumbersAndBasicStructures.SourceCorpus.Add.Variantce81910623440279ad5da52be8c9b662326b84936ae46c5037ebb21fdf6e34ac","mathematical_subject":"Foundations.NumbersAndBasicStructures","original_sha256":"ce81910623440279ad5da52be8c9b662326b84936ae46c5037ebb21fdf6e34ac","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/t-001-v1-export-v1/toolchain/src/lean/Init/Data/Float/Model/Unpacked/Operations/Add.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2026 Lean FRO, LLC. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Julia M. Himmel
-/
module

prelude
public import Init.Data.Float.Model.Unpacked.Round

-- This file is part of the logical model for floats which authors of float libraries
-- need to rely on.

namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Add.Variantce81910623440279ad5da52be8c9b662326b84936ae46c5037ebb21fdf6e34ac

@[expose] public section

namespace Float.Model.UnpackedFloat

/--
Computes the sum of two floating point numbers and rounds the result according to
the given specification.
-/
def add (spec : Format) : UnpackedFloat → UnpackedFloat → UnpackedFloat
  | .notANumber, _ => .notANumber
  | _, .notANumber => .notANumber
  | .infinity sign₁, .infinity sign₂ =>
    if sign₁ == sign₂ then .infinity sign₁ else .notANumber
  | .infinity s, _ => .infinity s
  | _, .infinity s => .infinity s
  | .zero sign₁, .zero sign₂ =>
    if sign₁ == sign₂ then .zero sign₁ else .zero .positive
  | .zero _, y => y
  | x, .zero _ => x
  | .finite s₁ m₁ e₁ _, .finite s₂ m₂ e₂ _ =>
    let smallerExponent := min e₁ e₂
    let (m₁, _) := decreaseExponent m₁ e₁ smallerExponent
    let (m₂, _) := decreaseExponent m₂ e₂ smallerExponent
    let mantissa := s₁.apply m₁ + s₂.apply m₂
    normalize spec mantissa smallerExponent .positive

end Float.Model.UnpackedFloat
```
