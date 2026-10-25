# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.OfScientific.Variant416fdb0c8c756c5b3ac0c08e1748f754dc63cf0cd8366e0e9267a41982883cdb

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `ea5aa043ef51a914234ac2c250ec1357bbb94a8d` · SHA-256 `8b62c707bbc6c52931764a1da56c5d625ce8821fbd266566e6cdedfaf58613ff`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.OfScientific.Variantaf525ede55820b2abc0667f3edb75e736d0481cad6b03b6fd9ed3f2eeee0fdda","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"af525ede55820b2abc0667f3edb75e736d0481cad6b03b6fd9ed3f2eeee0fdda","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.NumbersAndBasicStructures.SourceCorpus.OfScientific.Variantaf525ede55820b2abc0667f3edb75e736d0481cad6b03b6fd9ed3f2eeee0fdda","mathematical_subject":"Foundations.NumbersAndBasicStructures","original_sha256":"af525ede55820b2abc0667f3edb75e736d0481cad6b03b6fd9ed3f2eeee0fdda","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/t-001-v1-export-v1/toolchain/src/lean/Init/Data/Float/Model/Unpacked/Operations/OfScientific.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2026 Lean FRO, LLC. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Julia M. Himmel
-/
module

prelude
public import Init.Data.Float.Model.Unpacked.Operations.Mul
public import Init.Data.Float.Model.Unpacked.Operations.Div
public import Init.Data.Nat.Bitwise.Lemmas

-- This file is part of the logical model for floats which authors of float libraries
-- need to rely on.

namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.OfScientific.Variantaf525ede55820b2abc0667f3edb75e736d0481cad6b03b6fd9ed3f2eeee0fdda

@[expose] public section

namespace Float.Model.UnpackedFloat

/-- Computes `m * 10 ^ e`. -/
def ofScientific (spec : Format) (m : Nat) (e : Int) : UnpackedFloat :=
  if hm : m = 0 then
    .zero .positive
  -- Safety check to avoid computing huge powers of ten
  else if e > 2 ^ spec.exponentBits then
    .infinity .positive
  -- Safety check to avoid computing huge powers of ten
  else if e < -((2 ^ spec.exponentBits : Int) + m.log2) then
    .zero .positive
  else if 0 ≤ e then
    mul spec (.finite .positive (m <<< spec.mantissaBits) (-spec.mantissaBits) (by simpa [Nat.pos_iff_ne_zero]))
      (.finite .positive (10 ^ e.toNat) 0 (Nat.pow_pos (by decide)))
  else
    div spec (.finite .positive m 0 (Nat.pos_iff_ne_zero.2 hm))
      (.finite .positive (10 ^ (-e).toNat) 0 (Nat.pow_pos (by decide)))

end Float.Model.UnpackedFloat
```
