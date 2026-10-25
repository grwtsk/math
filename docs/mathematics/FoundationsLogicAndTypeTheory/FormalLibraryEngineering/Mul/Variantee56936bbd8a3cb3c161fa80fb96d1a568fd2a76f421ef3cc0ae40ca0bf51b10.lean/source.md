# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Mul.Variantee56936bbd8a3cb3c161fa80fb96d1a568fd2a76f421ef3cc0ae40ca0bf51b10

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `0fe94718c647b54d9aaa8224e3d21cb46fdd5591` · SHA-256 `14b55bb9f60b00a2fd90f9950117663e5dca20e8898191aeacef08abd718ab79`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Mul.Varianteb6eb53e735fa2adbc78d4dbbd00382c4829579fe529594dc4afc638de9b0849","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"eb6eb53e735fa2adbc78d4dbbd00382c4829579fe529594dc4afc638de9b0849","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.NumbersAndBasicStructures.SourceCorpus.Mul.Varianteb6eb53e735fa2adbc78d4dbbd00382c4829579fe529594dc4afc638de9b0849","mathematical_subject":"Foundations.NumbersAndBasicStructures","original_sha256":"eb6eb53e735fa2adbc78d4dbbd00382c4829579fe529594dc4afc638de9b0849","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/t-001-v1-export-v1/toolchain/src/lean/Init/Data/Float/Model/Unpacked/Operations/Mul.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
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

namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Mul.Varianteb6eb53e735fa2adbc78d4dbbd00382c4829579fe529594dc4afc638de9b0849

@[expose] public section

namespace Float.Model.UnpackedFloat

/--
Computes the product of two floating-point numbers and rounds the result according to
the given specification.
-/
def mul (spec : Format) : UnpackedFloat → UnpackedFloat → UnpackedFloat
  | .notANumber, _ => .notANumber
  | _, .notANumber => .notANumber
  | .infinity sign₁, .infinity sign₂ => .infinity (sign₁ * sign₂)
  | .infinity sign₁, .finite sign₂ .. => .infinity (sign₁ * sign₂)
  | .finite sign₁ .., .infinity sign₂ => .infinity (sign₁ * sign₂)
  | .infinity _, .zero _ => .notANumber
  | .zero _, .infinity _ => .notANumber
  | .finite sign₁ .., .zero sign₂ => .zero (sign₁ * sign₂)
  | .zero sign₁, .finite sign₂ .. => .zero (sign₁ * sign₂)
  | .zero sign₁, .zero sign₂ => .zero (sign₁ * sign₂)
  | .finite s₁ m₁ e₁ _, .finite s₂ m₂ e₂ _ =>
    roundWithAccuracy spec (s₁ * s₂) (m₁ * m₂) (e₁ + e₂) .exact

end Float.Model.UnpackedFloat
```
