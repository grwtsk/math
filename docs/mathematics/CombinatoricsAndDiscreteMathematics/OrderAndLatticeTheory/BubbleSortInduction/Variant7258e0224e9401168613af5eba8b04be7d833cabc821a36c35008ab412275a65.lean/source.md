# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.OrderAndLatticeTheory.BubbleSortInduction.Variant7258e0224e9401168613af5eba8b04be7d833cabc821a36c35008ab412275a65

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `ac57d53e64629a2cebbea513fb79485efd168b3f` · SHA-256 `7de7fb6b2dbc4c748afd3c17541f4464e1ae3ffce986d8af2d2d4b4fc9c54daf`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics.OrderAndLatticeTheory
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.OrderAndLatticeTheory.BubbleSortInductionPrime.Variant6ca002c6d8820ef478a1729cbedd39fb718eda90cfa2240991894b4f22be0710","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"6ca002c6d8820ef478a1729cbedd39fb718eda90cfa2240991894b4f22be0710","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.OrderTheory.SourceCorpus.BubbleSortInductionPrime.Variant6ca002c6d8820ef478a1729cbedd39fb718eda90cfa2240991894b4f22be0710","mathematical_subject":"Algebra.OrderTheory","original_sha256":"6ca002c6d8820ef478a1729cbedd39fb718eda90cfa2240991894b4f22be0710","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/rh16-games-packets/external/replay/.lake/packages/mathlib/Mathlib/Data/Fin/Tuple/BubbleSortInduction.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2022 Michael Stoll. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Michael Stoll
-/
module

public import Mathlib.Basic.Finite.Prod
public import Mathlib.Data.Fin.Tuple.Sort
public import Mathlib.Order.PiLex
public import Mathlib.Order.WellFounded

/-!
# "Bubble sort" induction

We implement the following induction principle `Tuple.bubble_sort_induction`
on tuples with values in a linear order `α`.

Let `f : Fin n → α` and let `P` be a predicate on `Fin n → α`. Then we can show that
`f ∘ sort f` satisfies `P` if `f` satisfies `P`, and whenever some `g : Fin n → α`
satisfies `P` and `g i > g j` for some `i < j`, then `g ∘ swap i j` also satisfies `P`.

We deduce it from a stronger variant `Tuple.bubble_sort_induction'`, which
requires the assumption only for `g` that are permutations of `f`.

The latter is proved by well-founded induction via `WellFounded.induction_bot'`
with respect to the lexicographic ordering on the finite set of all permutations of `f`.
-/


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.OrderAndLatticeTheory.BubbleSortInductionPrime.Variant6ca002c6d8820ef478a1729cbedd39fb718eda90cfa2240991894b4f22be0710

public section


namespace Tuple

/-- *Bubble sort induction*: Prove that the sorted version of `f` has some property `P`
if `f` satisfies `P` and `P` is preserved on permutations of `f` when swapping two
antitone values. -/
theorem bubble_sort_induction' {n : ℕ} {α : Type*} [LinearOrder α] {f : Fin n → α}
    {P : (Fin n → α) → Prop} (hf : P f)
    (h : ∀ (σ : Equiv.Perm (Fin n)) (i j : Fin n),
      i < j → (f ∘ σ) j < (f ∘ σ) i → P (f ∘ σ) → P (f ∘ σ ∘ Equiv.swap i j)) :
    P (f ∘ sort f) := by
  let := @Preorder.lift _ (Lex (Fin n → α)) _ fun σ : Equiv.Perm (Fin n) => toLex (f ∘ σ)
  refine
    @WellFounded.induction_bot' _ _ _ (inferInstance : WellFoundedLT _)
      (Equiv.refl _) (sort f) P (fun σ => f ∘ σ) (fun σ hσ hfσ => ?_) hf
  obtain ⟨i, j, hij₁, hij₂⟩ := antitone_pair_of_not_sorted' hσ
  exact ⟨σ * Equiv.swap i j, Pi.lex_desc hij₁.le hij₂, h σ i j hij₁ hij₂ hfσ⟩

/-- *Bubble sort induction*: Prove that the sorted version of `f` has some property `P`
if `f` satisfies `P` and `P` is preserved when swapping two antitone values. -/
theorem bubble_sort_induction {n : ℕ} {α : Type*} [LinearOrder α] {f : Fin n → α}
    {P : (Fin n → α) → Prop} (hf : P f)
    (h : ∀ (g : Fin n → α) (i j : Fin n), i < j → g j < g i → P g → P (g ∘ Equiv.swap i j)) :
    P (f ∘ sort f) :=
  bubble_sort_induction' hf fun _ => h _

end Tuple
```
