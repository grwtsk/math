# Complete source: GRWTSK.Algebra.LinearAlgebra.A92df473a3007505ac1cd2945448f593ee55163aedd9a111960c4c55ce8c9d9eFinalFeshbachFix.Varianta92df473a3007505ac1cd2945448f593ee55163aedd9a111960c4c55ce8c9d9e

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `0806956edcb82a78bd998c2a855bc82ad846a309` · SHA-256 `a92df473a3007505ac1cd2945448f593ee55163aedd9a111960c4c55ce8c9d9e`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import FormalResearch.PositiveAtlas.FeshbachReconstruction
import FormalResearch.PositiveAtlas.FeshbachHermitian
import Mathlib.Algebra.Order.Star.Real
import Mathlib.Tactic
import FormalResearch.PositiveAtlas.FeshbachInertia
import FormalResearch.PositiveAtlas.FeshbachEquationIdeal
import Mathlib.Data.ZMod.Basic
import FormalResearch.PositiveAtlas.FiniteQuadraticCertificate

-- Exact fixture source: tests/positive_atlas_feshbach_reconstruction.lean

/-!
Exact rational fixtures with nonzero cross coupling. The full rank-one packet
has a nontrivial kernel and a zero Schur center, so these examples check the
minus sign and reconstruction coordinates rather than only diagonal packets.
AI attribution: Codex authored these fixtures.
-/

namespace FormalResearch.PositiveAtlas.Feshbach.ReconstructionFixtures

open Matrix
open scoped Matrix

private def two : Matrix Unit Unit ℚ := fun _ _ => 2

private instance : Invertible two where
  invOf := fun _ _ => 1 / 2
  invOf_mul_self := by
    ext i j
    change (∑ _ : Unit, (1 / 2 : ℚ) * 2) = if i = j then 1 else 0
    norm_num
  mul_invOf_self := by
    ext i j
    change (∑ _ : Unit, (2 : ℚ) * (1 / 2)) = if i = j then 1 else 0
    norm_num

private theorem inverse_two : ⅟two = (fun _ _ => (1 / 2 : ℚ)) := rfl

/-- Nonzero cross coupling reconstructs the eliminated coordinate with a minus sign. -/
theorem nonzero_cross_lift : lift two two (fun _ => 3) = (fun _ => 3, fun _ => -3) := by
  ext <;> norm_num [lift_apply, inverse_two, two, Matrix.mulVec, dotProduct]

/-- The coupled full packet annihilates a nonzero reconstructed vector. -/
theorem nonzero_cross_kernel :
    blockMap two two two two (fun _ => 3, fun _ => -3) = 0 := by
  ext <;> norm_num [blockMap_apply, two, Matrix.mulVec, dotProduct]

/-- The Schur center is exactly zero, without discarding the cross correction. -/
theorem nonzero_cross_schur : schur two two two two = 0 := by
  ext i j
  norm_num [schur, inverse_two, two, Matrix.mul_apply]

/-- Reconstruction fixes the first coordinate and replaces an unrelated second coordinate. -/
theorem nonzero_cross_projection :
    project two two (fun _ => 3, fun _ => 7) = (fun _ => 3, fun _ => -3) := by
  exact nonzero_cross_lift

end FormalResearch.PositiveAtlas.Feshbach.ReconstructionFixtures

-- Exact fixture source: tests/positive_atlas_feshbach_hermitian.lean

/-!
Finite tests of the exact Hermitian Feshbach sign adapter.

The nonzero-coupling packet checks the cross-block and inverse normalization.
The two diagonal packets have the same linear equation kernel but different
signs. No radical-ideal equality is claimed by this fixture; that obligation is
owned by the polynomial equation layer. Tests authored by the Codex AI assistant.
-/

namespace FormalResearch.PositiveAtlas.FeshbachHermitian.Fixtures

open Matrix

noncomputable section

attribute [local instance] invertibleOne

/-- A positive packet with genuine cross coupling has center `3 - 1 = 2`.
At `(x,y)=(2,3)`, its energy is `8 + 25 = 33`. -/
theorem coupled_completion :
    star (Sum.elim (fun _ : Fin 1 => (2 : ℝ)) (fun _ : Fin 1 => (3 : ℝ))) ⬝ᵥ
        (Matrix.fromBlocks (3 : Matrix (Fin 1) (Fin 1) ℝ)
          (1 : Matrix (Fin 1) (Fin 1) ℝ) 1 1).mulVec
          (Sum.elim (fun _ : Fin 1 => (2 : ℝ)) (fun _ : Fin 1 => (3 : ℝ))) = 33 := by
  have h := completion_of_squares (3 : Matrix (Fin 1) (Fin 1) ℝ)
    (1 : Matrix (Fin 1) (Fin 1) ℝ) 1 Matrix.isHermitian_one
    (fun _ => 2) (fun _ => 3)
  convert h using 1 <;>
    norm_num [Feshbach.schur, ← Matrix.diagonal_natCast, dotProduct, Matrix.mulVec,
      Matrix.sub_apply]
  change (33 : ℝ) = 2 * ((3 - 1) * 2) + 25
  norm_num

/-- The same positive packet is PSD exactly through its positive center. -/
theorem coupled_posSemidef :
    (Matrix.fromBlocks (3 : Matrix (Fin 1) (Fin 1) ℝ)
      (1 : Matrix (Fin 1) (Fin 1) ℝ) 1 1).PosSemidef := by
  have h := posSemidef_iff (3 : Matrix (Fin 1) (Fin 1) ℝ)
    (1 : Matrix (Fin 1) (Fin 1) ℝ) 1 Matrix.PosDef.one
  have hcenter :
      Feshbach.schur (3 : Matrix (Fin 1) (Fin 1) ℝ)
        (1 : Matrix (Fin 1) (Fin 1) ℝ)ᴴ 1 1 = 2 := by
    dsimp [Feshbach.schur]
    ext i j
    fin_cases i
    fin_cases j
    norm_num
    change (3 : ℝ) - 1 = 2
    norm_num
  have hpositive := h.mpr (hcenter ▸
    (Matrix.PosDef.ofNat (2 : ℕ) : (2 : Matrix (Fin 1) (Fin 1) ℝ).PosDef).posSemidef)
  simpa using hpositive

open scoped ComplexOrder

/-- An imaginary cross block distinguishes conjugate transpose from transpose. -/
def imaginaryCoupling : Matrix (Fin 1) (Fin 1) ℂ := fun _ _ => Complex.I

/-- The actual complex Schur correction is `(-I)I = 1`. -/
theorem imaginary_center :
    Feshbach.schur (2 : Matrix (Fin 1) (Fin 1) ℂ)
      imaginaryCouplingᴴ imaginaryCoupling 1 = 1 := by
  ext i j
  fin_cases i
  fin_cases j
  norm_num [Feshbach.schur, imaginaryCoupling, Matrix.mul_apply,
    Matrix.conjTranspose_apply]
  change (2 : ℂ) - 1 = 1
  norm_num

/-- Hermitian sign transport handles the imaginary coupling without dropping
complex conjugation. -/
theorem imaginary_packet_posSemidef :
    (Matrix.fromBlocks (2 : Matrix (Fin 1) (Fin 1) ℂ)
      imaginaryCouplingᴴ imaginaryCoupling 1).PosSemidef := by
  apply (posSemidef_iff _ imaginaryCoupling 1 Matrix.PosDef.one).mpr
  rw [imaginary_center]
  exact Matrix.PosSemidef.one

/-- The positive diagonal packet. -/
def positiveDiagonal : Matrix (Fin 2) (Fin 2) ℝ := 1

/-- The indefinite diagonal packet. -/
def indefiniteDiagonal : Matrix (Fin 2) (Fin 2) ℝ :=
  Matrix.diagonal ![-1, 1]

/-- Equality of the two linear equation kernels coexists with positive
definiteness of one packet and failure of PSD for the other. -/
theorem same_kernel_different_sign :
    (∀ x : Fin 2 → ℝ,
      positiveDiagonal.mulVec x = 0 ↔ indefiniteDiagonal.mulVec x = 0) ∧
      positiveDiagonal.PosDef ∧ ¬ indefiniteDiagonal.PosSemidef := by
  constructor
  · intro x
    simp only [positiveDiagonal, Matrix.one_mulVec, indefiniteDiagonal,
      funext_iff, Pi.zero_apply, Matrix.mulVec_diagonal]
    constructor
    · intro hx i
      rw [hx i]
      simp
    · intro hx i
      fin_cases i
      · simpa using hx 0
      · simpa using hx 1
  · constructor
    · exact Matrix.PosDef.one
    · rw [indefiniteDiagonal, Matrix.posSemidef_diagonal_iff]
      intro h
      have hzero := h (0 : Fin 2)
      norm_num at hzero

end

end FormalResearch.PositiveAtlas.FeshbachHermitian.Fixtures

-- Exact fixture source: tests/positive_atlas_feshbach_inertia.lean

/-!
Numerical inertia fixtures with actual nonzero cross coupling.

The rank-one packet tests the singular Schur center and retained null index.
The indefinite packet tests both signed indices. Counts are proved through
Mathlib's weighted-sum-of-squares signature theorems; no eigenvalue oracle or
numerical approximation is used. AI attribution: Codex authored these fixtures.
-/

namespace FormalResearch.PositiveAtlas.FeshbachInertia.Fixtures

open Matrix

noncomputable section

attribute [local instance] invertibleOne

private def scalar (a : ℝ) : Matrix Unit Unit ℝ := fun _ _ => a

private def weights (a : ℝ) : Unit ⊕ Unit → ℝ :=
  Sum.elim (fun _ => a - 1) (fun _ => 1)

private def reducedWeightedEquiv (a : ℝ) :
    (reducedForm (scalar a) (1 : Matrix Unit Unit ℝ) 1).IsometryEquiv
      (QuadraticMap.weightedSumSquares ℝ (weights a)) where
  toLinearEquiv := (LinearEquiv.sumPiEquivProdPi ℝ Unit Unit (fun _ => ℝ)).symm
  map_app' z := by
    rw [reducedForm_apply]
    change QuadraticMap.weightedSumSquares ℝ (weights a) (Sum.elim z.1 z.2) = _
    simp [QuadraticMap.weightedSumSquares_apply, weights, Feshbach.schur, scalar,
      dotProduct, Matrix.mulVec]
    ring

private theorem inertia_counts (a : ℝ) :
    (sigPos (fullForm (scalar a) (1 : Matrix Unit Unit ℝ) 1),
        sigNeg (fullForm (scalar a) (1 : Matrix Unit Unit ℝ) 1),
        Module.finrank ℝ (fullForm (scalar a) (1 : Matrix Unit Unit ℝ) 1).radical) =
      ({i | 0 < weights a i}.ncard, {i | weights a i < 0}.ncard,
        {i | weights a i = 0}.ncard) := by
  have h : (fullForm (scalar a) (1 : Matrix Unit Unit ℝ) 1).Equivalent
      (QuadraticMap.weightedSumSquares ℝ (weights a)) :=
    ⟨(formEquiv (scalar a) (1 : Matrix Unit Unit ℝ) 1 Matrix.isHermitian_one).trans
      (reducedWeightedEquiv a)⟩
  rw [QuadraticForm.sigPos_of_equiv_weightedSumSquares h,
    QuadraticForm.sigNeg_of_equiv_weightedSumSquares h,
    QuadraticForm.finrank_radical_of_equiv_weightedSumSquares h]

/-- The completion-of-squares shear has the required plus sign. -/
theorem nonzero_shear :
    shear (1 : Matrix Unit Unit ℝ) 1 (fun _ => 2, fun _ => 3) =
      (fun _ => 2, fun _ => 5) := by
  ext <;> norm_num [shear_apply]

/-- The rank-one packet has an exactly zero Schur center. -/
theorem singular_center :
    Feshbach.schur (scalar 1) (1 : Matrix Unit Unit ℝ)ᴴ 1 1 = 0 := by
  ext i j
  simp [Feshbach.schur, scalar]

/-- The genuinely coupled rank-one packet has one positive, zero negative and
one null direction; singularity is preserved by the congruence. -/
theorem singular_inertia :
    (sigPos (fullForm (scalar 1) (1 : Matrix Unit Unit ℝ) 1),
        sigNeg (fullForm (scalar 1) (1 : Matrix Unit Unit ℝ) 1),
        Module.finrank ℝ (fullForm (scalar 1) (1 : Matrix Unit Unit ℝ) 1).radical) =
      (1, 0, 1) := by
  rw [inertia_counts]
  have hp : {i | 0 < weights 1 i} = {Sum.inr ()} := by
    ext i
    rcases i with i | j <;> simp [weights]
  have hn : {i | weights 1 i < 0} = ∅ := by
    ext i
    rcases i with i | j <;> simp [weights]
  have hz : {i | weights 1 i = 0} = {Sum.inl ()} := by
    ext i
    rcases i with i | j <;> simp [weights]
  rw [hp, hn, hz]
  simp

/-- The genuinely coupled indefinite packet retains one positive and one
negative direction, with no null direction. -/
theorem indefinite_inertia :
    (sigPos (fullForm (scalar 0) (1 : Matrix Unit Unit ℝ) 1),
        sigNeg (fullForm (scalar 0) (1 : Matrix Unit Unit ℝ) 1),
        Module.finrank ℝ (fullForm (scalar 0) (1 : Matrix Unit Unit ℝ) 1).radical) =
      (1, 1, 0) := by
  rw [inertia_counts]
  have hp : {i | 0 < weights 0 i} = {Sum.inr ()} := by
    ext i
    rcases i with i | j <;> simp [weights]
  have hn : {i | weights 0 i < 0} = {Sum.inl ()} := by
    ext i
    rcases i with i | j <;> simp [weights]
  have hz : {i | weights 0 i = 0} = ∅ := by
    ext i
    rcases i with i | j <;> simp [weights]
  rw [hp, hn, hz]
  simp

end

end FormalResearch.PositiveAtlas.FeshbachInertia.Fixtures

-- Exact fixture source: tests/positive_atlas_feshbach_equation_ideal.lean

/-! Focused acceptance tests for exact ideal transport, coefficient lifting,
finite radicality scope, and the radical/sign non-implication fixture.

AI attribution: Codex authored these tests.
-/

open FormalResearch.PositiveAtlas

-- The row operation applies even over a ring with nonzero nilpotents.
example (p q : Unit → ZMod 4) :
    blockEquationIdeal (p + Matrix.mulVec (fun _ _ : Unit ↦ (2 : ZMod 4)) q) q =
      blockEquationIdeal p q := by
  let : Invertible (1 : Matrix Unit Unit (ZMod 4)) := invertibleOne
  simpa only [Matrix.one_mulVec] using
    blockEquationIdeal_elimination (fun _ _ : Unit ↦ (2 : ZMod 4))
      (1 : Matrix Unit Unit (ZMod 4)) p q

-- The off-diagonal matrices are independent; adjoint equality is not assumed.
example (A : Matrix (Fin 2) (Fin 2) ℚ) (U : Matrix (Fin 2) (Fin 3) ℚ)
    (C : Matrix (Fin 3) (Fin 2) ℚ) (B : Matrix (Fin 3) (Fin 3) ℚ) [Invertible B]
    (x : Fin 2 → ℚ) (y : Fin 3 → ℚ) :
    blockEquationIdeal (A.mulVec x + U.mulVec y) (C.mulVec x + B.mulVec y) =
      blockEquationIdeal ((Feshbach.schur A U C B).mulVec x)
        (y + (⅟ B).mulVec (C.mulVec x)) :=
  feshbach_equationIdeal_eq A U C B x y

-- A rank-one singular linear system still generates a radical ideal. This is
-- the `A = U = C = B = 1` block packet, whose Schur complement is zero.
example :
    (Ideal.span ({
      (MvPolynomial.X (Sum.inl ()) + MvPolynomial.X (Sum.inr ()) :
        MvPolynomial (Unit ⊕ Unit) ℚ)} : Set (MvPolynomial (Unit ⊕ Unit) ℚ))).IsRadical := by
  simpa [Fintype.sum_sum_type] using
    homogeneous_linear_equationIdeal_isRadical
      (fun (_ : Unit) (_ : Unit ⊕ Unit) ↦ (1 : ℚ))

example :
    letI : Invertible (1 : Matrix Unit Unit ℚ) := invertibleOne
    Feshbach.schur (1 : Matrix Unit Unit ℚ) 1 1 (1 : Matrix Unit Unit ℚ) = 0 := by
  let : Invertible (1 : Matrix Unit Unit ℚ) := invertibleOne
  simp [Feshbach.schur]

-- The origin witness remains available with a zero Schur complement.
example :
    letI : Invertible (1 : Matrix Unit Unit ℚ) := invertibleOne
    (MvPolynomial.zeroLocus ℚ (feshbachPolynomialEquationIdeal
      (1 : Matrix Unit Unit ℚ) 1 1 (1 : Matrix Unit Unit ℚ))).Nonempty ∧
    (MvPolynomial.zeroLocus ℚ (reducedFeshbachPolynomialEquationIdeal
      (1 : Matrix Unit Unit ℚ) 1 1 (1 : Matrix Unit Unit ℚ))).Nonempty := by
  let : Invertible (1 : Matrix Unit Unit ℚ) := invertibleOne
  exact feshbachPolynomialEquationIdeal_full_reduced_zeroLocus_nonempty
    (K := ℚ) (ι := Unit) (κ := Unit) 1 1 1 1

example :
    FeshbachEquationIdealFixture.diagonalEquationIdeal (-1) 1 =
      FeshbachEquationIdealFixture.diagonalEquationIdeal 1 1 ∧
    (FeshbachEquationIdealFixture.diagonalEquationIdeal (-1) 1).IsRadical ∧
    (∀ x y : ℝ, 0 ≤ x ^ 2 + y ^ 2) ∧
    (∃ x y : ℝ, -(x ^ 2) + y ^ 2 < 0) :=
  FeshbachEquationIdealFixture.radical_equationIdeal_does_not_determine_sign



-- Exact fixture source: tests/positive_atlas_quadratic_certificate.lean

/-!
Exact rational checker fixtures: a genuine Gram identity, a rejected negative
target, and a constrained target whose global sign remains negative. This checks
that certificate soundness retains its admissibility boundary.
AI attribution: Codex authored these fixtures.
-/

namespace FormalResearch.PositiveAtlas.FiniteQuadraticCertificate.Fixtures

open Matrix
open scoped Matrix

private def gramProblem : Problem ℚ Unit Empty Empty where
  target := fun _ _ => 4
  equalities := fun e => nomatch e
  inequalities := fun e => nomatch e

private def gramCertificate : Certificate ℚ Unit Empty Empty Unit where
  gram := fun _ _ => 2
  equalityMultipliers := fun e => nomatch e
  inequalityMultipliers := fun e => nomatch e

/-- The executable rational checker accepts an exact nonzero Gram factor. -/
theorem accepts_gram : check gramProblem gramCertificate = true := by
  unfold check
  rw [decide_eq_true_eq]
  constructor
  · intro g
    exact g.elim
  · ext i j
    norm_num [gramProblem, gramCertificate, Matrix.mul_apply, Matrix.transpose_apply]
    change (4 : ℚ) = ∑ _ : Unit, (2 : ℚ) * 2
    norm_num

private def negativeProblem : Problem ℚ Unit Empty Empty where
  target := fun _ _ => -1
  equalities := fun e => nomatch e
  inequalities := fun e => nomatch e

/-- The same Gram payload cannot certify a negative target. -/
theorem rejects_negative : check negativeProblem gramCertificate = false := by
  unfold check
  rw [decide_eq_false_iff_not]
  intro h
  have hentry := congrFun (congrFun h.2 ()) ()
  norm_num [negativeProblem, gramCertificate, Matrix.mul_apply, Matrix.transpose_apply] at hentry
  change (-1 : ℚ) = ∑ _ : Unit, (2 : ℚ) * 2 at hentry
  norm_num at hentry

private def constrainedProblem : Problem ℚ Unit Unit Empty where
  target := fun _ _ => -1
  equalities := fun _ => fun _ _ => 1
  inequalities := fun e => nomatch e

private def constrainedCertificate : Certificate ℚ Unit Unit Empty Unit where
  gram := 0
  equalityMultipliers := fun _ => -1
  inequalityMultipliers := fun e => nomatch e

/-- Equality constraints may certify a target only on their admissible fiber. -/
theorem accepts_constrained : check constrainedProblem constrainedCertificate = true := by
  unfold check
  rw [decide_eq_true_eq]
  constructor
  · intro g
    exact g.elim
  · ext i j
    norm_num [constrainedProblem, constrainedCertificate]
    change (-1 : ℚ) = -1 * 1
    norm_num

private def inequalityProblem : Problem ℚ Unit Empty Unit where
  target := fun _ _ => 1
  equalities := fun e => nomatch e
  inequalities := fun _ => fun _ _ => 1

private def inequalityCertificate : Certificate ℚ Unit Empty Unit Unit where
  gram := 0
  equalityMultipliers := fun e => nomatch e
  inequalityMultipliers := fun _ => 1

/-- A nonempty sign-constraint family is checked with its actual multiplier. -/
theorem accepts_inequality : check inequalityProblem inequalityCertificate = true := by
  unfold check
  rw [decide_eq_true_eq]
  constructor
  · intro g
    norm_num [inequalityCertificate]
  · ext i j
    norm_num [inequalityProblem, inequalityCertificate]
    change (1 : ℚ) = 1 * 1
    norm_num

private def negativeMultiplierProblem : Problem ℚ Unit Empty Unit where
  target := fun _ _ => -1
  equalities := fun e => nomatch e
  inequalities := fun _ => fun _ _ => 1

private def negativeMultiplierCertificate : Certificate ℚ Unit Empty Unit Unit where
  gram := 0
  equalityMultipliers := fun e => nomatch e
  inequalityMultipliers := fun _ => -1

/-- An exact matrix identity with a negative inequality multiplier is rejected. -/
theorem rejects_negative_multiplier :
    check negativeMultiplierProblem negativeMultiplierCertificate = false := by
  unfold check
  rw [decide_eq_false_iff_not]
  intro h
  have hsign := h.1 ()
  norm_num [negativeMultiplierCertificate] at hsign

/-- Exact refinement transports a checked nonempty inequality family. -/
theorem transports_inequality :
    check (inequalityProblem.pullback (fun _ _ : Unit => (3 : ℚ)))
      (inequalityCertificate.pullback (fun _ _ : Unit => (3 : ℚ))) = true :=
  check_pullback inequalityProblem inequalityCertificate accepts_inequality _

/-- The constrained target still has a negative value outside that fiber. -/
theorem constrained_target_negative : quadratic constrainedProblem.target (fun _ => 2) = -4 := by
  norm_num [quadratic, constrainedProblem, Matrix.mulVec, dotProduct]

/-- The hostile vector is correctly excluded by the equality constraint. -/
theorem hostile_vector_not_admissible : ¬constrainedProblem.Admissible (fun _ => 2) := by
  norm_num [Problem.Admissible, quadratic, constrainedProblem, Matrix.mulVec, dotProduct]

#eval [check gramProblem gramCertificate, check negativeProblem gramCertificate,
  check constrainedProblem constrainedCertificate, check inequalityProblem inequalityCertificate,
  check negativeMultiplierProblem negativeMultiplierCertificate,
  check (inequalityProblem.pullback (fun _ _ : Unit => (3 : ℚ)))
    (inequalityCertificate.pullback (fun _ _ : Unit => (3 : ℚ)))]

end FormalResearch.PositiveAtlas.FiniteQuadraticCertificate.Fixtures

#print FormalResearch.PositiveAtlas.Feshbach.ReconstructionFixtures.nonzero_cross_lift
#print FormalResearch.PositiveAtlas.Feshbach.ReconstructionFixtures.nonzero_cross_kernel
#print FormalResearch.PositiveAtlas.Feshbach.ReconstructionFixtures.nonzero_cross_schur
#print FormalResearch.PositiveAtlas.Feshbach.ReconstructionFixtures.nonzero_cross_projection
#print FormalResearch.PositiveAtlas.FeshbachHermitian.Fixtures.coupled_completion
#print FormalResearch.PositiveAtlas.FeshbachHermitian.Fixtures.coupled_posSemidef
#print FormalResearch.PositiveAtlas.FeshbachHermitian.Fixtures.imaginary_center
#print FormalResearch.PositiveAtlas.FeshbachHermitian.Fixtures.imaginary_packet_posSemidef
#print FormalResearch.PositiveAtlas.FeshbachHermitian.Fixtures.same_kernel_different_sign
#print FormalResearch.PositiveAtlas.FeshbachInertia.Fixtures.nonzero_shear
#print FormalResearch.PositiveAtlas.FeshbachInertia.Fixtures.singular_center
#print FormalResearch.PositiveAtlas.FeshbachInertia.Fixtures.singular_inertia
#print FormalResearch.PositiveAtlas.FeshbachInertia.Fixtures.indefinite_inertia
#print FormalResearch.PositiveAtlas.FeshbachEquationIdealFixture.opposite_signs_same_equationIdeal
#print FormalResearch.PositiveAtlas.FeshbachEquationIdealFixture.positive_diagonal_equationIdeal_isRadical
#print FormalResearch.PositiveAtlas.FeshbachEquationIdealFixture.indefinite_diagonal_equationIdeal_isRadical
#print FormalResearch.PositiveAtlas.FeshbachEquationIdealFixture.positive_diagonal_nonnegative
#print FormalResearch.PositiveAtlas.FeshbachEquationIdealFixture.indefinite_diagonal_has_negative_direction
#print FormalResearch.PositiveAtlas.FeshbachEquationIdealFixture.radical_equationIdeal_does_not_determine_sign
#print FormalResearch.PositiveAtlas.FiniteQuadraticCertificate.Fixtures.accepts_gram
#print FormalResearch.PositiveAtlas.FiniteQuadraticCertificate.Fixtures.rejects_negative
#print FormalResearch.PositiveAtlas.FiniteQuadraticCertificate.Fixtures.accepts_constrained
#print FormalResearch.PositiveAtlas.FiniteQuadraticCertificate.Fixtures.accepts_inequality
#print FormalResearch.PositiveAtlas.FiniteQuadraticCertificate.Fixtures.rejects_negative_multiplier
#print FormalResearch.PositiveAtlas.FiniteQuadraticCertificate.Fixtures.transports_inequality
#print FormalResearch.PositiveAtlas.FiniteQuadraticCertificate.Fixtures.constrained_target_negative
#print FormalResearch.PositiveAtlas.FiniteQuadraticCertificate.Fixtures.hostile_vector_not_admissible
#print FormalResearch.PositiveAtlas.FiniteQuadraticCertificate.sound
#print FormalResearch.PositiveAtlas.FiniteQuadraticCertificate.check_sound
#print FormalResearch.PositiveAtlas.FiniteQuadraticCertificate.valid_pullback
#print FormalResearch.PositiveAtlas.FiniteQuadraticCertificate.check_pullback
#print axioms FormalResearch.PositiveAtlas.Feshbach.ReconstructionFixtures.nonzero_cross_lift
#print axioms FormalResearch.PositiveAtlas.Feshbach.ReconstructionFixtures.nonzero_cross_kernel
#print axioms FormalResearch.PositiveAtlas.Feshbach.ReconstructionFixtures.nonzero_cross_schur
#print axioms FormalResearch.PositiveAtlas.Feshbach.ReconstructionFixtures.nonzero_cross_projection
#print axioms FormalResearch.PositiveAtlas.FeshbachHermitian.Fixtures.coupled_completion
#print axioms FormalResearch.PositiveAtlas.FeshbachHermitian.Fixtures.coupled_posSemidef
#print axioms FormalResearch.PositiveAtlas.FeshbachHermitian.Fixtures.imaginary_center
#print axioms FormalResearch.PositiveAtlas.FeshbachHermitian.Fixtures.imaginary_packet_posSemidef
#print axioms FormalResearch.PositiveAtlas.FeshbachHermitian.Fixtures.same_kernel_different_sign
#print axioms FormalResearch.PositiveAtlas.FeshbachInertia.Fixtures.nonzero_shear
#print axioms FormalResearch.PositiveAtlas.FeshbachInertia.Fixtures.singular_center
#print axioms FormalResearch.PositiveAtlas.FeshbachInertia.Fixtures.singular_inertia
#print axioms FormalResearch.PositiveAtlas.FeshbachInertia.Fixtures.indefinite_inertia
#print axioms FormalResearch.PositiveAtlas.FeshbachEquationIdealFixture.opposite_signs_same_equationIdeal
#print axioms FormalResearch.PositiveAtlas.FeshbachEquationIdealFixture.positive_diagonal_equationIdeal_isRadical
#print axioms FormalResearch.PositiveAtlas.FeshbachEquationIdealFixture.indefinite_diagonal_equationIdeal_isRadical
#print axioms FormalResearch.PositiveAtlas.FeshbachEquationIdealFixture.positive_diagonal_nonnegative
#print axioms FormalResearch.PositiveAtlas.FeshbachEquationIdealFixture.indefinite_diagonal_has_negative_direction
#print axioms FormalResearch.PositiveAtlas.FeshbachEquationIdealFixture.radical_equationIdeal_does_not_determine_sign
#print axioms FormalResearch.PositiveAtlas.FiniteQuadraticCertificate.Fixtures.accepts_gram
#print axioms FormalResearch.PositiveAtlas.FiniteQuadraticCertificate.Fixtures.rejects_negative
#print axioms FormalResearch.PositiveAtlas.FiniteQuadraticCertificate.Fixtures.accepts_constrained
#print axioms FormalResearch.PositiveAtlas.FiniteQuadraticCertificate.Fixtures.accepts_inequality
#print axioms FormalResearch.PositiveAtlas.FiniteQuadraticCertificate.Fixtures.rejects_negative_multiplier
#print axioms FormalResearch.PositiveAtlas.FiniteQuadraticCertificate.Fixtures.transports_inequality
#print axioms FormalResearch.PositiveAtlas.FiniteQuadraticCertificate.Fixtures.constrained_target_negative
#print axioms FormalResearch.PositiveAtlas.FiniteQuadraticCertificate.Fixtures.hostile_vector_not_admissible
#print axioms FormalResearch.PositiveAtlas.FiniteQuadraticCertificate.sound
#print axioms FormalResearch.PositiveAtlas.FiniteQuadraticCertificate.check_sound
#print axioms FormalResearch.PositiveAtlas.FiniteQuadraticCertificate.valid_pullback
#print axioms FormalResearch.PositiveAtlas.FiniteQuadraticCertificate.check_pullback
```
