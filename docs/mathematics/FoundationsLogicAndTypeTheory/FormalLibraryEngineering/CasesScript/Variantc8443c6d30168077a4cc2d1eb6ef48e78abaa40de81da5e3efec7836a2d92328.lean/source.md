# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.CasesScript.Variantc8443c6d30168077a4cc2d1eb6ef48e78abaa40de81da5e3efec7836a2d92328

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `c438d429ad174dac7923e6325bd8d8ea55686e58` · SHA-256 `c690adfc4939929654f4916d379828a2a5e4cf5b951e18e975309d5d84a7ff07`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.FancyAnd.Variant7df7a88783a2d6dfef01b96d9b375e2157ea2db9a0ba4260a8d048c29b90265d","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"7df7a88783a2d6dfef01b96d9b375e2157ea2db9a0ba4260a8d048c29b90265d","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.FancyAnd.Variant7df7a88783a2d6dfef01b96d9b375e2157ea2db9a0ba4260a8d048c29b90265d","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"7df7a88783a2d6dfef01b96d9b375e2157ea2db9a0ba4260a8d048c29b90265d","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/restored-inputs/packages/aesop/AesopTest/CasesScript.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2024 Jannis Limperg. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Jannis Limperg
-/

import Aesop


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.FancyAnd.Variant7df7a88783a2d6dfef01b96d9b375e2157ea2db9a0ba4260a8d048c29b90265d

set_option aesop.check.all true

@[aesop 50% cases]
inductive FancyAnd (α β : Prop) : Prop
  | dummy (p : Empty)
  | and (a : α) (b : β)

/--
info: Try this:

  [apply]     apply And.intro
    ·
      cases h with
      | dummy p =>
        have fwd : False := Aesop.BuiltinRules.empty_false p
        simp_all only
      | and a b => simp_all only
    ·
      cases h with
      | dummy p =>
        have fwd : False := Aesop.BuiltinRules.empty_false p
        simp_all only
      | and a b => simp_all only
-/
#guard_msgs in
example {α β} (h : FancyAnd α β) : α ∧ β := by
  aesop?

@[aesop safe cases (cases_patterns := [All _ [], All _ (_ :: _)])]
inductive All (P : α → Prop) : List α → Prop
  | nil : All P []
  | cons : P x → All P xs → All P (x :: xs)

@[aesop 99% constructors]
structure MyTrue : Prop

/--
info: Try this:

  [apply]     rcases h with ⟨⟩ | @⟨x_1, xs_1, a, a_1⟩
    apply MyTrue.mk
-/
#guard_msgs in
example {P : α → Prop} (h : All P (x :: xs)) : MyTrue := by
  aesop?
```
