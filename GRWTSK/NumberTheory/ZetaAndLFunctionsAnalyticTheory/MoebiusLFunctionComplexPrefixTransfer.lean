/- Copyright (c) 2026 grwtsk contributors. MIT.
Local mathematical attribution: grwtsk contributors.
SOURCE_PROOF_CANDIDATE / COMPILATION_NOT_RUN /
EXPECTED_TYPES_NOT_RUN / FRESH_KERNEL_NOT_RUN /
TRANSITIVE_AXIOM_AUDIT_NOT_RUN.
-/
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.MoebiusLFunctionHigherDivisorReturn
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.MoebiusCausalMertensSquareBridge
import Mathlib

set_option autoImplicit false
noncomputable section
open scoped BigOperators
open MeasureTheory Set

/-!
# Actual complex family Mertens-prefix to causal response bridge

The ORIGINAL born response at n>=1 is
 r_n(u) = 2*(n^(-1/2) - exp(-u/2)), u>=log n, else 0.
The true arbitrary complex generalized Mobius prefix is
 M_F(exp v) = sum_(1<=n<=floor(exp v)) mu_F(n).
Its physical velocity is exp(-v/2)*M_F(exp v).

For 0<=u<=T, a FINITE cutoff computation gives
 M_F(exp v) = sum_(n<=floor exp T,log n<=v)mu_F(n)
for all v<=u. The integral of the finite sum is a linear
combination of just ONE real/complex scalar source identity:
  integral_0^u 1_(log n<=v)*exp(-v/2) dv = r_n(u).
The scalar birth integral is mathematically elementary
(piecewise exponential primitive, splitting at log n).
Its pinned Lean proof remains an explicit proposition
OriginalSingleBirthComplexIntegralTarget in THIS source.
It is not an RH or Mertens-growth hypothesis.

The new candidate proof body transports this ONE source-calculus
lemma into the PREEXISTING full
FamilyPrefixResponseReconstructionTarget by actual finite
interval-integral linearity and exact floor/log cutoff logic.

Separately, the ORIGINAL real finite Abel equality is extended
by ring algebra to arbitrary COMPLEX coefficients, and the
unchanged terminal-response zero is transported from the REAL
source. This is an unconditional finite algebra candidate and
does not require the birth integral proposition.

These theorems are SOURCE PROOF CANDIDATES, not accepted Lean
kernel results. No GRH or signed low-gcd cancellation is proved.
-/

namespace GRWTSK.NumberTheory.Moebius.LFunctionComplexPrefixTransfer

open GRWTSK.RiemannHypothesis.CCC
open GRWTSK.NumberTheory.MoebiusEndpointLeastPrimeTypeII
open GRWTSK.NumberTheory.Moebius.LFunctionFamilyInverse
open GRWTSK.NumberTheory.Moebius.LFunctionHermitianPickup
open GRWTSK.NumberTheory.Moebius.CausalMertensSquareBridge
open GRWTSK.NumberTheory.Moebius.LFunctionComplexGramClosure

classical

/-- The one ORIGINAL birth-gated real exponential indicator.
No arithmetic coefficient and no artificial replacement kernel. -/
def originalBirthStep (n : ℕ) (v : ℝ) : ℝ :=
  if Real.log (n : ℝ) ≤ v then Real.exp (-v/2) else 0

/-- The sole remaining finite-calculus source gate. It states both
the complex-cast interval-integrability and the exact integral
for one original birth index n. A native Lean proof must use the
true log-birth cutoff and exponential primitive; it cannot be
inferred merely from finite source tests. -/
def OriginalSingleBirthComplexIntegralTarget : Prop :=
  ∀ (n : ℕ) (u : ℝ), 1 ≤ n → 0 ≤ u →
    IntervalIntegrable
      (fun v : ℝ => (originalBirthStep n v : ℂ)) volume 0 u ∧
    (∫ v in (0 : ℝ)..u, (originalBirthStep n v : ℂ)) =
      (pickupResponse n u : ℂ)

/-- The physical velocity as a COMPLEX finite sum on the SAME
endpoint inventory floor(exp T). -/
def familyFiniteBirthVelocity
    (F : NormalizedCoefficients) (T v : ℝ) : ℂ :=
  ∑ n ∈ endpointIndex T,
    F.mobius n * (originalBirthStep n v : ℂ)

/-- Exact finite arithmetic cutoff, valid at EVERY real v<=T.
No μ_L growth, PNT, character, or RH premise. -/
theorem familyPrefix_eq_originalBornInventory
    (F : NormalizedCoefficients) (T v : ℝ)
    (hvT : v ≤ T) :
    familyMobiusPrefix F (Real.exp v) =
      ∑ n ∈ endpointIndex T,
        if Real.log (n : ℝ) ≤ v then F.mobius n else 0 := by
  let S : Finset ℕ := endpointIndex T
  let V : Finset ℕ := Finset.Icc 1 ⌊Real.exp v⌋₊
  have hfloor : ⌊Real.exp v⌋₊ ≤ ⌊Real.exp T⌋₊ :=
    Nat.floor_mono (Real.exp_le_exp.mpr hvT)
  have hs :
      S.filter (fun n => Real.log (n : ℝ) ≤ v) = V := by
    ext n
    constructor
    · intro hn
      obtain ⟨hS,hlog⟩ := Finset.mem_filter.mp hn
      have hn1 : 1 ≤ n := (Finset.mem_Icc.mp hS).1
      have hnpos : 0 < (n : ℝ) := by
        exact_mod_cast (show 0 < n by omega)
      have hnv : n ≤ ⌊Real.exp v⌋₊ := by
        apply (Nat.le_floor_iff (Real.exp_pos v).le).mpr
        exact (Real.log_le_iff_le_exp hnpos).mp hlog
      exact Finset.mem_Icc.mpr ⟨hn1, hnv⟩
    · intro hn
      obtain ⟨hn1,hnv⟩ := Finset.mem_Icc.mp hn
      have hnpos : 0 < (n : ℝ) := by
        exact_mod_cast (show 0 < n by omega)
      have hlog : Real.log (n : ℝ) ≤ v :=
        (Real.log_le_iff_le_exp hnpos).mpr
          ((Nat.le_floor_iff (Real.exp_pos v).le).mp hnv)
      exact Finset.mem_filter.mpr
        ⟨Finset.mem_Icc.mpr ⟨hn1,hnv.trans hfloor⟩,hlog⟩
  unfold familyMobiusPrefix
  change (∑ n ∈ V, F.mobius n) =
    ∑ n ∈ S,
      if Real.log (n : ℝ) ≤ v then F.mobius n else 0
  rw [← Finset.sum_filter, hs]

/-- The original complex prefix velocity is EXACTLY the finite
linear combination of original single-index birth terms on v<=T. -/
theorem familyPickupVelocity_eq_originalBirthInventory
    (F : NormalizedCoefficients) (T v : ℝ)
    (hvT : v ≤ T) :
    familyPickupVelocity F v =
      familyFiniteBirthVelocity F T v := by
  unfold familyPickupVelocity familyFiniteBirthVelocity
  rw [familyPrefix_eq_originalBornInventory F T v hvT]
  rw [Finset.mul_sum]
  apply Finset.sum_congr rfl
  intro n hn
  by_cases hb : Real.log (n : ℝ) ≤ v
  · simp [originalBirthStep,hb,mul_comm]
  · simp [originalBirthStep,hb]

/-- Genuine finite complex Fubini:
the ONLY assumption is the one-index original exponential birth
integral above, not a fabricated family source equality. -/
theorem familyFiniteBirthIntegral_eq_response
    (hBirth : OriginalSingleBirthComplexIntegralTarget)
    (F : NormalizedCoefficients)
    (T u : ℝ) (hu : 0 ≤ u) :
    (∫ v in (0 : ℝ)..u, familyFiniteBirthVelocity F T v) =
      familyFiniteResponse F T u := by
  let S : Finset ℕ := endpointIndex T
  have hterm (n : ℕ) (hn : n ∈ S) :
      IntervalIntegrable
        (fun v : ℝ =>
          F.mobius n * (originalBirthStep n v : ℂ))
        volume 0 u := by
    have hn1 : 1 ≤ n := (Finset.mem_Icc.mp hn).1
    exact ((hBirth n u hn1 hu).1).const_mul _
  unfold familyFiniteBirthVelocity familyFiniteResponse
  rw [intervalIntegral.integral_finsetSum hterm]
  apply Finset.sum_congr rfl
  intro n hn
  have hn1 : 1 ≤ n := (Finset.mem_Icc.mp hn).1
  rw [intervalIntegral.integral_const_mul,(hBirth n u hn1 hu).2]

/-- Exact transport from the SINGLE original birth-integral
calculus fact to the preexisting COMPLEX family reconstruction
for every normalized L-family and all 0<=u<=T. -/
theorem familyPrefixResponseReconstruction_of_singleBirth
    (hBirth : OriginalSingleBirthComplexIntegralTarget) :
    FamilyPrefixResponseReconstructionTarget := by
  intro F T u hu huT
  change (∫ v in (0 : ℝ)..u, familyPickupVelocity F v) =
    familyFiniteResponse F T u
  calc
    _ = ∫ v in (0 : ℝ)..u, familyFiniteBirthVelocity F T v := by
      apply intervalIntegral.integral_congr
      intro v hv
      have hvI : v ∈ Icc (0 : ℝ) u := by
        simpa [uIcc_of_le hu] using hv
      exact familyPickupVelocity_eq_originalBirthInventory
        F T v (hvI.2.trans huT)
    _ = familyFiniteResponse F T u :=
      familyFiniteBirthIntegral_eq_response hBirth F T u hu

/-- Exact connection from the genuine family cumulative
Mertens-prefix wave-square energy to the ORIGINAL complete
Hermitian finite causal Gram. It consumes ONLY the source-specific
single-index birth integral, not any signed growth estimate. -/
theorem familyCumulativeEnergy_eq_fullGram_of_singleBirth
    (hBirth : OriginalSingleBirthComplexIntegralTarget)
    (F : NormalizedCoefficients)
    {T : ℝ} (hT : 0 ≤ T) :
    familyCumulativeEnergy F T = (familyFullGram F T).re := by
  have hprefix :=
    familyPrefixResponseReconstruction_of_singleBirth hBirth
  have hw :
      familyCumulativeEnergy F T =
        familyFiniteResponseEnergy F T := by
    unfold familyCumulativeEnergy familyFiniteResponseEnergy
    apply intervalIntegral.integral_congr
    intro u hu
    have huI : u ∈ Icc (0 : ℝ) T := by
      simpa [uIcc_of_le hT] using hu
    rw [hprefix F T u huI.1 huI.2]
  exact hw.trans (familyHermitianFiniteGram_proof F T hT).symm

/-- Purely finite COMPLEX Abel partial summation, with the
true terminal term retained for every horizon N. -/
theorem finiteComplexAbel
    (b : ℕ → ℂ) (w : ℕ → ℝ) (N : ℕ) :
    (∑ j ∈ Finset.range N,
      b (j+1) * (w (j+1) : ℂ)) =
    (∑ j ∈ Finset.range N, b (j+1)) *
      (w (N+1) : ℂ) +
    ∑ k ∈ Finset.range N,
      (∑ j ∈ Finset.range (k+1), b (j+1)) *
        ((w (k+1)-w (k+2) : ℝ) : ℂ) := by
  induction N with
  | zero => simp
  | succ N ih =>
      rw [Finset.sum_range_succ]
      rw [ih]
      simp only [Finset.sum_range_succ]
      ring

def complexFiniteMobiusPrefix
    (F : NormalizedCoefficients) (N : ℕ) : ℂ :=
  ∑ j ∈ Finset.range N, F.mobius (j+1)

def complexFinitePickup
    (F : NormalizedCoefficients) (N : ℕ) (u : ℝ) : ℂ :=
  ∑ j ∈ Finset.range N,
    F.mobius (j+1) * (pickupResponse (j+1) u : ℂ)

/-- The complex family wave uses the ORIGINAL real nonnegative
responseDrop, with no χ reality or coefficient sign assumption. -/
theorem complexFinitePickup_eq_Abel
    (F : NormalizedCoefficients) (N : ℕ) (u : ℝ) :
    complexFinitePickup F N u =
      complexFiniteMobiusPrefix F N *
        (pickupResponse (N+1) u : ℂ) +
      ∑ k ∈ Finset.range N,
        complexFiniteMobiusPrefix F (k+1) *
          (responseDrop k u : ℂ) := by
  simpa only [complexFinitePickup,complexFiniteMobiusPrefix,
    responseDrop] using
    finiteComplexAbel F.mobius (fun n => pickupResponse n u) N

/-- ORIGINAL terminal response vanishes for n=N(T)+1, so
the complex family retains only the true prefix/drop packet.
No Mertens magnitude estimate is assumed. -/
theorem complexFinitePickup_eq_terminalDrops
    (F : NormalizedCoefficients) (T u : ℝ)
    (huT : u ≤ T) :
    complexFinitePickup F ⌊Real.exp T⌋₊ u =
      ∑ k ∈ Finset.range ⌊Real.exp T⌋₊,
        complexFiniteMobiusPrefix F (k+1) *
          (responseDrop k u : ℂ) := by
  rw [complexFinitePickup_eq_Abel]
  rw [original_terminal_response_zero T u huT]
  simp

end GRWTSK.NumberTheory.Moebius.LFunctionComplexPrefixTransfer
