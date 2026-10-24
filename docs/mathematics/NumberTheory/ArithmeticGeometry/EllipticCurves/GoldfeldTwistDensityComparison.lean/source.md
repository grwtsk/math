# Complete source: GRWTSK.NumberTheory.ArithmeticGeometry.EllipticCurves.GoldfeldTwistDensityComparison

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `f304839c4f838858b0d977c46a034fb55f6cd162` · SHA-256 `f4bdc16d0a76bfe223f8849f1b18306e0b23bcf016ccce1d5809a342bb2a9479`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2026 grwtsk contributors. MIT.
Human mathematical direction: grwtsk contributors.
Formalization assistance: OpenAI.

Comparison only: OpenAI, "Goldfeld's analytic density conjecture and the
2-converse for elliptic curves", preprint dated October 7, 2026,
openai/math@1581d4cbdd69a0faf34b2089614fe2a814316a6a.
No external analytic-rank theorem is imported.

SOURCE_ONLY / NOT_RUN / NOT_KERNEL_AUDITED.
-/
import Mathlib.Tactic

/-!
# Signed quadratic twists: half densities versus mean analytic rank

A source adapter must instantiate eligible with the exact nonzero signed
squarefree twist convention for one specified elliptic curve E/Q, and rank
with the corresponding analytic L-function order at s=1. These inputs
are not built here and are NOT assumptions that automatically hold.

Finite rank moments split exactly into rank-one mass and the rank >=2
tail. Hence half-density of rank zero and half-density of rank one
do not alone yield mean analytic rank 1/2; a separate high-rank moment
uniform-integrability supplier suffices. This is not a zero-density
theorem for zeta, not a statement about CM reduction primes, and not
a Mordell--Weil rank computation for any specific curve.
-/

set_option autoImplicit false
noncomputable section
namespace GRWTSK.NumberTheory.ArithmeticGeometry.EllipticCurves.GoldfeldTwistDensityComparison

open Filter Topology

/-- Source-identified quadratic-twist family adapter, not yet instantiated.
A future implementation must make the squarefree and analytic-rank predicates
literal and prove agreement with the cited elliptic-curve L-functions. -/
structure TwistRankFamily where
  eligible : ℤ → Prop
  analyticRank : ℤ → ℕ
  eligible_nonzero : ∀ d, eligible d → d ≠ 0

/-- Exact symmetric signed-parameter finite window (not just d > 0). -/
def eligibleTwists (F : TwistRankFamily) (X : ℕ) : Finset ℤ := by
  classical
  exact (Finset.Icc (-(X : ℤ)) (X : ℤ)).filter F.eligible

def eligibleCount (F : TwistRankFamily) (X : ℕ) : ℕ :=
  (eligibleTwists F X).card

/-- Rank-zero and rank-one finite indicator masses. -/
def rankZeroMass (F : TwistRankFamily) (X : ℕ) : ℝ :=
  ∑ d ∈ eligibleTwists F X,
    if F.analyticRank d = 0 then (1 : ℝ) else 0

def rankOneMass (F : TwistRankFamily) (X : ℕ) : ℝ :=
  ∑ d ∈ eligibleTwists F X,
    if F.analyticRank d = 1 then (1 : ℝ) else 0

/-- Weighted high-rank tail, with ACTUAL analytic-rank weights. -/
def highRankMoment (F : TwistRankFamily) (X : ℕ) : ℝ :=
  ∑ d ∈ eligibleTwists F X,
    if 2 ≤ F.analyticRank d then (F.analyticRank d : ℝ) else 0

def fullRankMoment (F : TwistRankFamily) (X : ℕ) : ℝ :=
  ∑ d ∈ eligibleTwists F X, (F.analyticRank d : ℝ)

/-- Pointwise exact partition of a nonnegative integral rank moment. -/
theorem rank_moment_pointwise (r : ℕ) :
    (r : ℝ) =
      (if r = 1 then (1 : ℝ) else 0) +
        (if 2 ≤ r then (r : ℝ) else 0) := by
  by_cases hzero : r = 0
  · subst r
    norm_num
  by_cases hone : r = 1
  · subst r
    norm_num
  have hge : 2 ≤ r := by omega
  simp [hone, hge]

/-- Finite mean-rank numerator is exactly rank-one mass plus high-rank moment.
In particular density information alone does not bound the weighted tail. -/
theorem fullRankMoment_eq_one_add_high (F : TwistRankFamily) (X : ℕ) :
    fullRankMoment F X = rankOneMass F X + highRankMoment F X := by
  unfold fullRankMoment rankOneMass highRankMoment
  calc
    (∑ d ∈ eligibleTwists F X, (F.analyticRank d : ℝ)) =
        ∑ d ∈ eligibleTwists F X,
          ((if F.analyticRank d = 1 then (1 : ℝ) else 0) +
           (if 2 ≤ F.analyticRank d then (F.analyticRank d : ℝ) else 0)) := by
      apply Finset.sum_congr rfl
      intro d _
      exact rank_moment_pointwise (F.analyticRank d)
    _ = _ := by rw [Finset.sum_add_distrib]

/-- Finite arithmetic mean; no denominator positivity is silently assumed. -/
def meanAnalyticRank (F : TwistRankFamily) (X : ℕ) : ℝ :=
  fullRankMoment F X / (eligibleCount F X : ℝ)

/-- Exact mean-rank decomposition including the high-rank contribution. -/
theorem meanRank_eq_one_fraction_add_high (F : TwistRankFamily) (X : ℕ) :
    meanAnalyticRank F X =
      rankOneMass F X / (eligibleCount F X : ℝ) +
        highRankMoment F X / (eligibleCount F X : ℝ) := by
  unfold meanAnalyticRank
  rw [fullRankMoment_eq_one_add_high F X, add_div]

/-- Natural density of eligible signed squarefree twists, once adapted. -/
def HasTwistDensityHalf (F : TwistRankFamily) (mass : ℕ → ℝ) : Prop :=
  Tendsto (fun X => mass X / (eligibleCount F X : ℝ))
    atTop (nhds ((1 : ℝ) / 2))

/-- The two separate density-one-half conclusions claimed by Goldfeld. -/
def GoldfeldZeroOneHalfDensities (F : TwistRankFamily) : Prop :=
  HasTwistDensityHalf F (rankZeroMass F) ∧
    HasTwistDensityHalf F (rankOneMass F)

/-- An extra tail condition required before averaging unbounded ranks. -/
def HighRankMomentNegligible (F : TwistRankFamily) : Prop :=
  Tendsto (fun X => highRankMoment F X / (eligibleCount F X : ℝ))
    atTop (nhds (0 : ℝ))

/-- Mean-rank assertion, distinct from the two density assertions. -/
def GoldfeldMeanHalf (F : TwistRankFamily) : Prop :=
  Tendsto (meanAnalyticRank F) atTop (nhds ((1 : ℝ) / 2))

/-- Conditional exact bridge: rank-one half-density PLUS a negligible
weighted high-rank tail imply mean analytic rank one half. -/
theorem mean_half_of_density_and_high_tail
    (F : TwistRankFamily)
    (hDensities : GoldfeldZeroOneHalfDensities F)
    (hTail : HighRankMomentNegligible F) :
    GoldfeldMeanHalf F := by
  have hsum :
      Tendsto
        (fun X => rankOneMass F X / (eligibleCount F X : ℝ) +
          highRankMoment F X / (eligibleCount F X : ℝ))
        atTop (nhds (((1 : ℝ) / 2) + 0)) := by
    exact hDensities.2.add hTail
  simpa [GoldfeldMeanHalf, meanRank_eq_one_fraction_add_high] using hsum

end GRWTSK.NumberTheory.ArithmeticGeometry.EllipticCurves.GoldfeldTwistDensityComparison
```
