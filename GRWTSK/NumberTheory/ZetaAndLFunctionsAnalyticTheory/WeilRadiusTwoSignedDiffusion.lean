/-
Copyright (c) 2026 grwtsk contributors.
Released under the MIT license as described in the repository LICENSE.
Authors: grwtsk contributors
-/

import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.WeilRadiusTwoDiagonalResidual
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.WeilWeightedFirstStage
import Mathlib

/-!
# Sign-faithful physical-coordinate diffusion of the radius-two Weil certificate

The ORIGINAL radius-two bordered source is retained through the existing
RadiusTwoDiagonalResidual.paidLower centres radii X. Its Head has 64 physical
odd sine modes and a distinct scalar zeta pole. The physical domain is
zero extension from [-2,2] in L2(dt), with shift -1/2 on physical modes
only, actual gamma parity 0, literal signed prime-power responses,
512 reconstruction modes, 2048 observed modes, and the complete remote
allowance through 8192 and beyond. The high floor 1/5 remains a separate
hypothesis. The coordinatewise residual error price is not replaced.

The new mathematical object is a finite rational MARKOV DIFFUSION STEP on
the 64 physical sine coordinates. Every adjacent pair (2k,2k+1) uses the
stochastic symmetric matrix [3/4 1/4; 1/4 3/4]; the scalar pole is fixed.
This is one Euler step of the graph Laplacian I-S, namely
H=I-(I-S)/4, where S exchanges both physical coordinates of each pair.
Each two-site component has eigenvalues 1 and 1/2 and preserves
a+b. Its exact squared-norm decrease is (3/8)*(a-b)^2.
The pair inverse has matrix [3/2 -1/2; -1/2 3/2], with operator
norm 2. An error vector recovered from heat coordinates can therefore
cost up to a factor 4 in its squared norm. This is a real charge,
never silently removed by diffusion or representation.

Define the source-preserving heat-coordinate readout by
Q_heat(w)=quadratic(paidLower centres radii X)(recoverHead w).
The source-return theorem proves Q_heat(heatHead v)=Q_original(v),
and source all-vector positivity is EQUIVALENT to heat-coordinate
all-vector positivity. A negative source direction remains negative.
For the hostile example A=diag(-1,1), the source-negative vector
(1,0) is heated to (3/4,1/4), and its exact recovered readout is
still -1. Positive Markov weights alone prove no arithmetic sign.

This provides an actual input to the existing radius-two stage theorem,
not merely a coverage or encoding metaphor. The consumer still
requires every literal residual source enclosure, correct head/pole
reconstruction, the actual high floor at N=64, and a verified positive
residual-paid 65x65 lower matrix. No such certificate is supplied here.

Physical Euler diffusion is not continuous theta-weighted spectral heat.
The existing countable stageCoverageStep is independent BRANCH-COVERAGE
heat and its complete unobserved tail remains 2^-J. It also does not
certify a prime sign. Exact finite descriptor/payload records reuse the
existing dependent Lossless codec with a proved roundtrip; they retain
source/sector/support/normalization/certificates and all errors. Arbitrary
Hilbert functions are not asserted to have finite codes.

Closest source objects: RootHeatState.HeatKernel, QuadraticCertificates
.congruence, WeilWeightedFirstStage, and the original paidLower theorem.
The finite Markov/inverse and quadratic-congruence mechanisms are known
linear algebra, with no novelty claim. The exact finite calculations
were checked independently on 30 signed rational 65-coordinate vectors,
not on actual Weil source entries. Source signs and cofinal RH/GRH return
remain OPEN. The new Lean proofs have not been compiled or kernel checked.
No Physical Turing or external proof automation was executed.

SOURCE_PROOF_CANDIDATE; COMPILATION_NOT_RUN; FRESH_KERNEL_NOT_RUN;
TRANSITIVE_AXIOM_AUDIT_NOT_RUN; INDEPENDENT_ANALYTIC_REVIEW_NOT_RUN.
Current source base: grwtsk/math
727ad4913c1a07b0cedb4a6d59b6f71a1bf7009a.
-/

set_option autoImplicit false
noncomputable section
open Matrix
open scoped BigOperators

namespace GRWTSK.NumberTheory.WeilQuadraticForm.RadiusTwoSignedDiffusion

open RadiusTwoCandidateEntries
open RadiusTwoDiagonalResidual
open OddLiteralWindow
open OddTrialResidualMatrix
open GRWTSK.Algebra.LinearAlgebra.QuadraticCertificates
open GRWTSK.NumberTheory.WeilQuadraticForm.WeightedStage
open GRWTSK.CombinatoricsAndDiscreteMathematics.CodingTheory

/-- The partner of each odd physical sine mode in its two-site heat edge. -/
def partner (i : Fin 64) : Fin 64 :=
  ⟨if i.val % 2 = 0 then i.val + 1 else i.val - 1, by
    have hi := i.isLt
    split_ifs <;> omega⟩

theorem partner_involutive (i : Fin 64) : partner (partner i) = i := by
  fin_cases i <;> decide

/-- The genuine rational Markov Euler step acts on every physical
pair and leaves the distinct scalar zeta-pole coordinate untouched. -/
def heatHead (v : Head → ℝ) : Head → ℝ
  | .inl i => (3 * v (.inl i) + v (.inl (partner i))) / 4
  | .inr _ => v (.inr ())

/-- Exact inverse heat coordinates, including the original pole coordinate. -/
def recoverHead (w : Head → ℝ) : Head → ℝ
  | .inl i => (3 * w (.inl i) - w (.inl (partner i))) / 2
  | .inr _ => w (.inr ())

theorem recover_heat (v : Head → ℝ) : recoverHead (heatHead v) = v := by
  funext k
  rcases k with i | ⟨⟩
  · change
      (3 * ((3 * v (.inl i) + v (.inl (partner i))) / 4) -
        ((3 * v (.inl (partner i)) +
           v (.inl (partner (partner i)))) / 4)) / 2 =
        v (.inl i)
    rw [partner_involutive]
    ring
  · rfl

theorem heat_recover (w : Head → ℝ) : heatHead (recoverHead w) = w := by
  funext k
  rcases k with i | ⟨⟩
  · change
      (3 * ((3 * w (.inl i) - w (.inl (partner i))) / 2) +
        ((3 * w (.inl (partner i)) -
           w (.inl (partner (partner i)))) / 2)) / 4 =
        w (.inl i)
    rw [partner_involutive]
    ring
  · rfl

theorem heat_pole_fixed (v : Head → ℝ) :
    heatHead v (.inr ()) = v (.inr ()) := rfl

theorem recover_pole_fixed (v : Head → ℝ) :
    recoverHead v (.inr ()) = v (.inr ()) := rfl

/-- Ordinary nonnegative Markov heat, not a proof of quadratic positivity. -/
theorem heatHead_nonneg (v : Head → ℝ) (hv : ∀ i, 0 ≤ v i) :
    ∀ i, 0 ≤ heatHead v i := by
  intro i
  rcases i with j | ⟨⟩
  · change 0 ≤ (3 * v (.inl j) + v (.inl (partner j))) / 4
    exact div_nonneg
      (add_nonneg (mul_nonneg (by norm_num) (hv _)) (hv _))
      (by norm_num)
  · simpa only [heat_pole_fixed] using hv (.inr ())

/-- Exact two-site mass law, applying independently to all 32 pairs. -/
theorem pair_mass (a b : ℝ) :
    (3 * a + b) / 4 + (a + 3 * b) / 4 = a + b := by
  ring

/-- Quantitative dissipation for genuine physical-coordinate diffusion. -/
theorem pair_square_loss (a b : ℝ) :
    a ^ 2 + b ^ 2 -
      (((3 * a + b) / 4) ^ 2 + ((a + 3 * b) / 4) ^ 2) =
      (3 / 8 : ℝ) * (a - b) ^ 2 := by
  ring

/-- Inversion can cost factor four in squared approximation error. -/
theorem pair_recover_square_cost (a b : ℝ) :
    ((3 * a - b) / 2) ^ 2 + ((-a + 3 * b) / 2) ^ 2 ≤
      4 * (a ^ 2 + b ^ 2) := by
  have heq :
      4 * (a ^ 2 + b ^ 2) -
        (((3 * a - b) / 2) ^ 2 + ((-a + 3 * b) / 2) ^ 2) =
        (3 / 2 : ℝ) * (a + b) ^ 2 := by ring
  nlinarith [sq_nonneg (a + b)]

/-- Read the SAME original paid, signed, pole-inclusive source quadratic
after recovering the original 65-coordinate source vector. -/
def diffusedPaidQuadratic
    (centres radii : Matrix ResidualRows Trial ℝ)
    (X : Matrix Trial Head ℝ) (w : Head → ℝ) : ℝ :=
  quadratic (RadiusTwoDiagonalResidual.paidLower centres radii X) (recoverHead w)

/-- Exact source-return identity, valid even if the source is indefinite. -/
theorem diffusedPaid_source_return
    (centres radii : Matrix ResidualRows Trial ℝ)
    (X : Matrix Trial Head ℝ) (v : Head → ℝ) :
    diffusedPaidQuadratic centres radii X (heatHead v) =
      quadratic (RadiusTwoDiagonalResidual.paidLower centres radii X) v := by
  simp only [diffusedPaidQuadratic, recover_heat]

/-- Every signed source direction survives invertible diffusion. -/
theorem diffusedPaid_nonneg_iff
    (centres radii : Matrix ResidualRows Trial ℝ)
    (X : Matrix Trial Head ℝ) :
    (∀ w, 0 ≤ diffusedPaidQuadratic centres radii X w) ↔
      (∀ v, 0 ≤ quadratic (RadiusTwoDiagonalResidual.paidLower centres radii X) v) := by
  constructor
  · intro h v
    have hv := h (heatHead v)
    simpa only [diffusedPaid_source_return] using hv
  · intro h w
    exact h (recoverHead w)

theorem negative_paid_survives_heat
    (centres radii : Matrix ResidualRows Trial ℝ)
    (X : Matrix Trial Head ℝ) (v : Head → ℝ)
    (hneg : quadratic (RadiusTwoDiagonalResidual.paidLower centres radii X) v < 0) :
    diffusedPaidQuadratic centres radii X (heatHead v) < 0 := by
  simpa only [diffusedPaid_source_return] using hneg

/-- Exact original radius-two literal Weil consumer. Every source bound,
head/pole comparison, high-floor and signed positivity premise remains. -/
theorem stageLower_one_of_diffused_paid_sign
    (centres radii : Matrix ResidualRows Trial ℝ)
    (hEntry : ∀ i j, |literalTrialResidualMatrix 2 (-1 / 2) 64 512 2048 i j -
      centres i j| ≤ radii i j)
    (X : Matrix Trial Head ℝ)
    (hhead : ∀ (v : Head → ℝ) (i : Fin 64),
      X.mulVec v (.inl (Fin.castLE (by decide : 64 ≤ 512) i)) = v (.inl i))
    (hpole : ∀ v : Head → ℝ, X.mulVec v (.inr ()) = v (.inr ()))
    (hfloor : HighFloor 2 (-1 / 2) (1 / 5) 64)
    (hsignedHeat : ∀ w, 0 ≤ diffusedPaidQuadratic centres radii X w) :
    OddLiteralCofinal.StageLower 1 := by
  exact RadiusTwoDiagonalResidual.stageLower_one_of_paidLower centres radii
    hEntry X hhead hpole hfloor
    ((diffusedPaid_nonneg_iff centres radii X).mp hsignedHeat)

/-- The source, sector, support, normalization, every certificate endpoint
and every approximation-error field remain in one dependent finite record. -/
def signedHeatRecordCodec :
    Lossless (Sigma (fun _ : List ℕ => List ℚ)) ℕ :=
  rationalStageRecordCodec

theorem signedHeatRecord_roundtrip
    (record : Sigma (fun _ : List ℕ => List ℚ)) :
    signedHeatRecordCodec.decode (signedHeatRecordCodec.encode record) =
      some record :=
  signedHeatRecordCodec.roundtrip record

/-- Exhaustive positive countable branch heat, NOT Euler sign certification. -/
theorem signedHeatRecord_covered
    {x : ℕ → ℝ} (hx : ∀ n, 0 ≤ x n)
    (hm : 0 < ∑' n : ℕ, x n)
    (record : Sigma (fun _ : List ℕ => List ℚ)) :
    ∃ n, Encodable.decode n = some record ∧
      0 < stageCoverageStep x n :=
  every_representable_branch_covered hx hm record

/-- The ENTIRE unobserved countable heat tail is retained exactly. -/
theorem signedHeatCoverage_tail (J : ℕ) :
    (∑' k : ℕ, stageCoverageWeight (J + k)) =
      (1 / 2 : ℝ) ^ J :=
  stageCoverageWeight_tail J

end GRWTSK.NumberTheory.WeilQuadraticForm.RadiusTwoSignedDiffusion
