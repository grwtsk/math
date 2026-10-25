# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Basic.Variant3197378fdbdf1904c47d091ec3ae83eba2a6b40fcc334cf69195492806482085

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `292863de7113f9d514e9bf660205be7f03ad8a60` · SHA-256 `a1da983d9587fa06ebd3a17905e15cea9088dd1c69a0e2f0dc41a19ffd070baa`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Sqrt.Variantf57f88ba1daaa0db650ad5f2386681f17d2ee01bf33213581f2530946c829df6","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"f57f88ba1daaa0db650ad5f2386681f17d2ee01bf33213581f2530946c829df6","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.NumbersAndBasicStructures.SourceCorpus.Sqrt.Variantf57f88ba1daaa0db650ad5f2386681f17d2ee01bf33213581f2530946c829df6","mathematical_subject":"Foundations.NumbersAndBasicStructures","original_sha256":"f57f88ba1daaa0db650ad5f2386681f17d2ee01bf33213581f2530946c829df6","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/t-001-v1-export-v1/toolchain/src/lean/Init/Data/Nat/Sqrt/Basic.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2016 Microsoft Corporation. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Leonardo de Moura, Jeremy Avigad, Mario Carneiro
-/
module

prelude
public import Init.Prelude
public import Init.Data.Nat.Log2
public import Init.Data.Nat.Bitwise.Basic
public import Init.WFTactics


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Sqrt.Variantf57f88ba1daaa0db650ad5f2386681f17d2ee01bf33213581f2530946c829df6

public section

namespace Nat

/--
Integer square root function. Implemented via Newton's method.
-/
@[expose]
def sqrt (n : Nat) : Nat :=
  if n ≤ 1 then n else
  iter n (1 <<< ((n.log2 / 2) + 1))
where
  /-- Auxiliary for `sqrt`. If `guess` is greater than the integer square root of `n`,
  returns the integer square root of `n`. -/
  iter (n guess : Nat) : Nat :=
    let next := (guess + n / guess) / 2
    if _h : next < guess then
      iter n next
    else
      guess
  termination_by guess

end Nat
```
