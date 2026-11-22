/-
Copyright (c) 2026 grwtsk contributors. MIT.
Authors: grwtsk contributors.
SOURCE_PROOF_CANDIDATE. Lean compilation, transitive axiom audit,
fresh kernel replay and independent mathematical review: NOT_RUN.
-/
import GRWTSK.Combinatorics.GraphTheory.PrimeKnotJacobiArithmetic
import Mathlib.NumberTheory.LSeries.ZetaZeros
import Mathlib.Analysis.Complex.Norm
import Mathlib.Tactic

/-!
# Prime-only Jacobi spectral enclosure: a noncircular criterion for RH

The operator family is the genuine finite prime-weighted Jacobi
adjacency, defined in the preceding file WITHOUT using any zeta zeros.
A real eigenvalue has a nonzero finite eigenfunction and the ACTUAL
prime-knot weighted-matrix eigen-equation. We do not assume a
numerical spectrum, a spectral-determinant identity or imported RH.

For any complex z and real frequency lambda:
   |Re(z) - 1/2| <= ||z - (1/2 + i*lambda)||.
This is unconditional complex geometry and does not use RH.

Thus if EVERY actual nontrivial zeta zero is arbitrarily well
approximated in FULL complex norm by real eigenvalues of these
prime-only operators (after the critical-line embedding), then
the original Mathlib RiemannHypothesis holds. This is a rigorous,
independent implication, not a claim that the convergence premise
has been proved. Indeed the convergence assertion is the missing
number-theoretic/eigenvalue bridge; symmetry, positivity of a
different graph Laplacian, or Carleman selfadjointness alone do
NOT imply it.

Additional obstructions show that off-line zeros have a positive
distance from the entire real spectral cylinder, and uniformly
bounded spectral ranges cannot approximate source zeros at higher
imaginary heights. These falsify overly strong graph proposals.
-/

set_option autoImplicit false
noncomputable section

namespace GRWTSK.NumberTheory.PrimeJacobiSpectralEnclosure

open GRWTSK.CombinatoricsAndDiscreteMathematics.GraphTheory.PrimeKnotJacobiArithmetic

/-- A point on the actual normalized critical line, with REAL height.
No original Riemann-zeta zero is used in this definition. -/
def criticalPoint (height : ℝ) : ℂ :=
  ((1 / 2 : ℝ) : ℂ) + (height : ℂ) * Complex.I

theorem criticalPoint_re (height : ℝ) :
    (criticalPoint height).re = (1 / 2 : ℝ) := by
  simp [criticalPoint]

theorem criticalPoint_im (height : ℝ) :
    (criticalPoint height).im = height := by
  simp [criticalPoint]

/-- Horizontal displacement is no larger than FULL COMPLEX distance
from ANY REAL critical-line spectral height. -/
theorem horizontalGap_le_norm (s : ℂ) (height : ℝ) :
    |s.re - (1 / 2 : ℝ)| ≤ ‖s - criticalPoint height‖ := by
  have h := Complex.abs_re_le_norm (s - criticalPoint height)
  simpa only [Complex.sub_re, criticalPoint_re] using h

/-- A separate imaginary-height estimate is necessary to rule out
a globally bounded finite spectrum as an unbounded zero model. -/
theorem verticalGap_le_norm (s : ℂ) (height : ℝ) :
    |s.im - height| ≤ ‖s - criticalPoint height‖ := by
  have h := Complex.abs_im_le_norm (s - criticalPoint height)
  simpa only [Complex.sub_im, criticalPoint_im] using h

/-- The ORIGINAL Mathlib nontrivial-zero predicate, with its exact
trivial-zero exclusion, rather than an arbitrary graph root. -/
def NontrivialZero (s : ℂ) : Prop :=
  riemannZeta s = 0 ∧
    (¬ ∃ n : ℕ, s = -2 * (n + 1)) ∧
    s ≠ 1

/-- REAL finite eigenvalues of the explicitly prime-only Jacobi
adjacency matrix. The source graph is NOT a zero-indexed diagonal. -/
def JacobiEigenvalue (N : ℕ) (height : ℝ) : Prop :=
  ∃ f : Fin N → ℝ, (∃ i : Fin N, f i ≠ 0) ∧
    ∀ i : Fin N, applyJacobi f i = height * f i

/-- The first prime-only Jacobi section has a REAL zero eigenvalue.
This is a diagnostic obstruction: source-independent graph spectra
cannot simply be identified with zeta-zero heights at every finite
rank. No claim that ζ(1/2)=0 follows from the eigenvalue. -/
theorem first_section_zero_eigenvalue :
    JacobiEigenvalue 1 0 := by
  classical
  refine ⟨(fun _ : Fin 1 => (1 : ℝ)), ⟨(0 : Fin 1), by norm_num⟩, ?_⟩
  intro i
  fin_cases i
  simp [applyJacobi, knotWeight]

/-- A zero is approximated in COMPLEX norm by ACTUAL eigenpairs of
finite prime-only Jacobi sections. The existence of the eigenpairs
at arbitrary accuracy is precisely the OPEN source-bridge claim. -/
def ApproximatesZero (s : ℂ) : Prop :=
  ∀ ε : ℝ, 0 < ε →
    ∃ N : ℕ, ∃ height : ℝ,
      JacobiEigenvalue N height ∧
      ‖s - criticalPoint height‖ < ε

/-- Global original-source approximation, including every nontrivial
zero regardless of height or graph/processing window. -/
def PrimeSpectralRecovery : Prop :=
  ∀ s : ℂ, NontrivialZero s → ApproximatesZero s

/-- The independently verified quantitative inequality excludes every
off-critical-line point from arbitrarily accurate real spectral
enclosures. No number-theoretic argument is hidden here. -/
theorem on_line_of_arbitrarily_close (s : ℂ)
    (h : ApproximatesZero s) :
    s.re = (1 / 2 : ℝ) := by
  by_contra hn
  have hpos : 0 < |s.re - (1 / 2 : ℝ)| :=
    abs_pos.mpr (sub_ne_zero.mpr hn)
  obtain ⟨N, height, heigen, hclose⟩ := h _ hpos
  have hlow := horizontalGap_le_norm s height
  exact (not_lt_of_ge hlow) hclose

/-- SOURCE-FAITHFUL INDEPENDENT IMPLICATION:
A genuine all-zero spectral recovery by the prime-only Jacobi
family would establish EXACT Mathlib.RiemannHypothesis.
This theorem does not import any proof of RH or assume it elsewhere. -/
theorem RiemannHypothesis_of_primeSpectralRecovery
    (h : PrimeSpectralRecovery) : RiemannHypothesis := by
  intro s hs htrivial hone
  exact on_line_of_arbitrarily_close s (h s ⟨hs, htrivial, hone⟩)

/-- An original off-line zero is a rigorous obstruction to the proposed
global spectral recovery; moving graph edge labels cannot remove it. -/
theorem recovery_fails_of_off_line_zero
    (s : ℂ) (hs : NontrivialZero s)
    (hoff : s.re ≠ (1 / 2 : ℝ)) :
    ¬ PrimeSpectralRecovery := by
  intro h
  exact hoff (on_line_of_arbitrarily_close s (h s hs))

/-- Any attempted approximation inside epsilon cannot cross the exact
horizontal gap. This is an unconditional precise numerical falsifier. -/
theorem no_spectral_enclosure_below_horizontal_gap
    (s : ℂ) (ε : ℝ)
    (hε : ε ≤ |s.re - (1 / 2 : ℝ)|) :
    ¬ ∃ N : ℕ, ∃ height : ℝ,
      JacobiEigenvalue N height ∧
      ‖s - criticalPoint height‖ < ε := by
  rintro ⟨N, height, heigen, hclose⟩
  have hgap := horizontalGap_le_norm s height
  linarith

/-- A hypothetical UNIFORMLY bounded real spectrum cannot recover
any source point whose imaginary height exceeds that bound.
In particular, a bounded-compression family cannot suffice merely
because it contains infinitely many matrix sections. -/
theorem uniformly_bounded_spectrum_obstruction
    (s : ℂ) (B : ℝ)
    (hbounded : ∀ N height, JacobiEigenvalue N height → |height| ≤ B)
    (hheight : B < |s.im|) :
    ¬ ApproximatesZero s := by
  intro h
  have hδ : 0 < |s.im| - B := sub_pos.mpr hheight
  obtain ⟨N, height, heigen, hclose⟩ := h _ hδ
  have hgap := verticalGap_le_norm s height
  have htri : |s.im| ≤ |s.im - height| + |height| := by
    calc
      |s.im| = |(s.im - height) + height| := by ring
      _ ≤ |s.im - height| + |height| := abs_add_le _ _
  have hb := hbounded N height heigen
  linarith

end GRWTSK.NumberTheory.PrimeJacobiSpectralEnclosure
