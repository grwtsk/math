/- Copyright (c) 2026 grwtsk contributors. MIT.
Mathematical direction: grwtsk contributors; formalization assistance: OpenAI.
SOURCE_PROOF_CANDIDATE / COMPILATION_NOT_RUN / EXPECTED_TYPES_NOT_RUN /
FRESH_KERNEL_NOT_RUN / TRANSITIVE_AXIOM_AUDIT_NOT_RUN.
-/
import GRWTSK.HarmonicAnalysisOnEuclideanSpaces.CMScaleDependentPrimeSparseEnergy
import Mathlib.Analysis.SpecialFunctions.Pow.Real
import Mathlib.Analysis.SpecificLimits.Basic
import Mathlib.Tactic

/-!
# An infinite ORIGINAL Möbius correction, analytic but not entire at the origin

Let p_s be the actual Bertrand prime in (4^s,2*4^s], selected by the
genuine singleton high-smooth bank at source shell 2s. Since mu(p_s)=-1,
the signed correction is
  D_sparse(z) = - sum_(s>=0) (p_s:complex)^(-z).

For every real sigma>0 and every s,
  2^(-sigma) (4^(-sigma))^s <= p_s^(-sigma) <= (4^(-sigma))^s.
Consequently its finite partial sums are squeezed between TWO finite
geometric series. This provides absolute/local uniform convergence
on Re z>0 but ALSO the precise radial boundary:
  lim_(sigma->0+) sigma*(-D_sparse(sigma)) = 1/log 4.
In particular the signed high correction is NOT entire: this moving
bank defeats the fixed-bank finite-support theorem by selecting infinitely
many distinct nonzero source primes, and the singular boundary cannot
be eliminated by a finite Dirichlet polynomial.

The finite upper geometric inequality is a source Lean proof candidate.
The global analytic and radial limit are explicit Props remaining
unformalized, not asserted as theorems or arithmetic cancellation inputs.
No RH, zero-side false equivalence, or GRH statement is claimed.
-/

set_option autoImplicit false
noncomputable section
open scoped BigOperators

namespace GRWTSK.Analysis.HarmonicAnalysis.ResidueCircleWaveHilbert.CMScaleDependentPrimeDirichletBoundary

open GRWTSK.RiemannHypothesis.CCC
open GRWTSK.Analysis.HarmonicAnalysis.ResidueCircleWaveHilbert.CMScaleDependentPrimeBankWitness
open GRWTSK.Analysis.HarmonicAnalysis.ResidueCircleWaveHilbert.CMScaleDependentPrimeSparseEnergy

/-- The same ORIGINAL source primes at s, now with the convenient 4^s scale. -/
theorem four_pow_eq_two_even (s : ℕ) : 4 ^ s = 2 ^ (2 * s) := by
  calc
    4 ^ s = (2 ^ 2) ^ s := by norm_num
    _ = 2 ^ (2 * s) := by rw [← pow_mul]

theorem sparsePrime_gt_four_pow (s : ℕ) :
    4 ^ s < sparsePrime s := by
  rw [four_pow_eq_two_even]
  exact chosenPrime_gt (2 * s)

theorem sparsePrime_le_two_four_pow (s : ℕ) :
    sparsePrime s ≤ 2 * 4 ^ s := by
  rw [four_pow_eq_two_even]
  exact chosenPrime_le (2 * s)

/-- Pure positive-real source mass, not a random-sign or Fourier variance. -/
def sparsePrimeMass (σ : ℝ) (j : ℕ) : ℝ :=
  ∑ s ∈ Finset.range j, ((sparsePrime s : ℕ) : ℝ) ^ (-σ)

/-- Canonical positive ratio 4^(-sigma), for sigma>0. -/
def sparseRatio (σ : ℝ) : ℝ := Real.exp (-(σ * Real.log 4))

theorem sparseRatio_pos (σ : ℝ) : 0 < sparseRatio σ := by
  unfold sparseRatio
  positivity

theorem sparseRatio_lt_one {σ : ℝ} (hσ : 0 < σ) :
    sparseRatio σ < 1 := by
  unfold sparseRatio
  have hlog : 0 < Real.log (4 : ℝ) := Real.log_pos (by norm_num)
  have h : -(σ * Real.log 4) < 0 := by nlinarith
  simpa only [Real.exp_zero] using Real.exp_lt_exp.mpr h

private theorem four_pow_neg_sigma_eq_ratio {σ : ℝ} (s : ℕ) :
    ((((4 ^ s : ℕ) : ℝ)) ^ (-σ)) = sparseRatio σ ^ s := by
  rw [Nat.cast_pow,
    Real.rpow_def_of_pos (by norm_num : (0 : ℝ) < 4 ^ s),
    Real.log_pow]
  unfold sparseRatio
  rw [← Real.exp_nat_mul]
  congr 1
  ring

/-- The all-positive-rate high-prime Dirichlet upper mass uses ONLY the
dyadic source addresses and the negative real exponent monotonicity. -/
theorem sparsePrime_mass_term_le (s : ℕ) {σ : ℝ} (hσ : 0 < σ) :
    (((sparsePrime s : ℕ) : ℝ)) ^ (-σ) ≤ sparseRatio σ ^ s := by
  have hbase : (0 : ℝ) < ((4 ^ s : ℕ) : ℝ) := by positivity
  have hle : (((4 ^ s : ℕ) : ℝ)) ≤ (((sparsePrime s : ℕ) : ℝ)) := by
    exact_mod_cast (sparsePrime_gt_four_pow s).le
  calc
    (((sparsePrime s : ℕ) : ℝ)) ^ (-σ) ≤
        (((4 ^ s : ℕ) : ℝ)) ^ (-σ) :=
      Real.rpow_le_rpow_of_nonpos hbase hle (by linarith)
    _ = sparseRatio σ ^ s := four_pow_neg_sigma_eq_ratio s


/-- Matching finite geometric LOWER: the chosen original prime is no
larger than 2*4^s, and negative exponents reverse the inequality. -/
theorem sparsePrime_mass_term_ge (s : ℕ) {σ : ℝ} (hσ : 0 < σ) :
    (2 : ℝ) ^ (-σ) * sparseRatio σ ^ s ≤
      (((sparsePrime s : ℕ) : ℝ)) ^ (-σ) := by
  have hpbase : (0 : ℝ) < (((sparsePrime s : ℕ) : ℝ)) := by
    have h := sparsePrime_gt_four_pow s
    exact_mod_cast (by omega : 0 < sparsePrime s)
  have hup : (((sparsePrime s : ℕ) : ℝ)) ≤
      2 * (((4 ^ s : ℕ) : ℝ)) := by
    exact_mod_cast sparsePrime_le_two_four_pow s
  have hneg : -σ ≤ 0 := by linarith
  have hpow :
      (2 * (((4 ^ s : ℕ) : ℝ))) ^ (-σ) =
        (2 : ℝ) ^ (-σ) * sparseRatio σ ^ s := by
    rw [Real.mul_rpow (by norm_num : (0 : ℝ) ≤ 2)
      (by positivity : 0 ≤ (((4 ^ s : ℕ) : ℝ)))]
    rw [four_pow_neg_sigma_eq_ratio]
  calc
    (2 : ℝ) ^ (-σ) * sparseRatio σ ^ s =
        (2 * (((4 ^ s : ℕ) : ℝ))) ^ (-σ) := hpow.symm
    _ ≤ (((sparsePrime s : ℕ) : ℝ)) ^ (-σ) :=
      Real.rpow_le_rpow_of_nonpos hpbase hup hneg

/-- The precise FINITE lower/upper squeeze used for the positive-real
radial boundary σ ↓ 0. No divergent series is smuggled into a theorem. -/
theorem sparsePrimeMass_ge_geometric (j : ℕ) {σ : ℝ} (hσ : 0 < σ) :
    (2 : ℝ) ^ (-σ) *
      (∑ s ∈ Finset.range j, sparseRatio σ ^ s) ≤
      sparsePrimeMass σ j := by
  unfold sparsePrimeMass
  rw [Finset.mul_sum]
  apply Finset.sum_le_sum
  intro s hs
  exact sparsePrime_mass_term_ge s hσ

/-- A fully FINITE source-level geometric upper, no infinite-series
normalization and no unproved Möbius cancellation. -/
theorem sparsePrimeMass_le_geometric (j : ℕ) {σ : ℝ} (hσ : 0 < σ) :
    sparsePrimeMass σ j ≤
      ∑ s ∈ Finset.range j, sparseRatio σ ^ s := by
  unfold sparsePrimeMass
  apply Finset.sum_le_sum
  intro s hs
  exact sparsePrime_mass_term_le s hσ

/-- Uniform in finite truncation for every fixed sigma>0. Unlike a
fixed bank, this does NOT imply uniformity as sigma tends to zero. -/
theorem sparsePrimeMass_uniform (σ : ℝ) (hσ : 0 < σ) :
    ∀ j : ℕ, sparsePrimeMass σ j ≤ (1 - sparseRatio σ)⁻¹ := by
  intro j
  have hratio := sparseRatio_lt_one hσ
  calc
    sparsePrimeMass σ j ≤ ∑ s ∈ Finset.range j, sparseRatio σ ^ s :=
      sparsePrimeMass_le_geometric j hσ
    _ ≤ ∑' s : ℕ, sparseRatio σ ^ s :=
      (summable_geometric_of_lt_one (sparseRatio_pos σ).le hratio).sum_le_tsum
        (Finset.range j) (fun s hs => pow_nonneg (sparseRatio_pos σ).le s)
    _ = (1 - sparseRatio σ)⁻¹ :=
      tsum_geometric_of_lt_one (sparseRatio_pos σ).le hratio

/-- The genuinely ORIGINAL signed multiplier is -1 on every selected
prime, but no separate arithmetic coefficients are manufactured. -/
def sparseSignedDirichletTerm (s : ℕ) (z : ℂ) : ℂ :=
  (((moebiusReal (sparsePrime s) : ℝ) : ℂ) *
    (sparsePrime s : ℂ) ^ (-z))

def sparseSignedDirichletSeries (z : ℂ) : ℂ :=
  ∑' s : ℕ, sparseSignedDirichletTerm s z

theorem sparseSignedDirichletTerm_eq_negative (s : ℕ) (z : ℂ) :
    sparseSignedDirichletTerm s z = -(sparsePrime s : ℂ) ^ (-z) := by
  simp [sparseSignedDirichletTerm, sparsePrime_moebius]

/-- The infinite source correction has a paper-proved analytic half-plane
but requires a pinned Lean local-uniform-series argument. -/
def SparsePrimeHalfplaneHolomorphy : Prop :=
  DifferentiableOn ℂ sparseSignedDirichletSeries {z : ℂ | 0 < z.re}

/-- Paper-derived radial divergence from TWO geometric comparisons:
 sigma * (-D_sparse(sigma)) --> 1/log4 as sigma↓0.
A positive radial residue prevents an entire extension through zero,
but does not assert existence of a meromorphic continuation there. -/
def SparsePrimePositiveRadialResidue : Prop :=
  Filter.Tendsto
    (fun σ : ℝ => σ * (-(sparseSignedDirichletSeries (σ : ℂ)).re))
    (nhdsGT (0 : ℝ))
    (nhds ((Real.log 4)⁻¹))

end GRWTSK.Analysis.HarmonicAnalysis.ResidueCircleWaveHilbert.CMScaleDependentPrimeDirichletBoundary
