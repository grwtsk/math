module

public meta import Surface.Core.Classification
public import Surface.Core.ConductorThreePrimePowerRemoval
import Mathlib.Tactic

/-!
# Exact conductor-three partial summation

This module proves both finite Abel transforms between the unweighted
prime-character sum and its logarithmically weighted theta sum. The identities
are exact; the later analytic task is to estimate their kernels at the critical
rates.
-/

public section

namespace Surface.Core.ConductorThreePartialSummation

noncomputable section

open scoped BigOperators
open Surface.Core.ConductorThreeCharacterArithmetic
open Surface.Core.ConductorThreePrimePowerRemoval

/-- The prime-supported coefficient whose partial sum is the conductor-three
prime race. -/
@[expose]
def primeCharacterCoefficient (n : ℕ) : ℝ :=
  if n.Prime then (conductorThreeIntegerValue n : ℝ) else 0

/-- Real-valued version of the integer prime-character partial sum. -/
@[expose]
def primeCharacterPartialSum (n : ℕ) : ℝ :=
  (conductorThreePrimeCharacterSum n : ℝ)

theorem primeCharacterPartialSum_succ (n : ℕ) :
    primeCharacterPartialSum (n + 1) =
      primeCharacterPartialSum n + primeCharacterCoefficient (n + 1) := by
  unfold primeCharacterPartialSum conductorThreePrimeCharacterSum
  rw [Nat.primesLE_succ]
  by_cases hp : (n + 1).Prime
  · simp [hp, primeCharacterCoefficient, Nat.notMem_primesLE]
    abel
  · simp [hp, primeCharacterCoefficient]

theorem conductorThreeTheta_succ (n : ℕ) :
    conductorThreeTheta (n + 1) =
      conductorThreeTheta n +
        primeCharacterCoefficient (n + 1) * Real.log (n + 1) := by
  unfold conductorThreeTheta
  rw [Nat.primesLE_succ]
  by_cases hp : (n + 1).Prime
  · simp [hp, primeCharacterCoefficient, Nat.notMem_primesLE]
    abel
  · simp [hp, primeCharacterCoefficient]

/-- Exact finite Abel identity in the direction from the unweighted prime
character sum to its logarithmically weighted sum. -/
theorem conductorThreeTheta_eq_abel (N : ℕ) :
    conductorThreeTheta N =
      primeCharacterPartialSum N * Real.log N -
        ∑ n ∈ Finset.range N,
          primeCharacterPartialSum n *
            (Real.log (n + 1) - Real.log n) := by
  induction N with
  | zero => simp [conductorThreeTheta, primeCharacterPartialSum,
      conductorThreePrimeCharacterSum]
  | succ N ih =>
      rw [conductorThreeTheta_succ, ih, Finset.sum_range_succ,
        primeCharacterPartialSum_succ]
      push_cast
      ring

/-- The forward identity stated directly with the repository's integer-valued
prime sum. -/
theorem conductorThreeTheta_eq_primeCharacterSum_abel (N : ℕ) :
    conductorThreeTheta N =
      (conductorThreePrimeCharacterSum N : ℝ) * Real.log N -
        ∑ n ∈ Finset.range N,
          (conductorThreePrimeCharacterSum n : ℝ) *
            (Real.log (n + 1) - Real.log n) := by
  simpa [primeCharacterPartialSum] using conductorThreeTheta_eq_abel N

/-- The reciprocal logarithmic Abel kernel. Its special values below two are
irrelevant because the reverse formula begins at two. -/
@[expose]
def reciprocalLog (n : ℕ) : ℝ := (Real.log n)⁻¹

theorem primeCharacterCoefficient_eq_theta_increment_div_log
    {n : ℕ} (hn : 2 ≤ n) :
    primeCharacterCoefficient n =
      (conductorThreeTheta n - conductorThreeTheta (n - 1)) /
        Real.log n := by
  obtain ⟨k, rfl⟩ := Nat.exists_eq_add_of_le hn
  rw [show 2 + k - 1 = 1 + k by omega]
  have hrec := conductorThreeTheta_succ (1 + k)
  have hlog : Real.log ((2 + k : ℕ) : ℝ) ≠ 0 := by
    exact ne_of_gt (Real.log_pos (by exact_mod_cast (show 1 < 2 + k by omega)))
  rw [show 1 + k + 1 = 2 + k by omega] at hrec
  have hlog' : Real.log (2 + (k : ℝ)) ≠ 0 := by
    simpa only [Nat.cast_add, Nat.cast_ofNat] using hlog
  have hlogArg : Real.log (1 + (k : ℝ) + 1) = Real.log (2 + k) := by
    congr 1
    ring
  norm_num [Nat.cast_add, Nat.cast_one] at hrec ⊢
  rw [hrec]
  rw [hlogArg]
  apply (eq_div_iff hlog').2
  ring

/-- Exact inverse Abel identity. The lower endpoint `2` is forced by the
first prime and avoids the singular value `log 1 = 0`. -/
private theorem primeCharacterPartialSum_eq_inverseAbel_add_two (k : ℕ) :
    primeCharacterPartialSum (2 + k) =
      conductorThreeTheta (2 + k) * reciprocalLog (2 + k) +
        ∑ n ∈ Finset.Ico 2 (2 + k),
          conductorThreeTheta n *
            (reciprocalLog n - reciprocalLog (n + 1)) := by
  induction k with
  | zero =>
      have hA2 : primeCharacterPartialSum 2 = -1 := by
        rw [show 2 = 1 + 1 by omega, primeCharacterPartialSum_succ]
        norm_num [primeCharacterPartialSum, conductorThreePrimeCharacterSum,
          primeCharacterCoefficient, conductorThreeIntegerValue_mod_two]
      have hT2 : conductorThreeTheta 2 = -Real.log 2 := by
        rw [show 2 = 1 + 1 by omega, conductorThreeTheta_succ]
        norm_num [conductorThreeTheta, primeCharacterCoefficient,
          conductorThreeIntegerValue_mod_two]
      have hlog : Real.log (2 : ℝ) ≠ 0 :=
        ne_of_gt (Real.log_pos (by norm_num))
      rw [hA2, hT2]
      simp [reciprocalLog, hlog]
  | succ k ih =>
      have hN : 2 ≤ 2 + k := by omega
      rw [show 2 + (k + 1) = (2 + k) + 1 by omega,
        primeCharacterPartialSum_succ, conductorThreeTheta_succ,
        Finset.sum_Ico_succ_top hN, ih]
      have hlog : Real.log (((2 + k) + 1 : ℕ) : ℝ) ≠ 0 := by
        exact ne_of_gt (Real.log_pos (by
          exact_mod_cast (show 1 < (2 + k) + 1 by omega)))
      have hcurr : Real.log (2 + (k : ℝ) + 1) ≠ 0 := by
        simpa only [Nat.cast_add, Nat.cast_ofNat, Nat.cast_one] using hlog
      have hprev : Real.log (2 + (k : ℝ)) ≠ 0 := by
        exact ne_of_gt (Real.log_pos (by
          exact_mod_cast (show 1 < 2 + k by omega)))
      unfold reciprocalLog
      norm_num [Nat.cast_add, Nat.cast_one] at ⊢
      field_simp [hcurr, hprev]
      ring

theorem primeCharacterPartialSum_eq_inverseAbel
    {N : ℕ} (hN : 2 ≤ N) :
    primeCharacterPartialSum N =
      conductorThreeTheta N * reciprocalLog N +
        ∑ n ∈ Finset.Ico 2 N,
          conductorThreeTheta n *
            (reciprocalLog n - reciprocalLog (n + 1)) := by
  obtain ⟨k, rfl⟩ := Nat.exists_eq_add_of_le hN
  exact primeCharacterPartialSum_eq_inverseAbel_add_two k

/-- The inverse identity stated directly with the repository's integer-valued
prime sum. -/
theorem conductorThreePrimeCharacterSum_eq_inverseAbel
    {N : ℕ} (hN : 2 ≤ N) :
    (conductorThreePrimeCharacterSum N : ℝ) =
      conductorThreeTheta N * reciprocalLog N +
        ∑ n ∈ Finset.Ico 2 N,
          conductorThreeTheta n *
            (reciprocalLog n - reciprocalLog (n + 1)) := by
  simpa [primeCharacterPartialSum] using
    primeCharacterPartialSum_eq_inverseAbel hN

/-- Right-continuous real step extension, truncated at zero on the negative
half-line. -/
@[expose]
def primeCharacterStep (x : ℝ) : ℝ :=
  primeCharacterPartialSum ⌊max x 0⌋₊

/-- Right-continuous real step extension of the logarithmically weighted sum. -/
@[expose]
def conductorThreeThetaStep (x : ℝ) : ℝ :=
  conductorThreeTheta ⌊max x 0⌋₊

@[simp] theorem primeCharacterStep_natCast (N : ℕ) :
    primeCharacterStep N = primeCharacterPartialSum N := by
  simp [primeCharacterStep]

@[simp] theorem conductorThreeThetaStep_natCast (N : ℕ) :
    conductorThreeThetaStep N = conductorThreeTheta N := by
  simp [conductorThreeThetaStep]

/-- Abel summation transported verbatim to the real step extension. -/
theorem conductorThreeThetaStep_eq_abel (x : ℝ) :
    conductorThreeThetaStep x =
      primeCharacterStep x * Real.log ⌊max x 0⌋₊ -
        ∑ n ∈ Finset.range ⌊max x 0⌋₊,
          primeCharacterPartialSum n *
            (Real.log (n + 1) - Real.log n) := by
  simpa [primeCharacterStep, conductorThreeThetaStep] using
    conductorThreeTheta_eq_abel ⌊max x 0⌋₊

/-- Inverse Abel summation transported to the real step extension. -/
theorem primeCharacterStep_eq_inverseAbel
    {x : ℝ} (hx : 2 ≤ x) :
    primeCharacterStep x =
      conductorThreeThetaStep x * reciprocalLog ⌊max x 0⌋₊ +
        ∑ n ∈ Finset.Ico 2 ⌊max x 0⌋₊,
          conductorThreeTheta n *
            (reciprocalLog n - reciprocalLog (n + 1)) := by
  have hfloor : 2 ≤ ⌊max x 0⌋₊ := by
    apply Nat.le_floor
    exact hx.trans (le_max_left x 0)
  simpa [primeCharacterStep, conductorThreeThetaStep] using
    primeCharacterPartialSum_eq_inverseAbel hfloor

end

end Surface.Core.ConductorThreePartialSummation
