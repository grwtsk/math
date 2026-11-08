/-
Copyright (c) 2026 grwtsk contributors.
Released under the MIT license as described in the repository LICENSE.
Authors: grwtsk contributors.

SOURCE_PROOF_CANDIDATE / LEAN_COMPILATION_NOT_RUN /
FRESH_KERNEL_NOT_RUN / TRANSITIVE_AXIOM_AUDIT_NOT_RUN /
INDEPENDENT_ANALYTICAL_REVIEW_NOT_RUN.
-/
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.WeilRadiusTwoPaidLowerBounds
import GRWTSK.LinearAndMultilinearAlgebraMatrixTheory.BasicLinearAlgebra.FiniteSignRealQuadratic

/-!
# Source-bound certificate for the literal radius-two bordered zeta head

Publication baseline: `grwtsk/math@1044c9264c4361e4ca26771b4351d4b4ba7fa732`.
The consumed `WeilRadiusTwoCandidateEntries.lean` blob is
`f476cc69055f1196c8f418ab5597dc878f9fa05d`, unchanged from the source
revision carried by the finite evidence.

External finite evidence supplied for this formalization:

* semantic schema: `grwtsk.radius-two-literal-bordered-head/1`;
* certificate SHA-256:
  `51ef7047ad21a3f20b14e18d7b4c835070f215ee789bb25b4c1280a312afe2a5`;
* reproducible package SHA-256:
  `d64296b747a532e469d15d4c62c8e84f6c1862c64b3ac19b8a54be81e7868d18`;
* dyadic denominator: `2^40`;
* exact midpoint-radius row allowance: `2050531 / 2^41`;
* requested lower floor: `1/20`.

The carrier is the EXISTING
`RadiusTwoCandidateEntries.Head = Fin 64 ⊕ Unit`.  The first coordinates
are the literal physical odd sine modes on the radius-two window and the final
coordinate is the actual scalar zeta-pole port.  The represented source matrix
is exactly

`shiftedBlock (borderedSourceMatrix 2 64) poleShiftMetric (-1 / 2)`.

`Data` stores complete integer lower and upper endpoint matrices together with
an exact rational LDL witness for the interval-paid matrix after subtracting
the floor `1/20`.  `Accepted` deliberately keeps five logically different
facts separate:

1. symmetry of the stored intervals;
2. the complete row-radius allowance;
3. nonnegativity of every rational LDL pivot;
4. the exact LDL matrix identity;
5. enclosure of every stored interval around the matching literal source entry.

The first four are finite arithmetic.  The fifth is the analytic/source bridge:
it includes the gamma series and its complete tails, every prime-power
logarithm/square-root/trigonometric observation, and the literal pole column.
No finite rational identity manufactures that source comparison.

`literal_head_ge_one_twentieth` proves

`(1/20) * ∑ i, v i^2 ≤ quadratic literalHead v`

for every real head vector from an `Accepted` packet.  It uses the repository's
existing interval-minorant theorem and exact LDL return, rather than defining a
parallel positivity convention.

No concrete `Accepted` instance is asserted in this file.  Importing the
external packet into the kernel remains a separate source-bound verification
task.  Consequently this module does not claim a mode-64 high floor, residual
or remote control, a cofinal stage family, RH, or Dirichlet GRH.

The stronger `1/16` head floor is refuted by a hostile vector in the supplied
finite evidence; that diagnostic is not needed by the theorem below.
-/

set_option autoImplicit false
noncomputable section

open Matrix
open scoped BigOperators

namespace GRWTSK.NumberTheory.WeilQuadraticForm.RadiusTwoLiteralHeadCertificate

open OddRootProjection OddSineForm OddBorderedExpansion
open RadiusTwoCandidateEntries RadiusTwoPaidLowerBounds
open GRWTSK.Algebra.LinearAlgebra.RationalRealBounds
open GRWTSK.Algebra.LinearAlgebra.QuadraticCertificates
open GRWTSK.Algebra.LinearAlgebra.FiniteSignCertificates
open GRWTSK.LinearAlgebra.SchurObserver

abbrev Head := RadiusTwoCandidateEntries.Head

def dyadicBits : ℕ := 40

def denominator : ℚ := 2 ^ dyadicBits

/-- Exact maximum allowed row sum of midpoint radii for this packet family. -/
def sourceMargin : ℚ := 2050531 / 2199023255552

def requestedFloor : ℚ := 1 / 20

/-- Finite evidence fields only.  No source sign is stored as data. -/
structure Data where
  lower : Matrix Head Head ℤ
  upper : Matrix Head Head ℤ
  factor : Matrix Head Head ℚ
  pivots : Head → ℚ

def Data.bounds (p : Data) (i j : Head) : Bounds :=
  (((p.lower i j : ℤ) : ℚ) / denominator,
   ((p.upper i j : ℤ) : ℚ) / denominator)

def Data.paid (p : Data) : Matrix Head Head ℚ :=
  intervalPaid p.bounds sourceMargin

def Data.shiftedPaid (p : Data) : Matrix Head Head ℚ :=
  p.paid - requestedFloor • 1

/-- The unchanged repository source matrix represented by the packet. -/
def literalHead : Matrix Head Head ℝ :=
  shiftedBlock (borderedSourceMatrix 2 64) poleShiftMetric (-1 / 2)

/-- Exact acceptance boundary.  The desired source lower sign is not a field. -/
structure Accepted (p : Data) : Prop where
  symmetric : ∀ i j, p.bounds i j = p.bounds j i
  row_budget : ∀ i, ∑ j, intervalRadii p.bounds i j ≤ sourceMargin
  pivots_nonnegative : ∀ i, 0 ≤ p.pivots i
  ldl :
    p.shiftedPaid =
      p.factor * diagonal p.pivots * p.factor.transpose
  source_enclosures :
    ∀ i j, Encloses (p.bounds i j) (literalHead i j)

private def Data.shiftedPaidReal (p : Data) : Matrix Head Head ℝ :=
  p.shiftedPaid.map (Rat.castHom ℝ)

private def Data.factorComplex (p : Data) : Matrix Head Head ℂ :=
  p.factor.map (Rat.castHom ℂ)

private theorem Accepted.ldl_complex {p : Data} (ha : Accepted p) :
    p.shiftedPaidReal.map Complex.ofReal =
      p.factorComplex *
        diagonal (fun i => (p.pivots i : ℂ)) *
          p.factorComplexᴴ := by
  have hmap := congrArg
    (fun M : Matrix Head Head ℚ => M.map (Rat.castHom ℂ))
    ha.ldl
  have htranspose :
      p.factor.transpose.map (Rat.castHom ℂ) =
        p.factorComplexᴴ := by
    ext i j
    simp [Data.factorComplex, Matrix.conjTranspose_apply]
  have hreal :
      p.shiftedPaidReal.map Complex.ofReal =
        p.shiftedPaid.map (Rat.castHom ℂ) := by
    ext i j
    simp [Data.shiftedPaidReal]
  rw [hreal]
  rw [Matrix.map_mul, Matrix.map_mul] at hmap
  rw [htranspose] at hmap
  simpa only [Matrix.map_apply, Rat.coe_castHom, Data.factorComplex] using hmap

theorem Accepted.shiftedPaid_nonnegative {p : Data} (ha : Accepted p)
    (v : Head → ℝ) :
    0 ≤ quadratic p.shiftedPaidReal v := by
  exact nonnegative_real_quadratic_of_ldl p.shiftedPaidReal
    p.factorComplex p.pivots ha.pivots_nonnegative ha.ldl_complex v

/-- Exact source return for the finite head.

All finite rational work is contained in `Accepted`; the source-enclosure field
is the separate analytic bridge from those data to the current literal matrix.
-/
theorem literal_head_ge_one_twentieth (p : Data) (ha : Accepted p)
    (v : Head → ℝ) :
    (1 / 20 : ℝ) * (∑ i, v i ^ 2) ≤ quadratic literalHead v := by
  let shiftedSource : Matrix Head Head ℝ :=
    literalHead - (1 / 20 : ℝ) • 1
  let paid : Matrix Head Head ℝ := p.shiftedPaidReal
  let radii : Matrix Head Head ℝ :=
    (intervalRadii p.bounds).map (Rat.castHom ℝ)
  have hPaid : ∀ w, 0 ≤ quadratic paid w := by
    intro w
    exact ha.shiftedPaid_nonnegative w
  have hCast :
      paid =
        (intervalCenters p.bounds).map (Rat.castHom ℝ) -
          (sourceMargin : ℝ) • 1 - (1 / 20 : ℝ) • 1 := by
    ext i j
    by_cases hij : i = j <;>
      simp [paid, Data.shiftedPaidReal, Data.shiftedPaid, Data.paid,
        intervalPaid, requestedFloor, hij]
  have hShifted : 0 ≤ quadratic shiftedSource v := by
    refine quadratic_nonneg_of_minorant shiftedSource paid radii
      (sourceMargin : ℝ) ?_ ?_ ?_ hPaid v
    · intro i j
      rw [hCast]
      simp only [shiftedSource, Matrix.sub_apply, Matrix.smul_apply,
        Matrix.one_apply, smul_eq_mul]
      by_cases hij : i = j
      · subst j
        simp only [ite_true]
        obtain ⟨hLo, hHi⟩ := ha.source_enclosures i i
        change
          |literalHead i i - (intervalCenters p.bounds i i : ℝ)| ≤
            (intervalRadii p.bounds i i : ℝ)
        rw [abs_le]
        push_cast [intervalCenters, intervalRadii]
        exact ⟨by linarith only [hLo], by linarith only [hHi]⟩
      · simp only [hij, ite_false, mul_zero, sub_zero]
        obtain ⟨hLo, hHi⟩ := ha.source_enclosures i j
        change
          |literalHead i j - (intervalCenters p.bounds i j : ℝ)| ≤
            (intervalRadii p.bounds i j : ℝ)
        rw [abs_le]
        push_cast [intervalCenters, intervalRadii]
        exact ⟨by linarith only [hLo], by linarith only [hHi]⟩
    · intro i j
      change (intervalRadii p.bounds i j : ℝ) =
        (intervalRadii p.bounds j i : ℝ)
      unfold intervalRadii
      rw [ha.symmetric i j]
    · intro i
      change ∑ j, (intervalRadii p.bounds i j : ℝ) ≤
        (sourceMargin : ℝ)
      exact_mod_cast ha.row_budget i
  have hMass : v ⬝ᵥ v = ∑ i, v i ^ 2 := by
    simp only [dotProduct, pow_two]
  have hExpand :
      quadratic shiftedSource v =
        quadratic literalHead v - (1 / 20 : ℝ) * (∑ i, v i ^ 2) := by
    simp only [shiftedSource, quadratic, Matrix.sub_mulVec,
      Matrix.smul_mulVec, Matrix.one_mulVec, dotProduct_sub,
      dotProduct_smul, smul_eq_mul, hMass]
  rw [hExpand] at hShifted
  linarith

/-- Equivalent shifted-matrix statement for existing finite-head consumers. -/
theorem literal_head_shifted_nonnegative (p : Data) (ha : Accepted p)
    (v : Head → ℝ) :
    0 ≤ quadratic (literalHead - (1 / 20 : ℝ) • 1) v := by
  have h := literal_head_ge_one_twentieth p ha v
  have hMass : v ⬝ᵥ v = ∑ i, v i ^ 2 := by
    simp only [dotProduct, pow_two]
  simp only [quadratic, Matrix.sub_mulVec, Matrix.smul_mulVec,
    Matrix.one_mulVec, dotProduct_sub, dotProduct_smul,
    smul_eq_mul, hMass]
  linarith

end GRWTSK.NumberTheory.WeilQuadraticForm.RadiusTwoLiteralHeadCertificate
