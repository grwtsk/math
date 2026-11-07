/-
Copyright (c) 2026 grwtsk contributors.
Released under the MIT license as described in the repository LICENSE.
Authors: grwtsk contributors.
-/

import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.WeilFiniteInvariantDiffusers
import GRWTSK.Combinatorics.GraphTheory.RootHeatState
import Mathlib

/-!
# Concrete stochastic heat for every finite involutive Weil carrier

The generic finite Weil involution produces one genuinely nonnegative
column-stochastic RATIONAL RootHeatState.HeatKernel, not merely a named
diffuser. For source s and target t,
  K(t,s) = (3/4)*1_{t=s}+(1/4)*1_{t=swap(s)}.
For a fixed point (including the separate scalar zeta pole), both
contributions add to one on the diagonal. A two-site orbit has
[3/4 1/4;1/4 3/4]. With the repository's target/source index
orientation, its step equals EXACTLY
  heatRat(v)(t)=(3*v(t)+v(swap(t)))/4.
The column mass is exactly one, every entry is nonnegative, and the
existing HeatKernel.step_mass and step_nonneg return both global laws.
This is an explicit finite instance for arbitrary finite dimension,
including a zero-dimensional physical head: no unsupported division
by its cardinal is needed.

The inverse is recoverRat(v)(t)=(3*v(t)-v(swap(t)))/2.
Thus diffusion of the complete finite rational observation vector is
LOSSLESS at exact rational precision. The inverse may be signed and
can amplify squared observer errors by factor four. No arithmetic
source-positive assertion is implied.

The actual type-carrier/source identities in WeilTypedSourceDiffusers
and WeilPrimitiveAndSpectralDiffusers remain separately required.
The original Weil source is returned only after inverse transport.
A finite Markov kernel here is NOT the infinite theta-weighted
spectral semigroup. It is also distinct from the separately defined
countable stageCoverageStep and genuine finite Euler sign certificates.
A transition alone does not cover absent source/character labels.

Primary comparison: finite Markov normalization and RootHeatState
from the maintained source; actual Weil quadratic return as in
Connes--Consani--Moscovici arXiv:2511.22755v1. Standard rational
two-state Markov chain and similarity, no priority claim.
SOURCE_PROOF_CANDIDATE; COMPILATION_NOT_RUN; FRESH_KERNEL_NOT_RUN;
TRANSITIVE_AXIOM_AUDIT_NOT_RUN; INDEPENDENT_REVIEW_NOT_RUN.
-/

set_option autoImplicit false
noncomputable section
open scoped BigOperators

namespace GRWTSK.NumberTheory.WeilQuadraticForm.FiniteInvariantDiffusion.Involution

open GRWTSK.CombinatoricsAndDiscreteMathematics.GraphTheory.RootHeatState

variable {ι : Type*} [Fintype ι] [DecidableEq ι] (d : Involution ι)

/-- Actual stochastic kernel with TARGET as first argument and SOURCE
as second; a fixed point gets all column mass on itself. -/
def markovKernel : HeatKernel ι where
  transition target source :=
    (if target = source then (3 / 4 : ℚ) else 0) +
      (if target = d.swap source then (1 / 4 : ℚ) else 0)
  nonnegative := by
    intro target source
    dsimp
    split_ifs <;> norm_num
  stochastic := by
    intro source
    change
      (∑ target : ι, (if target = source then (3 / 4 : ℚ) else 0) +
        (if target = d.swap source then (1 / 4 : ℚ) else 0)) = 1
    rw [Finset.sum_add_distrib]
    simp
    norm_num

/-- Rational form of the source's earlier real/complex finite diffuser. -/
def heatRat (v : ι → ℚ) (target : ι) : ℚ :=
  (3 * v target + v (d.swap target)) / 4

def recoverRat (v : ι → ℚ) (target : ι) : ℚ :=
  (3 * v target - v (d.swap target)) / 2

theorem recover_heatRat (v : ι → ℚ) :
    d.recoverRat (d.heatRat v) = v := by
  funext i
  change
    (3 * ((3 * v i + v (d.swap i)) / 4) -
      ((3 * v (d.swap i) + v (d.swap (d.swap i))) / 4)) / 2 = v i
  rw [d.involutive i]
  ring

theorem heat_recoverRat (v : ι → ℚ) :
    d.heatRat (d.recoverRat v) = v := by
  funext i
  change
    (3 * ((3 * v i - v (d.swap i)) / 2) +
      ((3 * v (d.swap i) - v (d.swap (d.swap i))) / 2)) / 4 = v i
  rw [d.involutive i]
  ring

/-- The complete physical heat step is EXACTLY the existing rational
HeatKernel.step; no target/source transposition or skipped fixed point. -/
theorem markov_step_eq_heatRat (v : ι → ℚ) (target : ι) :
    (d.markovKernel.step v target) = d.heatRat v target := by
  have hfirst :
      (∑ source : ι, (if target = source then (3 / 4 : ℚ) else 0) *
        v source) = (3 / 4 : ℚ) * v target := by
    simp
  have hequiv (source : ι) :
      (target = d.swap source) ↔ (source = d.swap target) := by
    constructor
    · intro h
      have h' := congrArg d.swap h
      rw [d.involutive source] at h'
      exact h'.symm
    · intro h
      subst source
      simp only [d.involutive]
  have hsecond :
      (∑ source : ι, (if target = d.swap source then (1 / 4 : ℚ) else 0) *
        v source) = (1 / 4 : ℚ) * v (d.swap target) := by
    calc
      _ = ∑ source : ι, (if source = d.swap target then (1 / 4 : ℚ) else 0) *
          v source := by
        apply Finset.sum_congr rfl
        intro source _
        rw [hequiv source]
      _ = _ := by simp
  unfold HeatKernel.step markovKernel heatRat
  simp only [add_mul, Finset.sum_add_distrib, hfirst, hsecond]
  ring

/-- Global mass preservation on the ENTIRE finite type from the original
stochastic source interface. There is no finite-prefix loss. -/
theorem heatRat_mass (v : ι → ℚ) :
    (∑ i, d.heatRat v i) = ∑ i, v i := by
  calc
    (∑ i, d.heatRat v i) = ∑ i, d.markovKernel.step v i := by
      apply Finset.sum_congr rfl
      intro i _
      exact (d.markov_step_eq_heatRat v i).symm
    _ = _ := d.markovKernel.step_mass v

/-- Global coordinate nonnegativity, not positivity of a signed Weil form. -/
theorem heatRat_nonneg (v : ι → ℚ) (hv : ∀ i, 0 ≤ v i) :
    ∀ i, 0 ≤ d.heatRat v i := by
  intro i
  rw [← d.markov_step_eq_heatRat v i]
  exact d.markovKernel.step_nonneg v hv i

/-- The exact rational Euler heat and the existing real heat commute with
coordinatewise inclusion Q -> R. No rounding or support loss. -/
theorem heatReal_of_rat (v : ι → ℚ) (i : ι) :
    d.heatReal (fun k => (v k : ℝ)) i = (d.heatRat v i : ℝ) := by
  unfold heatReal heatRat
  push_cast
  ring

/-- The scalar pole in a source-specific bordered carrier is a fixed
Markov state: its column has the exact unit diagonal entry. -/
theorem pole_column_unit {κ : Type*} (physical : Involution κ)
    [Fintype κ] [DecidableEq κ] :
    (physical.withPole.markovKernel).transition
      (Sum.inr ()) (Sum.inr ()) = 1 := by
  simp [markovKernel, Involution.withPole]
  norm_num

end GRWTSK.NumberTheory.WeilQuadraticForm.FiniteInvariantDiffusion.Involution
