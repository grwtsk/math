# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.27.Variant0f8a5faf0ddd64d3627ac9ca6126dc583fdbf310e6b9f71e34de362bbd3ac615

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `d1b2e5f18c2976994ba6c18ed10a6cd0b485ae13` · SHA-256 `08999f819841d8b12c5373f028413cdd7320fef6b95c2a9b4402500882d2adfc`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.All.Variant5a909178838913565c551a54acb37c9eebbcf5ad2743f0acc9f9787af6250cfb","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"5a909178838913565c551a54acb37c9eebbcf5ad2743f0acc9f9787af6250cfb","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.DataStructures.SourceCorpus.All.Variant5a909178838913565c551a54acb37c9eebbcf5ad2743f0acc9f9787af6250cfb","mathematical_subject":"Computation.DataStructures","original_sha256":"5a909178838913565c551a54acb37c9eebbcf5ad2743f0acc9f9787af6250cfb","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/restored-inputs/packages/aesop/AesopTest/27.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2022 Jannis Limperg. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Asta H. From, Jannis Limperg
-/

-- This test checks whether the output of trace.aesop.proof is
-- copy-and-pastable. When the test breaks because Aesop's output has changed,
-- please copy-and-paste the output to All.split_cons₂ and check whether it
-- still works.

import Aesop


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.All.Variant5a909178838913565c551a54acb37c9eebbcf5ad2743f0acc9f9787af6250cfb

set_option aesop.check.all true

@[aesop safe [constructors, cases (cases_patterns := [All _ [], All _ (_ :: _)])]]
inductive All (P : α → Prop) : List α → Prop
  | nil : All P []
  | cons {x xs} : P x → All P xs → All P (x :: xs)

/--
trace: [aesop.proof] Final proof:
      casesOn (P := P) (motive := fun a x_1 => x :: xs = a → h ≍ x_1 → P x ∧ All P xs) h
        (fun h_1 => False.elim (noConfusion_of_Nat List.ctorIdx h_1))
        (fun {x_1} {xs_1} a a_1 h_1 =>
          List.cons.noConfusion h_1 fun head_eq =>
            Eq.ndrec (motive := fun {x_1} => ∀ (a : P x_1), xs ≍ xs_1 → h ≍ cons (P := P) a a_1 → P x ∧ All P xs)
              (fun a tail_eq =>
                Eq.ndrec (motive := fun {xs_1} => ∀ (a_1 : All P xs_1), h ≍ cons (P := P) a a_1 → P x ∧ All P xs)
                  (fun a_1 h => of_eq_true (Eq.trans (congr (congrArg And (eq_true a)) (eq_true a_1)) (and_self True)))
                  (eq_of_heq tail_eq) a_1)
              (eq_of_heq head_eq) a)
        (Eq.refl (x :: xs)) (HEq.refl h)
-/
#guard_msgs in
theorem All.split_cons (P : α → Prop) (x : α) (xs : List α) (h : All P (x :: xs))
  : P x ∧ All P xs := by
  set_option trace.aesop.proof true in
  aesop

theorem All.split_cons₂ (P : α → Prop) (x : α) (xs : List α) (h : All P (x :: xs))
  : P x ∧ All P xs :=
      casesOn (P := P) (motive := fun a x_1 => x :: xs = a → h ≍ x_1 → P x ∧ All P xs) h
        (fun h_1 => False.elim (noConfusion_of_Nat List.ctorIdx h_1))
        (fun {x_1} {xs_1} a a_1 h_1 =>
          List.cons.noConfusion h_1 fun head_eq =>
            Eq.ndrec (motive := fun {x_1} => ∀ (a : P x_1), xs ≍ xs_1 → h ≍ cons (P := P) a a_1 → P x ∧ All P xs)
              (fun a tail_eq =>
                Eq.ndrec (motive := fun {xs_1} => ∀ (a_1 : All P xs_1), h ≍ cons (P := P) a a_1 → P x ∧ All P xs)
                  (fun a_1 h => of_eq_true (Eq.trans (congr (congrArg And (eq_true a)) (eq_true a_1)) (and_self True)))
                  (eq_of_heq tail_eq) a_1)
              (eq_of_heq head_eq) a)
        (Eq.refl (x :: xs)) (HEq.refl h)
```
