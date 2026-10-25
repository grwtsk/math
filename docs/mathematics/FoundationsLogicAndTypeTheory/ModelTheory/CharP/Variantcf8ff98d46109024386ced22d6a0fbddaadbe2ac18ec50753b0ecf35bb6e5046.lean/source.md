# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.ModelTheory.CharP.Variantcf8ff98d46109024386ced22d6a0fbddaadbe2ac18ec50753b0ecf35bb6e5046

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `26fcf8157d79417016ca7d9bf610afa6324974a3` · SHA-256 `66e5e0c4cd07e8cb7555fee0ab03d3da3757edd3b6e536db322e191fdfdf3ac6`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.ModelTheory
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.ModelTheory.EqZero.Variantc1eedcf7fe9da412390245d37b8a49ad15cbcaf8d3cd674950773e9ae4e2b0ec","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"c1eedcf7fe9da412390245d37b8a49ad15cbcaf8d3cd674950773e9ae4e2b0ec","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Logic.ModelTheory.SourceCorpus.EqZero.Variantc1eedcf7fe9da412390245d37b8a49ad15cbcaf8d3cd674950773e9ae4e2b0ec","mathematical_subject":"Logic.ModelTheory","original_sha256":"c1eedcf7fe9da412390245d37b8a49ad15cbcaf8d3cd674950773e9ae4e2b0ec","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/ModelTheory/Algebra/Field/CharP.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2023 Chris Hughes. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Chris Hughes
-/

import Mathlib.Algebra.CharP.Basic
import Mathlib.ModelTheory.Algebra.Ring.FreeCommRing
import Mathlib.ModelTheory.Algebra.Field.Basic

/-!
# First order theory of fields

This file defines the first order theory of fields of characteristic `p` as a theory over the
language of rings

## Main definitions

- `FirstOrder.Language.Theory.fieldOfChar` : the first order theory of fields of characteristic `p`
  as a theory over the language of rings
-/


namespace GRWTSK.FoundationsLogicAndTypeTheory.ModelTheory.EqZero.Variantc1eedcf7fe9da412390245d37b8a49ad15cbcaf8d3cd674950773e9ae4e2b0ec

variable {p : ℕ} {K : Type*}

namespace FirstOrder

namespace Field

open Language Ring

/-- For a given natural number `n`, `eqZero n` is the sentence in the language of rings
saying that `n` is zero. -/
noncomputable def eqZero (n : ℕ) : Language.ring.Sentence :=
  Term.equal (termOfFreeCommRing n) 0

@[simp] theorem realize_eqZero [CommRing K] [CompatibleRing K] (n : ℕ)
    (v : Empty → K) : (Formula.Realize (eqZero n) v) ↔ ((n : K) = 0) := by
  simp [eqZero, Term.realize]

/-- The first order theory of fields of characteristic `p` as a theory over the language of rings -/
def _root_.GRWTSK.FoundationsLogicAndTypeTheory.ModelTheory.EqZero.Variantc1eedcf7fe9da412390245d37b8a49ad15cbcaf8d3cd674950773e9ae4e2b0ec.FirstOrder.Language.Theory.fieldOfChar (p : ℕ) : Language.ring.Theory :=
  Theory.field ∪
  if p = 0
  then (fun q => ∼(eqZero q)) '' {q : ℕ | q.Prime}
  else if p.Prime then {eqZero p}
  else {⊥}

instance model_hasChar_of_charP [Field K] [CompatibleRing K] [CharP K p] :
    (Theory.fieldOfChar p).Model K := by
  refine Language.Theory.model_union_iff.2 ⟨inferInstance, ?_⟩
  cases CharP.char_is_prime_or_zero K p with
  | inl hp =>
    simp [hp.ne_zero, hp, Sentence.Realize]
  | inr hp =>
    subst hp
    simp only [ite_false, ite_true, Theory.model_iff, Set.mem_image, Set.mem_setOf_eq,
      Sentence.Realize, forall_exists_index, and_imp, forall_apply_eq_imp_iff₂,
      Formula.realize_not, realize_eqZero, ← CharZero.charZero_iff_forall_prime_ne_zero]
    exact CharP.charP_to_charZero K

theorem charP_iff_model_fieldOfChar [Field K] [CompatibleRing K] :
    (Theory.fieldOfChar p).Model K ↔ CharP K p := by
  simp only [Theory.fieldOfChar, Theory.model_union_iff,
    (show (Theory.field.Model K) by infer_instance), true_and]
  split_ifs with hp0 hp
  · subst hp0
    simp only [Theory.model_iff, Set.mem_image, Set.mem_setOf_eq, Sentence.Realize,
      forall_exists_index, and_imp, forall_apply_eq_imp_iff₂, Formula.realize_not,
      realize_eqZero, ← CharZero.charZero_iff_forall_prime_ne_zero]
    exact ⟨fun _ => CharP.ofCharZero _, fun _ => CharP.charP_to_charZero K⟩
  · simp only [Theory.model_iff, Set.mem_singleton_iff, Sentence.Realize, forall_eq,
      realize_eqZero, ← CharP.charP_iff_prime_eq_zero hp]
  · simp only [Theory.model_iff, Set.mem_singleton_iff, Sentence.Realize,
      forall_eq, Formula.realize_bot, false_iff]
    intro H
    cases (CharP.char_is_prime_or_zero K p) <;> simp_all

instance model_fieldOfChar_of_charP [Field K] [CompatibleRing K]
    [CharP K p] : (Theory.fieldOfChar p).Model K :=
  charP_iff_model_fieldOfChar.2 inferInstance

variable (p) (K)
/- Not an instance because it caused performance problems in a different file. -/
theorem charP_of_model_fieldOfChar [Field K] [CompatibleRing K]
    [h : (Theory.fieldOfChar p).Model K] : CharP K p :=
  charP_iff_model_fieldOfChar.1 h

end Field

end FirstOrder
```
