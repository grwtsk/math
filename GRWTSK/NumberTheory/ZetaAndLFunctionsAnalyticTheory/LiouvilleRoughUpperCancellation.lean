/- Copyright (c) 2026 grwtsk contributors. MIT.
SOURCE_PROOF_CANDIDATE / COMPILATION_NOT_RUN / EXPECTED_TYPES_NOT_RUN /
FRESH_KERNEL_NOT_RUN / TRANSITIVE_AXIOM_AUDIT_NOT_RUN.
-/
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.LiouvilleProportionalThreeFactorObstruction
import Mathlib

set_option autoImplicit false
noncomputable section
open scoped BigOperators
open Set MeasureTheory
open GRWTSK.NumberTheory.LiouvilleCausalEnergy
open GRWTSK.NumberTheory.LiouvilleFinitePrimeSieveOperator
open GRWTSK.NumberTheory.LiouvilleRoughCausalBuchstab
open GRWTSK.NumberTheory.LiouvilleExternalProofExploitation
open GRWTSK.NumberTheory.LiouvilleExternalProofConsequences

/-!
# A tuned upper cancellation estimate for rough Liouville sums

This source records a source-bound upper estimate obtained by combining the
Selberg extremal examples with the Dickman collapse of the complete alternating
almost-prime profile.

For `X` large, put

`u_X = 8 log log X / log log log X`

and

`z_X = exp (log X / u_X)`.

The companion review derives

`|sum_{n <= X, p | n -> z_X <= p} lambda(n)|
  << X (log log X)^4 / ((log X)^2 (log log log X)^3)`.

This is genuine cancellation on the rough support.  Transport through the
unchanged causal Abel response gives rough energy

`<< exp T * (log T)^8 / (T^4 (log log T)^6)`

for the corresponding horizon-dependent cutoff.

The underlying Selberg and Dickman theorems remain explicit imported
mathematical premises rather than locally kernel-checked theorems.  The source
also records the quantitative obstruction: every cutoff in the available
Selberg range has an unpayable positive inverse-sieve cost.  No upper bound for
the original unsifted Liouville energy and no Riemann Hypothesis claim is made.
-/

namespace GRWTSK.NumberTheory.LiouvilleRoughUpperCancellation

/-- Every prime divisor of `n` is at least the real cutoff `z`.  This is the
strict-cutoff convention in the Selberg extremal theorem. -/
def roughAtLeastReal (z : ℝ) (n : ℕ) : Prop :=
  ∀ p : ℕ, Nat.Prime p → p ∣ n → z ≤ (p : ℝ)

/-- Actual Liouville prefix on the strict real rough support. -/
def strictRoughPrefix (X z : ℝ) : ℝ :=
  ∑ n ∈ (Finset.Icc 1 ⌊X⌋₊).filter (roughAtLeastReal z), coefficient n

/-- The tuned Dickman depth.  All statements using it impose a sufficiently
large threshold, so the iterated logarithms are positive. -/
def tunedDepth (X : ℝ) : ℝ :=
  8 * Real.log (Real.log X) / Real.log (Real.log (Real.log X))

/-- The tuned real roughness cutoff. -/
def tunedRealCutoff (X : ℝ) : ℝ :=
  Real.exp (Real.log X / tunedDepth X)

/-- Integer cutoff used by the existing causal rough waveform at horizon `T`. -/
def tunedPhysicalCutoff (T : ℝ) : ℕ :=
  ⌊Real.exp
      (T * Real.log (Real.log T) /
        (8 * Real.log T))⌋₊

/-- Explicit allowance in the tuned rough-prefix estimate. -/
def tunedPrefixAllowance (X : ℝ) : ℝ :=
  X * (Real.log (Real.log X)) ^ 4 /
    ((Real.log X) ^ 2 *
      (Real.log (Real.log (Real.log X))) ^ 3)

/-- Explicit allowance in the transported causal-energy estimate. -/
def tunedEnergyAllowance (T : ℝ) : ℝ :=
  Real.exp T * (Real.log T) ^ 8 /
    (T ^ 4 * (Real.log (Real.log T)) ^ 6)

/-- A Dickman profile with only the properties consumed by this increment. -/
structure DickmanUpperProfile where
  rho : ℝ → ℝ
  nonneg : ∀ u : ℝ, 0 ≤ u → 0 ≤ rho u
  le_one : ∀ u : ℝ, 0 ≤ u → rho u ≤ 1
  gamma_upper : ∀ u : ℝ, 1 ≤ u →
    rho u ≤ 1 / Real.Gamma (u + 1)

/-- Sharper form of the Selberg-extremal rough-Liouville approximation.

Here `u = log X / log z` and `k - 1 < u <= k`.  The error is the inductive
bound appearing inside the proof of the published Selberg extremal theorem,
not merely its coarser final `O(X (log z)^(-4/3))` consequence.

The cutoff convention and every floor term are included in this interface.
This remains a named proposition pending a local formal import or proof. -/
def SelbergDickmanRoughApproximation (D : DickmanUpperProfile) : Prop :=
  ∃ C X₀ : ℝ, 0 ≤ C ∧ 3 ≤ X₀ ∧
    ∀ (X z : ℝ) (k : ℕ), X₀ ≤ X →
      Real.exp (Real.rpow (Real.log X) (2 / 3 : ℝ)) ≤ z →
      z ≤ X / Real.log X →
      3 ≤ k →
      (k : ℝ) - 1 < Real.log X / Real.log z →
      Real.log X / Real.log z ≤ k →
      |strictRoughPrefix X z +
          X * D.rho (Real.log X / Real.log z - 1) / Real.log X| ≤
        C * X * (k : ℝ) ^ 3 * Real.log (Real.log X) /
          (Real.log X) ^ 2

/-- The tuned unconditional rough-prefix cancellation estimate derived in the
companion review from `SelbergDickmanRoughApproximation` and the reciprocal
Gamma upper bound for the Dickman function.

This remains a named proposition until the external theorem and the logarithmic
parameter calculations are formalized locally. -/
def TunedRoughPrefixUpper : Prop :=
  ∃ C X₀ : ℝ, 0 ≤ C ∧ 3 ≤ X₀ ∧
    ∀ X : ℝ, X₀ ≤ X →
      |strictRoughPrefix X (tunedRealCutoff X)| ≤
        C * tunedPrefixAllowance X

/-- Uniform terminal-band version with one cutoff selected at the final
horizon.  It is the exact prefix input consumed by the causal Abel transport. -/
def TunedTerminalBandPrefixUpper : Prop :=
  ∃ C T₀ : ℝ, 0 ≤ C ∧ 3 ≤ T₀ ∧
    ∀ T u : ℝ, T₀ ≤ T →
      T - 8 * Real.log T ≤ u → u ≤ T →
      |roughPrefixAbove (tunedPhysicalCutoff T) ⌊Real.exp u⌋₊| ≤
        C * Real.exp u *
          (Real.log T) ^ 4 /
            (T ^ 2 * (Real.log (Real.log T)) ^ 3)

/-- New programme-specific causal upper estimate for the tuned rough source.
All early-range and terminal-collar costs are included in the stated allowance.
This is not an estimate for the original unsifted Liouville energy. -/
def TunedRoughCausalEnergyUpper : Prop :=
  ∃ C T₀ : ℝ, 0 ≤ C ∧ 3 ≤ T₀ ∧
    ∀ T : ℝ, T₀ ≤ T →
      roughEnergyAbove (tunedPhysicalCutoff T) T ≤
        C * tunedEnergyAllowance T

/-- The positive inverse-sieve route cannot consume the tuned upper estimate:
the exact inverse cost grows faster than `exp (A*T)` for every fixed `A`. -/
def TunedInverseSieveCostSuperexponential : Prop :=
  ∀ A : ℝ, 0 < A →
    ∃ T₀ : ℝ, 0 ≤ T₀ ∧
      ∀ T : ℝ, T₀ ≤ T →
        Real.exp (A * T) ≤
          inverseSieveCost (initialPrimeBand (tunedPhysicalCutoff T))

/-- Exact squarefree-divisor expansion used as an independent comparator at
payable polynomial cutoffs.  It retains the actual Liouville signs. -/
def SquarefreeDivisorRoughIdentity : Prop :=
  ∀ Y N : ℕ,
    roughPrefixAbove Y N =
      ∑ d ∈ (Nat.divisors (primeProduct (initialPrimeBand Y))).filter
          (fun d => d ≤ N),
        ∑ n ∈ Finset.Icc 1 (N / d), coefficient n

/-- Classical zero-free-region cancellation, transported through the preceding
finite identity, gives an upper bound at polynomial cutoffs.  This comparator
is recorded explicitly but is not counted as new cancellation. -/
def PayablePolynomialCutoffVKUpper : Prop :=
  ∀ A : ℝ, 0 < A → A < 6 / 5 →
    ∃ c C T₀ : ℝ, 0 < c ∧ 0 ≤ C ∧ 3 ≤ T₀ ∧
      ∀ T : ℝ, T₀ ≤ T →
        roughEnergyAbove ⌊T ^ A⌋₊ T ≤
          C * Real.exp T * (Real.log T) ^ 2 *
            Real.exp (-c * Real.rpow T (3 / 5 : ℝ) /
              Real.rpow (Real.log T) (1 / 5 : ℝ))

/-- Elementary signed-approximation extraction used in passing from the
Selberg extremal pair to an absolute rough-Liouville bound. -/
theorem signed_approximation_abs_upper
    {value main error : ℝ}
    (hmain : 0 ≤ main)
    (happrox : |value + main| ≤ error) :
    |value| ≤ main + error := by
  have hvalue : value = (value + main) - main := by ring
  rw [hvalue]
  calc
    |(value + main) - main| ≤ |value + main| + |main| := abs_sub _ _
    _ ≤ error + main := by
      exact add_le_add happrox (le_of_eq (abs_of_nonneg hmain))
    _ = main + error := by ring

/-- The research disposition: the tuned estimate is a genuine upper
cancellation theorem for the rough source, while the positive inverse remains
quantitatively unusable. -/
def NewUpperCancellationDisposition : Prop :=
  TunedRoughPrefixUpper ∧
    TunedTerminalBandPrefixUpper ∧
      TunedRoughCausalEnergyUpper ∧
        TunedInverseSieveCostSuperexponential

end GRWTSK.NumberTheory.LiouvilleRoughUpperCancellation
