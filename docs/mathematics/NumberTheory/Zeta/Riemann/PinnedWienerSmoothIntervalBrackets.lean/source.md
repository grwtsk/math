# Complete source: GRWTSK.NumberTheory.Zeta.Riemann.PinnedWienerSmoothIntervalBrackets

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `5830184b9c03d227551b941d0ba64962457ba6bb` · SHA-256 `4f50ba9426e47a2750361913eb77d115c8a78f556701d4eb74aa37cbaef2a1cd`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/- Copyright (c) 2026 grwtsk contributors. MIT.
Human mathematical direction: grwtsk contributors.
Formalization assistance: OpenAI ChatGPT.
Historical smooth interval approximation: Alex Kontorovich, Terry Tao
and collaborators of the Prime Number Theorem + Project.
Upstream Mathlib and PNTAnd retain their original licenses. -/
import GRWTSK.NumberTheory.Zeta.Riemann.PinnedWienerIkeharaRelativeWindowToFull
import Mathlib.Geometry.Manifold.PartitionOfUnity
import Mathlib.MeasureTheory.Integral.Bochner.Set
import Mathlib.MeasureTheory.Measure.Lebesgue.Basic
import Mathlib.Tactic

set_option autoImplicit false
noncomputable section
open scoped ContDiff
open Set MeasureTheory Real

/-!
# Quantitative smooth interval brackets from pinned Mathlib

The historical Wiener-Ikehara proof approximates the indicator of the
literal relative interval [a,b) by smooth functions with compact
support contained in (0,infinity).  This module constructs the
approximants from the actual PINNED Mathlib smooth Urysohn theorem.

The old external source calls smooth_urysohn_support_Ioo, built from an
older manifold smooth-Urysohn declaration.  The local source instead
uses Mathlib's exists_contMDiff_zero_iff_one_iff_of_isClosed.

For 0<a<b and 0<eta<min(a,b-a), there exist lower and upper
C-infinity compactly supported real functions such that

  0 <= lower <= indicator_[a,b) <= upper <= 1,

their support closures lie in (0,infinity), and

  (b-a)-eta <= integral_(0,infinity) lower,
  integral_(0,infinity) upper <= (b-a)+eta.

All supports, endpoints, the same eta in both integrals, and actual
measure normalizations are retained.

This provides a CONCRETE approximation supplier.  It does not prove
the separate Wiener-Ikehara smoothed-sum convergence, or a relative
interval limit, PNT, or RH.

SOURCE_DRAFT / NOT_RUN / NOT_KERNEL_AUDITED /
PINNED_SMOOTH_URYSOHN_SOURCE_DEFINED /
COMPACT_SUPPORT_AWAY_FROM_ZERO_DEFINED /
QUANTITATIVE_INTERVAL_MASS_BRACKETS_DEFINED /
SMOOTH_WIENER_IKEHARA_LIMIT_OPEN /
NO_PNT_OR_RH_CLAIM.
-/

namespace GRWTSK.RiemannHypothesis

/-- A pinned smooth Urysohn bump: support exactly (u,z), equal to one
on [v,w], with values in [0,1]. Only u<v and w<z are required; the
inner closed interval may be empty. -/
theorem pinnedSmoothUrysohnIoo
    {u v w z : ℝ} (huv : u < v) (hwz : w < z) :
    ∃ φ : ℝ → ℝ,
      ContDiff ℝ ∞ φ ∧
      HasCompactSupport φ ∧
      (∀ x, 0 ≤ φ x ∧ φ x ≤ 1) ∧
      (∀ x ∈ Set.Icc v w, φ x = 1) ∧
      Function.support φ = Set.Ioo u z := by
  have hclosed : IsClosed (Set.Iic u ∪ Set.Ici z) :=
    isClosed_Iic.union isClosed_Ici
  have ht : IsClosed (Set.Icc v w) := isClosed_Icc
  have hd : Disjoint (Set.Iic u ∪ Set.Ici z) (Set.Icc v w) := by
    apply Set.disjoint_left.mpr
    intro x hx hy
    rcases (Set.mem_union.mp hx) with hu | hz
    · have hux : x ≤ u := Set.mem_Iic.mp hu
      have hvx : v ≤ x := (Set.mem_Icc.mp hy).1
      linarith
    · have hzx : z ≤ x := Set.mem_Ici.mp hz
      have hxw : x ≤ w := (Set.mem_Icc.mp hy).2
      linarith
  obtain ⟨φ, hsmooth, hrange, hzero, hone⟩ :=
    exists_contMDiff_zero_iff_one_iff_of_isClosed
      (I := modelWithCornersSelf ℝ ℝ) (n := ∞)
      (s := Set.Iic u ∪ Set.Ici z)
      (t := Set.Icc v w) hclosed ht hd
  have hsupport : Function.support φ = Set.Ioo u z := by
    ext x
    change φ x ≠ 0 ↔ (u < x ∧ x < z)
    constructor
    · intro hne
      have hnot : ¬ x ∈ Set.Iic u ∪ Set.Ici z := by
        intro hx
        exact hne ((hzero x).mp hx)
      simp only [Set.mem_union, Set.mem_Iic, Set.mem_Ici,
        not_or, not_le] at hnot
      exact hnot
    · rintro ⟨hux, hxz⟩ heq
      have hx := (hzero x).mpr heq
      rcases (Set.mem_union.mp hx) with hu | hz
      · exact (not_le.mpr hux) (Set.mem_Iic.mp hu)
      · exact (not_le.mpr hxz) (Set.mem_Ici.mp hz)
  have hcompact : HasCompactSupport φ := by
    apply HasCompactSupport.of_support_subset_isCompact
      (K := Set.Icc u z) isCompact_Icc
    rw [hsupport]
    exact Set.Ioo_subset_Icc_self
  refine ⟨φ, hsmooth.contDiff, hcompact, ?_, ?_, hsupport⟩
  · intro x
    exact hrange ⟨x, rfl⟩
  · intro x hx
    exact (hone x).mp hx

/-- A bump supported in a positive open interval stays away from zero,
INCLUDING the closure of its support.  This is the Mellin/Fourier
normalization condition of the historical smoothed Wiener theorem. -/
theorem pinnedIntervalSupport_closure_away
    {φ : ℝ → ℝ} {u z : ℝ}
    (hu : 0 < u)
    (hφ : Function.support φ = Set.Ioo u z) :
    closure (Function.support φ) ⊆ Set.Ioi (0 : ℝ) := by
  have hclosure :
      closure (Function.support φ) ⊆ Set.Icc u z := by
    rw [hφ]
    exact closure_minimal Set.Ioo_subset_Icc_self isClosed_Icc
  intro x hx
  have hle := (Set.mem_Icc.mp (hclosure hx)).1
  exact Set.mem_Ioi.mpr (hu.trans_le hle)

/-- The actual required output, including two separately normalized
Lebesgue integrals and the precise half-open arithmetic indicator. -/
def PinnedSmoothIntervalBrackets (a b η : ℝ) : Prop :=
  ∃ lower upper : ℝ → ℝ,
    ContDiff ℝ ∞ lower ∧
    ContDiff ℝ ∞ upper ∧
    HasCompactSupport lower ∧
    HasCompactSupport upper ∧
    closure (Function.support lower) ⊆ Set.Ioi (0 : ℝ) ∧
    closure (Function.support upper) ⊆ Set.Ioi (0 : ℝ) ∧
    (∀ x : ℝ,
      0 ≤ lower x ∧
      lower x ≤ (Set.Ico a b).indicator (fun _ : ℝ => (1 : ℝ)) x ∧
      (Set.Ico a b).indicator (fun _ : ℝ => (1 : ℝ)) x ≤ upper x ∧
      upper x ≤ 1) ∧
    b - a - η ≤ ∫ x in Set.Ioi (0 : ℝ), lower x ∧
    (∫ x in Set.Ioi (0 : ℝ), upper x) ≤ b - a + η

/-- The lower smooth bracket: it vanishes outside (a,b), equals one on
the INNER closed interval, and has at least b-a-eta integral mass. -/
theorem pinnedSmoothIntervalLower
    {a b η : ℝ} (ha : 0 < a) (hab : a < b)
    (hη : 0 < η) (hηwidth : η < b - a) :
    ∃ lower : ℝ → ℝ,
      ContDiff ℝ ∞ lower ∧
      HasCompactSupport lower ∧
      closure (Function.support lower) ⊆ Set.Ioi (0 : ℝ) ∧
      (∀ x : ℝ,
        0 ≤ lower x ∧ lower x ≤ 1 ∧
        lower x ≤ (Set.Ico a b).indicator (fun _ : ℝ => (1 : ℝ)) x) ∧
      b - a - η ≤ ∫ x in Set.Ioi (0 : ℝ), lower x := by
  let v : ℝ := a + η / 2
  let w : ℝ := b - η / 2
  have huv : a < v := by dsimp [v]; linarith
  have hwz : w < b := by dsimp [w]; linarith
  have hvw : v ≤ w := by dsimp [v, w]; linarith
  obtain ⟨lower, hsmooth, hcompact, hrange, hone, hsupport⟩ :=
    pinnedSmoothUrysohnIoo huv hwz
  have haway :=
    pinnedIntervalSupport_closure_away ha hsupport
  have hpoint (x : ℝ) :
      (Set.Icc v w).indicator (fun _ : ℝ => (1 : ℝ)) x ≤ lower x := by
    by_cases hx : x ∈ Set.Icc v w
    · have honeX := hone x hx
      simp [Set.indicator_of_mem hx, honeX]
    · have hx0 : 0 ≤ lower x := (hrange x).1
      simpa [Set.indicator_of_notMem hx] using hx0
  have hbelow (x : ℝ) :
      lower x ≤ (Set.Ico a b).indicator (fun _ : ℝ => (1 : ℝ)) x := by
    by_cases hx : x ∈ Set.Ico a b
    · have hu : lower x ≤ 1 := (hrange x).2
      simpa [Set.indicator_of_mem hx] using hu
    · have hzero : lower x = 0 := by
        by_contra hne
        have hmem : x ∈ Function.support lower := hne
        rw [hsupport] at hmem
        have hinside : x ∈ Set.Ico a b :=
          ⟨(Set.mem_Ioo.mp hmem).1.le, (Set.mem_Ioo.mp hmem).2⟩
        exact hx hinside
      simp [Set.indicator_of_notMem hx, hzero]
  have hinsidePositive : Set.Icc v w ⊆ Set.Ioi (0 : ℝ) := by
    intro x hx
    have hxl : v ≤ x := (Set.mem_Icc.mp hx).1
    exact Set.mem_Ioi.mpr (by dsimp [v] at hxl; linarith)
  have hinnerSet :
      Set.Icc v w ∩ Set.Ioi (0 : ℝ) = Set.Icc v w :=
    Set.inter_eq_left.mpr hinsidePositive
  have hmass :
      (∫ x in Set.Ioi (0 : ℝ),
        (Set.Icc v w).indicator (fun _ : ℝ => (1 : ℝ)) x)
          = b - a - η := by
    simp only [measurableSet_Icc, integral_indicator_one,
      measureReal_restrict_apply, hinnerSet, volume_real_Icc]
    rw [max_eq_left (by dsimp [v, w]; linarith : (0 : ℝ) ≤ w - v)]
    dsimp [v, w]
    ring
  have hIntLower : IntegrableOn lower (Set.Ioi (0 : ℝ)) volume :=
    (hsmooth.continuous.integrable_of_hasCompactSupport hcompact).integrableOn
  have hIntIndicator :
      IntegrableOn
        ((Set.Icc v w).indicator (fun _ : ℝ => (1 : ℝ)))
        (Set.Ioi (0 : ℝ)) volume := by
    rw [IntegrableOn, integrable_indicator_iff measurableSet_Icc]
    apply IntegrableOn.mono ?_ subset_rfl Measure.restrict_le_self
    apply integrableOn_const <;> simp
  have hintegral :
      b - a - η ≤ ∫ x in Set.Ioi (0 : ℝ), lower x := by
    rw [← hmass]
    exact setIntegral_mono hIntIndicator hIntLower hpoint
  refine ⟨lower, hsmooth, hcompact, haway, ?_, hintegral⟩
  intro x
  exact ⟨(hrange x).1, (hrange x).2, hbelow x⟩

/-- The upper smooth bracket equals one on [a,b], is supported strictly
inside (a-eta/2,b+eta/2), and has at most b-a+eta mass. -/
theorem pinnedSmoothIntervalUpper
    {a b η : ℝ} (ha : 0 < a) (hab : a < b)
    (hη : 0 < η) (hηleft : η < a) :
    ∃ upper : ℝ → ℝ,
      ContDiff ℝ ∞ upper ∧
      HasCompactSupport upper ∧
      closure (Function.support upper) ⊆ Set.Ioi (0 : ℝ) ∧
      (∀ x : ℝ,
        0 ≤ upper x ∧ upper x ≤ 1 ∧
        (Set.Ico a b).indicator (fun _ : ℝ => (1 : ℝ)) x ≤ upper x) ∧
      (∫ x in Set.Ioi (0 : ℝ), upper x) ≤ b - a + η := by
  let u : ℝ := a - η / 2
  let z : ℝ := b + η / 2
  have hu : 0 < u := by dsimp [u]; linarith
  have huv : u < a := by dsimp [u]; linarith
  have hwz : b < z := by dsimp [z]; linarith
  obtain ⟨upper, hsmooth, hcompact, hrange, hone, hsupport⟩ :=
    pinnedSmoothUrysohnIoo huv hwz
  have haway :=
    pinnedIntervalSupport_closure_away hu hsupport
  have habove (x : ℝ) :
      (Set.Ico a b).indicator (fun _ : ℝ => (1 : ℝ)) x ≤ upper x := by
    by_cases hx : x ∈ Set.Ico a b
    · have hxclosed : x ∈ Set.Icc a b :=
        ⟨(Set.mem_Ico.mp hx).1, (Set.mem_Ico.mp hx).2.le⟩
      have honeX := hone x hxclosed
      simp [Set.indicator_of_mem hx, honeX]
    · have hx0 : 0 ≤ upper x := (hrange x).1
      simpa [Set.indicator_of_notMem hx] using hx0
  have hupperIndicator (x : ℝ) :
      upper x ≤ (Set.Ioo u z).indicator (fun _ : ℝ => (1 : ℝ)) x := by
    by_cases hx : x ∈ Set.Ioo u z
    · simpa [Set.indicator_of_mem hx] using (hrange x).2
    · have hzero : upper x = 0 := by
        by_contra hne
        have hmem : x ∈ Function.support upper := hne
        rw [hsupport] at hmem
        exact hx hmem
      simp [Set.indicator_of_notMem hx, hzero]
  have houtsidePositive : Set.Ioo u z ⊆ Set.Ioi (0 : ℝ) := by
    intro x hx
    exact Set.mem_Ioi.mpr (hu.trans (Set.mem_Ioo.mp hx).1)
  have houterSet :
      Set.Ioo u z ∩ Set.Ioi (0 : ℝ) = Set.Ioo u z :=
    Set.inter_eq_left.mpr houtsidePositive
  have hmass :
      (∫ x in Set.Ioi (0 : ℝ),
        (Set.Ioo u z).indicator (fun _ : ℝ => (1 : ℝ)) x)
          = b - a + η := by
    simp only [measurableSet_Ioo, integral_indicator_one,
      measureReal_restrict_apply, houterSet, volume_real_Ioo]
    rw [max_eq_left (by dsimp [u, z]; linarith : (0 : ℝ) ≤ z - u)]
    dsimp [u, z]
    ring
  have hIntUpper : IntegrableOn upper (Set.Ioi (0 : ℝ)) volume :=
    (hsmooth.continuous.integrable_of_hasCompactSupport hcompact).integrableOn
  have hIntIndicator :
      IntegrableOn
        ((Set.Ioo u z).indicator (fun _ : ℝ => (1 : ℝ)))
        (Set.Ioi (0 : ℝ)) volume := by
    rw [IntegrableOn, integrable_indicator_iff measurableSet_Ioo]
    apply IntegrableOn.mono ?_ subset_rfl Measure.restrict_le_self
    apply integrableOn_const <;> simp
  have hintegral :
      (∫ x in Set.Ioi (0 : ℝ), upper x) ≤ b - a + η := by
    rw [← hmass]
    exact setIntegral_mono hIntUpper hIntIndicator hupperIndicator
  refine ⟨upper, hsmooth, hcompact, haway, ?_, hintegral⟩
  intro x
  exact ⟨(hrange x).1, (hrange x).2, habove x⟩

/-- Full quantitative source supplier. The SAME eta bounds both
integrals and the actual half-open indicator is sandwiched pointwise. -/
theorem pinnedSmoothIntervalBrackets_exists
    {a b η : ℝ} (ha : 0 < a) (hab : a < b)
    (hη : 0 < η) (hηleft : η < a) (hηwidth : η < b - a) :
    PinnedSmoothIntervalBrackets a b η := by
  obtain ⟨lo, hloSmooth, hloCompact, hloAway, hloPoint, hloMass⟩ :=
    pinnedSmoothIntervalLower ha hab hη hηwidth
  obtain ⟨hi, hhiSmooth, hhiCompact, hhiAway, hhiPoint, hhiMass⟩ :=
    pinnedSmoothIntervalUpper ha hab hη hηleft
  refine ⟨lo, hi, hloSmooth, hhiSmooth, hloCompact, hhiCompact,
    hloAway, hhiAway, ?_, hloMass, hhiMass⟩
  intro x
  exact ⟨(hloPoint x).1, (hloPoint x).2.2,
    (hhiPoint x).2.2, (hhiPoint x).2.1⟩

end GRWTSK.RiemannHypothesis
```
