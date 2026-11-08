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

end GRWTSK.NumberTheory.WeilQuadraticForm.TunableMarginReturn
