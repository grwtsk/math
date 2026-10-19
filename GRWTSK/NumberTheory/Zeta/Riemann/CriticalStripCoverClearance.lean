/- Copyright (c) 2026 R.A. Jacob Martone. MIT.
Human mathematical direction: R.A. Jacob Martone. Formalization assistance: OpenAI.
Mathlib results retain their upstream authorship and Apache-2.0 license. -/
import GRWTSK.NumberTheory.Zeta.Riemann.CriticalStripSquaredCover
import Mathlib.Topology.Order.Compact

set_option autoImplicit false

/-!
# Source-independent clearance for rational disk-cover subdivision

A uniform clearance is a geometric theorem about the SAME finite disk family on
an actual closed rectangle. It is not inferred from an accepted cover by closed
disks: exact tangencies may leave no positive clearance. It does not supply any
analytic nonvanishing patch. The width-plus-height bound is only a sufficient
small-cell threshold; all boundary and source identities are retained.

This file supplies source proof scripts, not an elaboration or replay receipt.
-/

namespace GRWTSK.RiemannHypothesis.CriticalStripHeightDescent.RationalPatchCover

namespace Rectangle

/-- Width plus height, in the same exact rational coordinates as the checker. -/
def span (b : Rectangle) : ℚ := (b.right - b.left) + (b.top - b.bottom)

/-- Coordinate containment. Validity/order of the inner rectangle is separate. -/
def Within (b outer : Rectangle) : Prop :=
  outer.left ≤ b.left ∧ b.right ≤ outer.right ∧
    outer.bottom ≤ b.bottom ∧ b.top ≤ outer.top

lemma within_refl (b : Rectangle) : b.Within b :=
  ⟨le_rfl, le_rfl, le_rfl, le_rfl⟩

lemma Within.trans {a b c : Rectangle} (hab : a.Within b) (hbc : b.Within c) :
    a.Within c :=
  ⟨hbc.1.trans hab.1, hab.2.1.trans hbc.2.1,
    hbc.2.2.1.trans hab.2.2.1, hab.2.2.2.trans hbc.2.2.2⟩

lemma Within.carrier_subset {b outer : Rectangle} (h : b.Within outer) :
    b.carrier ⊆ outer.carrier := by
  intro z hz
  have hl : (outer.left : ℝ) ≤ (b.left : ℝ) := by exact_mod_cast h.1
  have hr : (b.right : ℝ) ≤ (outer.right : ℝ) := by exact_mod_cast h.2.1
  have hb : (outer.bottom : ℝ) ≤ (b.bottom : ℝ) := by exact_mod_cast h.2.2.1
  have ht : (b.top : ℝ) ≤ (outer.top : ℝ) := by exact_mod_cast h.2.2.2
  exact ⟨hl.trans hz.1, hz.2.1.trans hr, hb.trans hz.2.2.1, hz.2.2.2.trans ht⟩

lemma span_nonneg (b : Rectangle) (hb : b.WellFormed) : 0 ≤ b.span := by
  unfold span
  exact add_nonneg (sub_nonneg.mpr hb.1) (sub_nonneg.mpr hb.2)

lemma norm_sub_le_span (b : Rectangle) {z w : ℂ}
    (hz : z ∈ b.carrier) (hw : w ∈ b.carrier) : ‖z - w‖ ≤ (b.span : ℝ) := by
  have hx : |z.re - w.re| ≤ (b.right : ℝ) - (b.left : ℝ) := by
    apply abs_le.mpr
    constructor <;> linarith [hz.1, hz.2.1, hw.1, hw.2.1]
  have hy : |z.im - w.im| ≤ (b.top : ℝ) - (b.bottom : ℝ) := by
    apply abs_le.mpr
    constructor <;> linarith [hz.2.2.1, hz.2.2.2, hw.2.2.1, hw.2.2.2]
  calc
    ‖z - w‖ ≤ |z.re - w.re| + |z.im - w.im| := by
      simpa only [Complex.sub_re, Complex.sub_im] using
        Complex.norm_le_abs_re_add_abs_im (z - w)
    _ ≤ ((b.right : ℝ) - (b.left : ℝ)) + ((b.top : ℝ) - (b.bottom : ℝ)) :=
      add_le_add hx hy
    _ = (b.span : ℝ) := by simp only [span, Rat.cast_add, Rat.cast_sub]

end Rectangle

/-- Every target point lies epsilon inside at least one disk. The chosen index may
vary with the point. This is NOT an assertion that one disk contains the root. -/
def UniformDiskClearance {count : ℕ} (disks : Fin count → Disk)
    (root : Rectangle) (ε : ℝ) : Prop :=
  0 < ε ∧ ∀ z ∈ root.carrier, ∃ i : Fin count,
    ‖z - (disks i).center‖ + ε ≤ ((disks i).radius : ℝ)

/-- The local geometric property consumed by the termination proof. A bounded
rectangle below this span threshold must fit in ONE exact leaf disk. -/
def SmallBoxCovered {count : ℕ} (disks : Fin count → Disk)
    (root : Rectangle) (ε : ℝ) : Prop :=
  ∀ b : Rectangle, b.WellFormed → b.Within root → (b.span : ℝ) ≤ ε →
    ∃ i : Fin count, (disks i).SquaredContainsBox b

/-- Clearance at a point of a small subrectangle controls all its points. This
uses actual continuum geometry, not a finite sample grid or area comparison. -/
theorem UniformDiskClearance.smallBoxCovered {count : ℕ} {disks : Fin count → Disk}
    {root : Rectangle} {ε : ℝ} (h : UniformDiskClearance disks root ε) :
    SmallBoxCovered disks root ε := by
  intro b hb hsub hspan
  obtain ⟨w, hw⟩ := b.carrier_nonempty hb
  obtain ⟨i, hi⟩ := h.2 w (hsub.carrier_subset hw)
  refine ⟨i, ((disks i).squaredContainsBox_iff b hb).mpr ?_⟩
  intro z hz
  change dist z (disks i).center ≤ ((disks i).radius : ℝ)
  rw [dist_eq_norm]
  calc
    ‖z - (disks i).center‖ = ‖(z - w) + (w - (disks i).center)‖ := by
      congr 1
      abel
    _ ≤ ‖z - w‖ + ‖w - (disks i).center‖ := norm_add_le _ _
    _ ≤ (b.span : ℝ) + ‖w - (disks i).center‖ :=
      add_le_add_right (b.norm_sub_le_span hz hw) _
    _ ≤ ε + ‖w - (disks i).center‖ := add_le_add_right hspan _
    _ ≤ ((disks i).radius : ℝ) := by linarith

/-- A positive clearance on a nonempty root requires actual disk indices. -/
theorem UniformDiskClearance.count_pos {count : ℕ} {disks : Fin count → Disk}
    {root : Rectangle} {ε : ℝ} (h : UniformDiskClearance disks root ε)
    (hb : root.WellFormed) : 0 < count := by
  obtain ⟨z, hz⟩ := root.carrier_nonempty hb
  obtain ⟨i, _⟩ := h.2 z hz
  exact lt_of_le_of_lt (Nat.zero_le i.val) i.isLt

/-- Clearance does not provide analytic leaf witnesses; it excludes a source zero
only AFTER those independently sourced witnesses have been supplied. -/
theorem UniformDiskClearance.source_nonzero {count : ℕ} {disks : Fin count → Disk}
    {root : Rectangle} {ε : ℝ} (h : UniformDiskClearance disks root ε)
    {F : ℂ → ℂ} (patches : ∀ i, SampleVariationPatch F (disks i).carrier)
    {z : ℂ} (hz : z ∈ root.carrier) : F z ≠ 0 := by
  obtain ⟨i, hi⟩ := h.2 z hz
  apply (patches i).nonzero
  change dist z (disks i).center ≤ ((disks i).radius : ℝ)
  rw [dist_eq_norm]
  linarith [h.1]

/-- Strict interior coverage, stronger than a union of closed disks. -/
def OpenDiskCover {count : ℕ} (disks : Fin count → Disk) (root : Rectangle) : Prop :=
  ∀ z ∈ root.carrier, ∃ i : Fin count,
    ‖z - (disks i).center‖ < ((disks i).radius : ℝ)

/-- An ACTUAL finite open-disk cover of a compact, nonempty target supplies some
uniform clearance. The radius obtained through a minimum is classical, not an
executable numerical value, and the open-cover premise is never fabricated. -/
theorem exists_clearance_of_compact_openCover {count : ℕ} (disks : Fin count → Disk)
    (root : Rectangle) (hb : root.WellFormed) (hcompact : IsCompact root.carrier)
    (hcover : OpenDiskCover disks root) :
    ∃ ε : ℝ, UniformDiskClearance disks root ε := by
  classical
  let G : ℂ → ℝ := fun z => ∑ i : Fin count,
    max 0 (((disks i).radius : ℝ) - ‖z - (disks i).center‖)
  have hG : Continuous G := by
    dsimp only [G]
    fun_prop
  have hpositive : ∀ z ∈ root.carrier, 0 < G z := by
    intro z hz
    obtain ⟨i, hi⟩ := hcover z hz
    have hterm : 0 < max 0 (((disks i).radius : ℝ) - ‖z - (disks i).center‖) :=
      (sub_pos.mpr hi).trans_le (le_max_right _ _)
    have hsum : max 0 (((disks i).radius : ℝ) - ‖z - (disks i).center‖) ≤ G z := by
      exact Finset.single_le_sum (fun j _ => le_max_left _ _) (Finset.mem_univ i)
    exact hterm.trans_le hsum
  obtain ⟨c, hc, hmin⟩ := hcompact.exists_isMinOn (root.carrier_nonempty hb) hG.continuousOn
  have hcpos := hpositive c hc
  obtain ⟨i, _⟩ := hcover c hc
  have hnNat : 0 < count := lt_of_le_of_lt (Nat.zero_le i.val) i.isLt
  have hn : (0 : ℝ) < count := by exact_mod_cast hnNat
  let ε : ℝ := G c / (2 * (count : ℝ))
  have hε : 0 < ε := div_pos hcpos (mul_pos (by norm_num) hn)
  have heq : (count : ℝ) * ε = G c / 2 := by
    dsimp only [ε]
    field_simp [ne_of_gt hn] <;> ring
  refine ⟨ε, hε, ?_⟩
  intro z hz
  by_contra hnone
  have hbad : ∀ j : Fin count,
      ((disks j).radius : ℝ) < ‖z - (disks j).center‖ + ε := by
    intro j
    exact lt_of_not_ge (fun hj => hnone ⟨j, hj⟩)
  have hbound : G z ≤ (count : ℝ) * ε := by
    calc
      G z ≤ ∑ _j : Fin count, ε := by
        apply Finset.sum_le_sum
        intro j hj
        exact max_le hε.le (by linarith [hbad j])
      _ = (count : ℝ) * ε := by simp
  have hminz : G c ≤ G z := (isMinOn_iff.mp hmin) z hz
  rw [heq] at hbound
  linarith

end GRWTSK.RiemannHypothesis.CriticalStripHeightDescent.RationalPatchCover
