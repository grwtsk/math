# Complete source: GRWTSK.Algebra.LinearAlgebra.ToyStripBlend.Variant31d12136ec8555f7939d4bb5c3c0169940fa6799fcfe28cb8c15a6d1c9d20220

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `23389fd5809611e29e06a9d7321a3dc50dae3b8e` · SHA-256 `3bd5e2f5afad12a4073233f40188dc62561eea50e1339b3a61cd4b44a4724ad6`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Algebra.LinearAlgebra
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Algebra.LinearAlgebra.EdgeRelaxationMatrix2.Variantc094de5bc45dd3a5d966ed9b1b386f1e8e5b6f4f28f122170eb7c0d0a9f46dc8","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"c094de5bc45dd3a5d966ed9b1b386f1e8e5b6f4f28f122170eb7c0d0a9f46dc8","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.LinearAlgebra.SourceCorpus.EdgeRelaxationMatrix2.Variantc094de5bc45dd3a5d966ed9b1b386f1e8e5b6f4f28f122170eb7c0d0a9f46dc8","mathematical_subject":"Algebra.LinearAlgebra","original_sha256":"c094de5bc45dd3a5d966ed9b1b386f1e8e5b6f4f28f122170eb7c0d0a9f46dc8","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/07/21/Surface/formal/.surface/overlays/session:2e628ee6531784ebd1c16c0e/workspace/lib/Boolean/Cube/ToyStripBlend.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Boolean.Cube.EdgeRelaxation


namespace GRWTSK.Algebra.LinearAlgebra.EdgeRelaxationMatrix2.Variantc094de5bc45dd3a5d966ed9b1b386f1e8e5b6f4f28f122170eb7c0d0a9f46dc8

namespace Boolean.Cube

universe u

/-!
Toy strip blend bridge for Boolean edge relaxation.

Refinement map:

* Boolean Hypercube and Edge Relaxation:
  `EdgeRelaxation.toyStripBlendState` provides the continuous-fuzzy analytic
  bridge from exact discrete Boolean states to symbolic density expressions.
  The pointwise ε-blend sends the pole/shell basis into `[ε, 1 - ε, ε]`.

* Syntax and Tree Decompositions:
  `Tree`, strict Łukasiewicz-style Polish notation, and variadic
  variadic nodes provide deterministic, parenthesis-free serialization and
  flattened associative logic.  The toy strip blend valuation can evaluate parsed Polish
  trees as fuzzy analytic expressions.

* Adjacency and SOP Matrix Encodings:
  The surrounding `Tree.Graph`, `Tree.MatrixEncoding`, and `Tree.SOP` modules
  map hierarchical logic trees into reachability matrices and PLA-style
  `SOPMatrix` structures for dependency verification and flattened hardware-like
  encodings.
-/

/-- A minimal `2 × 2` matrix record. -/
structure EdgeRelaxation.Matrix2 (R : Type u) where
  m00 : R
  m01 : R
  m10 : R
  m11 : R
deriving Repr, DecidableEq

/-- The standard real `2 × 2` matrix representation of `x + iy`. -/
def EdgeRelaxation.complexMatrixInt (x y : Int) :
    EdgeRelaxation.Matrix2 Int where
  m00 := x
  m01 := -y
  m10 := y
  m11 := x

@[simp] theorem EdgeRelaxation.complexMatrixInt_m00 (x y : Int) :
    (EdgeRelaxation.complexMatrixInt x y).m00 = x := rfl

@[simp] theorem EdgeRelaxation.complexMatrixInt_m01 (x y : Int) :
    (EdgeRelaxation.complexMatrixInt x y).m01 = -y := rfl

@[simp] theorem EdgeRelaxation.complexMatrixInt_m10 (x y : Int) :
    (EdgeRelaxation.complexMatrixInt x y).m10 = y := rfl

@[simp] theorem EdgeRelaxation.complexMatrixInt_m11 (x y : Int) :
    (EdgeRelaxation.complexMatrixInt x y).m11 = x := rfl

/-- The real part is embedded as the saturated top state. -/
def EdgeRelaxation.realPartEmbedding
    (_x : EdgeRelaxation.EpsilonDensity) :
    EdgeRelaxation.Vector EdgeRelaxation.EpsilonDensity :=
  EdgeRelaxation.densityTop

theorem EdgeRelaxation.realPartEmbedding_eq_top
    (x : EdgeRelaxation.EpsilonDensity) :
    EdgeRelaxation.realPartEmbedding x =
      EdgeRelaxation.densityTop := rfl

/-- Boundary `Re(s) = 0`, represented as the centered pole `[0,1,0]`. -/
def EdgeRelaxation.toyBoundaryZero : EdgeRelaxation.Vector Bool :=
  EdgeRelaxation.centeredPole

/-- Boundary `Re(s) = 1`, represented as the complementary shell `[1,0,1]`. -/
def EdgeRelaxation.toyBoundaryOne : EdgeRelaxation.Vector Bool :=
  EdgeRelaxation.boundaryShell

theorem EdgeRelaxation.toyBoundaryZero_eq_centeredPole :
    EdgeRelaxation.toyBoundaryZero =
      EdgeRelaxation.centeredPole := rfl

theorem EdgeRelaxation.toyBoundaryOne_eq_boundaryShell :
    EdgeRelaxation.toyBoundaryOne =
      EdgeRelaxation.boundaryShell := rfl

/-- Pointwise ε-blending between two crisp Boolean vectors. -/
def EdgeRelaxation.blendByEpsilon
    (u v : EdgeRelaxation.Vector Bool) :
    EdgeRelaxation.Vector EdgeRelaxation.EpsilonDensity :=
  fun p =>
    EdgeRelaxation.EpsilonDensity.add
      (EdgeRelaxation.EpsilonDensity.scaleBool
        (u p) EdgeRelaxation.EpsilonDensity.oneMinusEps)
      (EdgeRelaxation.EpsilonDensity.scaleBool
        (v p) EdgeRelaxation.EpsilonDensity.eps)

/-- The symbolic toy strip blend state: `(1 - ε) · pole + ε · shell`. -/
def EdgeRelaxation.toyStripBlendState :
    EdgeRelaxation.Vector EdgeRelaxation.EpsilonDensity :=
  EdgeRelaxation.blendByEpsilon
    EdgeRelaxation.toyBoundaryZero
    EdgeRelaxation.toyBoundaryOne

/-- Closed-form toy strip blend vector `[ε, 1 - ε, ε]`. -/
def EdgeRelaxation.toyStripBlendFormula :
    EdgeRelaxation.Vector EdgeRelaxation.EpsilonDensity
  | .left => EdgeRelaxation.EpsilonDensity.eps
  | .center => EdgeRelaxation.EpsilonDensity.oneMinusEps
  | .right => EdgeRelaxation.EpsilonDensity.eps

/-- The toy strip blend expands exactly to `[ε, 1 - ε, ε]`. -/
theorem EdgeRelaxation.toyStripBlendState_formula
    (p : EdgeRelaxation.Line3) :
    EdgeRelaxation.toyStripBlendState p =
      EdgeRelaxation.toyStripBlendFormula p := by
  cases p <;> decide

@[simp] theorem EdgeRelaxation.toyStripBlend_left :
    EdgeRelaxation.toyStripBlendState .left =
      EdgeRelaxation.EpsilonDensity.eps :=
  EdgeRelaxation.toyStripBlendState_formula .left

@[simp] theorem EdgeRelaxation.toyStripBlend_center :
    EdgeRelaxation.toyStripBlendState .center =
      EdgeRelaxation.EpsilonDensity.oneMinusEps :=
  EdgeRelaxation.toyStripBlendState_formula .center

@[simp] theorem EdgeRelaxation.toyStripBlend_right :
    EdgeRelaxation.toyStripBlendState .right =
      EdgeRelaxation.EpsilonDensity.eps :=
  EdgeRelaxation.toyStripBlendState_formula .right

/-- Evaluate `c + kε` at `ε = 0`. -/
def EdgeRelaxation.EpsilonDensity.evalAtZero
    (d : EdgeRelaxation.EpsilonDensity) : Int :=
  d.const

/-- Evaluate `c + kε` at `ε = 1`. -/
def EdgeRelaxation.EpsilonDensity.evalAtOne
    (d : EdgeRelaxation.EpsilonDensity) : Int :=
  d.const + d.coeff

/-- `1 - ε` is not one of the exact Boolean constants `0` or `1`. -/
theorem EdgeRelaxation.EpsilonDensity.oneMinusEps_not_crisp_for_toyStripBlend :
    ¬ EdgeRelaxation.EpsilonDensity.IsCrisp
      EdgeRelaxation.EpsilonDensity.oneMinusEps := by
  decide

/-- Convert a crisp Boolean vector into an integer `0/1` vector. -/
def EdgeRelaxation.intVectorOfBool
    (v : EdgeRelaxation.Vector Bool) :
    EdgeRelaxation.Vector Int :=
  fun p => if v p then 1 else 0

/-- Evaluate a symbolic ε-density vector at `ε = 0`. -/
def EdgeRelaxation.evalAtZeroVector
    (v : EdgeRelaxation.Vector EdgeRelaxation.EpsilonDensity) :
    EdgeRelaxation.Vector Int :=
  fun p => EdgeRelaxation.EpsilonDensity.evalAtZero (v p)

/-- Evaluate a symbolic ε-density vector at `ε = 1`. -/
def EdgeRelaxation.evalAtOneVector
    (v : EdgeRelaxation.Vector EdgeRelaxation.EpsilonDensity) :
    EdgeRelaxation.Vector Int :=
  fun p => EdgeRelaxation.EpsilonDensity.evalAtOne (v p)

/-- At `ε = 0`, the toy strip blend collapses to the centered pole. -/
theorem EdgeRelaxation.toyStripBlend_atZero :
    EdgeRelaxation.evalAtZeroVector
        EdgeRelaxation.toyStripBlendState =
      EdgeRelaxation.intVectorOfBool
        EdgeRelaxation.toyBoundaryZero := by
  funext p
  cases p <;> decide

/-- At `ε = 1`, the toy strip blend expands to the complementary shell. -/
theorem EdgeRelaxation.toyStripBlend_atOne :
    EdgeRelaxation.evalAtOneVector
        EdgeRelaxation.toyStripBlendState =
      EdgeRelaxation.intVectorOfBool
        EdgeRelaxation.toyBoundaryOne := by
  funext p
  cases p <;> decide

/-- A half-integer value represented as `numerator / 2`. -/
structure EdgeRelaxation.HalfValue where
  numerator : Int
deriving Repr, DecidableEq

/-- `0 = 0/2`. -/
def EdgeRelaxation.HalfValue.zero : EdgeRelaxation.HalfValue :=
  ⟨0⟩

/-- `1/2`. -/
def EdgeRelaxation.HalfValue.half : EdgeRelaxation.HalfValue :=
  ⟨1⟩

/-- `1 = 2/2`. -/
def EdgeRelaxation.HalfValue.one : EdgeRelaxation.HalfValue :=
  ⟨2⟩

/-- Addition of half-integer values. -/
def EdgeRelaxation.HalfValue.add
    (a b : EdgeRelaxation.HalfValue) :
    EdgeRelaxation.HalfValue :=
  ⟨a.numerator + b.numerator⟩

/-- Negation of a half-integer value. -/
def EdgeRelaxation.HalfValue.neg
    (a : EdgeRelaxation.HalfValue) :
    EdgeRelaxation.HalfValue :=
  ⟨-a.numerator⟩

/-- Scaling a half-integer value by an integer. -/
def EdgeRelaxation.HalfValue.scaleInt
    (k : Int)
    (a : EdgeRelaxation.HalfValue) :
    EdgeRelaxation.HalfValue :=
  ⟨k * a.numerator⟩

/-- Evaluate `c + kε` at the midpoint-blend value `ε = 1/2`. -/
def EdgeRelaxation.evalAtHalf
    (d : EdgeRelaxation.EpsilonDensity) :
    EdgeRelaxation.HalfValue :=
  ⟨2 * d.const + d.coeff⟩

@[simp] theorem EdgeRelaxation.evalAtHalf_eps :
    EdgeRelaxation.evalAtHalf
        EdgeRelaxation.EpsilonDensity.eps =
      EdgeRelaxation.HalfValue.half := by
  decide

@[simp] theorem EdgeRelaxation.evalAtHalf_oneMinusEps :
    EdgeRelaxation.evalAtHalf
        EdgeRelaxation.EpsilonDensity.oneMinusEps =
      EdgeRelaxation.HalfValue.half := by
  decide

/-- Evaluate a symbolic ε-density vector at `ε = 1/2`. -/
def EdgeRelaxation.evalAtHalfVector
    (v : EdgeRelaxation.Vector EdgeRelaxation.EpsilonDensity) :
    EdgeRelaxation.Vector EdgeRelaxation.HalfValue :=
  fun p => EdgeRelaxation.evalAtHalf (v p)

/-- At `ε = 1/2`, the strip state becomes `[1/2,1/2,1/2]`. -/
def EdgeRelaxation.midpointBlendState :
    EdgeRelaxation.Vector EdgeRelaxation.HalfValue :=
  fun _ => EdgeRelaxation.HalfValue.half

/-- At `ε = 1/2`, the strip state becomes `[1/2,1/2,1/2]`. -/
theorem EdgeRelaxation.midpointBlend_is_balanced :
    EdgeRelaxation.evalAtHalfVector
        EdgeRelaxation.toyStripBlendState =
      EdgeRelaxation.midpointBlendState := by
  funext p
  cases p <;> decide

/-- At the midpoint blend, pole and shell basis weights are equal. -/
theorem EdgeRelaxation.midpointBlend_equal_basis_weights :
    EdgeRelaxation.evalAtHalf
        EdgeRelaxation.EpsilonDensity.oneMinusEps =
      EdgeRelaxation.evalAtHalf
        EdgeRelaxation.EpsilonDensity.eps := by
  decide

/-- Sum three half-integer values. -/
def EdgeRelaxation.sumHalf3
    (a b c : EdgeRelaxation.HalfValue) :
    EdgeRelaxation.HalfValue :=
  EdgeRelaxation.HalfValue.add
    (EdgeRelaxation.HalfValue.add a b) c

/-- Apply an integer matrix/kernel to a half-integer vector. -/
def EdgeRelaxation.applyIntKernelToHalfVector
    (K : EdgeRelaxation.Kernel Int)
    (v : EdgeRelaxation.Vector EdgeRelaxation.HalfValue) :
    EdgeRelaxation.Vector EdgeRelaxation.HalfValue :=
  fun i =>
    EdgeRelaxation.sumHalf3
      (EdgeRelaxation.HalfValue.scaleInt (K i .left) (v .left))
      (EdgeRelaxation.HalfValue.scaleInt (K i .center) (v .center))
      (EdgeRelaxation.HalfValue.scaleInt (K i .right) (v .right))

/-- The imaginary rotation operator on the three-row local state line. -/
def EdgeRelaxation.imaginaryRotationMatrix (y : Int) :
    EdgeRelaxation.Kernel Int
  | .left, .left => 0
  | .left, .center => -y
  | .left, .right => 0
  | .center, .left => y
  | .center, .center => 0
  | .center, .right => -y
  | .right, .left => 0
  | .right, .center => y
  | .right, .right => 0

/-- Rotate the balanced midpoint-blend state by the imaginary component `y`. -/
def EdgeRelaxation.rotatedMidpointBlend (y : Int) :
    EdgeRelaxation.Vector EdgeRelaxation.HalfValue :=
  EdgeRelaxation.applyIntKernelToHalfVector
    (EdgeRelaxation.imaginaryRotationMatrix y)
    EdgeRelaxation.midpointBlendState

/-- Closed-form rotated midpoint-blend vector `[-y/2, 0, y/2]`. -/
def EdgeRelaxation.rotatedMidpointBlendFormula (y : Int) :
    EdgeRelaxation.Vector EdgeRelaxation.HalfValue
  | .left => ⟨-y⟩
  | .center => EdgeRelaxation.HalfValue.zero
  | .right => ⟨y⟩

/-- The imaginary rotation gives antisymmetric boundary flux. -/
theorem EdgeRelaxation.rotatedMidpointBlend_formula
    (y : Int) (p : EdgeRelaxation.Line3) :
    EdgeRelaxation.rotatedMidpointBlend y p =
      EdgeRelaxation.rotatedMidpointBlendFormula y p := by
  cases p <;>
    simp [EdgeRelaxation.rotatedMidpointBlend,
      EdgeRelaxation.rotatedMidpointBlendFormula,
      EdgeRelaxation.applyIntKernelToHalfVector,
      EdgeRelaxation.imaginaryRotationMatrix,
      EdgeRelaxation.midpointBlendState,
      EdgeRelaxation.sumHalf3,
      EdgeRelaxation.HalfValue.add,
      EdgeRelaxation.HalfValue.scaleInt,
      EdgeRelaxation.HalfValue.zero,
      EdgeRelaxation.HalfValue.half] <;> omega

/-- The imaginary rotation has no central drift. -/
theorem EdgeRelaxation.rotatedMidpointBlend_center_zero (y : Int) :
    EdgeRelaxation.rotatedMidpointBlend y .center =
      EdgeRelaxation.HalfValue.zero :=
  EdgeRelaxation.rotatedMidpointBlend_formula y .center

/-- The left boundary flux is `-y/2`. -/
theorem EdgeRelaxation.rotatedMidpointBlend_left_flux (y : Int) :
    EdgeRelaxation.rotatedMidpointBlend y .left = ⟨-y⟩ :=
  EdgeRelaxation.rotatedMidpointBlend_formula y .left

/-- The right boundary flux is `y/2`. -/
theorem EdgeRelaxation.rotatedMidpointBlend_right_flux (y : Int) :
    EdgeRelaxation.rotatedMidpointBlend y .right = ⟨y⟩ :=
  EdgeRelaxation.rotatedMidpointBlend_formula y .right

/-- A fuzzy valuation over the local line, induced by the toy strip blend. -/
def EdgeRelaxation.toyStripBlendValuation :
    EdgeRelaxation.FuzzyTree.Valuation EdgeRelaxation.Line3 :=
  EdgeRelaxation.toyStripBlendState

/-- Evaluate a Boolean tree as a fuzzy expression across the toy strip blend. -/
def EdgeRelaxation.evalTreeAcrossToyStripBlend
    (t : Tree EdgeRelaxation.Line3) :
    EdgeRelaxation.DensityExpr :=
  EdgeRelaxation.FuzzyTree.eval
    EdgeRelaxation.toyStripBlendValuation t

/-- Parse strict Polish notation and evaluate it across the toy strip blend. -/
def EdgeRelaxation.evalStrictPolishAcrossToyStripBlend
    (tokens : List (Prefix.StrictToken EdgeRelaxation.Line3)) :
    Option EdgeRelaxation.DensityExpr :=
  match Tree.fromStrictPolish? tokens with
  | some t => some (EdgeRelaxation.evalTreeAcrossToyStripBlend t)
  | none => none

/-- Polish token stream for the local center variable. -/
def EdgeRelaxation.centerPolish :
    List (Prefix.StrictToken EdgeRelaxation.Line3) :=
  [.atom .center]

/-- Polish token stream for the local left boundary variable. -/
def EdgeRelaxation.leftPolish :
    List (Prefix.StrictToken EdgeRelaxation.Line3) :=
  [.atom .left]

/-- Polish token stream for the local right boundary variable. -/
def EdgeRelaxation.rightPolish :
    List (Prefix.StrictToken EdgeRelaxation.Line3) :=
  [.atom .right]

/-- Polish token stream for `K left right`, i.e. `left ∧ right`. -/
def EdgeRelaxation.boundaryAndPolish :
    List (Prefix.StrictToken EdgeRelaxation.Line3) :=
  [.op .K, .atom .left, .atom .right]

/-- Polish token stream for `A left center`, i.e. `left ∨ center`. -/
def EdgeRelaxation.leftOrCenterPolish :
    List (Prefix.StrictToken EdgeRelaxation.Line3) :=
  [.op .A, .atom .left, .atom .center]

theorem EdgeRelaxation.eval_centerPolish_acrossToyStripBlend :
    EdgeRelaxation.evalStrictPolishAcrossToyStripBlend
        EdgeRelaxation.centerPolish =
      some
        (EdgeRelaxation.DensityExpr.density
          EdgeRelaxation.EpsilonDensity.oneMinusEps) := by
  decide

theorem EdgeRelaxation.eval_leftPolish_acrossToyStripBlend :
    EdgeRelaxation.evalStrictPolishAcrossToyStripBlend
        EdgeRelaxation.leftPolish =
      some
        (EdgeRelaxation.DensityExpr.density
          EdgeRelaxation.EpsilonDensity.eps) := by
  decide

theorem EdgeRelaxation.eval_rightPolish_acrossToyStripBlend :
    EdgeRelaxation.evalStrictPolishAcrossToyStripBlend
        EdgeRelaxation.rightPolish =
      some
        (EdgeRelaxation.DensityExpr.density
          EdgeRelaxation.EpsilonDensity.eps) := by
  decide

/-- The center tree evaluates to the analytic density `1 - ε`, not a crisp bit. -/
theorem EdgeRelaxation.centerTree_acrossToyStripBlend_not_crisp :
    ¬ EdgeRelaxation.DensityExpr.IsCrisp
      (EdgeRelaxation.evalTreeAcrossToyStripBlend (.var .center)) := by
  decide

/-- A parsed Polish function across the toy strip blend is structurally fuzzy. -/
theorem EdgeRelaxation.boundaryAndPolish_acrossToyStripBlend_not_crisp :
    EdgeRelaxation.evalStrictPolishAcrossToyStripBlend
        EdgeRelaxation.boundaryAndPolish =
      some
        (EdgeRelaxation.DensityExpr.conj
          (EdgeRelaxation.DensityExpr.density
            EdgeRelaxation.EpsilonDensity.eps)
          (EdgeRelaxation.DensityExpr.density
            EdgeRelaxation.EpsilonDensity.eps)) := by
  decide

/-- Combined model theorem for the toy strip blend embedding. -/
theorem EdgeRelaxation.toyStripBlend_embedding_summary (y : Int) :
    (∀ p : EdgeRelaxation.Line3,
        EdgeRelaxation.toyStripBlendState p =
          EdgeRelaxation.toyStripBlendFormula p) ∧
      EdgeRelaxation.evalAtZeroVector
          EdgeRelaxation.toyStripBlendState =
        EdgeRelaxation.intVectorOfBool
          EdgeRelaxation.toyBoundaryZero ∧
      EdgeRelaxation.evalAtOneVector
          EdgeRelaxation.toyStripBlendState =
        EdgeRelaxation.intVectorOfBool
          EdgeRelaxation.toyBoundaryOne ∧
      EdgeRelaxation.evalAtHalfVector
          EdgeRelaxation.toyStripBlendState =
        EdgeRelaxation.midpointBlendState ∧
      (∀ p : EdgeRelaxation.Line3,
        EdgeRelaxation.rotatedMidpointBlend y p =
          EdgeRelaxation.rotatedMidpointBlendFormula y p) ∧
      ¬ EdgeRelaxation.DensityExpr.IsCrisp
        (EdgeRelaxation.evalTreeAcrossToyStripBlend (.var .center)) := by
  exact
    ⟨ EdgeRelaxation.toyStripBlendState_formula
    , EdgeRelaxation.toyStripBlend_atZero
    , EdgeRelaxation.toyStripBlend_atOne
    , EdgeRelaxation.midpointBlend_is_balanced
    , EdgeRelaxation.rotatedMidpointBlend_formula y
    , EdgeRelaxation.centerTree_acrossToyStripBlend_not_crisp
    ⟩

end Boolean.Cube
```
