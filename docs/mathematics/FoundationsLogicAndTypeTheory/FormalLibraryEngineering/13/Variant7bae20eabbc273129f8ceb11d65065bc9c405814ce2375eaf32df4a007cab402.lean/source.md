# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.13.Variant7bae20eabbc273129f8ceb11d65065bc9c405814ce2375eaf32df4a007cab402

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `49aff8de781b690bf5e52f1b732246909a5b5c5b` · SHA-256 `c72883202867d78817848d81bd73b73645f678f4b6797e099c2c6176e4345981`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Any.Variant5aa60b2809b2584a63efd8e93aecc14ea6aba21d804a040ada250720429e8f87","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"5aa60b2809b2584a63efd8e93aecc14ea6aba21d804a040ada250720429e8f87","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.Any.Variant5aa60b2809b2584a63efd8e93aecc14ea6aba21d804a040ada250720429e8f87","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"5aa60b2809b2584a63efd8e93aecc14ea6aba21d804a040ada250720429e8f87","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/restored-inputs/packages/aesop/AesopTest/13.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2022 Asta H. From. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Asta H. From, Jannis Limperg
-/
import Aesop


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Any.Variant5aa60b2809b2584a63efd8e93aecc14ea6aba21d804a040ada250720429e8f87

set_option aesop.check.all true
set_option aesop.smallErrorMessages true

inductive Any (P : α → Prop) : List α → Prop where
  | here (x xs) : P x → Any P (x :: xs)

inductive Perm : (xs ys : List α) → Type where
  | refl xs : Perm xs xs
  | prep (x xs ys) : Perm xs ys → Perm (x :: xs) (x :: ys)

theorem Perm.any {xs ys : List α} (perm : Perm xs ys) (P : α → Prop)
  : Any P xs → Any P ys := by
  induction perm <;> aesop (add safe [constructors Any, cases Any])

/--
error: Tactic `aesop` failed, maximum number of rule applications (100) reached. Set the 'maxRuleApplications' option to increase the limit.
-/
#guard_msgs in
theorem error (P : Nat → Prop) (Δ : List Nat) : Any P Δ := by
  aesop (add 50% [constructors Perm, constructors Any, Perm.any])
    (config := { maxRuleApplications := 100, terminal := true })

/--
error: Tactic `aesop` failed, failed to prove the goal after exhaustive search.
-/
#guard_msgs in
theorem fine (P : α → Prop) (Δ : List α) : Any P Δ := by
  aesop (add unsafe [50% constructors Perm, 50% constructors Any, apply 50% Perm.any])
    (config := { maxRuleApplications := 10, terminal := true })
```
