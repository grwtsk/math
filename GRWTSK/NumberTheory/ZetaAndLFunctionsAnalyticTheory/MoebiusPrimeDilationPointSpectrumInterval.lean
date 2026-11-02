/- Copyright (c) 2026 grwtsk contributors. MIT. -/
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.MoebiusDenseReducedPrimeDilationCancellation
import GRWTSK.QuantumTheory.QuantumFieldTheoryRelatedClassicalFieldTheories.QuantumFieldTheoryOnLattices.WilsonPrimeWindowVacuumRayleighSegment
import GRWTSK.FunctionalAnalysis.InnerProductSpacesAndTheirGeneralizationsHilbertSpaces.DiagonalHilbertDomain
import Mathlib.Analysis.InnerProductSpace.l2Space
import Mathlib.Analysis.SpecialFunctions.Log.Basic
import Mathlib

/-!
# Prime dilation and a complete real point-spectrum interval

Local mathematical attribution: grwtsk contributors.

The arithmetic prime-dilation source sends `q` to `p*q`.  Under the real
logarithmic coordinate this has width

  log (p*q) - log q = log p.

The existing finite prime-window Wilson grading cannot turn the Rayleigh
segment between two vacuum levels into a point-spectrum interval: the source
already proves a strictly interior two-vacuum state has nonzero eigenvalue
residual.  A single self-adjoint operator with every point of a nontrivial
real interval as an eigenvalue requires a different carrier.

This file constructs that carrier explicitly.  For an interval `[a,b]`, take
the Hilbert sum

  l2 ([a,b], R)

with counting measure, and the maximal diagonal multiplier `M x(q)=q*x(q)`.
Every coordinate vector is an eigenvector, so the point spectrum is EXACTLY
`[a,b]`.  When `a<b`, this Hilbert space is nonseparable; the theorem is not a
claim about the existing finite graded Wilson Hamiltonian.  It is the
single-operator realization of the real family `H(q)=H+q I`, whose vacuum has
point eigenvalue `q` for every real parameter.

For an arithmetic prime dilation, specialize to

  [log q, log (p*q)],

whose width is `log p`.  The same source dilation also has the exact negative
Möbius coefficient identity from the maintained endpoint programme.  These
are two source-bound consequences of one dilation; the spectral construction
does not estimate the remaining Möbius packet or prove RH.

SOURCE_PROOF_CANDIDATE; LEAN_BUILD_NOT_RUN; EXPECTED_TYPES_NOT_RUN;
FRESH_KERNEL_NOT_RUN; TRANSITIVE_AXIOM_AUDIT_NOT_RUN.
-/

set_option autoImplicit false
noncomputable section
open scoped BigOperators

namespace GRWTSK.NumberTheory.Moebius.PrimeDilationPointSpectrumInterval

open GRWTSK.RiemannHypothesis.CCC
open GRWTSK.Analysis.InnerProductSpace.DiagonalHilbertDomain
open GRWTSK.NumberTheory.Moebius.DenseReducedPrimeDilationCancellation
open GRWTSK.Geometry.GaugeTheory.WilsonSliceGaugeHilbert
open GRWTSK.Geometry.GaugeTheory.WilsonFullRegulatedHamiltonian
open GRWTSK.Geometry.GaugeTheory.WilsonRealHamiltonianLine

/-- Real interval used as an eigenvalue index. -/
abbrev IntervalIndex (a b : ℝ) := Set.Icc a b

/-- The counting-measure Hilbert sum with one real line at every point of
`[a,b]`.  For a nontrivial interval this is intentionally nonseparable. -/
abbrev IntervalHilbert (a b : ℝ) :=
  lp (fun _ : IntervalIndex a b => ℝ) 2

/-- Identity spectral coordinates for the interval multiplier. -/
def intervalCoordinates (a b : ℝ) :
    IntervalHilbert a b ≃ₗᵢ[ℝ]
      lp (fun _ : IntervalIndex a b => ℝ) 2 :=
  LinearIsometryEquiv.refl ℝ _

/-- Eigenvalue attached to an interval coordinate. -/
def intervalWeight (a b : ℝ) (q : IntervalIndex a b) : ℝ := q.1

/-- Maximal square-summability domain for multiplication by the real
coordinate. -/
abbrev IntervalDomain (a b : ℝ) : Submodule ℝ (IntervalHilbert a b) :=
  DiagonalHilbertDomain.domain
    (intervalCoordinates a b) (intervalWeight a b)

/-- The actual maximal diagonal Hamiltonian `M x(q)=q*x(q)`. -/
abbrev intervalHamiltonian (a b : ℝ) :
    IntervalDomain a b →ₗ[ℝ] IntervalHilbert a b :=
  DiagonalHilbertDomain.operator
    (intervalCoordinates a b) (intervalWeight a b)

/-- A unit coordinate vector in the maximal domain. -/
def intervalEigenstate (a b : ℝ) (q : IntervalIndex a b) :
    IntervalDomain a b :=
  DiagonalHilbertDomain.singleVector
    (intervalCoordinates a b) (intervalWeight a b) q (1 : ℝ)

@[simp]
theorem intervalEigenstate_coe
    (a b : ℝ) (q : IntervalIndex a b) :
    ((intervalEigenstate a b q : IntervalDomain a b) :
      IntervalHilbert a b) = lp.single 2 q (1 : ℝ) := by
  simp [intervalEigenstate, intervalCoordinates,
    DiagonalHilbertDomain.singleVector]

/-- Every coordinate vector is nonzero. -/
theorem intervalEigenstate_ne_zero
    (a b : ℝ) (q : IntervalIndex a b) :
    ((intervalEigenstate a b q : IntervalDomain a b) :
      IntervalHilbert a b) ≠ 0 := by
  intro h
  have hq := congrArg (fun z : IntervalHilbert a b => z q) h
  simpa using hq

/-- Every interval coordinate is a genuine point eigenvalue. -/
theorem intervalHamiltonian_eigen
    (a b : ℝ) (q : IntervalIndex a b) :
    intervalHamiltonian a b (intervalEigenstate a b q) =
      (q : ℝ) •
        ((intervalEigenstate a b q : IntervalDomain a b) :
          IntervalHilbert a b) := by
  apply (intervalCoordinates a b).injective
  apply lp.ext
  intro r
  rw [DiagonalHilbertDomain.operator_coordinate]
  by_cases hr : r = q
  · subst r
    simp [intervalEigenstate, intervalCoordinates, intervalWeight,
      DiagonalHilbertDomain.singleVector]
  · simp [intervalEigenstate, intervalCoordinates, intervalWeight,
      DiagonalHilbertDomain.singleVector, lp.single_apply,
      Pi.single_eq_of_ne hr, hr]

/-- Point spectrum of the maximal interval multiplier. -/
def intervalPointSpectrum (a b : ℝ) : Set ℝ :=
  {E | ∃ x : IntervalDomain a b,
    (x : IntervalHilbert a b) ≠ 0 ∧
      intervalHamiltonian a b x = E • (x : IntervalHilbert a b)}

/-- The interval multiplier is graph self-adjoint on its literal maximal
domain. -/
theorem intervalHamiltonian_selfAdjoint_graph
    (a b : ℝ) (x y : IntervalHilbert a b) :
    (∀ z : IntervalDomain a b,
      inner ℝ (intervalHamiltonian a b z) x =
        inner ℝ (z : IntervalHilbert a b) y) ↔
      ∃ hx : x ∈ IntervalDomain a b,
        intervalHamiltonian a b ⟨x, hx⟩ = y :=
  DiagonalHilbertDomain.adjoint_graph_iff
    (intervalCoordinates a b) (intervalWeight a b) x y

/-- The point spectrum of one self-adjoint diagonal Hamiltonian is exactly
the complete real interval.  This is the requested single-operator theorem,
not a numerical-range statement. -/
theorem complete_point_spectrum_interval (a b : ℝ) :
    intervalPointSpectrum a b = Set.Icc a b := by
  ext E
  constructor
  · rintro ⟨x, hx, heigen⟩
    have hex : ∃ q : IntervalIndex a b,
        ((x : IntervalHilbert a b) q) ≠ 0 := by
      by_contra h
      push_neg at h
      apply hx
      apply lp.ext
      intro q
      exact h q
    obtain ⟨q, hq⟩ := hex
    have hcoord := congrArg
      (fun z : IntervalHilbert a b => (intervalCoordinates a b z) q)
      heigen
    have hmul :
        (q : ℝ) * ((x : IntervalHilbert a b) q) =
          E * ((x : IntervalHilbert a b) q) := by
      simpa [intervalCoordinates, intervalWeight] using hcoord
    have hzero :
        ((q : ℝ) - E) * ((x : IntervalHilbert a b) q) = 0 := by
      calc
        ((q : ℝ) - E) * ((x : IntervalHilbert a b) q) =
            (q : ℝ) * ((x : IntervalHilbert a b) q) -
              E * ((x : IntervalHilbert a b) q) := by ring
        _ = 0 := sub_eq_zero.mpr hmul
    have hqE : (q : ℝ) = E := by
      exact sub_eq_zero.mp ((mul_eq_zero.mp hzero).resolve_right hq)
    simpa [← hqE] using q.property
  · intro hE
    let q : IntervalIndex a b := ⟨E, hE⟩
    refine ⟨intervalEigenstate a b q,
      intervalEigenstate_ne_zero a b q, ?_⟩
    simpa [q] using intervalHamiltonian_eigen a b q

/-- Union of point spectra of the existing real Wilson operator family.
Every real parameter in `I` occurs as the vacuum eigenvalue of `H(q)`. -/
def realLineFamilyPointSpectrum
    (L : ℕ) [NeZero L]
    (β : ℝ) (hβ : 0 < β) (a : ℝ) (I : Set ℝ) : Set ℝ :=
  {E | ∃ q ∈ I,
    ∃ x : HamiltonianDomain L β hβ.le a,
      (x : RegulatedHilbert L) ≠ 0 ∧
        realLineHamiltonian L q β hβ.le a x =
          E • (x : RegulatedHilbert L)}

/-- The real Wilson family has a complete point-spectrum interval after the
operator parameter is allowed to vary.  This is a family statement; the
single-operator realization is `complete_point_spectrum_interval` above. -/
theorem realLineFamily_complete_point_spectrum_interval
    (L : ℕ) [NeZero L]
    (β : ℝ) (hβ : 0 < β) (a c d : ℝ) :
    Set.Icc c d ⊆
      realLineFamilyPointSpectrum L β hβ a (Set.Icc c d) := by
  intro E hE
  refine ⟨E, hE, vacuumDomain L β hβ a, ?_, ?_⟩
  · intro hzero
    have hn := vacuum_unit L β hβ
    change vacuum L β hβ = 0 at hzero
    rw [hzero, norm_zero] at hn
    norm_num at hn
  · exact realLineHamiltonian_vacuum L E β hβ a

/-- Lower endpoint of the real interval generated by an arithmetic source
index `q`. -/
def primeDilationLower (q : ℕ) : ℝ := Real.log (q : ℝ)

/-- Upper endpoint after dilation by `p`. -/
def primeDilationUpper (p q : ℕ) : ℝ :=
  Real.log ((p * q : ℕ) : ℝ)

/-- The logarithmic width of one positive prime dilation is exactly `log p`. -/
theorem primeDilation_log_width
    (p q : ℕ) (hp : Nat.Prime p) (hq : 0 < q) :
    primeDilationUpper p q - primeDilationLower q =
      Real.log (p : ℝ) := by
  have hp0 : (p : ℝ) ≠ 0 := by
    exact_mod_cast hp.ne_zero
  have hq0 : (q : ℝ) ≠ 0 := by
    exact_mod_cast Nat.ne_of_gt hq
  unfold primeDilationUpper primeDilationLower
  rw [Nat.cast_mul, Real.log_mul hp0 hq0]
  ring

/-- A genuine prime dilation gives a nontrivial ordered real interval. -/
theorem primeDilation_log_lt
    (p q : ℕ) (hp : Nat.Prime p) (hq : 0 < q) :
    primeDilationLower q < primeDilationUpper p q := by
  have hwidth := primeDilation_log_width p q hp hq
  have hp1 : (1 : ℝ) < p := by
    exact_mod_cast hp.one_lt
  have hlog : 0 < Real.log (p : ℝ) := Real.log_pos hp1
  linarith

/-- Exact point-spectrum interval attached to the real completion of an
arithmetic prime dilation. -/
theorem primeDilation_complete_point_spectrum_interval
    (p q : ℕ) (hp : Nat.Prime p) (hq : 0 < q) :
    intervalPointSpectrum
        (primeDilationLower q) (primeDilationUpper p q) =
      Set.Icc (primeDilationLower q) (primeDilationUpper p q) :=
  complete_point_spectrum_interval _ _

/-- The maintained arithmetic and spectral consequences of the SAME source
dilation.  The first component is the actual Möbius sign identity; the second
is its exact real logarithmic width. -/
theorem primeDilation_signed_source_and_real_width
    (p q : ℕ) (hp : Nat.Prime p) (hcop : ¬ p ∣ q) (hq : 0 < q) :
    moebiusReal q * moebiusReal (p * q) =
        -(moebiusReal q) ^ 2 ∧
      primeDilationUpper p q - primeDilationLower q =
        Real.log (p : ℝ) := by
  exact ⟨primeDilation_coefficient_identity p q hp hcop,
    primeDilation_log_width p q hp hq⟩

end GRWTSK.NumberTheory.Moebius.PrimeDilationPointSpectrumInterval
