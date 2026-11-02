/- Copyright (c) 2026 grwtsk contributors. MIT.
Local mathematical attribution: grwtsk contributors.
Formalization assistance: OpenAI ChatGPT.
SOURCE_PROOF_CANDIDATE / COMPILATION_DEFERRED_PER_USER /
PARSER_NOT_RUN / EXPECTED_TYPES_NOT_RUN / FRESH_KERNEL_NOT_RUN /
TRANSITIVE_AXIOM_AUDIT_NOT_RUN.
-/
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.MoebiusPerronRightLineExplicit
import Mathlib.NumberTheory.Harmonic.ZetaAsymp
import Mathlib.NumberTheory.LSeries.Nonvanishing
import Mathlib

set_option autoImplicit false
noncomputable section
open scoped BigOperators Topology

/-!
# Genuine reciprocal-zeta control near the critical half-plane:
# an unconditional small critical-line rectangle and rigorous finite height.

These are TWO very different ordinary mathematical inputs, not RH:
1. The true entire pole-removed Z1(s)=riemannZeta₁(s) satisfies
   Z1(sigma)>1/4 for every REAL sigma in [1/2,2].
   For sigma<1, use positive alternating eta and convexity
   2^(1-sigma)<=2-sigma; at sigma=1 the pinned Z1(1)=1;
   for sigma>1 use the positive Dirichlet sum and integral test.
   The entire derivative is bounded on the compact rectangle
   [1/2,2]x[-1,1]. Choose h=1/(8*(1+A)) for a true
   uniform derivative bound A. Then |Z1(sigma+it)|>=1/8
   and |(s-1)/Z1(s)|<=9 whenever |t|<=h.
   This reaches Re s=1/2, but at only a FIXED short height.
2. Published Platt-Trudgian (2021, BLMS) rigorously verifies
   by interval arithmetic ALL nontrivial zeta zeros up to
   height H=3*10^12 are on Re=1/2, including both conjugate
   ordinates. At every fixed delta>0 the CLOSED rectangle
     1/2+delta <= re s <=2, |im s|<=H
   is therefore zero-free for Z1. Compactness gives SOME
   finite C_(delta,H) bounding the genuine reciprocal R(s).
   This imported finite-height external theorem is NOT the
   globally RH-equivalent unbounded-height statement.

The external finite-height input, the elementary real-zeta
positivity, the vertical derivative/FTC bound and the standard
compact reciprocal minimum are SEPARATE UNPROVED PINNED LEAN
PROP targets. Their mathematical proofs are in the review.
The finite-source theorem bodies below use ONLY these visible
inputs and the already pinned riemannZeta_ne_zero_of_one_le_re,
riemannZeta₁_one and riemannZeta_eq_inv_sub_mul.

No RH, all-positive-rate original far, or global zero-free
half-plane is imported. Compilation remains DEFERRED.
-/

namespace GRWTSK.NumberTheory.Moebius.ReciprocalCriticalCompact

open GRWTSK.RiemannHypothesis.CCC
open GRWTSK.NumberTheory.Moebius.ReciprocalZetaPerronBridge

/-- Explicit finite classical verification height from the
published 2021 Platt-Trudgian theorem, not infinity. -/
def verifiedZetaHeight : ℝ := 3000000000000

/-- Ordinary elementary statement on the ACTUAL entire
pole-removed zeta. It is unconditional in standard mathematics,
but its eta-series positivity proof has NOT been ported to Lean. -/
def RealZetaOneQuarterLowerTarget : Prop :=
  ∀ sigma : ℝ,
    (1 / 2 : ℝ) ≤ sigma → sigma ≤ 2 →
      (1 / 4 : ℝ) ≤
        ‖ZetaAsymptotics.riemannZeta₁ (sigma : ℂ)‖

/-- Standard entire-function vertical continuity with one
common h>0 for ALL real sigma in [1/2,2].
A proof via compact derivative bound A gives
  h=1/(8*(1+A))<=1/8.
This is analytic-calculus, NOT a hidden zero-free hypothesis. -/
def ZetaOneUniformShortVerticalVariationTarget : Prop :=
  ∃ h : ℝ, 0 < h ∧ h ≤ 1 / 8 ∧
    ∀ (sigma t : ℝ),
      (1 / 2 : ℝ) ≤ sigma → sigma ≤ 2 → |t| ≤ h →
        ‖ZetaAsymptotics.riemannZeta₁
            ((sigma : ℂ) + (t : ℂ) * Complex.I) -
          ZetaAsymptotics.riemannZeta₁ (sigma : ℂ)‖ ≤ 1 / 8

/-- SOURCE candidate: one actual critical-line-reaching local
reciprocal bound with numerical universal constant 9.
No assumption that Z1 is nonzero in a global half-plane. -/
theorem reciprocal_zeta_critical_corridor_of_elementary
    (hReal : RealZetaOneQuarterLowerTarget)
    (hVar : ZetaOneUniformShortVerticalVariationTarget) :
    ∃ h : ℝ, 0 < h ∧ h ≤ 1 / 8 ∧
      ∀ (sigma t : ℝ),
        (1 / 2 : ℝ) ≤ sigma → sigma ≤ 2 → |t| ≤ h →
          (1 / 8 : ℝ) ≤
            ‖ZetaAsymptotics.riemannZeta₁
              ((sigma : ℂ) + (t : ℂ) * Complex.I)‖ ∧
          ‖regularizedReciprocalZeta
              ((sigma : ℂ) + (t : ℂ) * Complex.I)‖ ≤ 9 := by
  obtain ⟨h, hh, hsmall, hVariation⟩ := hVar
  refine ⟨h, hh, hsmall, ?_⟩
  intro sigma t hsigma htwo ht
  let s : ℂ := (sigma : ℂ) + (t : ℂ) * Complex.I
  have hreal : (1 / 4 : ℝ) ≤
      ‖ZetaAsymptotics.riemannZeta₁ (sigma : ℂ)‖ :=
    hReal sigma hsigma htwo
  have hvariation :
      ‖ZetaAsymptotics.riemannZeta₁ s -
         ZetaAsymptotics.riemannZeta₁ (sigma : ℂ)‖ ≤ 1 / 8 := by
    simpa only [s] using hVariation sigma t hsigma htwo ht
  have htri :
      ‖ZetaAsymptotics.riemannZeta₁ (sigma : ℂ)‖ ≤
        ‖ZetaAsymptotics.riemannZeta₁ s‖ +
          ‖ZetaAsymptotics.riemannZeta₁ s -
             ZetaAsymptotics.riemannZeta₁ (sigma : ℂ)‖ := by
    calc
      ‖ZetaAsymptotics.riemannZeta₁ (sigma : ℂ)‖ =
        ‖ZetaAsymptotics.riemannZeta₁ s -
          (ZetaAsymptotics.riemannZeta₁ s -
            ZetaAsymptotics.riemannZeta₁ (sigma : ℂ))‖ := by
              congr 1
              ring
      _ ≤ _ := norm_sub_le _ _
  have hden : (1 / 8 : ℝ) ≤
      ‖ZetaAsymptotics.riemannZeta₁ s‖ := by linarith
  have hdenpos : 0 < ‖ZetaAsymptotics.riemannZeta₁ s‖ := by
    linarith
  have hsigAbs : |sigma - 1| ≤ (1 : ℝ) := by
    apply abs_le.mpr
    constructor <;> linarith
  have htAbs : |t| ≤ (1 / 8 : ℝ) := ht.trans hsmall
  have hnum : ‖s - 1‖ ≤ (9 / 8 : ℝ) := by
    have heq : s - 1 =
        ((sigma - 1 : ℝ) : ℂ) + (t : ℂ) * Complex.I := by
      dsimp [s]
      push_cast
      ring
    rw [heq]
    calc
      ‖((sigma - 1 : ℝ) : ℂ) + (t : ℂ) * Complex.I‖ ≤
          ‖((sigma - 1 : ℝ) : ℂ)‖ +
            ‖(t : ℂ) * Complex.I‖ := norm_add_le _ _
      _ = |sigma - 1| + |t| := by simp
      _ ≤ 9 / 8 := by linarith
  refine ⟨hden, ?_⟩
  have hrewrite :
      ‖regularizedReciprocalZeta s‖ =
        ‖s - 1‖ / ‖ZetaAsymptotics.riemannZeta₁ s‖ := by
    simp [regularizedReciprocalZeta, norm_div]
  rw [hrewrite]
  apply (div_le_iff₀ hdenpos).2
  nlinarith

/-- Exact finite-width version of the independently published
Platt-Trudgian 2021 verified zero location: all NONTRIVIAL zeros
with imaginary height at most 3*10^12 lie on re=1/2.
The 2021 rigorous interval-arithmetic result is an external
publication, NOT a locally imported Lean theorem.
The sigma-real t=0 case also follows from elementary eta. -/
def PublishedFiniteHeightZetaZerosOnHalf : Prop :=
  ∀ s : ℂ,
    0 < s.re → s.re < 1 → |s.im| ≤ verifiedZetaHeight →
      _root_.riemannZeta s = 0 → s.re = 1 / 2

/-- The true finite-height compact reciprocal theorem:
given exact denominator nonvanishing on the stated CLOSED
rectangle and standard entire continuity, its norm has a
positive minimum. This calculus/compactness proof is still
UNPORTED in Lean. No dependence on a growing Perron height. -/
def FiniteHeightCompactReciprocalBoundTarget : Prop :=
  ∀ delta : ℝ, 0 < delta → delta < 1 / 2 →
    (∀ s : ℂ,
      (1 / 2 : ℝ) + delta ≤ s.re → s.re ≤ 2 →
        |s.im| ≤ verifiedZetaHeight →
          ZetaAsymptotics.riemannZeta₁ s ≠ 0) →
      ∃ C : ℝ, 0 ≤ C ∧
        ∀ s : ℂ,
          (1 / 2 : ℝ) + delta ≤ s.re → s.re ≤ 2 →
            |s.im| ≤ verifiedZetaHeight →
              ‖regularizedReciprocalZeta s‖ ≤ C

/-- Noncircular verified-height denominator nonvanishing:
critical strip zeros up to the certified finite height are
on re=1/2 and excluded by delta>0; re>=1 is already
zero-free by PINNED MATHLIB (including the 1-line).
At s=1 the entire regularized denominator is exactly 1. -/
theorem zetaOne_ne_zero_on_verified_half_shift
    (hVerified : PublishedFiniteHeightZetaZerosOnHalf)
    (delta : ℝ) (hdelta : 0 < delta)
    (s : ℂ)
    (hsigma : (1 / 2 : ℝ) + delta ≤ s.re)
    (hsigma2 : s.re ≤ 2)
    (ht : |s.im| ≤ verifiedZetaHeight) :
    ZetaAsymptotics.riemannZeta₁ s ≠ 0 := by
  by_cases hsone : s = 1
  · subst s
    simpa using (show ZetaAsymptotics.riemannZeta₁ (1 : ℂ) ≠ 0 by simp)
  · have hzeta : _root_.riemannZeta s ≠ 0 := by
      by_cases hsbelow : s.re < 1
      · intro hzero
        have hspos : 0 < s.re := by linarith
        have heq := hVerified s hspos hsbelow ht hzero
        linarith
      · exact _root_.riemannZeta_ne_zero_of_one_le_re
          (le_of_not_gt hsbelow)
    intro hz1
    have heq := ZetaAsymptotics.riemannZeta_eq_inv_sub_mul hsone
    rw [hz1, mul_zero] at heq
    exact hzeta heq

/-- A fixed δ>0 has genuine reciprocal control across the
ENTIRE externally certified finite-height rectangle. Neither
the constant C nor the height can be made uniform as δ->0
or H->infinity by this theorem. All hypotheses have
independent standard mathematical sources, no RH-level
all-height premise is smuggled in. -/
theorem finite_height_reciprocal_bound_of_published_certificate
    (hVerified : PublishedFiniteHeightZetaZerosOnHalf)
    (hCompact : FiniteHeightCompactReciprocalBoundTarget)
    (delta : ℝ) (hdelta : 0 < delta) (hdeltaHalf : delta < 1 / 2) :
    ∃ C : ℝ, 0 ≤ C ∧
      ∀ s : ℂ,
        (1 / 2 : ℝ) + delta ≤ s.re → s.re ≤ 2 →
          |s.im| ≤ verifiedZetaHeight →
            ‖regularizedReciprocalZeta s‖ ≤ C := by
  apply hCompact delta hdelta hdeltaHalf
  intro s hsigma hsigma2 ht
  exact zetaOne_ne_zero_on_verified_half_shift
    hVerified delta hdelta s hsigma hsigma2 ht

end GRWTSK.NumberTheory.Moebius.ReciprocalCriticalCompact
