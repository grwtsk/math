# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Sign.Variant1fac74e659e0a1c4ab34cf218f33f87996ec479494039650cfa988f70b8da191

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `b7eef53d738f2184bb74f0b4b8870b1b30280847` · SHA-256 `d74845885474ca08a2bec7b0d1e555eeadd63c11cde19513070e0ec30ca917e9`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Neg.Variantd63595e4ab404afda4fa46600b985477d478b6bb5d68240f9c4ad9c81c44435f","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"d63595e4ab404afda4fa46600b985477d478b6bb5d68240f9c4ad9c81c44435f","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.NumbersAndBasicStructures.SourceCorpus.Neg.Variantd63595e4ab404afda4fa46600b985477d478b6bb5d68240f9c4ad9c81c44435f","mathematical_subject":"Foundations.NumbersAndBasicStructures","original_sha256":"d63595e4ab404afda4fa46600b985477d478b6bb5d68240f9c4ad9c81c44435f","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/t-001-v1-export-v1/toolchain/src/lean/Init/Data/Float/Model/Unpacked/Operations/Sign.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2026 Lean FRO, LLC. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Julia M. Himmel
-/
module

prelude
public import Init.Data.Float.Model.Unpacked.Basic

-- This file is part of the logical model for floats which authors of float libraries
-- need to rely on.

namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Neg.Variantd63595e4ab404afda4fa46600b985477d478b6bb5d68240f9c4ad9c81c44435f

@[expose] public section

namespace Float.Model.UnpackedFloat

/-- Negates the given float. -/
def neg : UnpackedFloat → UnpackedFloat
  | .notANumber => .notANumber
  | .infinity s => .infinity (-s)
  | .zero s => .zero (-s)
  | .finite s m e hm => .finite (-s) m e hm

/-- Returns the given float with positive sign. -/
def abs : UnpackedFloat → UnpackedFloat
  | .notANumber => .notANumber
  | .infinity _ => .infinity .positive
  | .zero _ => .zero .positive
  | .finite _ m e hm => .finite .positive m e hm

end Float.Model.UnpackedFloat
```
