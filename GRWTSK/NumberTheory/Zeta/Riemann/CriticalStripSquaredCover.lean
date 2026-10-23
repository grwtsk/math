/- Copyright (c) 2026 R.A. Jacob Martone. MIT.
Human mathematical direction: R.A. Jacob Martone. Formalization assistance: OpenAI.
Mathlib results retain their upstream authorship and Apache-2.0 license. -/
import GRWTSK.NumberTheory.Zeta.Riemann.CriticalStripRationalCover

set_option autoImplicit false

/-!
# Exact Euclidean rectangle leaves and bounded proof-carrying cover search

The old L1 leaf guard remains unchanged. The squared guard here is equivalent to
closed-rectangle inclusion in a closed disk, provided the rectangle is ordered.
The radius sign is checked separately: squaring must not admit negative radii.

`propose` is a finite, pure rational subdivision function. `search` checks its
output and returns a proof-carrying tree, or `none`. `none` means no accepted
certificate was obtained within this search; it is not a zero or noncoverage
certificate. No termination/completeness theorem for all genuine covers is claimed.
Analytic patches for the SAME exact F are required after the geometric check.
No process execution, native evaluation, numerical oracle or new axiom is used.
All proof scripts are SOURCE_ONLY until exact Lean replay and axiom audit.
-/

namespace GRWTSK.RiemannHypothesis.CriticalStripHeightDescent.RationalPatchCover

namespace Disk

/-- Exact squared Euclidean farthest-corner condition; all operations are rational. -/
def SquaredContainsBox (d : Disk) (b : Rectangle) : Prop :=
  0 ≤ d.radius ∧ (d.realReach b) ^ 2 + (d.imagReach b) ^ 2 ≤ d.radius ^ 2

instance (d : Disk) (b : Rectangle) : Decidable (d.SquaredContainsBox b) :=
  inferInstanceAs (Decidable
    (0 ≤ d.radius ∧ (d.realReach b) ^ 2 + (d.imagReach b) ^ 2 ≤ d.radius ^ 2))

lemma realReach_nonneg (d : Disk) (b : Rectangle) : 0 ≤ d.realReach b :=
  (abs_nonneg _).trans (le_max_left _ _)

lemma imagReach_nonneg (d : Disk) (b : Rectangle) : 0 ≤ d.imagReach b :=
  (abs_nonneg _).trans (le_max_left _ _)

/-- Every previously accepted L1 leaf remains accepted by the squared guard. -/
theorem squaredContainsBox_of_containsBox (d : Disk) (b : Rectangle)
    (h : d.ContainsBox b) : d.SquaredContainsBox b := by
  have hx := d.realReach_nonneg b
  have hy := d.imagReach_nonneg b
  have hxy := mul_nonneg hx hy
  rcases h with ⟨hr, hsum⟩
  refine ⟨hr, ?_⟩
  have hmul := mul_nonneg (sub_nonneg.mpr hsum) (by linarith :
    0 ≤ d.radius + (d.realReach b + d.imagReach b))
  nlinarith

end Disk

noncomputable section

lemma Disk.coordinate_reach_bounds (d : Disk) (b : Rectangle) {z : ℂ}
    (hz : z ∈ b.carrier) :
    |z.re - (d.re : ℝ)| ≤ (d.realReach b : ℝ) ∧
      |z.im - (d.im : ℝ)| ≤ (d.imagReach b : ℝ) := by
  have hxl : |(b.left : ℝ) - (d.re : ℝ)| ≤ (d.realReach b : ℝ) := by
    exact_mod_cast (le_max_left |b.left - d.re| |b.right - d.re|)
  have hxr : |(b.right : ℝ) - (d.re : ℝ)| ≤ (d.realReach b : ℝ) := by
    exact_mod_cast (le_max_right |b.left - d.re| |b.right - d.re|)
  have hyb : |(b.bottom : ℝ) - (d.im : ℝ)| ≤ (d.imagReach b : ℝ) := by
    exact_mod_cast (le_max_left |b.bottom - d.im| |b.top - d.im|)
  have hyt : |(b.top : ℝ) - (d.im : ℝ)| ≤ (d.imagReach b : ℝ) := by
    exact_mod_cast (le_max_right |b.bottom - d.im| |b.top - d.im|)
  exact ⟨(abs_sub_le_endpoint_max hz.1 hz.2.1).trans (max_le hxl hxr),
    (abs_sub_le_endpoint_max hz.2.2.1 hz.2.2.2).trans (max_le hyb hyt)⟩

/-- A squared comparison proves the actual Euclidean norm bound, without sqrt evaluation. -/
theorem Disk.squaredContainsBox_sound (d : Disk) (b : Rectangle)
    (h : d.SquaredContainsBox b) : b.carrier ⊆ d.carrier := by
  intro z hz
  obtain ⟨hx, hy⟩ := d.coordinate_reach_bounds b hz
  have hx0 : 0 ≤ (d.realReach b : ℝ) := by exact_mod_cast d.realReach_nonneg b
  have hy0 : 0 ≤ (d.imagReach b : ℝ) := by exact_mod_cast d.imagReach_nonneg b
  have hr0 : 0 ≤ (d.radius : ℝ) := by exact_mod_cast h.1
  have hsq : (d.realReach b : ℝ) ^ 2 + (d.imagReach b : ℝ) ^ 2 ≤
      (d.radius : ℝ) ^ 2 := by exact_mod_cast h.2
  have hx2 : (z.re - (d.re : ℝ)) ^ 2 ≤ (d.realReach b : ℝ) ^ 2 := by
    have hmul := mul_le_mul hx hx (abs_nonneg _) hx0
    nlinarith [sq_abs (z.re - (d.re : ℝ))]
  have hy2 : (z.im - (d.im : ℝ)) ^ 2 ≤ (d.imagReach b : ℝ) ^ 2 := by
    have hmul := mul_le_mul hy hy (abs_nonneg _) hy0
    nlinarith [sq_abs (z.im - (d.im : ℝ))]
  have hn : ‖z - d.center‖ ^ 2 =
      (z.re - (d.re : ℝ)) ^ 2 + (z.im - (d.im : ℝ)) ^ 2 := by
    simp only [Complex.sq_norm, Complex.normSq_apply, Complex.sub_re,
      Complex.sub_im, Disk.center, pow_two]
  change dist z d.center ≤ (d.radius : ℝ)
  rw [dist_eq_norm]
  apply (sq_le_sq₀ (norm_nonneg _) hr0).mp
  rw [hn]
  exact (add_le_add hx2 hy2).trans hsq

/-- The maximum distance in one coordinate is attained by an actual endpoint. -/
lemma endpoint_max_attained (lo hi c : ℚ) :
    ∃ x : ℚ, (x = lo ∨ x = hi) ∧ |x - c| = max |lo - c| |hi - c| := by
  rcases le_total |lo - c| |hi - c| with h | h
  · exact ⟨hi, Or.inr rfl, (max_eq_right h).symm⟩
  · exact ⟨lo, Or.inl rfl, (max_eq_left h).symm⟩

/-- Necessity needs an ordered, hence nonempty, rectangle. The witness is the
farthest corner of ONE disk, not a corner-only test for a UNION of disks. -/
theorem Disk.squaredContainsBox_iff (d : Disk) (b : Rectangle)
    (hb : b.WellFormed) : d.SquaredContainsBox b ↔ b.carrier ⊆ d.carrier := by
  refine ⟨d.squaredContainsBox_sound b, ?_⟩
  intro hsub
  obtain ⟨x, hx, hxe⟩ := endpoint_max_attained b.left b.right d.re
  obtain ⟨y, hy, hye⟩ := endpoint_max_attained b.bottom b.top d.im
  have hxmem : b.left ≤ x ∧ x ≤ b.right := by
    rcases hx with rfl | rfl
    · exact ⟨le_rfl, hb.1⟩
    · exact ⟨hb.1, le_rfl⟩
  have hymem : b.bottom ≤ y ∧ y ≤ b.top := by
    rcases hy with rfl | rfl
    · exact ⟨le_rfl, hb.2⟩
    · exact ⟨hb.2, le_rfl⟩
  let z : ℂ := ⟨(x : ℝ), (y : ℝ)⟩
  have hz : z ∈ b.carrier := by
    change (b.left : ℝ) ≤ (x : ℝ) ∧ (x : ℝ) ≤ (b.right : ℝ) ∧
      (b.bottom : ℝ) ≤ (y : ℝ) ∧ (y : ℝ) ≤ (b.top : ℝ)
    exact_mod_cast (And.intro hxmem.1 (And.intro hxmem.2 hymem))
  have hnorm : ‖z - d.center‖ ≤ (d.radius : ℝ) := by
    simpa only [Disk.carrier, Metric.mem_closedBall, dist_eq_norm] using hsub hz
  have hr : 0 ≤ (d.radius : ℝ) := (norm_nonneg _).trans hnorm
  have hxabs : |(x : ℝ) - (d.re : ℝ)| = (d.realReach b : ℝ) := by
    exact_mod_cast hxe
  have hyabs : |(y : ℝ) - (d.im : ℝ)| = (d.imagReach b : ℝ) := by
    exact_mod_cast hye
  have hn : ‖z - d.center‖ ^ 2 =
      (d.realReach b : ℝ) ^ 2 + (d.imagReach b : ℝ) ^ 2 := by
    calc
      _ = ((x : ℝ) - (d.re : ℝ)) ^ 2 + ((y : ℝ) - (d.im : ℝ)) ^ 2 := by
        simp only [Complex.sq_norm, Complex.normSq_apply, Complex.sub_re,
          Complex.sub_im, Disk.center, z, pow_two]
      _ = |(x : ℝ) - (d.re : ℝ)| ^ 2 + |(y : ℝ) - (d.im : ℝ)| ^ 2 := by
        simp only [sq_abs]
      _ = _ := by rw [hxabs, hyabs]
  have hsq : (d.realReach b : ℝ) ^ 2 + (d.imagReach b : ℝ) ^ 2 ≤
      (d.radius : ℝ) ^ 2 := by
    have hm := mul_le_mul hnorm hnorm (norm_nonneg _) hr
    nlinarith
  constructor
  · exact_mod_cast hr
  · exact_mod_cast hsq

end

namespace SquaredCover

/-- Uses the SAME Tree and split geometry; only the leaf guard changes. -/
def check {count : ℕ} (disks : Fin count → Disk) : Tree count → Rectangle → Bool
  | .leaf i, b => decide (b.WellFormed ∧ (disks i).SquaredContainsBox b)
  | .splitReal cut l r, b =>
      decide (b.WellFormed ∧ b.left < cut ∧ cut < b.right) &&
        (check disks l (b.west cut) && check disks r (b.east cut))
  | .splitImag cut l r, b =>
      decide (b.WellFormed ∧ b.bottom < cut ∧ cut < b.top) &&
        (check disks l (b.south cut) && check disks r (b.north cut))

/-- Certificate contains an actual rational-check proof at the exact root rectangle. -/
def CheckedTree {count : ℕ} (disks : Fin count → Disk) (b : Rectangle) :=
  {tree : Tree count // check disks tree b = true}

/-- Finite source-index enumeration. No absent index or unproved leaf is emitted. -/
def firstLeaf {count : ℕ} (disks : Fin count → Disk) (b : Rectangle) :
    List (Fin count) → Option (Tree count)
  | [] => none
  | i :: is =>
      if b.WellFormed ∧ (disks i).SquaredContainsBox b then some (.leaf i)
      else firstLeaf disks b is

/-- Pure depth-bounded proposal. At most two recursive children, with fuel reduced.
The longer nonzero side is bisected; singleton rectangles are never split. -/
def propose {count : ℕ} (disks : Fin count → Disk) :
    ℕ → Rectangle → Option (Tree count)
  | 0, b => firstLeaf disks b (List.ofFn (fun i : Fin count => i))
  | fuel + 1, b =>
      match firstLeaf disks b (List.ofFn (fun i : Fin count => i)) with
      | some t => some t
      | none =>
          if b.WellFormed then
            if b.left < b.right ∧ b.top - b.bottom ≤ b.right - b.left then
              let cut := (b.left + b.right) / 2
              match propose disks fuel (b.west cut), propose disks fuel (b.east cut) with
              | some l, some r => some (.splitReal cut l r)
              | _, _ => none
            else if b.bottom < b.top then
              let cut := (b.bottom + b.top) / 2
              match propose disks fuel (b.south cut), propose disks fuel (b.north cut) with
              | some l, some r => some (.splitImag cut l r)
              | _, _ => none
            else none
          else none

/-- A proposal is not trusted. Recheck it before constructing proof-bearing output.
`none` means UNKNOWN, including exhausted depth; it never means a source zero. -/
def search {count : ℕ} (disks : Fin count → Disk) (fuel : ℕ) (b : Rectangle) :
    Option (CheckedTree disks b) :=
  match propose disks fuel b with
  | none => none
  | some t => if h : check disks t b = true then some ⟨t, h⟩ else none

/-- The proof certificate can be projected back to its finite, source-indexed tree. -/
def searchTree {count : ℕ} (disks : Fin count → Disk) (fuel : ℕ) (b : Rectangle) :
    Option (Tree count) := (search disks fuel b).map Subtype.val

noncomputable section

/-- Acceptance always checks root order; this is not inferred from an empty carrier. -/
theorem check_wellFormed {count : ℕ} (disks : Fin count → Disk)
    (tree : Tree count) (b : Rectangle) (h : check disks tree b = true) :
    b.WellFormed := by
  cases tree with
  | leaf i =>
      have hh : b.WellFormed ∧ (disks i).SquaredContainsBox b := by
        simpa only [check, decide_eq_true_eq] using h
      exact hh.1
  | splitReal cut l r =>
      have hh : (b.WellFormed ∧ b.left < cut ∧ cut < b.right) ∧
          (check disks l (b.west cut) = true ∧ check disks r (b.east cut) = true) := by
        simpa only [check, Bool.and_eq_true, decide_eq_true_eq] using h
      exact hh.1.1
  | splitImag cut l r =>
      have hh : (b.WellFormed ∧ b.bottom < cut ∧ cut < b.top) ∧
          (check disks l (b.south cut) = true ∧ check disks r (b.north cut) = true) := by
        simpa only [check, Bool.and_eq_true, decide_eq_true_eq] using h
      exact hh.1.1

/-- Full continuum coverage, retaining both children and their shared seam. -/
theorem check_covers {count : ℕ} (disks : Fin count → Disk) (tree : Tree count) :
    ∀ b : Rectangle, check disks tree b = true →
      ∀ z ∈ b.carrier, ∃ i : Fin count, z ∈ (disks i).carrier := by
  induction tree with
  | leaf i =>
      intro b h z hz
      have hh : b.WellFormed ∧ (disks i).SquaredContainsBox b := by
        simpa only [check, decide_eq_true_eq] using h
      exact ⟨i, (disks i).squaredContainsBox_sound b hh.2 hz⟩
  | splitReal cut l r ihl ihr =>
      intro b h z hz
      have hh : (b.WellFormed ∧ b.left < cut ∧ cut < b.right) ∧
          (check disks l (b.west cut) = true ∧ check disks r (b.east cut) = true) := by
        simpa only [check, Bool.and_eq_true, decide_eq_true_eq] using h
      rcases le_total z.re (cut : ℝ) with hc | hc
      · exact ihl (b.west cut) hh.2.1 z ⟨hz.1, hc, hz.2.2⟩
      · exact ihr (b.east cut) hh.2.2 z ⟨hc, hz.2.1, hz.2.2⟩
  | splitImag cut l r ihl ihr =>
      intro b h z hz
      have hh : (b.WellFormed ∧ b.bottom < cut ∧ cut < b.top) ∧
          (check disks l (b.south cut) = true ∧ check disks r (b.north cut) = true) := by
        simpa only [check, Bool.and_eq_true, decide_eq_true_eq] using h
      rcases le_total z.im (cut : ℝ) with hc | hc
      · exact ihl (b.south cut) hh.2.1 z ⟨hz.1, hz.2.1, hz.2.2.1, hc⟩
      · exact ihr (b.north cut) hh.2.2 z ⟨hz.1, hz.2.1, hc, hz.2.2.2⟩

/-- A checked ordered rectangle forces an inhabited disk family. -/
theorem CheckedTree.count_pos {count : ℕ} {disks : Fin count → Disk}
    {b : Rectangle} (cert : CheckedTree disks b) : 0 < count := by
  obtain ⟨z, hz⟩ := b.carrier_nonempty (check_wellFormed disks cert.val b cert.property)
  obtain ⟨i, _⟩ := check_covers disks cert.val b cert.property z hz
  exact lt_of_le_of_lt (Nat.zero_le i.val) i.isLt

/-- Squared leaves conservatively extend every previously accepted complete tree. -/
theorem check_of_L1_check {count : ℕ} (disks : Fin count → Disk) (tree : Tree count) :
    ∀ b : Rectangle, tree.check disks b = true → check disks tree b = true := by
  induction tree with
  | leaf i =>
      intro b h
      have hh : b.WellFormed ∧ (disks i).ContainsBox b := by
        simpa only [Tree.check, decide_eq_true_eq] using h
      simpa only [check, decide_eq_true_eq] using
        And.intro hh.1 ((disks i).squaredContainsBox_of_containsBox b hh.2)
  | splitReal cut l r ihl ihr =>
      intro b h
      have hh : (b.WellFormed ∧ b.left < cut ∧ cut < b.right) ∧
          (l.check disks (b.west cut) = true ∧ r.check disks (b.east cut) = true) := by
        simpa only [Tree.check, Bool.and_eq_true, decide_eq_true_eq] using h
      simpa only [check, Bool.and_eq_true, decide_eq_true_eq] using
        And.intro hh.1 (And.intro (ihl (b.west cut) hh.2.1) (ihr (b.east cut) hh.2.2))
  | splitImag cut l r ihl ihr =>
      intro b h
      have hh : (b.WellFormed ∧ b.bottom < cut ∧ cut < b.top) ∧
          (l.check disks (b.south cut) = true ∧ r.check disks (b.north cut) = true) := by
        simpa only [Tree.check, Bool.and_eq_true, decide_eq_true_eq] using h
      simpa only [check, Bool.and_eq_true, decide_eq_true_eq] using
        And.intro hh.1 (And.intro (ihl (b.south cut) hh.2.1) (ihr (b.north cut) hh.2.2))

/-- Acceptance on the data projection still entails the exact recheck proof. -/
theorem searchTree_sound {count : ℕ} (disks : Fin count → Disk)
    (fuel : ℕ) (b : Rectangle) (tree : Tree count)
    (h : searchTree disks fuel b = some tree) : check disks tree b = true := by
  unfold searchTree at h
  cases hs : search disks fuel b with
  | none => simp only [hs, Option.map_none] at h; cases h
  | some cert =>
      have heq : cert.val = tree := by simpa only [hs, Option.map_some, Option.some.injEq] using h
      rw [← heq]
      exact cert.property

/-- Same analytic source required at every selected disk. Geometry alone cannot
construct these patches. No arithmetic evaluation is hidden in `search`. -/
def CheckedTree.toFiniteVariationCover {count : ℕ} {disks : Fin count → Disk}
    {b : Rectangle} (cert : CheckedTree disks b) {F : ℂ → ℂ}
    (patches : ∀ i, SampleVariationPatch F (disks i).carrier) :
    FiniteVariationCover F b.carrier where
  count := count
  region := fun i => (disks i).carrier
  patch := patches
  covers := check_covers disks cert.val b cert.property

/-- An uncovered point is an obstruction to every squared checked tree. -/
theorem not_check_of_uncovered {count : ℕ} (disks : Fin count → Disk)
    (tree : Tree count) (b : Rectangle) {z : ℂ}
    (hz : z ∈ b.carrier) (hmiss : ∀ i, z ∉ (disks i).carrier) :
    check disks tree b ≠ true := by
  intro h
  obtain ⟨i, hi⟩ := check_covers disks tree b h z hz
  exact hmiss i hi

/-- A returned checked tree plus analytic patches cannot cover an actual source zero. -/
theorem CheckedTree.source_nonzero {count : ℕ} {disks : Fin count → Disk}
    {b : Rectangle} (cert : CheckedTree disks b) {F : ℂ → ℂ}
    (patches : ∀ i, SampleVariationPatch F (disks i).carrier)
    {z : ℂ} (hz : z ∈ b.carrier) : F z ≠ 0 :=
  (cert.toFiniteVariationCover patches).nonzero hz

end
end SquaredCover
end GRWTSK.RiemannHypothesis.CriticalStripHeightDescent.RationalPatchCover
