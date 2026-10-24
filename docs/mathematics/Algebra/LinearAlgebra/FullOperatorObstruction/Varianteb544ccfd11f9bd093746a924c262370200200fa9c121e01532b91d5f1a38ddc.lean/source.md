# Complete source: GRWTSK.Algebra.LinearAlgebra.FullOperatorObstruction.Varianteb544ccfd11f9bd093746a924c262370200200fa9c121e01532b91d5f1a38ddc

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `ef1e946065fc6d69587f912f210d5ccac60c8a15` · SHA-256 `eb544ccfd11f9bd093746a924c262370200200fa9c121e01532b91d5f1a38ddc`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
module

public meta import Surface.Core.Classification
public import Surface.Core.PrimeLattice.PolarizedGram
public import Mathlib.Analysis.InnerProductSpace.PiL2
public import Mathlib.Analysis.Normed.Operator.NormedSpace
public import Mathlib.Data.Matrix.Basic
import Mathlib.Tactic

/-!
# Full-operator obstructions

Two exact finite-dimensional facts prevent a full-space packet operator norm
from being the conductor-three cancellation theorem:

* unit phases only conjugate a Gram operator by a unitary, preserving its
  norm;
* an all-ones rectangular cutoff block has a large singular mode.

Neither fact uses arithmetic coefficients or an asymptotic hypothesis.
-/

public section

namespace Surface.Core.TypeII.FullOperatorObstruction

noncomputable section

open Surface.Core.PrimeLattice.MomentPath
open Surface.Core.PrimeLattice.PolarizedGram

/-- Canonical re-export at the Type II boundary: arbitrary coordinatewise
unit phases, including conductor-three signs, cannot reduce the full Gram
operator norm. -/
@[surface_novel, surface_published]
theorem unitPhaseGram_norm_invariant {N : ℕ}
    (frame : ConductorThreeCoefficientPacketFrame N)
    (phase : frame.Atom → ℂˣ)
    (hphase : ∀ atom, ‖(phase atom : ℂ)‖ = 1) :
    ‖polarizedGramOperator frame phase hphase‖ =
      ‖packetGramOperator frame‖ :=
  polarizedGram_norm_eq_gram_norm frame phase hphase

/-- Rectangular matrix whose every entry is one. -/
@[expose]
def allOnesRectangularMatrix (Left Right : Type*) : Matrix Left Right ℂ :=
  fun _ _ ↦ 1

/-- Continuous operator represented by the all-ones rectangular matrix on
finite Euclidean coefficient spaces. -/
@[expose]
def allOnesRectangularOperator
    (Left Right : Type*) [Fintype Left] [Fintype Right] [DecidableEq Right] :
    EuclideanSpace ℂ Right →L[ℂ] EuclideanSpace ℂ Left :=
  (Matrix.toEuclideanLin
    (allOnesRectangularMatrix Left Right)).toContinuousLinearMap

/-- The unnormalized constant-one vector. -/
@[expose]
def constantOneVector (Index : Type*) [Fintype Index] :
    EuclideanSpace ℂ Index :=
  WithLp.toLp 2 (fun _ ↦ 1)

/-- The all-ones operator sends the constant right vector to right-cardinality
times the constant left vector.  This is its explicit large singular mode.
-/
@[surface_novel, surface_published]
theorem allOnesRectangularOperator_constant
    (Left Right : Type*) [Fintype Left] [Fintype Right]
    [DecidableEq Right] :
    allOnesRectangularOperator Left Right (constantOneVector Right) =
      (Fintype.card Right : ℂ) • constantOneVector Left := by
  ext left
  simp [allOnesRectangularOperator, allOnesRectangularMatrix,
    constantOneVector, Matrix.toLpLin_apply, Matrix.mulVec,
    dotProduct]

/-- Squared norm of the constant-one Euclidean vector. -/
@[surface_novel, surface_published]
theorem constantOneVector_norm_sq (Index : Type*) [Fintype Index] :
    ‖constantOneVector Index‖ ^ 2 = (Fintype.card Index : ℝ) := by
  rw [EuclideanSpace.norm_sq_eq]
  simp [constantOneVector]

/-- The full operator norm of an all-ones `Left × Right` block is at least
the square root of `card Left * card Right`, stated without square roots:

`card Left * card Right ≤ ‖J‖²`.

This is enough to rule out an `N^ε` full-space bound whenever both sides of
the below-hyperbola rectangle grow polynomially. -/
@[surface_novel, surface_published]
theorem allOnesRectangularOperator_card_mul_le_norm_sq
    (Left Right : Type*) [Fintype Left] [Fintype Right]
    [DecidableEq Right] [Nonempty Right] :
    (Fintype.card Left : ℝ) * (Fintype.card Right : ℝ) ≤
      ‖allOnesRectangularOperator Left Right‖ ^ 2 := by
  let J := allOnesRectangularOperator Left Right
  let v := constantOneVector Right
  have happly :
      J v = (Fintype.card Right : ℂ) • constantOneVector Left :=
    allOnesRectangularOperator_constant Left Right
  have hbound : ‖J v‖ ≤ ‖J‖ * ‖v‖ := J.le_opNorm v
  have hbound_sq : ‖J v‖ ^ 2 ≤ (‖J‖ * ‖v‖) ^ 2 :=
    (sq_le_sq₀ (norm_nonneg _) <|
      mul_nonneg (norm_nonneg _) (norm_nonneg _)).2 hbound
  have hleft :
      ‖J v‖ ^ 2 =
        (Fintype.card Right : ℝ) ^ 2 * (Fintype.card Left : ℝ) := by
    rw [happly, norm_smul, mul_pow, constantOneVector_norm_sq]
    norm_cast
  have hright :
      (‖J‖ * ‖v‖) ^ 2 =
        ‖J‖ ^ 2 * (Fintype.card Right : ℝ) := by
    rw [mul_pow, constantOneVector_norm_sq]
  rw [hleft, hright] at hbound_sq
  have hcard_pos : 0 < (Fintype.card Right : ℝ) := by
    exact_mod_cast Fintype.card_pos
  nlinarith

end

end Surface.Core.TypeII.FullOperatorObstruction
```
