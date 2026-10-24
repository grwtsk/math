# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Repr.Variant7c548adf6b01ec562ee0decbd94055bacd7753fa47726d77ba0c1bde3e29f9ba

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `f9aa2d4c9b64174fe562f7a89e6f50582ac3f706` · SHA-256 `75303f1fad19517aa78333cdcd92f7d8f12c8c5154fbf3f72b679e78b06650e1`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Repr.Variantfa587ab3f1773df26ab4e723a852355d0911a64da1848a0273c31a71015b4853","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"fa587ab3f1773df26ab4e723a852355d0911a64da1848a0273c31a71015b4853","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.NumbersAndBasicStructures.SourceCorpus.Repr.Variantfa587ab3f1773df26ab4e723a852355d0911a64da1848a0273c31a71015b4853","mathematical_subject":"Foundations.NumbersAndBasicStructures","original_sha256":"fa587ab3f1773df26ab4e723a852355d0911a64da1848a0273c31a71015b4853","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/t-001-v1-export-v1/toolchain/src/lean/Init/Data/Int/Repr.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2016 Microsoft Corporation. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Author: Leonardo de Moura
-/
module

prelude
public import Init.Data.Repr
public import Init.Data.String.Defs


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Repr.Variantfa587ab3f1773df26ab4e723a852355d0911a64da1848a0273c31a71015b4853

namespace Int

/--
Returns the decimal string representation of an integer.
-/
public protected def repr : Int → String
  | ofNat m   => Nat.repr m
  | negSucc m => "-" ++ Nat.repr (Nat.succ m)

public instance : Repr Int where
  reprPrec i prec := if i < 0 then Repr.addAppParen i.repr prec else i.repr

end Int
```
