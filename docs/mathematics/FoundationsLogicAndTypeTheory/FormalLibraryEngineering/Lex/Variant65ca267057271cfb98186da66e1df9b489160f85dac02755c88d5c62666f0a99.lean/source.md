# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Lex.Variant65ca267057271cfb98186da66e1df9b489160f85dac02755c88d5c62666f0a99

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `4c62eff72f863ec42ce0d1853bd6985e1e423efb` · SHA-256 `56e94ee49239a01c137e849a814b236d043cf81f096af148fd4c862fc1a52c4d`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.SourceUnit.Variant4ba1fe0d25c80efbeb181a7e157352414d0b1cfa8aec7acb1eff4273784b9e69","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"4ba1fe0d25c80efbeb181a7e157352414d0b1cfa8aec7acb1eff4273784b9e69","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.Unclassified.SourceCorpus.SourceUnit.Variant4ba1fe0d25c80efbeb181a7e157352414d0b1cfa8aec7acb1eff4273784b9e69","mathematical_subject":"Foundations.Unclassified","original_sha256":"4ba1fe0d25c80efbeb181a7e157352414d0b1cfa8aec7acb1eff4273784b9e69","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/August/-/spectral-proof-exe/.lake/packages/std/Std/Data/Prod/Lex.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2022 Jannis Limperg. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Jannis Limperg
-/


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.SourceUnit.Variant4ba1fe0d25c80efbeb181a7e157352414d0b1cfa8aec7acb1eff4273784b9e69

namespace Prod.Lex

instance [αeqDec : DecidableEq α] {r : α → α → Prop} [rDec : DecidableRel r]
    {s : β → β → Prop} [sDec : DecidableRel s] : DecidableRel (Prod.Lex r s)
  | (a, b), (a', b') =>
    match rDec a a' with
    | isTrue raa' => isTrue $ left b b' raa'
    | isFalse nraa' =>
      match αeqDec a a' with
      | isTrue eq => by
        subst eq
        cases sDec b b' with
        | isTrue sbb' => exact isTrue $ right a sbb'
        | isFalse nsbb' =>
          apply isFalse; intro contra; cases contra <;> contradiction
      | isFalse neqaa' => by
        apply isFalse; intro contra; cases contra <;> contradiction
```
