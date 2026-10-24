import Surface.Boolean.Cube.Hypercube
import Surface.Boolean.Syntax.Polish

namespace Surface.Boolean.Cube

universe u

/-- Three positions on the local edge line: left bound, active pole, right bound. -/
inductive EdgeRelaxation.Line3 where
  | left
  | center
  | right
deriving Repr, DecidableEq

/-- Coordinate labels `0, 1, 2` for the three-row line. -/
def EdgeRelaxation.Line3.coord : EdgeRelaxation.Line3 → Nat
  | .left => 0
  | .center => 1
  | .right => 2

/-- A vector over the three-row local edge line. -/
abbrev EdgeRelaxation.Vector (α : Type u) :=
  EdgeRelaxation.Line3 → α

/-- A matrix/kernel over the three-row local edge line. -/
abbrev EdgeRelaxation.Kernel (α : Type u) :=
  EdgeRelaxation.Line3 → EdgeRelaxation.Line3 → α

/-- A symbolic affine density `c + kε`. -/
structure EdgeRelaxation.EpsilonDensity where
  const : Int
  coeff : Int
deriving Repr, DecidableEq

/-- The density `0`. -/
def EdgeRelaxation.EpsilonDensity.zero : EdgeRelaxation.EpsilonDensity :=
  ⟨0, 0⟩

/-- The density `1`. -/
def EdgeRelaxation.EpsilonDensity.one : EdgeRelaxation.EpsilonDensity :=
  ⟨1, 0⟩

/-- The symbolic scale `ε`. -/
def EdgeRelaxation.EpsilonDensity.eps : EdgeRelaxation.EpsilonDensity :=
  ⟨0, 1⟩

/-- The density `1 - ε`. -/
def EdgeRelaxation.EpsilonDensity.oneMinusEps :
    EdgeRelaxation.EpsilonDensity :=
  ⟨1, -1⟩

/-- The density `1 - 2ε`. -/
def EdgeRelaxation.EpsilonDensity.oneMinusTwoEps :
    EdgeRelaxation.EpsilonDensity :=
  ⟨1, -2⟩

/-- The symbolic density `2ε`. -/
def EdgeRelaxation.EpsilonDensity.twoEps :
    EdgeRelaxation.EpsilonDensity :=
  ⟨0, 2⟩

/-- Addition of symbolic affine densities. -/
def EdgeRelaxation.EpsilonDensity.add
    (a b : EdgeRelaxation.EpsilonDensity) :
    EdgeRelaxation.EpsilonDensity :=
  ⟨a.const + b.const, a.coeff + b.coeff⟩

/-- Negation of a symbolic affine density. -/
def EdgeRelaxation.EpsilonDensity.neg
    (a : EdgeRelaxation.EpsilonDensity) :
    EdgeRelaxation.EpsilonDensity :=
  ⟨-a.const, -a.coeff⟩

/-- Subtraction of symbolic affine densities. -/
def EdgeRelaxation.EpsilonDensity.sub
    (a b : EdgeRelaxation.EpsilonDensity) :
    EdgeRelaxation.EpsilonDensity :=
  EdgeRelaxation.EpsilonDensity.add a (EdgeRelaxation.EpsilonDensity.neg b)

/-- Interpret a crisp Boolean value as an analytic density. -/
def EdgeRelaxation.EpsilonDensity.ofBool :
    Bool → EdgeRelaxation.EpsilonDensity
  | false => EdgeRelaxation.EpsilonDensity.zero
  | true => EdgeRelaxation.EpsilonDensity.one

/-- Boolean-gated scalar multiplication for applying a kernel to a crisp vector. -/
def EdgeRelaxation.EpsilonDensity.scaleBool
    (b : Bool)
    (a : EdgeRelaxation.EpsilonDensity) :
    EdgeRelaxation.EpsilonDensity :=
  if b then a else EdgeRelaxation.EpsilonDensity.zero

/-- A density is crisp when it is exactly `0` or exactly `1`. -/
def EdgeRelaxation.EpsilonDensity.IsCrisp
    (a : EdgeRelaxation.EpsilonDensity) : Prop :=
  a = EdgeRelaxation.EpsilonDensity.zero ∨
    a = EdgeRelaxation.EpsilonDensity.one

instance EdgeRelaxation.EpsilonDensity.instDecidableIsCrisp
    (a : EdgeRelaxation.EpsilonDensity) :
    Decidable (EdgeRelaxation.EpsilonDensity.IsCrisp a) := by
  unfold EdgeRelaxation.EpsilonDensity.IsCrisp
  infer_instance

theorem EdgeRelaxation.EpsilonDensity.eps_not_crisp :
    ¬ EdgeRelaxation.EpsilonDensity.IsCrisp
      EdgeRelaxation.EpsilonDensity.eps := by
  decide

theorem EdgeRelaxation.EpsilonDensity.oneMinusTwoEps_not_crisp :
    ¬ EdgeRelaxation.EpsilonDensity.IsCrisp
      EdgeRelaxation.EpsilonDensity.oneMinusTwoEps := by
  decide

theorem EdgeRelaxation.EpsilonDensity.oneMinusEps_not_crisp :
    ¬ EdgeRelaxation.EpsilonDensity.IsCrisp
      EdgeRelaxation.EpsilonDensity.oneMinusEps := by
  decide

theorem EdgeRelaxation.EpsilonDensity.twoEps_not_crisp :
    ¬ EdgeRelaxation.EpsilonDensity.IsCrisp
      EdgeRelaxation.EpsilonDensity.twoEps := by
  decide

/-- `ε + (1 - ε) = 1`. -/
theorem EdgeRelaxation.EpsilonDensity.eps_add_oneMinusEps :
    EdgeRelaxation.EpsilonDensity.add
      EdgeRelaxation.EpsilonDensity.eps
      EdgeRelaxation.EpsilonDensity.oneMinusEps =
      EdgeRelaxation.EpsilonDensity.one := by
  decide

/-- `(1 - 2ε) + 2ε = 1`. -/
theorem EdgeRelaxation.EpsilonDensity.oneMinusTwoEps_add_twoEps :
    EdgeRelaxation.EpsilonDensity.add
      EdgeRelaxation.EpsilonDensity.oneMinusTwoEps
      EdgeRelaxation.EpsilonDensity.twoEps =
      EdgeRelaxation.EpsilonDensity.one := by
  decide

/-- Sum three symbolic densities. -/
def EdgeRelaxation.sum3
    (a b c : EdgeRelaxation.EpsilonDensity) :
    EdgeRelaxation.EpsilonDensity :=
  EdgeRelaxation.EpsilonDensity.add
    (EdgeRelaxation.EpsilonDensity.add a b) c

/-- Total mass of a three-row density vector. -/
def EdgeRelaxation.total
    (v : EdgeRelaxation.Vector EdgeRelaxation.EpsilonDensity) :
    EdgeRelaxation.EpsilonDensity :=
  EdgeRelaxation.sum3
    (v .left) (v .center) (v .right)

/-- The crisp pole vector `[0,1,0]`. -/
def EdgeRelaxation.staticPole : EdgeRelaxation.Vector Bool
  | .left => false
  | .center => true
  | .right => false

/-- The same crisp pole as a `3 × 1` Boolean matrix. -/
def EdgeRelaxation.staticPoleColumn : BoolMatrix 3 1 :=
  fun i _ => decide (i.val = 1)

/--
The discrete Laplacian smoothing kernel

  [1-ε    ε      0]
  [ ε   1-2ε    ε]
  [ 0     ε    1-ε]
-/
def EdgeRelaxation.laplacianSmoothingKernel :
    EdgeRelaxation.Kernel EdgeRelaxation.EpsilonDensity
  | .left, .left => EdgeRelaxation.EpsilonDensity.oneMinusEps
  | .left, .center => EdgeRelaxation.EpsilonDensity.eps
  | .left, .right => EdgeRelaxation.EpsilonDensity.zero
  | .center, .left => EdgeRelaxation.EpsilonDensity.eps
  | .center, .center => EdgeRelaxation.EpsilonDensity.oneMinusTwoEps
  | .center, .right => EdgeRelaxation.EpsilonDensity.eps
  | .right, .left => EdgeRelaxation.EpsilonDensity.zero
  | .right, .center => EdgeRelaxation.EpsilonDensity.eps
  | .right, .right => EdgeRelaxation.EpsilonDensity.oneMinusEps

/-- Apply a symbolic kernel to a crisp Boolean three-row vector. -/
def EdgeRelaxation.applyKernelToBool
    (K : EdgeRelaxation.Kernel EdgeRelaxation.EpsilonDensity)
    (v : EdgeRelaxation.Vector Bool) :
    EdgeRelaxation.Vector EdgeRelaxation.EpsilonDensity :=
  fun i =>
    EdgeRelaxation.sum3
      (EdgeRelaxation.EpsilonDensity.scaleBool (v .left) (K i .left))
      (EdgeRelaxation.EpsilonDensity.scaleBool (v .center) (K i .center))
      (EdgeRelaxation.EpsilonDensity.scaleBool (v .right) (K i .right))

/-- The expected relaxed pole: `[ε, 1 - 2ε, ε]`. -/
def EdgeRelaxation.relaxedPoleFormula :
    EdgeRelaxation.Vector EdgeRelaxation.EpsilonDensity
  | .left => EdgeRelaxation.EpsilonDensity.eps
  | .center => EdgeRelaxation.EpsilonDensity.oneMinusTwoEps
  | .right => EdgeRelaxation.EpsilonDensity.eps

/-- The pole after Laplacian ε-relaxation. -/
def EdgeRelaxation.relaxedPoleVector :
    EdgeRelaxation.Vector EdgeRelaxation.EpsilonDensity :=
  EdgeRelaxation.applyKernelToBool
    EdgeRelaxation.laplacianSmoothingKernel
    EdgeRelaxation.staticPole

@[simp] theorem EdgeRelaxation.relaxedPole_left :
    EdgeRelaxation.relaxedPoleVector .left =
      EdgeRelaxation.EpsilonDensity.eps := by
  decide

@[simp] theorem EdgeRelaxation.relaxedPole_center :
    EdgeRelaxation.relaxedPoleVector .center =
      EdgeRelaxation.EpsilonDensity.oneMinusTwoEps := by
  decide

@[simp] theorem EdgeRelaxation.relaxedPole_right :
    EdgeRelaxation.relaxedPoleVector .right =
      EdgeRelaxation.EpsilonDensity.eps := by
  decide

/-- Exact symbolic multiplication result. -/
theorem EdgeRelaxation.laplacian_smoothing_formula
    (p : EdgeRelaxation.Line3) :
    EdgeRelaxation.relaxedPoleVector p =
      EdgeRelaxation.relaxedPoleFormula p := by
  cases p <;> decide

/-- The central pole drops amplitude to `1 - 2ε`. -/
theorem EdgeRelaxation.central_pole_relaxes_to_oneMinusTwoEps :
    EdgeRelaxation.relaxedPoleVector .center =
      EdgeRelaxation.EpsilonDensity.oneMinusTwoEps :=
  EdgeRelaxation.relaxedPole_center

/-- The left adjacent row receives ε-flux. -/
theorem EdgeRelaxation.left_flux_eq_epsilon :
    EdgeRelaxation.relaxedPoleVector .left =
      EdgeRelaxation.EpsilonDensity.eps :=
  EdgeRelaxation.relaxedPole_left

/-- The right adjacent row receives ε-flux. -/
theorem EdgeRelaxation.right_flux_eq_epsilon :
    EdgeRelaxation.relaxedPoleVector .right =
      EdgeRelaxation.EpsilonDensity.eps :=
  EdgeRelaxation.relaxedPole_right

/-- The ε-relaxation conserves total symbolic mass. -/
theorem EdgeRelaxation.relaxedPole_totalMass :
    EdgeRelaxation.total EdgeRelaxation.relaxedPoleVector =
      EdgeRelaxation.EpsilonDensity.one := by
  decide

/-- A directed edge of the Boolean hypercube. -/
structure EdgeRelaxation.DirectedHypercubeEdge (n : Nat) where
  source : Hypercube.Point n
  coordinate : Fin n

/-- The target vertex of a directed hypercube edge. -/
def EdgeRelaxation.DirectedHypercubeEdge.target {n : Nat}
    (e : EdgeRelaxation.DirectedHypercubeEdge n) :
    Hypercube.Point n :=
  Hypercube.flip e.source e.coordinate

/--
The local three-row edge line.

The left and right bounds are actual hypercube vertices. The center is the
orthogonal activation pole, so it is represented by `none`.
-/
def EdgeRelaxation.DirectedHypercubeEdge.vertexAt {n : Nat}
    (e : EdgeRelaxation.DirectedHypercubeEdge n) :
    EdgeRelaxation.Line3 → Option (Hypercube.Point n)
  | .left => some e.source
  | .center => none
  | .right => some (EdgeRelaxation.DirectedHypercubeEdge.target e)

/-- The crisp activation profile attached to a directed hypercube edge. -/
def EdgeRelaxation.DirectedHypercubeEdge.activation {n : Nat}
    (_e : EdgeRelaxation.DirectedHypercubeEdge n) :
    EdgeRelaxation.Vector Bool :=
  EdgeRelaxation.staticPole

/-- The ε-relaxed activation profile attached to a directed hypercube edge. -/
def EdgeRelaxation.DirectedHypercubeEdge.relaxedActivation {n : Nat}
    (_e : EdgeRelaxation.DirectedHypercubeEdge n) :
    EdgeRelaxation.Vector EdgeRelaxation.EpsilonDensity :=
  EdgeRelaxation.relaxedPoleVector

/-- Analytic fuzzy-density expressions. -/
inductive EdgeRelaxation.DensityExpr where
  | density : EdgeRelaxation.EpsilonDensity → EdgeRelaxation.DensityExpr
  | neg : EdgeRelaxation.DensityExpr → EdgeRelaxation.DensityExpr
  | conj : EdgeRelaxation.DensityExpr → EdgeRelaxation.DensityExpr →
      EdgeRelaxation.DensityExpr
  | disj : EdgeRelaxation.DensityExpr → EdgeRelaxation.DensityExpr →
      EdgeRelaxation.DensityExpr
  | impl : EdgeRelaxation.DensityExpr → EdgeRelaxation.DensityExpr →
      EdgeRelaxation.DensityExpr
  | eqv : EdgeRelaxation.DensityExpr → EdgeRelaxation.DensityExpr →
      EdgeRelaxation.DensityExpr
  | nand : EdgeRelaxation.DensityExpr → EdgeRelaxation.DensityExpr →
      EdgeRelaxation.DensityExpr
deriving Repr, DecidableEq

/-- Syntactic crispness for a density expression. -/
def EdgeRelaxation.DensityExpr.IsCrisp :
    EdgeRelaxation.DensityExpr → Prop
  | .density d => EdgeRelaxation.EpsilonDensity.IsCrisp d
  | _ => False

instance EdgeRelaxation.DensityExpr.instDecidableIsCrisp
    (e : EdgeRelaxation.DensityExpr) :
    Decidable (EdgeRelaxation.DensityExpr.IsCrisp e) := by
  cases e <;>
    simp [EdgeRelaxation.DensityExpr.IsCrisp] <;>
    infer_instance

/-- A fuzzy valuation assigns an analytic density to each atom. -/
abbrev EdgeRelaxation.FuzzyTree.Valuation (α : Type u) :=
  α → EdgeRelaxation.EpsilonDensity

/-- Evaluate a Boolean tree into an analytic fuzzy-density expression. -/
def EdgeRelaxation.FuzzyTree.eval
    (ρ : EdgeRelaxation.FuzzyTree.Valuation α) :
    FormulaTree α → EdgeRelaxation.DensityExpr
  | .var a => .density (ρ a)
  | .falsum => .density EdgeRelaxation.EpsilonDensity.zero
  | .truth => .density EdgeRelaxation.EpsilonDensity.one
  | .neg p => .neg (EdgeRelaxation.FuzzyTree.eval ρ p)
  | .conj p q => .conj
      (EdgeRelaxation.FuzzyTree.eval ρ p)
      (EdgeRelaxation.FuzzyTree.eval ρ q)
  | .disj p q => .disj
      (EdgeRelaxation.FuzzyTree.eval ρ p)
      (EdgeRelaxation.FuzzyTree.eval ρ q)
  | .impl p q => .impl
      (EdgeRelaxation.FuzzyTree.eval ρ p)
      (EdgeRelaxation.FuzzyTree.eval ρ q)
  | .eqv p q => .eqv
      (EdgeRelaxation.FuzzyTree.eval ρ p)
      (EdgeRelaxation.FuzzyTree.eval ρ q)
  | .nand p q => .nand
      (EdgeRelaxation.FuzzyTree.eval ρ p)
      (EdgeRelaxation.FuzzyTree.eval ρ q)

/-- The relaxed three-row pole as a fuzzy valuation. -/
def EdgeRelaxation.relaxedValuation :
    EdgeRelaxation.FuzzyTree.Valuation EdgeRelaxation.Line3 :=
  EdgeRelaxation.relaxedPoleVector

/-- The active root/pole as a unary Boolean tree. -/
def EdgeRelaxation.activeRootTree : FormulaTree EdgeRelaxation.Line3 :=
  .var .center

/-- The full crisp bounded-pole tree. -/
def EdgeRelaxation.boundedUnaryTree : FormulaTree EdgeRelaxation.Line3 :=
  .conj
    (.neg (.var .left))
    (.conj (.var .center) (.neg (.var .right)))

/-- Polish encoding of the bounded unary activation tree. -/
def EdgeRelaxation.boundedUnaryTreePolish :
    List (Prefix.StrictToken EdgeRelaxation.Line3) :=
  FormulaTree.toStrictPolish EdgeRelaxation.boundedUnaryTree

/-- The crisp static pole satisfies the bounded unary tree. -/
theorem EdgeRelaxation.static_boundedUnaryTree_eval :
    FormulaTree.eval EdgeRelaxation.staticPole
      EdgeRelaxation.boundedUnaryTree = true := by
  decide

/-- The active root relaxes to `1 - 2ε`. -/
theorem EdgeRelaxation.activeRootTree_relaxed_eval :
    EdgeRelaxation.FuzzyTree.eval
        EdgeRelaxation.relaxedValuation
        EdgeRelaxation.activeRootTree =
      EdgeRelaxation.DensityExpr.density
        EdgeRelaxation.EpsilonDensity.oneMinusTwoEps := by
  decide

/-- The ε-relaxed active root is not syntactically crisp. -/
theorem EdgeRelaxation.activeRootTree_relaxed_not_crisp :
    ¬ EdgeRelaxation.DensityExpr.IsCrisp
      (EdgeRelaxation.FuzzyTree.eval
        EdgeRelaxation.relaxedValuation
        EdgeRelaxation.activeRootTree) := by
  rw [EdgeRelaxation.activeRootTree_relaxed_eval]
  simpa [EdgeRelaxation.DensityExpr.IsCrisp] using
    EdgeRelaxation.EpsilonDensity.oneMinusTwoEps_not_crisp

/-- The bounded unary tree becomes a fuzzy analytic expression under relaxation. -/
theorem EdgeRelaxation.boundedUnaryTree_relaxed_not_crisp :
    ¬ EdgeRelaxation.DensityExpr.IsCrisp
      (EdgeRelaxation.FuzzyTree.eval
        EdgeRelaxation.relaxedValuation
        EdgeRelaxation.boundedUnaryTree) := by
  simp [EdgeRelaxation.boundedUnaryTree,
    EdgeRelaxation.FuzzyTree.eval,
    EdgeRelaxation.DensityExpr.IsCrisp]

/-- Formal softening theorem. -/
theorem EdgeRelaxation.epsilon_relaxation_softens_static_tree :
    (∀ p : EdgeRelaxation.Line3,
        ¬ EdgeRelaxation.EpsilonDensity.IsCrisp
          (EdgeRelaxation.relaxedPoleVector p)) ∧
      ¬ EdgeRelaxation.DensityExpr.IsCrisp
        (EdgeRelaxation.FuzzyTree.eval
          EdgeRelaxation.relaxedValuation
          EdgeRelaxation.activeRootTree) := by
  constructor
  · intro p
    cases p <;> decide
  · exact EdgeRelaxation.activeRootTree_relaxed_not_crisp

/-- Pointwise Boolean complement of a three-row vector. -/
def EdgeRelaxation.vecCompl (v : EdgeRelaxation.Vector Bool) :
    EdgeRelaxation.Vector Bool :=
  fun p => !(v p)

/-- Pointwise Boolean conjunction of three-row vectors. -/
def EdgeRelaxation.vecMeet
    (u v : EdgeRelaxation.Vector Bool) :
    EdgeRelaxation.Vector Bool :=
  fun p => u p && v p

/-- Pointwise Boolean disjunction of three-row vectors. -/
def EdgeRelaxation.vecJoin
    (u v : EdgeRelaxation.Vector Bool) :
    EdgeRelaxation.Vector Bool :=
  fun p => u p || v p

/-- Pointwise addition of symbolic density vectors. -/
def EdgeRelaxation.addDensityVec
    (u v : EdgeRelaxation.Vector EdgeRelaxation.EpsilonDensity) :
    EdgeRelaxation.Vector EdgeRelaxation.EpsilonDensity :=
  fun p => EdgeRelaxation.EpsilonDensity.add (u p) (v p)

/-- The centered pole vector `[0,1,0]`. -/
def EdgeRelaxation.centeredPole : EdgeRelaxation.Vector Bool :=
  EdgeRelaxation.staticPole

/-- The boundary-shell vector `[1,0,1]`, the pointwise complement of the pole. -/
def EdgeRelaxation.boundaryShell : EdgeRelaxation.Vector Bool
  | .left => true
  | .center => false
  | .right => true

/-- The bottom boundary vector `[0,0,0]`. -/
def EdgeRelaxation.bottomBoundary : EdgeRelaxation.Vector Bool :=
  fun _ => false

/-- The top boundary vector `[1,1,1]`. -/
def EdgeRelaxation.topBoundary : EdgeRelaxation.Vector Bool :=
  fun _ => true

/-- The density bottom field `[0,0,0]`. -/
def EdgeRelaxation.densityBottom :
    EdgeRelaxation.Vector EdgeRelaxation.EpsilonDensity :=
  fun _ => EdgeRelaxation.EpsilonDensity.zero

/-- The density top field `[1,1,1]`. -/
def EdgeRelaxation.densityTop :
    EdgeRelaxation.Vector EdgeRelaxation.EpsilonDensity :=
  fun _ => EdgeRelaxation.EpsilonDensity.one

/-- The four fundamental local Boolean states. -/
def EdgeRelaxation.fundamentalStates :
    List (EdgeRelaxation.Vector Bool) :=
  [ EdgeRelaxation.centeredPole
  , EdgeRelaxation.boundaryShell
  , EdgeRelaxation.bottomBoundary
  , EdgeRelaxation.topBoundary
  ]

/-- Boolean orthogonality, expressed as disjoint support. -/
def EdgeRelaxation.BooleanOrthogonal
    (u v : EdgeRelaxation.Vector Bool) : Prop :=
  EdgeRelaxation.vecMeet u v = EdgeRelaxation.bottomBoundary

/-- A Boolean complement pair is disjoint and jointly covers the universe. -/
def EdgeRelaxation.BooleanComplementPair
    (u v : EdgeRelaxation.Vector Bool) : Prop :=
  EdgeRelaxation.vecMeet u v = EdgeRelaxation.bottomBoundary ∧
    EdgeRelaxation.vecJoin u v = EdgeRelaxation.topBoundary

theorem EdgeRelaxation.boundaryShell_eq_compl_centeredPole :
    EdgeRelaxation.boundaryShell =
      EdgeRelaxation.vecCompl EdgeRelaxation.centeredPole := by
  funext p
  cases p <;> rfl

theorem EdgeRelaxation.centeredPole_eq_compl_boundaryShell :
    EdgeRelaxation.centeredPole =
      EdgeRelaxation.vecCompl EdgeRelaxation.boundaryShell := by
  funext p
  cases p <;> rfl

/-- `X ∧ ¬X = 0`. -/
theorem EdgeRelaxation.centeredPole_meet_boundaryShell :
    EdgeRelaxation.vecMeet
      EdgeRelaxation.centeredPole
      EdgeRelaxation.boundaryShell =
      EdgeRelaxation.bottomBoundary := by
  funext p
  cases p <;> rfl

/-- `X ∨ ¬X = 1`. -/
theorem EdgeRelaxation.centeredPole_join_boundaryShell :
    EdgeRelaxation.vecJoin
      EdgeRelaxation.centeredPole
      EdgeRelaxation.boundaryShell =
      EdgeRelaxation.topBoundary := by
  funext p
  cases p <;> rfl

/-- The centered pole and boundary shell are Boolean-orthogonal. -/
theorem EdgeRelaxation.centeredPole_orthogonal_boundaryShell :
    EdgeRelaxation.BooleanOrthogonal
      EdgeRelaxation.centeredPole
      EdgeRelaxation.boundaryShell :=
  EdgeRelaxation.centeredPole_meet_boundaryShell

/-- The centered pole and boundary shell form a Boolean complement pair. -/
theorem EdgeRelaxation.centeredPole_boundaryShell_complementPair :
    EdgeRelaxation.BooleanComplementPair
      EdgeRelaxation.centeredPole
      EdgeRelaxation.boundaryShell :=
  ⟨ EdgeRelaxation.centeredPole_meet_boundaryShell
  , EdgeRelaxation.centeredPole_join_boundaryShell
  ⟩

/-- Apply the ε-Laplacian relaxation flow to a crisp Boolean vector. -/
def EdgeRelaxation.relax (v : EdgeRelaxation.Vector Bool) :
    EdgeRelaxation.Vector EdgeRelaxation.EpsilonDensity :=
  EdgeRelaxation.applyKernelToBool
    EdgeRelaxation.laplacianSmoothingKernel v

/-- Relaxed centered pole: `[ε, 1 - 2ε, ε]`. -/
def EdgeRelaxation.relaxedCenteredPoleFormula :
    EdgeRelaxation.Vector EdgeRelaxation.EpsilonDensity :=
  EdgeRelaxation.relaxedPoleFormula

/-- Relaxed boundary shell: `[1 - ε, 2ε, 1 - ε]`. -/
def EdgeRelaxation.relaxedBoundaryShellFormula :
    EdgeRelaxation.Vector EdgeRelaxation.EpsilonDensity
  | .left => EdgeRelaxation.EpsilonDensity.oneMinusEps
  | .center => EdgeRelaxation.EpsilonDensity.twoEps
  | .right => EdgeRelaxation.EpsilonDensity.oneMinusEps

theorem EdgeRelaxation.relax_centeredPole (p : EdgeRelaxation.Line3) :
    EdgeRelaxation.relax EdgeRelaxation.centeredPole p =
      EdgeRelaxation.relaxedCenteredPoleFormula p := by
  exact EdgeRelaxation.laplacian_smoothing_formula p

theorem EdgeRelaxation.relax_boundaryShell (p : EdgeRelaxation.Line3) :
    EdgeRelaxation.relax EdgeRelaxation.boundaryShell p =
      EdgeRelaxation.relaxedBoundaryShellFormula p := by
  cases p <;> decide

/-- The bottom boundary has no gradient and is invariant under relaxation. -/
theorem EdgeRelaxation.relax_bottomBoundary :
    EdgeRelaxation.relax EdgeRelaxation.bottomBoundary =
      EdgeRelaxation.densityBottom := by
  funext p
  cases p <;> decide

/-- The top boundary has no gradient and is invariant under relaxation. -/
theorem EdgeRelaxation.relax_topBoundary :
    EdgeRelaxation.relax EdgeRelaxation.topBoundary =
      EdgeRelaxation.densityTop := by
  funext p
  cases p <;> decide

/-- The static logical endpoints are invariant under diffusion. -/
theorem EdgeRelaxation.static_boundaries_invariant :
    EdgeRelaxation.relax EdgeRelaxation.bottomBoundary =
        EdgeRelaxation.densityBottom ∧
      EdgeRelaxation.relax EdgeRelaxation.topBoundary =
        EdgeRelaxation.densityTop :=
  ⟨EdgeRelaxation.relax_bottomBoundary,
   EdgeRelaxation.relax_topBoundary⟩

/-- The pole and shell superimpose to the homogeneous universe field. -/
theorem EdgeRelaxation.relaxed_pole_shell_superpose_to_top :
    EdgeRelaxation.addDensityVec
      (EdgeRelaxation.relax EdgeRelaxation.centeredPole)
      (EdgeRelaxation.relax EdgeRelaxation.boundaryShell) =
      EdgeRelaxation.densityTop := by
  funext p
  cases p <;> decide

/-- The centered pole relaxes into a non-crisp density at every coordinate. -/
theorem EdgeRelaxation.relaxed_centeredPole_not_crisp :
    ∀ p : EdgeRelaxation.Line3,
      ¬ EdgeRelaxation.EpsilonDensity.IsCrisp
        (EdgeRelaxation.relax EdgeRelaxation.centeredPole p) := by
  intro p
  cases p <;> decide

/-- The boundary shell relaxes into a non-crisp density at every coordinate. -/
theorem EdgeRelaxation.relaxed_boundaryShell_not_crisp :
    ∀ p : EdgeRelaxation.Line3,
      ¬ EdgeRelaxation.EpsilonDensity.IsCrisp
        (EdgeRelaxation.relax EdgeRelaxation.boundaryShell p) := by
  intro p
  cases p <;> decide

/-- The four local state labels used as columns in the structural matrix. -/
inductive EdgeRelaxation.FundamentalState where
  | pole
  | shell
  | bottom
  | top
deriving Repr, DecidableEq

/-- Convert a fundamental state label into its three-row Boolean vector. -/
def EdgeRelaxation.FundamentalState.toVector :
    EdgeRelaxation.FundamentalState → EdgeRelaxation.Vector Bool
  | .pole => EdgeRelaxation.centeredPole
  | .shell => EdgeRelaxation.boundaryShell
  | .bottom => EdgeRelaxation.bottomBoundary
  | .top => EdgeRelaxation.topBoundary

/-- Interpret a row of a `3 × 4` matrix as a local line coordinate. -/
def EdgeRelaxation.lineOfFin3 (i : Fin 3) : EdgeRelaxation.Line3 :=
  match i.val with
  | 0 => .left
  | 1 => .center
  | _ => .right

/-- Interpret a column of a `3 × 4` matrix as one of the four states. -/
def EdgeRelaxation.stateOfFin4
    (j : Fin 4) : EdgeRelaxation.FundamentalState :=
  match j.val with
  | 0 => .pole
  | 1 => .shell
  | 2 => .bottom
  | _ => .top

/-- The four vectors stacked horizontally as a `3 × 4` Boolean matrix. -/
def EdgeRelaxation.fundamentalStateMatrix : BoolMatrix 3 4 :=
  fun i j =>
    EdgeRelaxation.FundamentalState.toVector
      (EdgeRelaxation.stateOfFin4 j)
      (EdgeRelaxation.lineOfFin3 i)

/-- Two input wires for evaluating operator nodes over vector-valued inputs. -/
inductive EdgeRelaxation.Wire where
  | x
  | y
deriving Repr, DecidableEq

/-- A row-wise valuation induced by two three-row Boolean vectors. -/
def EdgeRelaxation.wireValuation
    (u v : EdgeRelaxation.Vector Bool)
    (p : EdgeRelaxation.Line3) :
    Valuation EdgeRelaxation.Wire
  | .x => u p
  | .y => v p

/-- Evaluate a Boolean tree pointwise over two vector-valued inputs. -/
def EdgeRelaxation.evalTreeOverVectors
    (u v : EdgeRelaxation.Vector Bool)
    (t : FormulaTree EdgeRelaxation.Wire) :
    EdgeRelaxation.Vector Bool :=
  fun p => FormulaTree.eval (EdgeRelaxation.wireValuation u v p) t

/-- Polish/tree form of an AND node receiving two vector-valued inputs. -/
def EdgeRelaxation.andNode : FormulaTree EdgeRelaxation.Wire :=
  .conj (.var .x) (.var .y)

/-- Polish/tree form of an OR node receiving two vector-valued inputs. -/
def EdgeRelaxation.orNode : FormulaTree EdgeRelaxation.Wire :=
  .disj (.var .x) (.var .y)

/-- Strict Polish serialization of the vector AND operator: `K x y`. -/
def EdgeRelaxation.andNodePolish :
    List (Prefix.StrictToken EdgeRelaxation.Wire) :=
  FormulaTree.toStrictPolish EdgeRelaxation.andNode

/-- Strict Polish serialization of the vector OR operator: `A x y`. -/
def EdgeRelaxation.orNodePolish :
    List (Prefix.StrictToken EdgeRelaxation.Wire) :=
  FormulaTree.toStrictPolish EdgeRelaxation.orNode

/-- Feeding `[0,1,0]` and `[1,0,1]` to AND yields `[0,0,0]`. -/
theorem EdgeRelaxation.center_shell_andNode :
    EdgeRelaxation.evalTreeOverVectors
        EdgeRelaxation.centeredPole
        EdgeRelaxation.boundaryShell
        EdgeRelaxation.andNode =
      EdgeRelaxation.bottomBoundary := by
  funext p
  cases p <;> rfl

/-- Feeding `[0,1,0]` and `[1,0,1]` to OR yields `[1,1,1]`. -/
theorem EdgeRelaxation.center_shell_orNode :
    EdgeRelaxation.evalTreeOverVectors
        EdgeRelaxation.centeredPole
        EdgeRelaxation.boundaryShell
        EdgeRelaxation.orNode =
      EdgeRelaxation.topBoundary := by
  funext p
  cases p <;> rfl

/-- A row-wise fuzzy valuation induced by two density vectors. -/
def EdgeRelaxation.fuzzyWireValuation
    (u v : EdgeRelaxation.Vector EdgeRelaxation.EpsilonDensity)
    (p : EdgeRelaxation.Line3) :
    EdgeRelaxation.FuzzyTree.Valuation EdgeRelaxation.Wire
  | .x => u p
  | .y => v p

/-- Evaluate a Boolean tree pointwise over two fuzzy-density vector inputs. -/
def EdgeRelaxation.evalFuzzyTreeOverVectors
    (u v : EdgeRelaxation.Vector EdgeRelaxation.EpsilonDensity)
    (t : FormulaTree EdgeRelaxation.Wire) :
    EdgeRelaxation.Line3 → EdgeRelaxation.DensityExpr :=
  fun p =>
    EdgeRelaxation.FuzzyTree.eval
      (EdgeRelaxation.fuzzyWireValuation u v p) t

/-- Relaxed AND output. -/
def EdgeRelaxation.relaxedAndNodeOutput :
    EdgeRelaxation.Line3 → EdgeRelaxation.DensityExpr :=
  EdgeRelaxation.evalFuzzyTreeOverVectors
    (EdgeRelaxation.relax EdgeRelaxation.centeredPole)
    (EdgeRelaxation.relax EdgeRelaxation.boundaryShell)
    EdgeRelaxation.andNode

/-- Relaxed OR output. -/
def EdgeRelaxation.relaxedOrNodeOutput :
    EdgeRelaxation.Line3 → EdgeRelaxation.DensityExpr :=
  EdgeRelaxation.evalFuzzyTreeOverVectors
    (EdgeRelaxation.relax EdgeRelaxation.centeredPole)
    (EdgeRelaxation.relax EdgeRelaxation.boundaryShell)
    EdgeRelaxation.orNode

/-- The relaxed AND-node output is no longer syntactically crisp. -/
theorem EdgeRelaxation.relaxedAndNodeOutput_not_crisp :
    ∀ p : EdgeRelaxation.Line3,
      ¬ EdgeRelaxation.DensityExpr.IsCrisp
        (EdgeRelaxation.relaxedAndNodeOutput p) := by
  intro p
  cases p <;>
    simp [EdgeRelaxation.relaxedAndNodeOutput,
      EdgeRelaxation.evalFuzzyTreeOverVectors,
      EdgeRelaxation.fuzzyWireValuation,
      EdgeRelaxation.andNode,
      EdgeRelaxation.FuzzyTree.eval,
      EdgeRelaxation.DensityExpr.IsCrisp]

/-- The relaxed OR-node output is no longer syntactically crisp. -/
theorem EdgeRelaxation.relaxedOrNodeOutput_not_crisp :
    ∀ p : EdgeRelaxation.Line3,
      ¬ EdgeRelaxation.DensityExpr.IsCrisp
        (EdgeRelaxation.relaxedOrNodeOutput p) := by
  intro p
  cases p <;>
    simp [EdgeRelaxation.relaxedOrNodeOutput,
      EdgeRelaxation.evalFuzzyTreeOverVectors,
      EdgeRelaxation.fuzzyWireValuation,
      EdgeRelaxation.orNode,
      EdgeRelaxation.FuzzyTree.eval,
      EdgeRelaxation.DensityExpr.IsCrisp]

/-- Combined structural theorem for the four local states. -/
theorem EdgeRelaxation.four_state_relaxation_summary :
    EdgeRelaxation.BooleanComplementPair
        EdgeRelaxation.centeredPole
        EdgeRelaxation.boundaryShell ∧
      EdgeRelaxation.relax EdgeRelaxation.bottomBoundary =
        EdgeRelaxation.densityBottom ∧
      EdgeRelaxation.relax EdgeRelaxation.topBoundary =
        EdgeRelaxation.densityTop ∧
      EdgeRelaxation.addDensityVec
        (EdgeRelaxation.relax EdgeRelaxation.centeredPole)
        (EdgeRelaxation.relax EdgeRelaxation.boundaryShell) =
        EdgeRelaxation.densityTop ∧
      (∀ p : EdgeRelaxation.Line3,
        ¬ EdgeRelaxation.EpsilonDensity.IsCrisp
          (EdgeRelaxation.relax EdgeRelaxation.centeredPole p)) ∧
      (∀ p : EdgeRelaxation.Line3,
        ¬ EdgeRelaxation.EpsilonDensity.IsCrisp
          (EdgeRelaxation.relax EdgeRelaxation.boundaryShell p)) := by
  exact
    ⟨ EdgeRelaxation.centeredPole_boundaryShell_complementPair
    , EdgeRelaxation.relax_bottomBoundary
    , EdgeRelaxation.relax_topBoundary
    , EdgeRelaxation.relaxed_pole_shell_superpose_to_top
    , EdgeRelaxation.relaxed_centeredPole_not_crisp
    , EdgeRelaxation.relaxed_boundaryShell_not_crisp
    ⟩

end Surface.Boolean.Cube
