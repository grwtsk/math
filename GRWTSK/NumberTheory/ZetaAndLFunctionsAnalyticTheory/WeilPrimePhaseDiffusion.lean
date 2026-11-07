/-
Copyright (c) 2026 grwtsk contributors. MIT.
Local mathematical attribution: grwtsk contributors.
AI-assisted source drafting; independent mathematical review NOT_RUN.
SOURCE_PROOF_CANDIDATE / LEAN_ELABORATION_NOT_RUN /
FRESH_KERNEL_NOT_RUN / TRANSITIVE_AXIOM_AUDIT_NOT_RUN.
-/
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.WeilOddSineForm
import Mathlib

/-!
# Prime-power phase diffusion and the literal sine-diagonal source

## Source and exact consumer

Read against grwtsk/math@727ad4913c1a07b0cedb4a6d59b6f71a1bf7009a:
* `WeilLowSchurEnclosure.lean`: `activePrimePowers`, `primeWeight`, `primeMass`;
* `WeilOddSineProjection.lean`: `zeroExtendedSine`, `sineCorrelation`;
* `WeilOddSineForm.lean`: `primeEnergy` and whole-line correlations;
* `WeilOddPrimeRow.lean`: `sineCorrelation_eq_interval`;
* `WeilCofinalHighComplementSource.lean`: the cofinal high-cutoff consumer;
* `WeilDirichletCompactFilterReturn.lean`: the real-character small-conductor
  stage consumer.
Primary arithmetic normalization: Connes--Consani--Moscovici, *Zeta Spectral
Triples*, arXiv:2511.22755v1, (3.19)--(3.20). Fourier/cutoff conventions
are inherited from the above actual Lean definitions, not redefined.

The literal zero-extended normalized sine wave, at k>=1 and shift
0<=r<2T, has the analytically verified correlation

  C_k(r) = (1-r/(2T))*cos(k*pi*r/T) + sin(k*pi*r/T)/(2*k*pi).

Proof: substitute the source `sineCorrelation_eq_interval` with m=n=k,
use 2*sin(u)*sin(u+v)=cos(v)-cos(2u+v), and integrate over [-T,T-r].
The two endpoint phases are integer multiples of 2*pi. This is a standard
finite trigonometric integration, not a zero-distribution result.

`ExactDiagonalComparison` deliberately retains this source identification
as a separate premise in the Lean theorems below: the analytic calculation
is written here but its fundamental-calculus elaboration has NOT been run.
The finite estimates and real-character algebraic phase maximum are proved
as Lean candidate declarations without new axioms, `sorry`, or shadow RH
predicates. The phase lemma uses a consistent phase for all powers of ONE
prime; it is not an independently adjustable phase for every prime power.

## What the new bound says, and what it does not say

At each fixed T>0 define the complete overlap mass
  overlapMass(T)=2*sum_(2<=q<exp(2T)) Lambda(q)/sqrt(q)*(1-log(q)/(2T)).
Every included weight and overlap is nonnegative, so
  0<=overlapMass(T)<=primeMass(T).
For an individual normalized odd sine mode k and the above source
identification, its prime correlation is at most
  overlapMass(T)+primeMass(T)/(2*k*pi).
This upper bound is sharper than the global triangle budget on that ONE
mode, but makes NO claim about off-diagonal sine-matrix entries or the
quadratic form on the entire high-complement subspace.

The fact that high-frequency oscillation cannot by itself force this
prime correlation to vanish has an independent written proof. For each
fixed finite set of shifts r_q=log q, Dirichlet's simultaneous
approximation/pigeonhole argument gives arbitrarily large integers k
for which every k*r_q/(2*T) is within epsilon of an integer. The exact
correlation formula then shows a subsequence with primeEnergy converging
to overlapMass(T). The simultaneous-recurrence theorem and source-form
limit are NOT claimed to be Lean-checked in this increment.

For a REAL Dirichlet character, chi(p) is 0, +1 or -1. Excluding zero
primes, powers obey chi(p^e)=chi(p)^e. Assign theta_p=0 to plus primes
and theta_p=pi to minus primes: all the corresponding signed power
cosines become +1 simultaneously. The finite torus maximum is formalized
below; transporting it to one common real frequency xi via the Q-linear
independence of distinct log p (Kronecker) is an additional analytic bridge,
not supplied by the finite result. In particular the zero-frequency signed
sum cannot replace the complete absolute prime budget without a support-
aware argument.

The full pole-inclusive `OddLiteralCofinal.StageLower j` and the original
`DirichletStageChain.PrimitiveStageLower chi hp hn j` remain UNPROVED. The
prime overlap is a diagonal observation only. A claimed universal RH/GRH
sign from these lemmas would drop essential low-block, boundary, pole,
character and source-to-form obligations.

Proof comparison: the elementary phase saturation is termwise algebra;
the diagonal comparison is independent real-variable trigonometric
integration. Both share the literal finite prime inventory. A hostile
boundary is that a single high sine mode is not an arbitrary high-frequency
linear combination: off-diagonal matrix entries need not be small.
Prior-art novelty is not claimed. All Lean verification phases NOT_RUN.
-/

set_option autoImplicit false
noncomputable section
open scoped BigOperators

namespace GRWTSK.NumberTheory.WeilQuadraticForm.PrimePhaseDiffusion

open GRWTSK.NumberTheory.WeilQuadraticForm.LowSchur
open GRWTSK.NumberTheory.WeilQuadraticForm.OddRootProjection
open GRWTSK.NumberTheory.WeilQuadraticForm.OddSineForm

/-- Exact active prime-power logarithm interval, with the upper endpoint
strict and with `q=2` allowed. -/
theorem active_log_range (T : ℝ) {q : ℕ}
    (hq : q ∈ activePrimePowers T) :
    0 ≤ Real.log (q : ℝ) ∧ Real.log (q : ℝ) < 2 * T := by
  obtain ⟨_, hq2, hqmax⟩ := Finset.mem_filter.mp hq
  have hq1 : (1 : ℝ) ≤ (q : ℝ) := by
    exact_mod_cast (le_trans (by decide : 1 ≤ 2) hq2)
  refine ⟨Real.log_nonneg hq1, ?_⟩
  have hqpos : (0 : ℝ) < (q : ℝ) := lt_of_lt_of_le zero_lt_one hq1
  have h := Real.log_lt_log hqpos hqmax
  simpa only [Real.log_exp] using h

/-- The window-length fraction remaining after a positive shift. -/
def overlap (T : ℝ) (q : ℕ) : ℝ :=
  1 - Real.log (q : ℝ) / (2 * T)

theorem overlap_nonneg (T : ℝ) (hT : 0 < T) {q : ℕ}
    (hq : q ∈ activePrimePowers T) : 0 ≤ overlap T q := by
  have hlog := (active_log_range T hq).2
  have hdiv : Real.log (q : ℝ) / (2 * T) ≤ 1 := by
    apply (div_le_iff₀ (by positivity : (0 : ℝ) < 2 * T)).2
    linarith
  dsimp [overlap]
  linarith

theorem overlap_le_one (T : ℝ) (hT : 0 < T) {q : ℕ}
    (hq : q ∈ activePrimePowers T) : overlap T q ≤ 1 := by
  have hlog := (active_log_range T hq).1
  have hdiv : 0 ≤ Real.log (q : ℝ) / (2 * T) :=
    div_nonneg hlog (by positivity)
  dsimp [overlap]
  linarith

/-- The literal von Mangoldt inventory, weighted by the intersection of
the original interval with its translate. No prime power is discarded. -/
def overlapPrimeMass (T : ℝ) : ℝ :=
  2 * ∑ q ∈ activePrimePowers T, primeWeight q * overlap T q

theorem overlapPrimeMass_nonneg (T : ℝ) (hT : 0 < T) :
    0 ≤ overlapPrimeMass T := by
  unfold overlapPrimeMass
  apply mul_nonneg (by norm_num)
  apply Finset.sum_nonneg
  intro q hq
  exact mul_nonneg (primeWeight_nonneg q) (overlap_nonneg T hT hq)

/-- The overlap contraction is no larger than the repository's full
triangle prime mass. It is not a bound for the complete high matrix. -/
theorem overlapPrimeMass_le_primeMass (T : ℝ) (hT : 0 < T) :
    overlapPrimeMass T ≤ primeMass T := by
  unfold overlapPrimeMass primeMass
  apply mul_le_mul_of_nonneg_left _ (by norm_num)
  apply Finset.sum_le_sum
  intro q hq
  simpa only [mul_one] using
    mul_le_mul_of_nonneg_left (overlap_le_one T hT hq)
      (primeWeight_nonneg q)

/-- Frequency phase on the actual sine interval. -/
def sinePhase (T : ℝ) (k q : ℕ) : ℝ :=
  ((k : ℝ) * Real.pi / T) * Real.log (q : ℝ)

/-- The exact integrated single-mode formula, retained as a named
source-comparison obligation until the integration is elaborated. -/
def diagonalSineModel (T : ℝ) (k q : ℕ) : ℝ :=
  overlap T q * Real.cos (sinePhase T k q) +
    Real.sin (sinePhase T k q) / (2 * (k : ℝ) * Real.pi)

def ExactDiagonalComparison (T : ℝ) (k : ℕ) : Prop :=
  ∀ q ∈ activePrimePowers T,
    sineCorrelation T k k (Real.log (q : ℝ)) = diagonalSineModel T k q

/-- The same *original* `primeEnergy` readout is the diagonal
source sineCorrelation sum. No new proxy prime response is introduced. -/
theorem sourcePrimeEnergy_singleMode (T : ℝ) (k : ℕ) :
    primeEnergy T (zeroExtendedSine T k) =
      2 * ∑ q ∈ activePrimePowers T,
        primeWeight q * sineCorrelation T k k (Real.log (q : ℝ)) := by
  rfl

/-- A local, exact return of the diagonal integral comparison to the
original complete prime-energy source. -/
theorem sourcePrimeEnergy_eq_model (T : ℝ) (k : ℕ)
    (hsource : ExactDiagonalComparison T k) :
    primeEnergy T (zeroExtendedSine T k) =
      2 * ∑ q ∈ activePrimePowers T,
        primeWeight q * diagonalSineModel T k q := by
  rw [sourcePrimeEnergy_singleMode]
  congr 1
  apply Finset.sum_congr rfl
  intro q hq
  rw [hsource q hq]

/-- A single sine wave pays at most one finite-endpoint sine remainder
per active prime power; the signed cosine is bounded by one. -/
theorem diagonalSineModel_upper (T : ℝ) (hT : 0 < T)
    (k : ℕ) (hk : 0 < k) {q : ℕ} (hq : q ∈ activePrimePowers T) :
    diagonalSineModel T k q ≤
      overlap T q + 1 / (2 * (k : ℝ) * Real.pi) := by
  have hov : 0 ≤ overlap T q := overlap_nonneg T hT hq
  have hc : Real.cos (sinePhase T k q) ≤ 1 := Real.cos_le_one _
  have hs : Real.sin (sinePhase T k q) ≤ 1 := Real.sin_le_one _
  have hkR : (0 : ℝ) < (k : ℝ) := by exact_mod_cast hk
  have hd : 0 ≤ (2 * (k : ℝ) * Real.pi) := by positivity
  have hcm := mul_le_mul_of_nonneg_left hc hov
  have hsd := div_le_div_of_nonneg_right hs hd
  dsimp [diagonalSineModel]
  linarith

/-- Source-conditional but fully explicit one-mode bound. It must not be
relabelled a quadratic lower bound on the whole high complement. -/
theorem sourcePrimeEnergy_singleMode_upper (T : ℝ) (hT : 0 < T)
    (k : ℕ) (hk : 0 < k) (hsource : ExactDiagonalComparison T k) :
    primeEnergy T (zeroExtendedSine T k) ≤
      2 * ∑ q ∈ activePrimePowers T,
        primeWeight q * (overlap T q + 1 / (2 * (k : ℝ) * Real.pi)) := by
  rw [sourcePrimeEnergy_eq_model T k hsource]
  apply mul_le_mul_of_nonneg_left _ (by norm_num)
  apply Finset.sum_le_sum
  intro q hq
  exact mul_le_mul_of_nonneg_left (diagonalSineModel_upper T hT k hk hq)
    (primeWeight_nonneg q)

/-- For a nearly aligned phase, the same exact sine formula gives a
lower bound with BOTH the overlap defect and the finite-endpoint sine
remainder retained. -/
theorem diagonalSineModel_lower_of_alignment (T : ℝ) (hT : 0 < T)
    (k : ℕ) (hk : 0 < k) {q : ℕ} (hq : q ∈ activePrimePowers T)
    (epsilon : ℝ)
    (hphase : 1 - Real.cos (sinePhase T k q) ≤ epsilon) :
    overlap T q * (1 - epsilon) - 1 / (2 * (k : ℝ) * Real.pi) ≤
      diagonalSineModel T k q := by
  have hov : 0 ≤ overlap T q := overlap_nonneg T hT hq
  have hcos : 1 - epsilon ≤ Real.cos (sinePhase T k q) := by linarith
  have hsin : -1 ≤ Real.sin (sinePhase T k q) :=
    (abs_le.mp (Real.abs_sin_le_one _)).1
  have hkR : (0 : ℝ) < (k : ℝ) := by exact_mod_cast hk
  have hd : 0 ≤ (2 * (k : ℝ) * Real.pi) := by positivity
  have hcm := mul_le_mul_of_nonneg_left hcos hov
  have hsd := div_le_div_of_nonneg_right hsin hd
  dsimp [diagonalSineModel]
  linarith

/-- Precise quantified phase-alignment obligation for the FINITE native
active prime-power inventory. It follows mathematically by simultaneous
Diophantine approximation, but is not claimed kernel-checked here. -/
def SimultaneousPrimeRecurrence (T : ℝ) : Prop :=
  ∀ epsilon : ℝ, 0 < epsilon → ∀ N : ℕ,
    ∃ k : ℕ, N < k ∧
      ∀ q ∈ activePrimePowers T,
        1 - Real.cos (sinePhase T k q) ≤ epsilon

/-- Given actual simultaneous phase recurrence and the still-unelaborated
integral identity, arbitrarily high original sine coordinates nearly
saturate the overlap-weighted finite prime sum. This is a diagonal return,
not a statement about the full compressed operator or RH. -/
theorem sourcePrimeEnergy_high_aligned_lower (T : ℝ) (hT : 0 < T)
    (hrec : SimultaneousPrimeRecurrence T)
    (hsource : ∀ k : ℕ, 0 < k → ExactDiagonalComparison T k)
    (epsilon : ℝ) (heps : 0 < epsilon) (N : ℕ) :
    ∃ k : ℕ, N < k ∧
      2 * ∑ q ∈ activePrimePowers T,
        primeWeight q *
          (overlap T q * (1 - epsilon) - 1 / (2 * (k : ℝ) * Real.pi)) ≤
        primeEnergy T (zeroExtendedSine T k) := by
  obtain ⟨k, hkN, halign⟩ := hrec epsilon heps N
  have hk : 0 < k := Nat.lt_of_le_of_lt (Nat.zero_le N) hkN
  refine ⟨k, hkN, ?_⟩
  rw [sourcePrimeEnergy_eq_model T k (hsource k hk)]
  apply mul_le_mul_of_nonneg_left _ (by norm_num)
  apply Finset.sum_le_sum
  intro q hq
  exact mul_le_mul_of_nonneg_left
    (diagonalSineModel_lower_of_alignment T hT k hk hq epsilon (halign q hq))
    (primeWeight_nonneg q)

/-! ## Consistent phase alignment for all powers of the same prime -/

/-- A real character's nonzero prime sign, raised to the exact prime-power
exponent. `negative=true` represents character value `-1` on that prime. -/
def realPrimePowerSign (negative : Bool) (e : ℕ) : ℝ :=
  if negative then (-1 : ℝ) ^ e else 1

/-- One angular value per prime, not one independently per prime power. -/
def targetPrimeAngle (negative : Bool) : ℝ :=
  if negative then Real.pi else 0

theorem realPrimePowerSign_abs (negative : Bool) (e : ℕ) :
    |realPrimePowerSign negative e| = 1 := by
  cases negative <;> simp [realPrimePowerSign]

/-- Odd/even powers of a negative prime sign align at pi; all positive
sign powers align at zero. -/
theorem realPrimePowerSign_at_target (negative : Bool) (e : ℕ) :
    realPrimePowerSign negative e *
      Real.cos ((e : ℝ) * targetPrimeAngle negative) = 1 := by
  cases negative with
  | false => simp [realPrimePowerSign, targetPrimeAngle]
  | true =>
      change (-1 : ℝ) ^ e * Real.cos ((e : ℝ) * Real.pi) = 1
      rw [Real.cos_nat_mul_pi]
      calc
        (-1 : ℝ) ^ e * (-1 : ℝ) ^ e = ((-1 : ℝ) * (-1 : ℝ)) ^ e :=
          (mul_pow _ _ _).symm
        _ = 1 := by norm_num

universe u

/-- Finite prime-power occurrences with one shared angle per actual
prime base. The `value = base^exponent` certificate is retained for a
future source-exact Dirichlet-character adapter. No such adapter is
inferred merely from this structure. -/
structure RealPrimePowerLedger (ι : Type u) where
  entries : Finset ι
  value : ι → ℕ
  base : ι → ℕ
  exponent : ι → ℕ
  negative : ℕ → Bool
  weight : ι → ℝ
  base_prime : ∀ i ∈ entries, Nat.Prime (base i)
  exponent_pos : ∀ i ∈ entries, 0 < exponent i
  power_identity : ∀ i ∈ entries, value i = base i ^ exponent i
  weight_nonneg : ∀ i ∈ entries, 0 ≤ weight i

/-- Signed cosine multiplier for ONE angle per prime. -/
def RealPrimePowerLedger.multiplier {ι : Type u} (L : RealPrimePowerLedger ι)
    (angles : ℕ → ℝ) : ℝ :=
  2 * ∑ i ∈ L.entries, L.weight i *
    (realPrimePowerSign (L.negative (L.base i)) (L.exponent i) *
     Real.cos ((L.exponent i : ℝ) * angles (L.base i)))

def RealPrimePowerLedger.envelope {ι : Type u} (L : RealPrimePowerLedger ι) : ℝ :=
  2 * ∑ i ∈ L.entries, L.weight i

def RealPrimePowerLedger.targetAngles {ι : Type u} (L : RealPrimePowerLedger ι) :
    ℕ → ℝ :=
  fun p => targetPrimeAngle (L.negative p)

/-- The absolute weight budget bounds every abstract prime-phase choice. -/
theorem RealPrimePowerLedger.multiplier_le_envelope {ι : Type u}
    (L : RealPrimePowerLedger ι) (angles : ℕ → ℝ) :
    L.multiplier angles ≤ L.envelope := by
  unfold RealPrimePowerLedger.multiplier RealPrimePowerLedger.envelope
  apply mul_le_mul_of_nonneg_left _ (by norm_num)
  apply Finset.sum_le_sum
  intro i hi
  have hcos :
      realPrimePowerSign (L.negative (L.base i)) (L.exponent i) *
      Real.cos ((L.exponent i : ℝ) * angles (L.base i)) ≤ 1 := by
    calc
      _ ≤ |realPrimePowerSign (L.negative (L.base i)) (L.exponent i) *
            Real.cos ((L.exponent i : ℝ) * angles (L.base i))| :=
          le_abs_self _
      _ = |realPrimePowerSign (L.negative (L.base i)) (L.exponent i)| *
            |Real.cos ((L.exponent i : ℝ) * angles (L.base i))| := abs_mul _ _
      _ = |Real.cos ((L.exponent i : ℝ) * angles (L.base i))| := by
        rw [realPrimePowerSign_abs, one_mul]
      _ ≤ 1 := Real.abs_cos_le_one _
  simpa only [mul_one] using mul_le_mul_of_nonneg_left hcos (L.weight_nonneg i hi)

/-- The bound is EXACTLY attained in the finite independent-prime torus:
all powers of one prime use the SAME target angle. A common frequency
`angles p = xi * log p` still needs a Kronecker/source-transfer theorem. -/
theorem RealPrimePowerLedger.multiplier_target_eq_envelope {ι : Type u}
    (L : RealPrimePowerLedger ι) :
    L.multiplier L.targetAngles = L.envelope := by
  unfold RealPrimePowerLedger.multiplier RealPrimePowerLedger.envelope
  congr 1
  apply Finset.sum_congr rfl
  intro i hi
  rw [show L.targetAngles (L.base i) =
      targetPrimeAngle (L.negative (L.base i)) from rfl]
  rw [realPrimePowerSign_at_target]
  ring

end GRWTSK.NumberTheory.WeilQuadraticForm.PrimePhaseDiffusion
