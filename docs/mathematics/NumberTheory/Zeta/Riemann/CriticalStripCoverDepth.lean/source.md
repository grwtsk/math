# Complete source: GRWTSK.NumberTheory.Zeta.Riemann.CriticalStripCoverDepth

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `7fb26810de85a88a3d8e130575d6766542ff52db` · SHA-256 `58338d85eb5f665fa1cc1ab708f3b2b62b997ef8048f566ff1d109a74e358f2e`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/- Copyright (c) 2026 grwtsk contributors. MIT.
Human mathematical direction: grwtsk contributors. Formalization assistance: OpenAI.
Mathlib results retain their upstream authorship and Apache-2.0 license. -/
import GRWTSK.NumberTheory.Zeta.Riemann.CriticalStripCoverClearance
import Mathlib.Analysis.SpecificLimits.Basic

set_option autoImplicit false

/-!
# A quantitative depth theorem for the existing squared-cover search

The algorithm itself is unchanged. On a well-formed rectangle, a longest-side
midpoint split decreases width plus height by a factor at most 3/4. Under an
actual uniform disk clearance epsilon, a span below epsilon fits into one disk.
The explicit sufficient budget is (3/4)^fuel * root.span <= epsilon.

This is conditional search completeness for a fixed robust geometric cover,
NOT production of an analytic cover, zeta nonvanishing, an all-height margin,
or completeness for arbitrary closed-disk covers. Shallow failure stays UNKNOWN.
All statements are source proof scripts awaiting exact Lean/axiom replay.
-/

namespace GRWTSK.RiemannHypothesis.CriticalStripHeightDescent.RationalPatchCover

namespace Rectangle

lemma west_midpoint_properties (b : Rectangle) (hb : b.WellFormed)
    (hlong : b.top - b.bottom ≤ b.right - b.left) :
    (b.west ((b.left + b.right) / 2)).WellFormed ∧
    (b.west ((b.left + b.right) / 2)).Within b ∧
    (b.west ((b.left + b.right) / 2)).span ≤ (3 / 4 : ℚ) * b.span := by
  have hx := hb.1
  have hy := hb.2
  dsimp only [west, WellFormed, Within, span]
  refine ⟨⟨?_, ?_⟩, ⟨?_, ?_, ?_, ?_⟩, ?_⟩ <;> linarith

lemma east_midpoint_properties (b : Rectangle) (hb : b.WellFormed)
    (hlong : b.top - b.bottom ≤ b.right - b.left) :
    (b.east ((b.left + b.right) / 2)).WellFormed ∧
    (b.east ((b.left + b.right) / 2)).Within b ∧
    (b.east ((b.left + b.right) / 2)).span ≤ (3 / 4 : ℚ) * b.span := by
  have hx := hb.1
  have hy := hb.2
  dsimp only [east, WellFormed, Within, span]
  refine ⟨⟨?_, ?_⟩, ⟨?_, ?_, ?_, ?_⟩, ?_⟩ <;> linarith

lemma south_midpoint_properties (b : Rectangle) (hb : b.WellFormed)
    (hlong : b.right - b.left ≤ b.top - b.bottom) :
    (b.south ((b.bottom + b.top) / 2)).WellFormed ∧
    (b.south ((b.bottom + b.top) / 2)).Within b ∧
    (b.south ((b.bottom + b.top) / 2)).span ≤ (3 / 4 : ℚ) * b.span := by
  have hx := hb.1
  have hy := hb.2
  dsimp only [south, WellFormed, Within, span]
  refine ⟨⟨?_, ?_⟩, ⟨?_, ?_, ?_, ?_⟩, ?_⟩ <;> linarith

lemma north_midpoint_properties (b : Rectangle) (hb : b.WellFormed)
    (hlong : b.right - b.left ≤ b.top - b.bottom) :
    (b.north ((b.bottom + b.top) / 2)).WellFormed ∧
    (b.north ((b.bottom + b.top) / 2)).Within b ∧
    (b.north ((b.bottom + b.top) / 2)).span ≤ (3 / 4 : ℚ) * b.span := by
  have hx := hb.1
  have hy := hb.2
  dsimp only [north, WellFormed, Within, span]
  refine ⟨⟨?_, ?_⟩, ⟨?_, ?_, ?_, ?_⟩, ?_⟩ <;> linarith

end Rectangle

namespace SquaredCover

/-- Even the proposal's early leaf result is sourced to the actual checked index. -/
theorem firstLeaf_sound {count : ℕ} (disks : Fin count → Disk) (b : Rectangle)
    (indices : List (Fin count)) : ∀ t : Tree count,
    firstLeaf disks b indices = some t → check disks t b = true := by
  induction indices with
  | nil => intro t h; simp [firstLeaf] at h
  | cons i is ih =>
      intro t h
      by_cases hi : b.WellFormed ∧ (disks i).SquaredContainsBox b
      · have ht : Tree.leaf i = t := by
          simpa only [firstLeaf, if_pos hi, Option.some.injEq] using h
        rw [← ht]
        simp only [check, decide_eq_true_eq]
        exact hi
      · apply ih t
        simpa only [firstLeaf, if_neg hi] using h

/-- A supplied valid disk occurs in the full finite enumeration; the first selected
leaf may be a different valid disk, which is also explicitly checked. -/
theorem firstLeaf_complete {count : ℕ} (disks : Fin count → Disk) (b : Rectangle)
    (indices : List (Fin count)) (hb : b.WellFormed)
    (hex : ∃ i ∈ indices, (disks i).SquaredContainsBox b) :
    ∃ t, firstLeaf disks b indices = some t ∧ check disks t b = true := by
  revert hex
  induction indices with
  | nil =>
      intro hex
      obtain ⟨i, hi, _⟩ := hex
      simp at hi
  | cons i is ih =>
      intro hex
      by_cases hi : b.WellFormed ∧ (disks i).SquaredContainsBox b
      · refine ⟨.leaf i, ?_, ?_⟩
        · simp only [firstLeaf, if_pos hi]
        · simpa only [check, decide_eq_true_eq] using hi
      · obtain ⟨j, hj, hd⟩ := hex
        have hjtail : j ∈ is := by
          rcases List.mem_cons.mp hj with heq | hj'
          · subst j
            exact (hi ⟨hb, hd⟩).elim
          · exact hj'
        obtain ⟨t, ht, hc⟩ := ih ⟨j, hjtail, hd⟩
        exact ⟨t, by simpa only [firstLeaf, if_neg hi] using ht, hc⟩

lemma full_firstLeaf_complete {count : ℕ} (disks : Fin count → Disk)
    (b : Rectangle) (hb : b.WellFormed)
    (hex : ∃ i, (disks i).SquaredContainsBox b) :
    ∃ t, firstLeaf disks b (List.ofFn (fun i : Fin count => i)) = some t ∧
      check disks t b = true := by
  apply firstLeaf_complete disks b _ hb
  obtain ⟨i, hi⟩ := hex
  exact ⟨i, by simp, hi⟩

lemma decay_budget_step {x y ε : ℝ} {n : ℕ}
    (hchild : y ≤ (3 / 4 : ℝ) * x)
    (hbudget : (3 / 4 : ℝ) ^ (n + 1) * x ≤ ε) :
    (3 / 4 : ℝ) ^ n * y ≤ ε := by
  calc
    (3 / 4 : ℝ) ^ n * y ≤ (3 / 4 : ℝ) ^ n * ((3 / 4 : ℝ) * x) :=
      mul_le_mul_of_nonneg_left hchild (by positivity)
    _ = (3 / 4 : ℝ) ^ (n + 1) * x := by rw [pow_succ]; ring
    _ ≤ ε := hbudget

/-- Quantitative completeness of the ACTUAL existing proposal, not a different
idealized refinement tree. All subrectangles retain exact root containment. -/
theorem propose_complete_of_small_boxes {count : ℕ} (disks : Fin count → Disk)
    (root : Rectangle) {ε : ℝ} (hε : 0 ≤ ε)
    (hlocal : SmallBoxCovered disks root ε) :
    ∀ (fuel : ℕ) (b : Rectangle), b.WellFormed → b.Within root →
      (3 / 4 : ℝ) ^ fuel * (b.span : ℝ) ≤ ε →
      ∃ t, propose disks fuel b = some t ∧ check disks t b = true := by
  intro fuel
  induction fuel with
  | zero =>
      intro b hb hsub hbudget
      have hsize : (b.span : ℝ) ≤ ε := by simpa only [pow_zero, one_mul] using hbudget
      obtain ⟨t, ht, hc⟩ := full_firstLeaf_complete disks b hb (hlocal b hb hsub hsize)
      exact ⟨t, by simpa only [propose] using ht, hc⟩
  | succ fuel ih =>
      intro b hb hsub hbudget
      cases hf : firstLeaf disks b (List.ofFn (fun i : Fin count => i)) with
      | some t =>
          exact ⟨t, by simp only [propose, hf], firstLeaf_sound disks b _ t hf⟩
      | none =>
          by_cases hreal : b.left < b.right ∧ b.top - b.bottom ≤ b.right - b.left
          · let cut : ℚ := (b.left + b.right) / 2
            have hw := b.west_midpoint_properties hb hreal.2
            have he := b.east_midpoint_properties hb hreal.2
            have hwb : (3 / 4 : ℝ) ^ fuel * ((b.west cut).span : ℝ) ≤ ε :=
              decay_budget_step (by exact_mod_cast hw.2.2) hbudget
            have heb : (3 / 4 : ℝ) ^ fuel * ((b.east cut).span : ℝ) ≤ ε :=
              decay_budget_step (by exact_mod_cast he.2.2) hbudget
            obtain ⟨l, hl, hcl⟩ := ih (b.west cut) hw.1 (hw.2.1.trans hsub) hwb
            obtain ⟨r, hr, hcr⟩ := ih (b.east cut) he.1 (he.2.1.trans hsub) heb
            have hcut : b.left < cut ∧ cut < b.right := by
              dsimp only [cut]
              constructor <;> linarith [hreal.1]
            refine ⟨.splitReal cut l r, ?_, ?_⟩
            · simpa only [propose, hf, if_pos hb, if_pos hreal, hl, hr]
            · simpa only [check, Bool.and_eq_true, decide_eq_true_eq] using
                And.intro (And.intro hb hcut) (And.intro hcl hcr)
          · by_cases himag : b.bottom < b.top
            · let cut : ℚ := (b.bottom + b.top) / 2
              have hlong : b.right - b.left ≤ b.top - b.bottom := by
                by_cases hx : b.left < b.right
                · have hnot : ¬ b.top - b.bottom ≤ b.right - b.left :=
                    fun h => hreal ⟨hx, h⟩
                  exact (lt_of_not_ge hnot).le
                · have hx' := le_of_not_gt hx
                  linarith [hb.1, hb.2]
              have hs := b.south_midpoint_properties hb hlong
              have hn := b.north_midpoint_properties hb hlong
              have hsb : (3 / 4 : ℝ) ^ fuel * ((b.south cut).span : ℝ) ≤ ε :=
                decay_budget_step (by exact_mod_cast hs.2.2) hbudget
              have hnb : (3 / 4 : ℝ) ^ fuel * ((b.north cut).span : ℝ) ≤ ε :=
                decay_budget_step (by exact_mod_cast hn.2.2) hbudget
              obtain ⟨l, hl, hcl⟩ := ih (b.south cut) hs.1 (hs.2.1.trans hsub) hsb
              obtain ⟨r, hr, hcr⟩ := ih (b.north cut) hn.1 (hn.2.1.trans hsub) hnb
              have hcut : b.bottom < cut ∧ cut < b.top := by
                dsimp only [cut]
                constructor <;> linarith
              refine ⟨.splitImag cut l r, ?_, ?_⟩
              · simpa only [propose, hf, if_pos hb, if_neg hreal, if_pos himag, hl, hr]
              · simpa only [check, Bool.and_eq_true, decide_eq_true_eq] using
                  And.intro (And.intro hb hcut) (And.intro hcl hcr)
            · have hy : b.top ≤ b.bottom := le_of_not_gt himag
              have hx : b.right ≤ b.left := by
                apply le_of_not_gt
                intro hpos
                exact hreal ⟨hpos, by linarith [hb.1]⟩
              have hspan : b.span = 0 := by
                unfold Rectangle.span
                linarith [hb.1, hb.2]
              have hsize : (b.span : ℝ) ≤ ε := by simpa only [hspan, Rat.cast_zero] using hε
              obtain ⟨t, ht, _⟩ := full_firstLeaf_complete disks b hb
                (hlocal b hb hsub hsize)
              rw [hf] at ht
              cases ht

/-- Rechecking succeeds on the exact proposal produced by the completeness proof. -/
theorem search_isSome_of_propose {count : ℕ} (disks : Fin count → Disk)
    (fuel : ℕ) (b : Rectangle) {t : Tree count}
    (ht : propose disks fuel b = some t) (hc : check disks t b = true) :
    (search disks fuel b).isSome = true := by
  simp only [search, ht, dif_pos hc, Option.isSome_some]

/-- Explicit depth theorem. It is a sufficient budget, not the minimum search depth. -/
theorem search_complete_of_clearance {count : ℕ} (disks : Fin count → Disk)
    (b : Rectangle) (hb : b.WellFormed) {ε : ℝ}
    (hclear : UniformDiskClearance disks b ε) (fuel : ℕ)
    (hbudget : (3 / 4 : ℝ) ^ fuel * (b.span : ℝ) ≤ ε) :
    (search disks fuel b).isSome = true := by
  obtain ⟨t, ht, hc⟩ := propose_complete_of_small_boxes disks b hclear.1.le
    hclear.smallBoxCovered fuel b hb b.within_refl hbudget
  exact search_isSome_of_propose disks fuel b ht hc

open Filter
open scoped Topology

/-- For this FIXED positive-clearance family, every sufficiently deep run succeeds.
No common epsilon over changing heights or analytic sources is asserted. -/
theorem search_eventually_succeeds_of_clearance {count : ℕ} (disks : Fin count → Disk)
    (b : Rectangle) (hb : b.WellFormed) {ε : ℝ}
    (hclear : UniformDiskClearance disks b ε) :
    ∀ᶠ fuel : ℕ in atTop, (search disks fuel b).isSome = true := by
  have hpow : Tendsto (fun n : ℕ => (3 / 4 : ℝ) ^ n) atTop (𝓝 0) :=
    tendsto_pow_atTop_nhds_zero_of_lt_one (by norm_num) (by norm_num)
  have hlimit : Tendsto (fun n : ℕ => (3 / 4 : ℝ) ^ n * (b.span : ℝ))
      atTop (𝓝 0) := by
    simpa only [zero_mul] using hpow.mul_const (b.span : ℝ)
  have hsmall : ∀ᶠ n : ℕ in atTop, (3 / 4 : ℝ) ^ n * (b.span : ℝ) < ε :=
    hlimit.eventually (Iio_mem_nhds hclear.1)
  exact hsmall.mono fun n hn => search_complete_of_clearance disks b hb hclear n hn.le

/-- Completeness for finite OPEN-disk covers at compact scope. The target and disk
family remain fixed. Closed coverage without a positive interior overlap does not
satisfy these hypotheses. No uniform rate is inferred from the classical minimum. -/
theorem search_eventually_of_compact_openCover {count : ℕ} (disks : Fin count → Disk)
    (b : Rectangle) (hb : b.WellFormed) (hcompact : IsCompact b.carrier)
    (hcover : OpenDiskCover disks b) :
    ∀ᶠ fuel : ℕ in atTop, (search disks fuel b).isSome = true := by
  obtain ⟨ε, hε⟩ := exists_clearance_of_compact_openCover disks b hb hcompact hcover
  exact search_eventually_succeeds_of_clearance disks b hb hε

/-- Failure after a sufficient numerical budget is a geometric obstruction to the
CLAIMED clearance. It is not a zero witness and not a refutation of all covers. -/
theorem no_clearance_of_budgeted_failure {count : ℕ} (disks : Fin count → Disk)
    (b : Rectangle) (hb : b.WellFormed) (fuel : ℕ) {ε : ℝ}
    (hbudget : (3 / 4 : ℝ) ^ fuel * (b.span : ℝ) ≤ ε)
    (hfail : (search disks fuel b).isSome = false) :
    ¬ UniformDiskClearance disks b ε := by
  intro hclear
  have hsuccess := search_complete_of_clearance disks b hb hclear fuel hbudget
  rw [hfail] at hsuccess
  cases hsuccess

/-- The depth theorem yields a finite analytic cover only with the existing,
independently proved analytic patch for every source-indexed disk. -/
noncomputable def coverOfClearance {count : ℕ} (disks : Fin count → Disk)
    (b : Rectangle) (hb : b.WellFormed) {ε : ℝ}
    (hclear : UniformDiskClearance disks b ε) (fuel : ℕ)
    (hbudget : (3 / 4 : ℝ) ^ fuel * (b.span : ℝ) ≤ ε)
    {F : ℂ → ℂ} (patches : ∀ i, SampleVariationPatch F (disks i).carrier) :
    FiniteVariationCover F b.carrier :=
  ((search disks fuel b).get
    (search_complete_of_clearance disks b hb hclear fuel hbudget)).toFiniteVariationCover patches

end SquaredCover
end GRWTSK.RiemannHypothesis.CriticalStripHeightDescent.RationalPatchCover
```
