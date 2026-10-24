# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.D429b98523c875ffe65c5c048f40a68619fb6eed79ec0d3e3819ed79dafba8f9Candidate.Variant65249539a6dfbda433420dc1fa356c93708bc1d5a042145ecefbbd9104db5a7a

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `604ee4e1fd6651b2b7ad0065ff0d4aed24f828b2` · SHA-256 `65249539a6dfbda433420dc1fa356c93708bc1d5a042145ecefbbd9104db5a7a`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Mathlib.Data.Finset.Lattice.Fold
import Mathlib.Data.Finset.Max
import Mathlib.Data.Fintype.Order
import Mathlib.Data.Fintype.Powerset
import Mathlib.Data.Real.Basic
import Mathlib.Tactic.Linarith

/-!
# Canonical maximal defect on a finite lattice

This is a finite-lattice extraction of the total-defect argument in
`OpenAI/math` at revision `adc7f1241b42e322a6451854ab7e4b4c146bf78a`,
`preprints/Milnes-rationality-conjecture-for-abelian-varieties-September-23-2026/`
`build/sections/03_filtration.tex`, equation `eq:filtration-supermodularity`
and the immediately following invariant-selection argument.

Finiteness of the carrier is a sufficient hypothesis here. Merely having
finitely many defect values would not ensure a greatest maximizer on an
arbitrary lattice. The attained-maximum variant below instead explicitly
requires finiteness of the maximizer set. No isocrystal, source-observable,
arithmetic cap, or RH witness is constructed by this module.

Research direction and evaluation: grwtsk contributors.
Formal extraction and Lean implementation: OpenAI Codex / ChatGPT.
Acceptance and independent review remain pending.
-/

namespace FormalResearch.PositiveAtlas.MaximalDefect

universe u

variable {α : Type u} [Lattice α]

/-- The total-defect inequality, with meet and join on the stated carrier. -/
def Supermodular (f : α → ℝ) : Prop :=
  ∀ x y, f x + f y ≤ f (x ⊓ y) + f (x ⊔ y)

/-- A global maximizer, with attainment expressed by the selected element. -/
def IsMaximizer (f : α → ℝ) (x : α) : Prop :=
  ∀ y, f y ≤ f x

/-- Meet and join of global maximizers are again global maximizers. -/
theorem maximizers_inf_sup {f : α → ℝ} (hf : Supermodular f)
    {x y : α} (hx : IsMaximizer f x) (hy : IsMaximizer f y) :
    IsMaximizer f (x ⊓ y) ∧ IsMaximizer f (x ⊔ y) := by
  have hsuper := hf x y
  have hxy := hy x
  have hinf := hx (x ⊓ y)
  have hsup := hx (x ⊔ y)
  constructor
  · intro z
    have hz := hx z
    linarith
  · intro z
    have hz := hx z
    linarith

/-- An attained maximum and a finite maximizer set give a unique greatest
maximizer. This variant does not assume that the whole carrier is finite. -/
theorem exists_unique_greatest_maximizer_of_attained
    {f : α → ℝ} (hf : Supermodular f)
    (hfinite : {x | IsMaximizer f x}.Finite)
    (hattained : ∃ x, IsMaximizer f x) :
    ∃! g, IsGreatest {x | IsMaximizer f x} g := by
  classical
  let s := hfinite.toFinset
  have hs : s.Nonempty := by
    obtain ⟨x, hx⟩ := hattained
    exact ⟨x, hfinite.mem_toFinset.mpr hx⟩
  let g := s.sup' hs id
  have hg : IsGreatest {x | IsMaximizer f x} g := by
    constructor
    · exact Finset.sup'_induction hs id
        (fun x hx y hy => (maximizers_inf_sup hf hx hy).2)
        (fun x hx => hfinite.mem_toFinset.mp hx)
    · intro x hx
      exact Finset.le_sup' id (hfinite.mem_toFinset.mpr hx)
  exact ⟨g, hg, fun y hy => hy.unique hg⟩

/-- A nonempty finite lattice supplies both attainment and a finite maximizer
set; no numerical upper bound on the attained defect is asserted. -/
theorem exists_unique_greatest_maximizer [Finite α] [Nonempty α]
    {f : α → ℝ} (hf : Supermodular f) :
    ∃! g, IsGreatest {x | IsMaximizer f x} g := by
  classical
  let := Fintype.ofFinite α
  obtain ⟨x, _, hx⟩ := Finset.exists_max_image Finset.univ f Finset.univ_nonempty
  apply exists_unique_greatest_maximizer_of_attained hf (Set.toFinite _)
  exact ⟨x, fun y => hx y (Finset.mem_univ y)⟩

/-- Every defect-preserving order automorphism fixes a greatest maximizer.
For a lattice, an order automorphism also preserves meet and join. -/
theorem greatest_maximizer_fixed {f : α → ℝ} {g : α}
    (hg : IsGreatest {x | IsMaximizer f x} g)
    (e : α ≃o α) (hpreserve : ∀ x, f (e x) = f x) : e g = g := by
  have heg : IsMaximizer f (e g) := by
    intro y
    simpa only [hpreserve] using hg.1 y
  have hsymg : IsMaximizer f (e.symm g) := by
    intro y
    have heq : f g = f (e.symm g) := by
      simpa only [e.apply_symm_apply] using hpreserve (e.symm g)
    exact (hg.1 y).trans heq.le
  apply le_antisymm (hg.2 heg)
  simpa only [e.apply_symm_apply] using e.monotone (hg.2 hsymg)

/-- The unique greatest maximizer is fixed simultaneously by every specified
defect-preserving lattice symmetry. -/
theorem exists_greatest_maximizer_fixed [Finite α] [Nonempty α]
    {f : α → ℝ} (hf : Supermodular f) :
    ∃ g, IsGreatest {x | IsMaximizer f x} g ∧
      ∀ (e : α ≃o α), (∀ x, f (e x) = f x) → e g = g := by
  obtain ⟨g, hg, _⟩ := exists_unique_greatest_maximizer hf
  exact ⟨g, hg, fun e he => greatest_maximizer_fixed hg e he⟩

/-- Concrete finite-subset form: meet is intersection and join is union.
The coordinate type must be finite; no native source carrier is inferred. -/
theorem finset_exists_greatest_maximizer_fixed {ι : Type u} [Finite ι] [DecidableEq ι]
    {f : Finset ι → ℝ}
    (hf : ∀ s t, f s + f t ≤ f (s ∩ t) + f (s ∪ t)) :
    ∃ g, IsGreatest {s | IsMaximizer f s} g ∧
      ∀ (e : Finset ι ≃o Finset ι), (∀ s, f (e s) = f s) → e g = g := by
  classical
  let := Fintype.ofFinite ι
  exact exists_greatest_maximizer_fixed hf

/-- Canonical invariant selection does not supply any quantitative cap:
constant defects can be arbitrarily large even on a two-element lattice. -/
theorem canonical_selection_does_not_bound_defect (C : ℝ) :
    ∃ f : Finset Unit → ℝ, Supermodular f ∧
      (∃! g, IsGreatest {s | IsMaximizer f s} g) ∧ ∀ s, C < f s := by
  refine ⟨fun _ => C + 1, ?_, ?_, ?_⟩
  · intro s t
    exact le_rfl
  · exact exists_unique_greatest_maximizer (fun _ _ => le_rfl)
  · intro s
    linarith

end FormalResearch.PositiveAtlas.MaximalDefect
```
