# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Indent.Variantb47a18a5125883e483c41ec9f486aecd3a81b51d18be18db3d1113cb6f5d11b6

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `68e0b2898a0245a86ae616f64cc63be9689dcb31` · SHA-256 `82ed853cfccd27084c64f10cf910f97dc1e86bda0352893dc7ed8298d2326bf3`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Aesop.Variant6bbe8fa9a55f6d3cb38a90a7c89e654f27dd933b2826e1c2fef683682ef5815b","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"6bbe8fa9a55f6d3cb38a90a7c89e654f27dd933b2826e1c2fef683682ef5815b","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.Aesop.Variant6bbe8fa9a55f6d3cb38a90a7c89e654f27dd933b2826e1c2fef683682ef5815b","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"6bbe8fa9a55f6d3cb38a90a7c89e654f27dd933b2826e1c2fef683682ef5815b","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/restored-inputs/packages/aesop/AesopTest/Indent.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2025 Alex Best. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Alex Best, Jannis Limperg
-/

import Aesop

/-! Test case for clause indentation. We require Aesop tactic clauses to be on
the same line or indented, to prevent Aesop from mistaking the following
tactics for clauses. -/


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Aesop.Variant6bbe8fa9a55f6d3cb38a90a7c89e654f27dd933b2826e1c2fef683682ef5815b

example : ∃ n : Nat, n ^ 2 = 4 ∧ ∃ n : Nat, n ^ 2 = 9 ∧ True := by
  aesop
    (config := { maxRuleApplications := 1, warnOnNonterminal := false })
  (exists 2)
  (exists 3)

example : ∃ n : Nat, n ^ 2 = 4 ∧ ∃ n : Nat, n ^ 2 = 9 ∧ True := by
  aesop (config := { maxRuleApplications := 1, warnOnNonterminal := false })
  (exists 2)
  (exists 3)
```
