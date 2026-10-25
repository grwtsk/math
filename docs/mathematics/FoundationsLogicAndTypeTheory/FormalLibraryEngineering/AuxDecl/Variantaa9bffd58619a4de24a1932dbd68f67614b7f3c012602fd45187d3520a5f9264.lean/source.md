# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.AuxDecl.Variantaa9bffd58619a4de24a1932dbd68f67614b7f3c012602fd45187d3520a5f9264

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `550f130bb56aa823e33e9429dae1329246d99479` · SHA-256 `44fcc07732639b2b3c89974a62c180e26cafb027b6443da1cbc96a60567c3811`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Foo.Variant895fadc40613228923bd2d0ce1d0fa14b2ee73f121aa3829f05d6a90e4f5004b","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"895fadc40613228923bd2d0ce1d0fa14b2ee73f121aa3829f05d6a90e4f5004b","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.Foo.Variant895fadc40613228923bd2d0ce1d0fa14b2ee73f121aa3829f05d6a90e4f5004b","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"895fadc40613228923bd2d0ce1d0fa14b2ee73f121aa3829f05d6a90e4f5004b","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/restored-inputs/packages/aesop/AesopTest/AuxDecl.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2025 Jannis Limperg. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Jannis Limperg
-/

import Aesop
import Std.Tactic.BVDecide

/-
This test case checks whether tactics that make use of auxiliary declarations,
such as `omega` and `bv_decide`, work with Aesop. Auxiliary declarations are
problematic because we can't allows tactics on different branches of the search
tree to add auxiliary declarations with the same name.
-/


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Foo.Variant895fadc40613228923bd2d0ce1d0fa14b2ee73f121aa3829f05d6a90e4f5004b

theorem foo (m n : Nat) : n + m = m + n ∧ m + n = n + m := by
  fail_if_success aesop (config := { terminal := true })
  aesop (add safe (by omega))

local instance [Add α] [Add β] : Add (α × β) :=
  ⟨λ (a, b) (a', b') => (a + a', b + b')⟩

theorem bar
    (fst snd fst_1 snd_1 fst_2 snd_2 w w_1 w_2 w_3 : BitVec 128)
    (left : w_1.uaddOverflow w_3 = true)
    (left_1 : w.uaddOverflow w_2 = true)
    (right : (w_1 + w_3).uaddOverflow 1#128 = true) :
    (fst_2, snd_2) = (fst, snd) + (fst_1, snd_1) := by
  aesop (add safe (by bv_decide))

theorem baz (a b : BitVec 1) : (a = 0 ∨ a = 1) ∧ (b = 0 ∨ b = 1) := by
  aesop (add safe 1000 (by bv_decide))
```
