# Complete source: GRWTSK.NumberTheory.Zeta.Riemann.CanonicalSquareTentBombieriMomentInformationLoss

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `4a237718b7a1321fdfab175301b91dc131cf6895` · SHA-256 `b185bf204eb6b9fa9228fde903c04332975928a7af0d4fed1cbc087387d24cde`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/- Copyright (c) 2026 grwtsk contributors. MIT.
Mathlib results retain their upstream authorship and Apache-2.0 license. -/
import GRWTSK.NumberTheory.Zeta.Riemann.CanonicalSquareTentCorrectedArithmeticGram
import GRWTSK.NumberTheory.Zeta.Riemann.CanonicalSquareTentWeilTransportObstruction
import Mathlib.Tactic

set_option autoImplicit false

/-!
# Two Bombieri moments do not determine a separating Weil diagonal

The repository already constructs a nonzero coefficient vector in the span of the
stage-two, stage-three and stage-four canonical square tents whose ordinary and
reciprocal Bombieri moments both vanish.  This file makes the resulting information
loss explicit.

The exact two-moment profile is not injective.  Consequently every readout that
factors only through those two moments gives the same value on the nonzero corrected
vector and the zero vector.  In particular, a classical Weil diagonal that separates
those two inputs cannot be reconstructed from the two moments alone.

This is an exact algebraic obstruction.  It does not construct a classical zeta Weil
form, prove that a classical diagonal separates the witness, prove strict positivity,
or establish global nonnegativity on an admitted test space.  The arithmetic Gram is
not identified with the classical Guinand--Weil form.

Evidence state: SOURCE_DRAFT.  ELABORATED, KERNEL_CHECKED, TRUST_AUDITED,
EXTERNALLY_REPLAYED and ANALYTIC_PREMISES_DISCHARGED are not claimed.
-/

namespace GRWTSK.NumberTheory.Zeta.Riemann.CanonicalSquareTentBombieriMomentInformationLoss

open GRWTSK.RiemannHypothesis
open GRWTSK.NumberTheory.Zeta.Riemann.CanonicalSquareTentPolarization
open GRWTSK.NumberTheory.Zeta.Riemann.CanonicalSquareTentBombieriMomentRankObstruction
open GRWTSK.NumberTheory.Zeta.Riemann.CanonicalSquareTentCorrectedArithmeticGram
open GRWTSK.NumberTheory.Zeta.Riemann.CanonicalSquareTentWeilTransportObstruction

/-- The complete pair of source-stated Bombieri moments on the actual
three-coordinate canonical square-tent coefficient space.  The ordinary moment is
first and the reciprocal/multiplicative moment is second. -/
noncomputable def bombieriMomentProfile (u : Combination 2) : ℂ × ℂ :=
  (u (0 : Fin 3) * (realOrdinaryMoment 0 : ℂ) +
      u (1 : Fin 3) * (realOrdinaryMoment 1 : ℂ) +
      u (2 : Fin 3) * (realOrdinaryMoment 2 : ℂ),
    u (0 : Fin 3) * (realMultiplicativeMoment 0 : ℂ) +
      u (1 : Fin 3) * (realMultiplicativeMoment 1 : ℂ) +
      u (2 : Fin 3) * (realMultiplicativeMoment 2 : ℂ))

/-- The zero coefficient vector has both moments zero. -/
@[simp] theorem bombieriMomentProfile_zero :
    bombieriMomentProfile (0 : Combination 2) = (0, 0) := by
  simp [bombieriMomentProfile]

/-- The previously constructed nonzero corrected coefficient vector lies in the
kernel of the complete two-moment profile.  Both equalities are imported exact
source identities, not numerical approximations. -/
theorem bombieriMomentProfile_correctedCoordinates :
    bombieriMomentProfile correctedCoordinates = (0, 0) := by
  apply Prod.ext
  · simpa [bombieriMomentProfile] using
      correctedCoordinates_ordinary_balance
  · simpa [bombieriMomentProfile] using
      correctedCoordinates_multiplicative_balance

/-- The two Bombieri moments lose information already on the literal
stage-two/stage-three/stage-four canonical square-tent coefficient space. -/
theorem bombieriMomentProfile_not_injective :
    ¬ Function.Injective bombieriMomentProfile := by
  intro hinjective
  apply correctedCoordinates_ne_zero
  apply hinjective
  rw [bombieriMomentProfile_correctedCoordinates,
    bombieriMomentProfile_zero]

/-- A readout factors through the two Bombieri moments when all of its mathematical
content is recovered by first forgetting the coefficient vector and retaining only
that ordered pair.  The decoder is actual typed data; no metadata string or analogy
constitutes a factorization. -/
def FactorsThroughBombieriMoments {α : Type*}
    (readout : Combination 2 → α) : Prop :=
  ∃ decode : (ℂ × ℂ) → α,
    readout = decode ∘ bombieriMomentProfile

/-- Every two-moment factorization identifies the exact nonzero kernel witness with
the zero coefficient vector. -/
theorem readout_eq_zero_on_corrected_of_factorsThroughBombieriMoments
    {α : Type*} {readout : Combination 2 → α}
    (hfactor : FactorsThroughBombieriMoments readout) :
    readout correctedCoordinates = readout 0 := by
  rcases hfactor with ⟨decode, hdecode⟩
  have hcorrected :
      readout correctedCoordinates =
        decode (bombieriMomentProfile correctedCoordinates) := by
    simpa only [Function.comp_apply] using
      congrFun hdecode correctedCoordinates
  have hzero :
      readout (0 : Combination 2) =
        decode (bombieriMomentProfile (0 : Combination 2)) := by
    simpa only [Function.comp_apply] using
      congrFun hdecode (0 : Combination 2)
  calc
    readout correctedCoordinates =
        decode (bombieriMomentProfile correctedCoordinates) := hcorrected
    _ = decode (bombieriMomentProfile (0 : Combination 2)) := by
      rw [bombieriMomentProfile_correctedCoordinates,
        bombieriMomentProfile_zero]
    _ = readout 0 := hzero.symm

/-- Any readout that distinguishes the corrected kernel witness from zero cannot
factor through the two moments. -/
theorem not_factorsThroughBombieriMoments_of_separates_corrected
    {α : Type*} {readout : Combination 2 → α}
    (hseparates : readout correctedCoordinates ≠ readout 0) :
    ¬ FactorsThroughBombieriMoments readout := by
  intro hfactor
  exact hseparates
    (readout_eq_zero_on_corrected_of_factorsThroughBombieriMoments hfactor)

/-- A Hermitian form vanishes when its first input is zero.  This is derived from
conjugate linearity rather than included as an extra positivity premise. -/
theorem hermitianForm_zero_left
    {T : Type*} [AddCommGroup T] [Module ℂ T]
    {space : WeilTestSpace T}
    (form : WeilHermitianForm space) (g : space.Vector) :
    form.toFun 0 g = 0 := by
  have h := form.map_smul_left (0 : ℂ) (0 : space.Vector) g
  simpa using h

/-- The canonical criterion-facing scalar observable on a supplied exact classical
model: the real diagonal after the declared linear realization. -/
noncomputable def classicalDiagonalReadout
    {T : Type*} [AddCommGroup T] [Module ℂ T]
    (model : GuinandWeilCompactSupportModel 2 T) :
    Combination 2 → ℝ :=
  fun u => WeilHermitianForm.diagonal model.form (model.realization u)

/-- The classical diagonal readout is zero on the zero coefficient vector. -/
@[simp] theorem classicalDiagonalReadout_zero
    {T : Type*} [AddCommGroup T] [Module ℂ T]
    (model : GuinandWeilCompactSupportModel 2 T) :
    classicalDiagonalReadout model (0 : Combination 2) = 0 := by
  simp [classicalDiagonalReadout, WeilHermitianForm.diagonal,
    hermitianForm_zero_left]

/-- The exact moment-only reconstruction claim for the diagonal of one supplied
classical model. -/
def ClassicalDiagonalFactorsThroughBombieriMoments
    {T : Type*} [AddCommGroup T] [Module ℂ T]
    (model : GuinandWeilCompactSupportModel 2 T) : Prop :=
  FactorsThroughBombieriMoments (classicalDiagonalReadout model)

/-- If the classical diagonal separates the corrected witness from zero, then that
diagonal cannot be reconstructed from the two Bombieri moments alone. -/
theorem no_classicalDiagonalFactorization_of_separates
    {T : Type*} [AddCommGroup T] [Module ℂ T]
    (model : GuinandWeilCompactSupportModel 2 T)
    (hseparates : classicalDiagonalReadout model correctedCoordinates ≠ 0) :
    ¬ ClassicalDiagonalFactorsThroughBombieriMoments model := by
  unfold ClassicalDiagonalFactorsThroughBombieriMoments
  apply not_factorsThroughBombieriMoments_of_separates_corrected
  simpa using hseparates

/-- Strict positivity at the corrected witness is one explicit sufficient
separation hypothesis.  It is not derived here from the arithmetic Gram or from
Bombieri's two moments. -/
theorem no_classicalDiagonalFactorization_of_positive
    {T : Type*} [AddCommGroup T] [Module ℂ T]
    (model : GuinandWeilCompactSupportModel 2 T)
    (hpositive : 0 < classicalDiagonalReadout model correctedCoordinates) :
    ¬ ClassicalDiagonalFactorsThroughBombieriMoments model :=
  no_classicalDiagonalFactorization_of_separates model (ne_of_gt hpositive)

/-- Conditional specialization to the repository's existing exact all-pairs
transport interface.  Positive scale preserves a supplied *strict* source diagonal,
so the transported classical diagonal separates the witness and cannot be
moment-only.  The strict source premise is deliberately visible and is not supplied
by the current nonnegativity theorem. -/
theorem no_classicalDiagonalFactorization_of_exactTransport
    {T : Type*} [AddCommGroup T] [Module ℂ T]
    {model : GuinandWeilCompactSupportModel 2 T}
    (transport : ExactSourceBoundTransport model)
    (hsource : 0 < correctedSourceDiagonal) :
    ¬ ClassicalDiagonalFactorsThroughBombieriMoments model := by
  apply no_classicalDiagonalFactorization_of_positive model
  change 0 < WeilHermitianForm.diagonal model.form
    (model.realization correctedCoordinates)
  rw [transport.image_diagonal_eq correctedCoordinates]
  change 0 < transport.scale * correctedSourceDiagonal
  exact mul_pos transport.scale_positive hsource

end GRWTSK.NumberTheory.Zeta.Riemann.CanonicalSquareTentBombieriMomentInformationLoss
```
