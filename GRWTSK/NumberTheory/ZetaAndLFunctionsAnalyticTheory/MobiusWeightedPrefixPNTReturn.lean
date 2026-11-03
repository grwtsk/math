/- Copyright (c) 2026 grwtsk contributors. MIT.
SOURCE_PROOF_CANDIDATE / COMPILATION_NOT_RUN / EXPECTED_TYPES_NOT_RUN /
FRESH_KERNEL_NOT_RUN / TRANSITIVE_AXIOM_AUDIT_NOT_RUN.
-/
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.PadicMobiusPrimeWindowSeam
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.LiouvilleSquareDivisorReverseCounting
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.LiouvilleWeightedPrefixSquareCriterion
import Mathlib

/-!
# From actual Liouville weighted prefixes through Möbius to prime windows

Primary mathematical advance in the companion review:

  L(x) = sum_(d^2<=x) M(x/d^2),
  M(x) = sum_(d^2<=x) mu(d)*L(x/d^2),
  J_mu(T) <= (1+T/2)^2 J_lambda(T),
  J_lambda(T) <= (1+T/2)^2 J_mu(T).

These exact arithmetic square-divisor bridges and their weighted-integral
comparison are analytically proved, but are OPEN as a Lean source obligation:
they are recorded in SquareDivisorWeightedComparison below, NOT asserted as
an axiom or silently used to conclude RH. The finite transport and algebraic
all-rate assembly are supplied as independent Lean proof candidates.

The original actual Möbius–log PNT source is preserved. The finite
summation-by-parts theorem derives its exact dual window increment; no
unjustified bound on the signed logarithmic divisor kernel is inferred.

No constant one-sided PNT/RH saving is claimed. No imported empirical
prime-cutoff count is used. No native compilation/axiom audit was run.
-/

set_option autoImplicit false
noncomputable section
open scoped BigOperators

namespace GRWTSK.NumberTheory.MobiusWeightedPrefixPNTReturn

open GRWTSK.RiemannHypothesis.CCC
open GRWTSK.NumberTheory.LiouvilleWeightedPrefixSquareCriterion
open GRWTSK.NumberTheory.PadicMobiusPrimeWindowSeam

/-- Original real Möbius prefix, including the squareful zero coefficients. -/
def mobiusPrefixNat (N : ℕ) : ℝ :=
  ∑ n ∈ Finset.Icc 1 N, moebiusReal n

/-- Same real cutoff, interval measure and original source range as the
already maintained Liouville weighted prefix moment. -/
def mobiusPrefix (x : ℝ) : ℝ :=
  ∑ n ∈ Finset.Icc 1 ⌊x⌋₊, moebiusReal n

def mobiusWeightedPrefixMoment (T : ℝ) : ℝ :=
  ∫ x in (1 : ℝ)..Real.exp T, mobiusPrefix x ^ 2 / x ^ 2

/-- The independent arithmetic-to-analytic square-divisor comparison.
This is an OPEN implementation gate until the actual square-divisor
coefficient identities, finite reindexing and integral change of
variables have been kernel checked. -/
def SquareDivisorWeightedComparison : Prop :=
  ∀ T : ℝ, 0 ≤ T →
    mobiusWeightedPrefixMoment T ≤
      (1 + T / 2) ^ 2 * weightedPrefixSquareMoment T ∧
    weightedPrefixSquareMoment T ≤
      (1 + T / 2) ^ 2 * mobiusWeightedPrefixMoment T

def ExponentialAllRate (F : ℝ → ℝ) : Prop :=
  ∀ η : ℝ, 0 < η →
    ∃ A : ℝ, 0 ≤ A ∧ ∀ T : ℝ, 0 ≤ T → F T ≤ A * Real.exp (η * T)

/-- The Möbius analogue with the unchanged original weighted measure. -/
def MoebiusWeightedPrefixAllRate : Prop :=
  ExponentialAllRate mobiusWeightedPrefixMoment

/-- Explicit exponential absorption of the square-divisor harmonic loss.
No research hypothesis or PNT input is needed for this scalar inequality. -/
theorem square_divisor_polynomial_absorption (η T : ℝ)
    (hη : 0 < η) (hT : 0 ≤ T) :
    (1 + T / 2) ^ 2 ≤
      (1 + 2 / η) ^ 2 * Real.exp ((η / 2) * T) := by
  have ha : 0 ≤ (η / 4) * T := mul_nonneg (by linarith) hT
  have he := Real.add_one_le_exp ((η / 4) * T)
  have hge : 1 ≤ Real.exp ((η / 4) * T) := by linarith
  have hs : (2 / η) * ((η / 4) * T) = T / 2 := by
    field_simp [ne_of_gt hη]
    <;> ring
  have hpos : 0 ≤ 2 / η := by positivity
  have hlinear : T / 2 ≤ (2 / η) * Real.exp ((η / 4) * T) := by
    rw [← hs]
    exact mul_le_mul_of_nonneg_left (by linarith) hpos
  have hbound : 1 + T / 2 ≤
      (1 + 2 / η) * Real.exp ((η / 4) * T) := by
    nlinarith [hge, hlinear]
  have hleft : 0 ≤ 1 + T / 2 := by linarith
  have hright : 0 ≤
      (1 + 2 / η) * Real.exp ((η / 4) * T) := by positivity
  have hsq := (sq_le_sq₀ hleft hright).mpr hbound
  have heq : (Real.exp ((η / 4) * T)) ^ 2 =
      Real.exp ((η / 2) * T) := by
    rw [pow_two, ← Real.exp_add]
    congr 1
    ring
  calc
    (1 + T / 2) ^ 2 ≤
        ((1 + 2 / η) * Real.exp ((η / 4) * T)) ^ 2 := hsq
    _ = (1 + 2 / η) ^ 2 * Real.exp ((η / 2) * T) := by
      rw [mul_pow, heq]

/-- A proved generic growth transfer once a source-specific finite-horizon
square-divisor comparison has actually been supplied. -/
theorem allRate_of_square_dominated (F G : ℝ → ℝ)
    (hcompare : ∀ T : ℝ, 0 ≤ T → G T ≤ (1 + T / 2) ^ 2 * F T)
    (hF : ExponentialAllRate F) : ExponentialAllRate G := by
  intro η hη
  have hhalf : 0 < η / 2 := by linarith
  obtain ⟨A, hA, hbound⟩ := hF (η / 2) hhalf
  refine ⟨A * (1 + 2 / η) ^ 2, by positivity, ?_⟩
  intro T hT
  have hp := square_divisor_polynomial_absorption η T hη hT
  have ht := hbound T hT
  have he : Real.exp ((η / 2) * T) * Real.exp ((η / 2) * T) =
      Real.exp (η * T) := by
    rw [← Real.exp_add]
    congr 1
    ring
  calc
    G T ≤ (1 + T / 2) ^ 2 * F T := hcompare T hT
    _ ≤ (1 + T / 2) ^ 2 * (A * Real.exp ((η / 2) * T)) := by
      exact mul_le_mul_of_nonneg_left ht (sq_nonneg _)
    _ = A * ((1 + T / 2) ^ 2 * Real.exp ((η / 2) * T)) := by ring
    _ ≤ A * ((1 + 2 / η) ^ 2 * Real.exp ((η / 2) * T) *
        Real.exp ((η / 2) * T)) := by
      apply mul_le_mul_of_nonneg_left _ hA
      exact mul_le_mul_of_nonneg_right hp (Real.exp_pos _).le
    _ = A * (1 + 2 / η) ^ 2 * Real.exp (η * T) := by
      rw [← mul_assoc, he]
      ring

/-- The all-positive-rate statements are equivalent under the separately
identified, authentic square-divisor energy comparison. The comparison is
not supplied as a freely assumed theorem. -/
theorem weighted_liouville_iff_weighted_mobius
    (hcmp : SquareDivisorWeightedComparison) :
    WeightedPrefixSquareAllRate ↔ MoebiusWeightedPrefixAllRate := by
  constructor
  · intro h
    exact allRate_of_square_dominated weightedPrefixSquareMoment
      mobiusWeightedPrefixMoment (fun T hT => (hcmp T hT).1) h
  · intro h
    exact allRate_of_square_dominated mobiusWeightedPrefixMoment
      weightedPrefixSquareMoment (fun T hT => (hcmp T hT).2) h

/-- Generic prefix of the SAME ordered coefficient source. -/
def finitePrefix (f : ℕ → ℝ) (N : ℕ) : ℝ :=
  ∑ k ∈ Finset.Icc 1 N, f k

theorem finitePrefix_succ (f : ℕ → ℝ) (N : ℕ) :
    finitePrefix f (N + 1) = finitePrefix f N + f (N + 1) := by
  simpa [finitePrefix] using
    (Finset.sum_Icc_succ_top (a := 1) (b := N)
      (by omega : 1 ≤ N + 1) f)

/-- Abel summation with a terminal face at N+1, valid even for N=0.
Every signed source term is present; there is no mean or variance bound. -/
theorem finiteAbel (f g : ℕ → ℝ) (N : ℕ) :
    (∑ d ∈ Finset.Icc 1 N, f d * g d) =
      finitePrefix f N * g (N + 1) +
      ∑ k ∈ Finset.Icc 1 N,
        finitePrefix f k * (g k - g (k + 1)) := by
  induction N with
  | zero => simp [finitePrefix]
  | succ n ih =>
      have hleft :
          (∑ d ∈ Finset.Icc 1 (n + 1), f d * g d) =
            (∑ d ∈ Finset.Icc 1 n, f d * g d) + f (n + 1) * g (n + 1) := by
        simpa using
          (Finset.sum_Icc_succ_top (a := 1) (b := n)
            (by omega : 1 ≤ n + 1) (fun d : ℕ => f d * g d))
      have hright :
          (∑ k ∈ Finset.Icc 1 (n + 1),
            finitePrefix f k * (g k - g (k + 1))) =
            (∑ k ∈ Finset.Icc 1 n,
              finitePrefix f k * (g k - g (k + 1))) +
              finitePrefix f (n + 1) * (g (n + 1) - g (n + 2)) := by
        simpa using
          (Finset.sum_Icc_succ_top (a := 1) (b := n)
            (by omega : 1 ≤ n + 1)
            (fun k : ℕ => finitePrefix f k * (g k - g (k + 1))))
      calc
        (∑ d ∈ Finset.Icc 1 (n + 1), f d * g d) =
            (∑ d ∈ Finset.Icc 1 n, f d * g d) + f (n + 1) * g (n + 1) := hleft
        _ = (finitePrefix f n * g (n + 1) +
              ∑ k ∈ Finset.Icc 1 n,
                finitePrefix f k * (g k - g (k + 1))) +
              f (n + 1) * g (n + 1) := by rw [ih]
        _ = finitePrefix f (n + 1) * g (n + 2) +
              ∑ k ∈ Finset.Icc 1 (n + 1),
                finitePrefix f k * (g k - g (k + 1)) := by
              rw [hright, finitePrefix_succ]
              ring

/-- The exact square-divisor seam is at d² = H, rather than d = H.
This is the same source windowCount used by the Möbius/log/PNT source. -/
def squareWindowCount (X H d : ℕ) : ℕ :=
  windowCount X H (d * d)

theorem squareWindowCount_carry (X H d : ℕ) (hd : 0 < d) :
    d * d * squareWindowCount X H d + (X + H) % (d * d) =
      H + X % (d * d) := by
  simpa [squareWindowCount, Nat.mul_assoc] using
    (windowCount_carry X H (d * d) (Nat.mul_pos hd hd))

theorem squareWindowCount_le_one (X H d : ℕ) (hd : 0 < d)
    (hshort : H < d * d) : squareWindowCount X H d ≤ 1 := by
  exact windowCount_le_one_of_short X H (d * d)
    (Nat.mul_pos hd hd) hshort

theorem squareWindowCount_eq_one_iff (X H d : ℕ) (hd : 0 < d)
    (hshort : H < d * d) :
    squareWindowCount X H d = 1 ↔ d * d ≤ X % (d * d) + H := by
  exact windowCount_eq_one_iff_carry X H (d * d)
    (Nat.mul_pos hd hd) hshort

/-- The terminal log weight is zero: for d=Y+1 no positive m can
satisfy dm≤Y. This is a finite endpoint fact, not a prime estimate. -/
theorem windowLogIncidence_terminal_zero (X H : ℕ) :
    windowLogIncidence X H (X + H + 1) = 0 := by
  unfold windowLogIncidence
  apply Finset.sum_eq_zero
  intro m hm
  have hmpos : 1 ≤ m := (Finset.mem_Icc.mp hm).1
  have hmul : (X + H + 1) * 1 ≤ (X + H + 1) * m :=
    Nat.mul_le_mul_left (X + H + 1) hmpos
  have hbad : ¬ (X < (X + H + 1) * m ∧
      (X + H + 1) * m ≤ X + H) := by omega
  simp [hbad]

/-- Exact dual PNT window kernel. This is not a claim that its signed
increment or the dual norm is small. -/
theorem divisorLogWindow_eq_prefix_dual (X H : ℕ) (f : ℕ → ℝ) :
    divisorLogWindow X H f =
      ∑ k ∈ Finset.Icc 1 (X + H),
        finitePrefix f k *
          (windowLogIncidence X H k - windowLogIncidence X H (k + 1)) := by
  unfold divisorLogWindow
  rw [finiteAbel]
  rw [windowLogIncidence_terminal_zero]
  ring

/-- The remaining exact analytical source bridge to the original PNT:
finite Möbius–log divisor reindexing at every integer window.
It is NOT a proved Lean theorem merely because Mathlib has μ*log=Λ. -/
def MobiusLogPNTWindowIdentity : Prop :=
  ∀ X H : ℕ,
    pntWindow X H = divisorLogWindow X H moebiusReal

end GRWTSK.NumberTheory.MobiusWeightedPrefixPNTReturn
