/- Copyright (c) 2026 grwtsk contributors. MIT.
Human research direction: grwtsk contributors. Proof drafting assistance: OpenAI ChatGPT.
Mathlib results retain their upstream authorship and Apache-2.0 license. -/
import GRWTSK.NumberTheory.Zeta.Riemann.CanonicalZeroDivisor
import GRWTSK.NumberTheory.Zeta.Riemann.TrivialZeroResidues
import Mathlib.Analysis.SpecificLimits.Basic
import Mathlib.Tactic

set_option autoImplicit false

/-!
# Zero-free rectangular boundaries for the actual zeta source

Finite canonical height inventories construct heights H_N in (N+1,N+2).
The left edge is -2N-1, the right edge is 2. All four boundary segments avoid
both zeros and the pole. The interior inventory is exactly the pole, the
canonical nontrivial height head, and the first N negative-even points.

This is noncomputable qualitative contour selection, not a certified numerical
height algorithm or a quantitative lower bound for distance to the divisor.
No zero-count estimate, boundary-decay assertion, residue theorem, or RH
assumption is introduced. SOURCE_ONLY / NOT_RUN / NOT_KERNEL_AUDITED.
-/

namespace GRWTSK.RiemannHypothesis.AdmissibleRectangles

open Set Filter
open scoped Topology BigOperators
open CanonicalZeroDivisor TrivialZeroResidues

noncomputable section

private theorem exists_between_avoiding (S : Finset ℝ) (a b : ℝ) (hab : a < b) :
    ∃ t : ℝ, a < t ∧ t < b ∧ t ∉ S := by
  classical
  induction S using Finset.induction_on generalizing a b with
  | empty =>
      obtain ⟨t, hat, htb⟩ := exists_between hab
      exact ⟨t, hat, htb, by simp⟩
  | @insert c S hc ih =>
      obtain ⟨m, ham, hmb⟩ := exists_between hab
      by_cases hcm : c ≤ m
      · obtain ⟨t, hmt, htb, htS⟩ := ih m b hmb
        refine ⟨t, ham.trans hmt, htb, ?_⟩
        simp only [Finset.mem_insert, not_or]
        exact ⟨by intro h; subst t; linarith, htS⟩
      · obtain ⟨t, hat, htm, htS⟩ := ih a m ham
        refine ⟨t, hat, htm.trans hmb, ?_⟩
        simp only [Finset.mem_insert, not_or]
        exact ⟨by intro h; subst t; linarith, htS⟩

/-- Only a complete canonical finite set is used in the avoidance construction. -/
theorem exists_admissible_height (N : ℕ) :
    ∃ T : ℝ, (N : ℝ) + 1 < T ∧ T < (N : ℝ) + 2 ∧
      ∀ z : ZeroPoint, height z ≠ T := by
  classical
  obtain ⟨T, hl, hu, havoid⟩ := exists_between_avoiding
    ((heightHead ((N : ℝ) + 2)).image height) ((N : ℝ) + 1) ((N : ℝ) + 2) (by linarith)
  refine ⟨T, hl, hu, ?_⟩
  intro z hz
  apply havoid
  exact Finset.mem_image.mpr ⟨z, (mem_heightHead _ z).mpr (by rw [hz]; exact hu.le), hz⟩

/-- A mathematical choice, not a numerical zero-avoidance implementation. -/
def contourHeight (N : ℕ) : ℝ := (exists_admissible_height N).choose

theorem contourHeight_bounds (N : ℕ) :
    (N : ℝ) + 1 < contourHeight N ∧ contourHeight N < (N : ℝ) + 2 :=
  ⟨(exists_admissible_height N).choose_spec.1,
    (exists_admissible_height N).choose_spec.2.1⟩

theorem contourHeight_avoids (N : ℕ) (z : ZeroPoint) : height z ≠ contourHeight N :=
  (exists_admissible_height N).choose_spec.2.2 z

theorem contourHeight_pos (N : ℕ) : 0 < contourHeight N := by
  have := (contourHeight_bounds N).1
  have := Nat.cast_nonneg (α := ℝ) N
  linarith

/-- The chosen sequence is strictly increasing despite the noncomputable choices. -/
theorem contourHeight_strictMono : StrictMono contourHeight := by
  intro M N hMN
  have hcast : (M : ℝ) + 1 ≤ N := by exact_mod_cast (Nat.succ_le_iff.mpr hMN)
  have hM := (contourHeight_bounds M).2
  have hN := (contourHeight_bounds N).1
  linarith

/-- Unbounded heights are derived from their explicit stage intervals. -/
theorem contourHeight_tendsto : Tendsto contourHeight atTop atTop := by
  apply tendsto_atTop_mono (f := fun N : ℕ => (N : ℝ))
    (fun N => le_of_lt (by linarith [(contourHeight_bounds N).1]))
  exact tendsto_natCast_atTop_atTop

/-- Negative odd real parts miss every negative-even trivial zero. -/
def leftEdge (N : ℕ) : ℝ := -(2 * (N : ℝ) + 1)

theorem leftEdge_neg (N : ℕ) : leftEdge N < 0 := by
  unfold leftEdge
  have := Nat.cast_nonneg (α := ℝ) N
  linarith

/-- The interior covers the part of Re(s)<2 between the two horizontal edges. -/
def interior (N : ℕ) : Set ℂ :=
  {s | leftEdge N < s.re ∧ s.re < 2 ∧ |s.im| < contourHeight N}

/-- Closed edges, including corners; no punctured-boundary convention is hidden. -/
def boundary (N : ℕ) : Set ℂ :=
  {s | leftEdge N ≤ s.re ∧ s.re ≤ 2 ∧ |s.im| ≤ contourHeight N ∧
    (s.re = leftEdge N ∨ s.re = 2 ∨ |s.im| = contourHeight N)}

/-- Horizontal parametrizations include both corners. -/
theorem horizontal_mem_boundary (N : ℕ) (u y : ℝ)
    (hu : u ∈ Icc (leftEdge N) 2) (hy : |y| = contourHeight N) :
    (u : ℂ) + (y : ℂ) * Complex.I ∈ boundary N := by
  simpa [boundary, hy] using hu

/-- Either vertical edge includes both endpoints. -/
theorem vertical_mem_boundary (N : ℕ) (c t : ℝ)
    (hc : c = leftEdge N ∨ c = 2) (ht : |t| ≤ contourHeight N) :
    (c : ℂ) + (t : ℂ) * Complex.I ∈ boundary N := by
  have hlr : leftEdge N ≤ 2 := (leftEdge_neg N).le.trans (by norm_num)
  simp only [boundary, Set.mem_ofPred_eq, Complex.add_re, Complex.ofReal_re,
    Complex.mul_re, Complex.ofReal_im, Complex.I_re, Complex.I_im,
    Complex.add_im, Complex.mul_im, mul_zero, sub_zero,
    add_zero, zero_add, mul_one]
  rcases hc with rfl | rfl
  · exact ⟨le_rfl, hlr, ht, Or.inl rfl⟩
  · exact ⟨hlr, le_rfl, ht, Or.inr (Or.inl rfl)⟩

/-- Exhaust the fixed open half-plane Re(s)<2, not the whole complex plane. -/
theorem eventually_mem_interior (s : ℂ) (hs : s.re < 2) :
    ∀ᶠ N : ℕ in atTop, s ∈ interior N := by
  obtain ⟨M, hM⟩ := exists_nat_gt (|s.re| + |s.im|)
  refine eventually_atTop.mpr ⟨M, ?_⟩
  intro N hMN
  have hcast : (M : ℝ) ≤ N := by exact_mod_cast hMN
  have hn := Nat.cast_nonneg (α := ℝ) N
  have hh := (contourHeight_bounds N).1
  refine ⟨?_, hs, ?_⟩
  · unfold leftEdge
    linarith [neg_abs_le s.re, abs_nonneg s.im]
  · linarith [abs_nonneg s.re]

/-- Exact partition of actual zeros. The pole is excluded using its actual nonzero value. -/
theorem zeta_zero_iff (s : ℂ) :
    riemannZeta s = 0 ↔ NontrivialZetaZero s ∨ ∃ k : ℕ, s = trivialPoint k := by
  classical
  constructor
  · intro hz
    by_cases ht : ∃ k : ℕ, s = trivialPoint k
    · exact Or.inr ht
    · refine Or.inl ⟨hz, ?_, ?_⟩
      · simpa only [trivialPoint] using ht
      · intro hs
        exact riemannZeta_one_ne_zero (hs ▸ hz)
  · rintro (hz | ⟨k, rfl⟩)
    · exact hz.1
    · exact zeta_trivialPoint k

theorem zeta_ne_zero_on_left (N : ℕ) (s : ℂ) (hs : s.re = leftEdge N) :
    riemannZeta s ≠ 0 := by
  intro hz
  rcases (zeta_zero_iff s).mp hz with hnt | ⟨k, rfl⟩
  · have hp := hnt.mem_critical_strip.1
    rw [hs] at hp
    linarith [leftEdge_neg N]
  · have hre : (trivialPoint k).re = -2 * ((k : ℝ) + 1) := by
      simp [trivialPoint]
    have he : (2 * (N : ℝ) + 1) = 2 * ((k : ℝ) + 1) := by
      rw [hre, leftEdge] at hs
      linarith
    have hi : 2 * (N : ℤ) + 1 = 2 * ((k : ℤ) + 1) := by exact_mod_cast he
    omega

theorem zeta_ne_zero_on_horizontal (N : ℕ) (s : ℂ)
    (hs : |s.im| = contourHeight N) : riemannZeta s ≠ 0 := by
  intro hz
  rcases (zeta_zero_iff s).mp hz with hnt | ⟨k, rfl⟩
  · exact contourHeight_avoids N ⟨s, hnt⟩ hs
  · have him : (trivialPoint k).im = 0 := by simp [trivialPoint]
    rw [him, abs_zero] at hs
    exact (ne_of_gt (contourHeight_pos N)) hs.symm

/-- The pole lies in the interior, never on a contour edge. -/
theorem one_mem_interior (N : ℕ) : (1 : ℂ) ∈ interior N := by
  refine ⟨?_, ?_, ?_⟩
  · simpa using (leftEdge_neg N).trans (show (0 : ℝ) < 1 by norm_num)
  · norm_num
  · simpa using contourHeight_pos N

theorem boundary_ne_one (N : ℕ) (s : ℂ) (hs : s ∈ boundary N) : s ≠ 1 := by
  rintro rfl
  rcases hs with ⟨_, _, _, hl | hr | ht⟩
  · have := leftEdge_neg N
    simp only [Complex.one_re] at hl
    linarith
  · norm_num at hr
  · have := contourHeight_pos N
    norm_num at ht
    linarith

theorem zeta_ne_zero_on_boundary (N : ℕ) (s : ℂ) (hs : s ∈ boundary N) :
    riemannZeta s ≠ 0 := by
  rcases hs with ⟨_, _, _, hl | hr | ht⟩
  · exact zeta_ne_zero_on_left N s hl
  · exact riemannZeta_ne_zero_of_one_le_re (by rw [hr]; norm_num)
  · exact zeta_ne_zero_on_horizontal N s ht

/-- Open-interior and closed-height conventions agree only because these heights avoid zeros. -/
theorem point_mem_interior_iff (N : ℕ) (z : ZeroPoint) :
    z.1 ∈ interior N ↔ z ∈ heightHead (contourHeight N) := by
  constructor
  · intro hz
    exact (mem_heightHead _ z).mpr hz.2.2.le
  · intro hz
    have hle := (mem_heightHead _ z).mp hz
    have hlt : height z < contourHeight N := by
      by_contra hn
      exact contourHeight_avoids N z (le_antisymm hle (le_of_not_gt hn))
    exact ⟨(leftEdge_neg N).trans (point_mem_strip z).1,
      (point_mem_strip z).2.trans (by norm_num), hlt⟩

/-- The left boundary -2N-1 encloses precisely tau_0,...,tau_(N-1). -/
theorem trivial_mem_interior_iff (N k : ℕ) :
    trivialPoint k ∈ interior N ↔ k < N := by
  have hleft : leftEdge N < (trivialPoint k).re ↔ k < N := by
    have hre : (trivialPoint k).re = -2 * ((k : ℝ) + 1) := by simp [trivialPoint]
    rw [hre, leftEdge]
    constructor
    · intro h
      by_contra hn
      have hcast : (N : ℝ) ≤ k := by exact_mod_cast (Nat.le_of_not_gt hn)
      linarith
    · intro h
      have hcast : (k : ℝ) + 1 ≤ N := by exact_mod_cast (Nat.succ_le_iff.mpr h)
      linarith
  constructor
  · intro h
    exact hleft.mp h.1
  · intro h
    refine ⟨hleft.mpr h, (trivialPoint_re_neg k).trans (by norm_num), ?_⟩
    simpa [trivialPoint] using contourHeight_pos N

/-- The complete finite set of potential singular points, not a deduplication by height.
A zero of the multiplier may make a point removable for a particular integrand. -/
def singularHead (N : ℕ) : Finset ℂ := by
  classical
  exact insert 1 (((heightHead (contourHeight N)).image (fun z : ZeroPoint => z.1)) ∪
    ((Finset.range N).image trivialPoint))

/-- No missing interior zeta zero or pole, and no extra exterior record. -/
theorem mem_singularHead_iff (N : ℕ) (s : ℂ) :
    s ∈ singularHead N ↔ s ∈ interior N ∧ (s = 1 ∨ riemannZeta s = 0) := by
  classical
  constructor
  · intro hs
    rcases Finset.mem_insert.mp hs with rfl | hs
    · exact ⟨one_mem_interior N, Or.inl rfl⟩
    rcases Finset.mem_union.mp hs with hs | hs
    · obtain ⟨z, hz, rfl⟩ := Finset.mem_image.mp hs
      exact ⟨(point_mem_interior_iff N z).mpr hz, Or.inr z.2.1⟩
    · obtain ⟨k, hk, rfl⟩ := Finset.mem_image.mp hs
      exact ⟨(trivial_mem_interior_iff N k).mpr (Finset.mem_range.mp hk),
        Or.inr (zeta_trivialPoint k)⟩
  · rintro ⟨hs, rfl | hz⟩
    · exact Finset.mem_insert_self _ _
    apply Finset.mem_insert_of_mem
    rcases (zeta_zero_iff s).mp hz with hnt | ⟨k, rfl⟩
    · apply Finset.mem_union_left
      exact Finset.mem_image.mpr ⟨⟨s, hnt⟩,
        (point_mem_interior_iff N ⟨s, hnt⟩).mp hs, rfl⟩
    · apply Finset.mem_union_right
      exact Finset.mem_image.mpr ⟨k,
        Finset.mem_range.mpr ((trivial_mem_interior_iff N k).mp hs), rfl⟩

end
end GRWTSK.RiemannHypothesis.AdmissibleRectangles
