/- Copyright (c) 2026 grwtsk contributors. MIT.
Mathematical direction: grwtsk contributors; formalization assistance: OpenAI.
SOURCE_PROOF_CANDIDATE / COMPILATION_NOT_RUN / EXPECTED_TYPES_NOT_RUN /
FRESH_KERNEL_NOT_RUN / TRANSITIVE_AXIOM_AUDIT_NOT_RUN. -/
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.WeilPrimePhaseEventDiffusion
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.WeilWeightedStagePrimes
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.WeilOddRootProjection
import Mathlib.Tactic

/-!
# Exact zeta/Dirichlet prime-phase return through Weil heat coordinates

The original arithmetic sources remain:
  OddSineForm.primeEnergy T f,
  OddRootProjection.pairedPrimeResponse chi T correlation,
  activePrimePowers T, LowSchur.primeWeight and pairedPrimeWeight chi.

The additional Fourier multiplier is the literal PPNC.primePhase n xi.
For every frequency the resulting cosine readout PLUS its entire
SIGNED residual reconstructs the original prime-power source. At
zero frequency the residual vanishes. The character weight is the
source conjugate-paired real weight, NOT its magnitude; nonunits and
zero-symbol source terms are not removed from the source definitions.

At the physical radius-two stage, all 64 original head coefficients
are recovered from the reversible heatHead BEFORE an independently
specified mode-to-arithmetic-label Fourier observation. The distinct
zeta pole and the complete paid lower quadratic are returned exactly.
The chosen mode label is NOT the still-missing source-derived
prime-power/event incidence map; that identification is not inferred.

The signed quadratic may remain indefinite. No event Markov source
is identified with a Weil sine matrix, no full character-sector
certificate, analytic half-gap, RH or GRH is asserted.

Algebra: a = a*r + a*(1-r) termwise, followed by the existing source
native response and heat inverse. This is finite elementary algebra,
not a new spectral theorem, and no Lean/checker receipt has run.
-/
set_option autoImplicit false
noncomputable section
open scoped BigOperators
open MeasureTheory Matrix

namespace GRWTSK.NumberTheory.WeilQuadraticForm.PrimePhaseSignedReturn

open GRWTSK.NumberTheory.WeilQuadraticForm.PrimePhaseEventDiffusion
open GRWTSK.NumberTheory.WeilQuadraticForm.OddSineForm
open GRWTSK.NumberTheory.WeilQuadraticForm.OddRootProjection
open GRWTSK.NumberTheory.WeilQuadraticForm.LowSchur
open GRWTSK.NumberTheory.WeilQuadraticForm.RadiusTwoSignedDiffusion
open GRWTSK.NumberTheory.WeilQuadraticForm.RadiusTwoCandidateEntries
open GRWTSK.NumberTheory.WeilQuadraticForm.RadiusTwoDiagonalResidual
open GRWTSK.Algebra.LinearAlgebra.QuadraticCertificates

/-- A finite exact algebraic split, with no positive-sign premise on the
signed arithmetic coefficient a. The new Fourier phase r_n may be negative,
zero, or positive; its defect is retained term by term. -/
private theorem finite_phase_real_split
    (I : Finset ℕ) (a c : ℕ → ℝ) (xi : ℝ) :
    2 * ∑ n ∈ I, a n * c n =
      2 * ∑ n ∈ I, a n * c n * (PPNC.primePhase n xi).re +
        2 * ∑ n ∈ I, a n * c n *
          (1 - (PPNC.primePhase n xi).re) := by
  calc
    2 * ∑ n ∈ I, a n * c n =
      2 * ∑ n ∈ I,
        (a n * c n * (PPNC.primePhase n xi).re +
          a n * c n * (1 - (PPNC.primePhase n xi).re)) := by
            congr 1
            apply Finset.sum_congr rfl
            intro n hn
            ring
    _ = _ := by
      rw [Finset.sum_add_distrib]
      ring

/-- Original whole-line real autocorrelation at the ACTUAL Weil prime-power
shift; the physical test is not replaced with a periodic interpolation. -/
def sourceCorrelation (f : ℝ → ℝ) (n : ℕ) : ℝ :=
  ∫ t : ℝ, f t * f (t + Real.log (n : ℝ))

/-- The actual finite von Mangoldt weighted zeta source, now with an
additional Fourier phase probe rather than an altered source definition. -/
def zetaPrimePhaseResponse (T xi : ℝ) (c : ℕ → ℝ) : ℝ :=
  2 * ∑ n ∈ activePrimePowers T,
    primeWeight n * c n * (PPNC.primePhase n xi).re

/-- EXACT signed price of adding the oscillatory phase. It is generally
not nonnegative, even though the original primeWeight is nonnegative. -/
def zetaPrimePhaseDefect (T xi : ℝ) (c : ℕ → ℝ) : ℝ :=
  2 * ∑ n ∈ activePrimePowers T,
    primeWeight n * c n * (1 - (PPNC.primePhase n xi).re)

/-- Every original zeta prime-power term is returned, not just a finite
set of prime numbers or the absolute mass of its response. -/
theorem zetaPrimeEnergy_phase_return
    (T xi : ℝ) (f : ℝ → ℝ) :
    primeEnergy T f =
      zetaPrimePhaseResponse T xi (sourceCorrelation f) +
        zetaPrimePhaseDefect T xi (sourceCorrelation f) := by
  exact finite_phase_real_split
    (activePrimePowers T) primeWeight (sourceCorrelation f) xi

theorem zetaPrimePhase_zero
    (T : ℝ) (f : ℝ → ℝ) :
    zetaPrimePhaseResponse T 0 (sourceCorrelation f) =
      primeEnergy T f := by
  rw [zetaPrimeEnergy_phase_return T 0 f]
  have h : zetaPrimePhaseDefect T 0 (sourceCorrelation f) = 0 := by
    simp [zetaPrimePhaseDefect, phase_at_zero]
  rw [h]
  ring

/-- Retain the AVERAGED source-conjugated primitive character response.
The signed real pairedPrimeWeight may be negative; no absolute value
or arbitrary Dirichlet-character substitution is introduced. -/
def pairedPrimePhaseResponse {q : ℕ} [NeZero q]
    (chi : DirichletCharacter ℂ q)
    (T xi : ℝ) (c : ℕ → ℝ) : ℝ :=
  2 * ∑ n ∈ activePrimePowers T,
    pairedPrimeWeight chi n * c n * (PPNC.primePhase n xi).re

/-- Full selected-character defect, including every retained prime power. -/
def pairedPrimePhaseDefect {q : ℕ} [NeZero q]
    (chi : DirichletCharacter ℂ q)
    (T xi : ℝ) (c : ℕ → ℝ) : ℝ :=
  2 * ∑ n ∈ activePrimePowers T,
    pairedPrimeWeight chi n * c n * (1 - (PPNC.primePhase n xi).re)

theorem pairedPrimeResponse_phase_return {q : ℕ} [NeZero q]
    (chi : DirichletCharacter ℂ q)
    (T xi : ℝ) (c : ℕ → ℝ) :
    pairedPrimeResponse chi T (fun n => (c n : ℂ)) =
      pairedPrimePhaseResponse chi T xi c +
        pairedPrimePhaseDefect chi T xi c := by
  rw [pairedPrimeResponse_native]
  simp only [Complex.ofReal_re]
  exact finite_phase_real_split
    (activePrimePowers T) (pairedPrimeWeight chi) c xi

theorem pairedPrimePhase_zero {q : ℕ} [NeZero q]
    (chi : DirichletCharacter ℂ q) (T : ℝ) (c : ℕ → ℝ) :
    pairedPrimePhaseResponse chi T 0 c =
      pairedPrimeResponse chi T (fun n => (c n : ℂ)) := by
  rw [pairedPrimeResponse_phase_return chi T 0 c]
  have h : pairedPrimePhaseDefect chi T 0 c = 0 := by
    simp [pairedPrimePhaseDefect, phase_at_zero]
  rw [h]
  ring

/-- A source-to-Fourier readout on the 64 physical modes. The mode->integer
map is an EXPLICIT independent observation choice; it is not the missing
canonical prime-power-to-sine-mode coefficient comparison. -/
def originalPhysicalPhaseObservation
    (labels : Fin 64 → ℕ) (xi : ℝ)
    (v : Head → ℝ) : ℂ :=
  ∑ i : Fin 64,
    (v (.inl i) : ℂ) * PPNC.primePhase (labels i) xi

/-- Recover FIRST through the ACTUAL inverse heat map. This prevents the
finite Markov step from silently redefining the source Fourier readout. -/
def recoveredPhysicalPhaseObservation
    (labels : Fin 64 → ℕ) (xi : ℝ)
    (w : Head → ℝ) : ℂ :=
  originalPhysicalPhaseObservation labels xi (recoverHead w)

theorem recoveredPhysicalPhase_source_return
    (labels : Fin 64 → ℕ) (xi : ℝ) (v : Head → ℝ) :
    recoveredPhysicalPhaseObservation labels xi (heatHead v) =
      originalPhysicalPhaseObservation labels xi v := by
  simp [recoveredPhysicalPhaseObservation, recover_heat]

/-- The complete original pole-inclusive signed Weil quadratic, the
separate pole coordinate, and an arbitrary Fourier-mode observation are
ALL returned together. No positivity statement is inferred. -/
theorem fullWeilAndPrimePhase_source_return
    (centres radii : Matrix ResidualRows Trial ℝ)
    (X : Matrix Trial Head ℝ) (labels : Fin 64 → ℕ)
    (xi : ℝ) (v : Head → ℝ) :
    diffusedPaidQuadratic centres radii X (heatHead v) =
      quadratic (RadiusTwoDiagonalResidual.paidLower centres radii X) v ∧
    heatHead v (.inr ()) = v (.inr ()) ∧
    recoveredPhysicalPhaseObservation labels xi (heatHead v) =
      originalPhysicalPhaseObservation labels xi v := by
  exact ⟨diffusedPaid_source_return centres radii X v,
    heat_pole_fixed v, recoveredPhysicalPhase_source_return labels xi v⟩

/-- Transport cannot turn a genuinely negative paid Weil source direction
positive merely because the coordinate map is Markov or its labels have
unit-modulus phases. The original negative result is retained literally. -/
theorem original_negative_survives_full_port
    (centres radii : Matrix ResidualRows Trial ℝ)
    (X : Matrix Trial Head ℝ) (v : Head → ℝ)
    (hneg : quadratic (RadiusTwoDiagonalResidual.paidLower centres radii X) v < 0) :
    diffusedPaidQuadratic centres radii X (heatHead v) < 0 :=
  negative_paid_survives_heat centres radii X v hneg

end GRWTSK.NumberTheory.WeilQuadraticForm.PrimePhaseSignedReturn
