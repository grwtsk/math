/-
Copyright (c) 2026 grwtsk contributors.
Released under the MIT license as described in the repository LICENSE.
Authors: grwtsk contributors.
-/

import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.WeilTunableInvariantDiffusion
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.WeilRadiusTwoDiagonalResidual
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.WeilCofinalFlexibleHead
import Mathlib

/-!
# Signed heat-coordinate observation margins returned to the actual Weil form

This is a consumer-backed improvement of the reversible finite
Weil diffusers. A producer may compute an observed finite
quadratic B in heat coordinates w, and certify both inequalities:

  |quadratic B w - quadratic A (R_r w)| <= error*sum_i(w_i)^2,
  error*sum_i(w_i)^2 <= quadratic B w,

for EVERY finite heat-coordinate vector w. Since the inverse
R_r is exact, these inequalities imply quadratic A v >=0
for EVERY ORIGINAL source vector v. The error price appears
on the correct side and cannot be erased by smoothing. No
hypothesis says that A itself is positive, and the observed
matrix is not silently identified with the source.

The radius-two consuming theorem uses precisely
RadiusTwoDiagonalResidual.paidLower with 64 physical sine
coordinates, the separate scalar zeta pole, shift -1/2, the
complete 1984x513 literal residual entry comparison, matched
reconstruction, high-floor N=64, full remote allowance and
the retained signed mixed term. The original entire Weil
form is returned by the existing stageLower_one_of_paidLower,
only AFTER the margin comparison is proved.

The cofinal consuming theorem uses the existing
CofinalFlexibleHead.FlexibleStageHeadSource j N M L J.
Its lower matrix is the original rational bordered matrix;
the model B in heat coordinates is allowed to be different,
but its two signed inequalities must be supplied as actual
source-valid observations. The high floor at the same radius,
cutoff and shift remains a separate premise. Thus the new
theorem returns the original OddLiteralCofinal.StageLower j,
not a new RH predicate. No source-specific finite
certificates have been manufactured.

The budget is sharp as a logic rule. For A=-1 and B=+1 on
one coordinate, the absolute comparison error is at least
2*mass; a purported margin of 1*mass fails. A positive
Markov heat transition alone never provides this signed
comparison. Inverse error may cost 1/r^2 on contrast modes;
any practical interval verifier must pay that cost when
deriving the displayed error inequality. By taking r near
one the source-return cost can be reduced without changing
the original source observation.

The generic finite inequality also applies to individual
complex-character source realizations after a SEPARATE
real-part Hermitian comparison with their original complex
correlation. The zeta-specific bordered theorem does NOT
silently become a Dirichlet proof. All conductor, parity,
complex phase and completed-zero/explicit-formula obligations
remain independent of this finite real quadratic lemma.

Existing prior results: WeilTunableInvariantDiffusion,
WeilRadiusTwoDiagonalResidual, WeilCofinalFlexibleHead,
QuadraticCertificates.quadratic. This is elementary rigorous
quadratic comparison with an exact source-return map, not
a claimed independent solution of RH or GRH.

SOURCE_PROOF_CANDIDATE / LEAN_COMPILATION_NOT_RUN /
FRESH_KERNEL_NOT_RUN / TRANSITIVE_AXIOM_AUDIT_NOT_RUN /
INDEPENDENT_ANALYTIC_REVIEW_NOT_RUN.
Inspected grwtsk/math@859cb74d7b56cd6c744aab5e449ec09b906f862e.
-/

set_option autoImplicit false
noncomputable section
open Matrix

namespace GRWTSK.NumberTheory.WeilQuadraticForm.TunableMarginReturn

open FiniteInvariantDiffusion
open FiniteInvariantDiffusion.Involution
open RadiusTwoCandidateEntries
open OddLiteralWindow
open OddTrialResidualMatrix
open GRWTSK.Algebra.LinearAlgebra.QuadraticCertificates

/-- The exact original Euclidean HEAD coefficient mass. This is
NOT automatically the theta-weighted or full physical source norm. -/
def headMass {ι : Type*} [Fintype ι] (w : ι → ℝ) : ℝ :=
  ∑ i, (w i)^2

theorem headMass_nonneg {ι : Type*} [Fintype ι] (w : ι → ℝ) :
    0 ≤ headMass w := by
  unfold headMass
  exact Finset.sum_nonneg (fun i _ => sq_nonneg (w i))

/-- Quantified signed comparison plus a paid observer margin proves
nonnegativity of the ORIGINAL finite source, not of an invented proxy. -/
theorem original_source_nonneg_of_margin {ι : Type*} [Fintype ι]
    (d : Involution ι) (r : ℝ) (hr : r ≠ 0)
    (source observed : Matrix ι ι ℝ) (error : ℝ)
    (hcomparison : ∀ w,
      |quadratic observed w - d.sourceQuadraticWithGap r source w| ≤
        error * headMass w)
    (hmargin : ∀ w,
      error * headMass w ≤ quadratic observed w) :
    ∀ v, 0 ≤ quadratic source v := by
  intro v
  have hobs := (abs_le.mp (hcomparison (d.heatField r v))).2
  have hpositive := hmargin (d.heatField r v)
  rw [d.sourceQuadraticWithGap_return r hr source v] at hobs
  linarith

/-- Source-specific radius-two signed certificate consumer.
All existing hEntry, hhead, hpole and hfloor premises are preserved.
The margin is an OBSERVER obligation, not an accepted sign by fiat. -/
theorem radiusTwo_stageLower_of_tunable_margin
    (centres radii : Matrix ResidualRows Trial ℝ)
    (hEntry : ∀ i j,
      |literalTrialResidualMatrix 2 (-1/2) 64 512 2048 i j -
        centres i j| ≤ radii i j)
    (X : Matrix Trial Head ℝ)
    (hhead : ∀ (v : Head → ℝ) (i : Fin 64),
      X.mulVec v (.inl (Fin.castLE (by decide : 64 ≤ 512) i)) =
        v (.inl i))
    (hpole : ∀ v : Head → ℝ,
      X.mulVec v (.inr ()) = v (.inr ()))
    (hfloor : HighFloor 2 (-1/2) (1/5) 64)
    (d : Involution (Fin 64))
    (r : ℝ) (hr : 0 < r) (_hMarkov : r ≤ 1)
    (observed : Matrix Head Head ℝ) (error : ℝ)
    (hcomparison : ∀ w,
      |quadratic observed w -
        (d.withPole).sourceQuadraticWithGap r
          (RadiusTwoDiagonalResidual.paidLower centres radii X) w| ≤
        error * headMass w)
    (hmargin : ∀ w, error * headMass w ≤ quadratic observed w) :
    OddLiteralCofinal.StageLower 1 := by
  exact RadiusTwoDiagonalResidual.stageLower_one_of_paidLower centres radii
    hEntry X hhead hpole hfloor
    (original_source_nonneg_of_margin (d.withPole) r hr.ne'
      (RadiusTwoDiagonalResidual.paidLower centres radii X)
      observed error hcomparison hmargin)

/-- The same signed comparison works for ANY justified cofinal
physical head cutoff; a radius-two packet is not relabeled as
a universal family. The arbitrary finite source remains the
ORIGINAL source-paid rational lower in FlexibleStageHeadSource. -/
theorem cofinal_stageLower_of_tunable_margin
    {j N M L J : ℕ}
    (packet :
      OddLiteralCofinal.CofinalFlexibleHead.FlexibleStageHeadSource
        j N M L J)
    (hfloor : HighFloor
      (OddLiteralCofinal.CofinalHighComplement.stageRadius j)
      (OddLiteralCofinal.CofinalHighComplement.stageShift j)
      (1/5 : ℝ) N)
    (d : Involution (Fin N))
    (r : ℝ) (hr : 0 < r) (_hMarkov : r ≤ 1)
    (observed : Matrix
      (OddLiteralCofinal.CofinalFlexibleHead.HeadIndexAt N)
      (OddLiteralCofinal.CofinalFlexibleHead.HeadIndexAt N) ℝ)
    (error : ℝ)
    (hcomparison : ∀ w,
      |quadratic observed w -
        (d.withPole).sourceQuadraticWithGap r
          (fun i k => (packet.lower i k : ℝ)) w| ≤
        error * headMass w)
    (hmargin : ∀ w, error * headMass w ≤ quadratic observed w) :
    OddLiteralCofinal.StageLower j := by
  apply OddLiteralCofinal.CofinalFlexibleHead.stageLower_of_positiveLower
    packet hfloor
  exact original_source_nonneg_of_margin (d.withPole) r hr.ne'
    (fun i k => (packet.lower i k : ℝ))
    observed error hcomparison hmargin

/-!
## Independent audit and certificate boundary

Inspected main 70cc2c47f7559279135e2889e1836c89465c944b and the three
issue #1740 blobs, unchanged from 69c75f6978b919c9a0071765e96c8ca5d8bc0160.
The following are proposed source lemmas, not compilation receipts.

Write C = Rᵀ sym(A) R. The two all-vector premises are exactly
  -error I ≤ sym(B)-C ≤ error I,  sym(B)-error I ≥ 0
in quadratic-form order. Independent certificates may establish these by
rational Gram/LDL identities and nonnegative pivots, with proved entrywise
interval enclosures for EVERY original source entry. For symmetric error
E, a certified bound max_i sum_j |E_ij| ≤ error is sufficient for the
comparison; entrywise signs or positive diagonal entries are not sufficient.
The one-sided condition sym(B)-C ≤ error I suffices for the return.

Actual source observations must include the signed pole, remote allowances,
mixed residual, physical head reconstruction and high-complement estimate.
Rational checks of a matrix have arithmetic meaning only after the source
entry enclosures are proved. If an original-coordinate error is delta,
transport costs at most delta/r² in the Euclidean metric; no second such
factor is needed when the error was already proved in heat coordinates.
The parameter changes conditioning and smoothing, not inertia or sign.

For a complex source the same statement uses adjoints and the Hermitian
part. Prove its full source representation first, then certify all complex
vectors (or the equivalent doubled real symmetric matrix). Real-only probes
miss imaginary off-diagonal phases. Cofinal returns require a certificate
and high floor at every required stage, plus the existing analytic return.
No finite sample or fixed radius establishes those universal obligations.
-/

/-- Only the upper signed discrepancy is needed. This exposes the precise
source-valid observation a certificate producer must establish. -/
theorem original_source_nonneg_of_upper_margin {ι : Type*} [Fintype ι]
    (d : Involution ι) (r : ℝ) (hr : r ≠ 0)
    (source observed : Matrix ι ι ℝ) (error : ℝ)
    (hupper : ∀ w, quadratic observed w -
      d.sourceQuadraticWithGap r source w ≤ error * headMass w)
    (hmargin : ∀ w, error * headMass w ≤ quadratic observed w) :
    ∀ v, 0 ≤ quadratic source v := by
  intro v
  have hu := hupper (d.heatField r v)
  have hm := hmargin (d.heatField r v)
  rw [d.sourceQuadraticWithGap_return r hr source v] at hu
  linarith

/-- A negative source witness refutes the conjunction of the TWO universal
observer claims, regardless of positivity of individual transport entries. -/
theorem negative_source_refutes_margin {ι : Type*} [Fintype ι]
    (d : Involution ι) (r : ℝ) (hr : r ≠ 0)
    (source observed : Matrix ι ι ℝ) (error : ℝ)
    (v : ι → ℝ) (hneg : quadratic source v < 0) :
    ¬ ((∀ w, |quadratic observed w -
      d.sourceQuadraticWithGap r source w| ≤ error * headMass w) ∧
      (∀ w, error * headMass w ≤ quadratic observed w)) := by
  rintro ⟨hc, hm⟩
  exact (not_le_of_gt hneg)
    (original_source_nonneg_of_margin d r hr source observed error hc hm v)

namespace AuditFixtures

/-- Rational hostile source, expressed in the existing quadratic API. -/
def hostile : Matrix Bool Bool ℝ :=
  Matrix.diagonal (fun b => if b then 100 else -1)

def axis : Bool → ℝ := fun b => if b then 0 else 1

theorem hostile_smoothing_false_positive :
    quadratic hostile axis = -1 ∧
    quadratic hostile (Involution.bitFlip.heatField (3/4 : ℝ) axis) = 51/64 ∧
    Involution.bitFlip.sourceQuadraticWithGap (3/4 : ℝ) hostile
      (Involution.bitFlip.heatField (3/4 : ℝ) axis) = -1 := by
  have hq : quadratic hostile axis = -1 := by
    norm_num [quadratic, hostile, axis, Matrix.mulVec_diagonal,
      Matrix.dotProduct, Fintype.sum_bool]
  refine ⟨hq, ?_, ?_⟩
  · norm_num [quadratic, hostile, axis, heatField, Involution.bitFlip,
      Matrix.mulVec_diagonal, Matrix.dotProduct, Fintype.sum_bool]
  · rw [Involution.sourceQuadraticWithGap_return _ _ (by norm_num)]
    exact hq

/-- Noninvertible zero-gap smoothing can erase an entire negative space. -/
theorem zero_gap_erases_negative_direction :
    let v : Bool → ℝ := fun b => if b then -1 else 1
    Involution.bitFlip.heatField (0 : ℝ) v = 0 ∧
      -(v false - v true)^2 = -4 := by
  dsimp
  constructor
  · funext b
    cases b <;> norm_num [heatField, Involution.bitFlip]
  · norm_num

/-- Positive observer alone fails: paying error 2 to compare -1 with +1
makes its claimed unit-vector margin impossible. -/
theorem positive_observer_cannot_pay :
    ¬ ∃ error : ℝ, |(1 : ℝ) - (-1)| ≤ error ∧ error ≤ 1 := by
  rintro ⟨error, hc, hm⟩
  norm_num at hc
  linarith

/-- Positive diagonal entries (basis-vector checks) miss a mixed direction. -/
theorem basis_checks_insufficient :
    let Q : ℝ → ℝ → ℝ := fun x y => x^2 + y^2 - 4*x*y
    Q 1 0 = 1 ∧ Q 0 1 = 1 ∧ Q 1 1 = -2 := by
  norm_num

/-- Exact rational pulled-back positive fixture from issue #1740.
This finite certificate is not an enclosure of the actual Weil source. -/
def positivePullback : Matrix Bool Bool ℝ := fun i j =>
  if i = j then (if i then 149/36 else 101/36) else -35/36

theorem positivePullback_source_identity (w : Bool → ℝ) :
    quadratic positivePullback w =
      Involution.bitFlip.sourceQuadraticWithGap (3/4 : ℝ)
        (Matrix.diagonal (fun b => if b then 3 else 2)) w := by
  simp [quadratic, positivePullback, sourceQuadraticWithGap,
    recoverField, Involution.bitFlip, Matrix.mulVec,
    Matrix.dotProduct, Fintype.sum_bool, Matrix.diagonal]
  <;> ring

/-- A rational LDL identity is a genuine all-vector finite certificate,
whereas finitely many sampled vectors would not be. -/
theorem positivePullback_gram (w : Bool → ℝ) :
    quadratic positivePullback w =
      (101/36 : ℝ) * (w false - (35/101 : ℝ)*w true)^2 +
      (384/101 : ℝ) * (w true)^2 := by
  simp [quadratic, positivePullback, Matrix.mulVec,
    Matrix.dotProduct, Fintype.sum_bool]
  <;> ring

theorem positivePullback_nonneg (w : Bool → ℝ) :
    0 ≤ quadratic positivePullback w := by
  rw [positivePullback_gram]
  positivity

/-- The sharp Euclidean price is NOT valid in an arbitrary weighted metric.
Weights (100,1), w=(0,1), r=3/4 give cost 149/36 > 16/9. -/
theorem weighted_inverse_cost_failure :
    let w : Bool → ℝ := fun b => if b then 1 else 0
    let z := Involution.bitFlip.recoverField (3/4 : ℝ) w
    100 * (z false)^2 + (z true)^2 = 149/36 ∧
      (16/9 : ℝ) * (100 * (w false)^2 + (w true)^2) <
        100 * (z false)^2 + (z true)^2 := by
  norm_num [recoverField, Involution.bitFlip]

/-- Even ALL vectors in the nonnegative cone are insufficient. -/
theorem nonnegative_cone_insufficient :
    (∀ x y : ℝ, 0 ≤ x → 0 ≤ y → 0 ≤ x*y) ∧
      (1 : ℝ) * (-1) < 0 := by
  exact ⟨fun _ _ hx hy => mul_nonneg hx hy, by norm_num⟩

end AuditFixtures

end GRWTSK.NumberTheory.WeilQuadraticForm.TunableMarginReturn
