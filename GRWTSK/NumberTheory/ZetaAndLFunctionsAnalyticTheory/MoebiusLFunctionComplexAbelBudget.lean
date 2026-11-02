/- Copyright (c) 2026 grwtsk contributors. MIT.
Local mathematical attribution: grwtsk contributors.
SOURCE_PROOF_CANDIDATE / COMPILATION_NOT_RUN /
EXPECTED_TYPES_NOT_RUN / FRESH_KERNEL_NOT_RUN /
TRANSITIVE_AXIOM_AUDIT_NOT_RUN.
-/
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.MoebiusLFunctionComplexPrefixTransfer
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.MoebiusCausalMertensSquareBridge
import Mathlib

set_option autoImplicit false
noncomputable section
open scoped BigOperators

/-!
# Family Mertens-prefix budget on the original terminal response

The exact complex Abel summation from the previous source yields,
for N=floor(exp T), u<=T,
  familyFiniteResponse F T u =
    sum_(k<N) complexFiniteMobiusPrefix F (k+1)
                * original responseDrop k u.
The same REAL responseDrop(k,u) is already nonnegative in the
maintained original Mertens physical source.

Hence the pointwise source inequality, for every normalized
L-family without any coefficient growth assumption:
  norm(familyFiniteResponse F T u)
    <= sum_(k<N) norm(M_F(k+1))*responseDrop(k,u).

No artificial phases, no coefficientwise replacement of mu_L,
and no assumption that the complex prefixes have cancellation.
This gives a rigorous route from any ACTUAL family prefix envelope
to positive energy bounds, but it is not the reverse implication
from a signed all-rate core to family GRH.

All Lean proof bodies SOURCE PROOF CANDIDATES; no native replay.
-/

namespace GRWTSK.NumberTheory.Moebius.LFunctionComplexAbelBudget

open GRWTSK.RiemannHypothesis.CCC
open GRWTSK.NumberTheory.MoebiusEndpointLeastPrimeTypeII
open GRWTSK.NumberTheory.Moebius.LFunctionFamilyInverse
open GRWTSK.NumberTheory.Moebius.LFunctionHermitianPickup
open GRWTSK.NumberTheory.Moebius.LFunctionComplexPrefixTransfer
open GRWTSK.NumberTheory.Moebius.CausalMertensSquareBridge

classical

private theorem sum_Icc_one_eq_range
    (N : ℕ) (f : ℕ → ℂ) :
    (∑ n ∈ Finset.Icc 1 N, f n) =
      ∑ j ∈ Finset.range N, f (j+1) := by
  have heq :
      Finset.Icc 1 N =
        (Finset.range N).image (fun j => j+1) := by
    ext n
    simp only [Finset.mem_Icc,Finset.mem_image,Finset.mem_range]
    constructor
    · intro hn
      refine ⟨n-1,by omega,by omega⟩
    · rintro ⟨j,hj,rfl⟩
      omega
  rw [heq,Finset.sum_image]
  intro a ha b hb hab
  omega

/-- The original Hermitian family finite response is exactly
the complex range-indexed Abel source, not a different wave. -/
theorem familyFiniteResponse_eq_complexFinitePickup
    (F : NormalizedCoefficients) (T u : ℝ) :
    familyFiniteResponse F T u =
      complexFinitePickup F ⌊Real.exp T⌋₊ u := by
  unfold familyFiniteResponse complexFinitePickup
  exact sum_Icc_one_eq_range ⌊Real.exp T⌋₊
    (fun n => F.mobius n * (pickupResponse n u : ℂ))

/-- The complex Abel prefix is the literal normalized L-family
generalized Möbius cumulative sum through integer N. -/
theorem complexFinitePrefix_eq_familyPrefix
    (F : NormalizedCoefficients) (N : ℕ) :
    complexFiniteMobiusPrefix F N =
      familyMobiusPrefix F (N : ℝ) := by
  unfold complexFiniteMobiusPrefix familyMobiusPrefix
  simp only [Nat.floor_natCast]
  exact (sum_Icc_one_eq_range N F.mobius).symm

/-- Noncircular source-exact complex finite response upper:
all original coefficient signs are inside their TRUE prefixes
before applying the norm, and all weights are the SAME real
nonnegative causal response drops from the original source. -/
theorem familyFiniteResponse_norm_le_prefixDrop
    (F : NormalizedCoefficients)
    (T u : ℝ) (huT : u ≤ T) :
    ‖familyFiniteResponse F T u‖ ≤
      ∑ k ∈ Finset.range ⌊Real.exp T⌋₊,
        ‖familyMobiusPrefix F ((k+1 : ℕ) : ℝ)‖ *
          responseDrop k u := by
  rw [familyFiniteResponse_eq_complexFinitePickup]
  rw [complexFinitePickup_eq_terminalDrops F T u huT]
  calc
    ‖∑ k ∈ Finset.range ⌊Real.exp T⌋₊,
        complexFiniteMobiusPrefix F (k+1) *
          (responseDrop k u : ℂ)‖ ≤
      ∑ k ∈ Finset.range ⌊Real.exp T⌋₊,
        ‖complexFiniteMobiusPrefix F (k+1) *
          (responseDrop k u : ℂ)‖ :=
      norm_sum_le _ _
    _ = ∑ k ∈ Finset.range ⌊Real.exp T⌋₊,
        ‖familyMobiusPrefix F ((k+1 : ℕ) : ℝ)‖ *
          responseDrop k u := by
      apply Finset.sum_congr rfl
      intro k hk
      rw [norm_mul,Complex.norm_real,Real.norm_eq_abs,
        abs_of_nonneg (responseDrop_nonneg k u),
        complexFinitePrefix_eq_familyPrefix]

end GRWTSK.NumberTheory.Moebius.LFunctionComplexAbelBudget
