# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Split.Variantf708a0cb23b8b34cd0a59f15e52d307ff7648b0efeb94e343d7cf632aea55f40

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `234cbf2f42be0b9711e406d78863188473b4eb2a` · SHA-256 `54af1767408d08dfd1d353a6d5a4f6947f1a8810b7cbc811b3144e1640535483`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.MyEq.Variant5372116abbecdcd75ecca07300c528108796553a9e343e5ad3c6360dbd63001b","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"5372116abbecdcd75ecca07300c528108796553a9e343e5ad3c6360dbd63001b","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.MyEq.Variant5372116abbecdcd75ecca07300c528108796553a9e343e5ad3c6360dbd63001b","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"5372116abbecdcd75ecca07300c528108796553a9e343e5ad3c6360dbd63001b","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/restored-inputs/packages/aesop/AesopTest/Split.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2022 Jannis Limperg. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Jannis Limperg
-/

import Aesop


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.MyEq.Variant5372116abbecdcd75ecca07300c528108796553a9e343e5ad3c6360dbd63001b

set_option aesop.check.all true

-- Tests the builtin split rules.

@[aesop norm unfold]
def id' (n : Nat) : Nat :=
  match n with
  | .zero => .zero
  | .succ n => .succ n


-- First, the rule for splitting targets.
example : id' n = n := by
  aesop

-- Second, the rule for splitting hypotheses. We introduce a custom equality to
-- make sure that in the following example, Aesop doesn't just substitute the
-- hypothesis during norm simp.
inductive MyEq (x : α) : α → Prop
  | rfl : MyEq x x

@[aesop unsafe]
def MyEq.elim : MyEq x y → x = y
  | rfl => by rfl

example (h : MyEq n (id' m)) : n = m := by
  aesop
```
