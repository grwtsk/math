/- Copyright (c) 2026 grwtsk contributors. MIT.
Human mathematical direction: grwtsk contributors. Formalization assistance: OpenAI Codex.
Mathlib results retain their upstream authorship and Apache-2.0 license. -/
import GRWTSK.Algebra.LinearAlgebra.LinearMap.FrequencyScrew
import GRWTSK.NumberTheory.ArithmeticFunctions.RationalMomentAlgebra
import Mathlib.LinearAlgebra.Determinant

set_option autoImplicit false

/-!
# A rational-moment sheaf and finite Fredholm bridge

Stalks may be heterogeneous rational vector spaces. Every edge has a declared linear
restriction map, and every stalk carries a representation of the rational Dirichlet
convolution algebra. Naturality requires restriction to intertwine every multiplication
moment operator.

Möbius inversion and the zeta arithmetic function therefore act as inverse operators on
each stalk and on every supplied spectral component. The finite Fredholm determinant below
is only the determinant of a finite-dimensional endomorphism. No trace-class theorem,
regularized infinite-dimensional determinant, Euler-product convergence, analytic
continuation, or identification with the Riemann zeta function is inferred.
-/

namespace GRWTSK.Analysis.OperatorTheory.SpectralTheory.Sheaf.RationalMomentFredholmBridge

open GRWTSK.CombinatoricsAndDiscreteMathematics.GraphTheory.RelationSandwich
open GRWTSK.NumberTheory.ArithmeticFunctions.RationalMomentAlgebra

noncomputable section

/-- A graph sheaf of rational moment representations. -/
structure MomentSheaf (V : Type*) (edge : EdgeRelation V) (Stalk : V → Type*)
    [∀ v, AddCommGroup (Stalk v)] [∀ v, Module ℚ (Stalk v)] where
  restrict : ∀ {source target}, edge source target → Stalk source →ₗ[ℚ] Stalk target
  representation : ∀ vertex, Representation (Stalk vertex)
  naturality : ∀ {source target} (arrow : edge source target) (moment : Moment),
    (restrict arrow).comp ((representation source).action moment) =
      ((representation target).action moment).comp (restrict arrow)

namespace MomentSheaf

variable {V : Type*} {edge : EdgeRelation V} {Stalk : V → Type*}
  [∀ v, AddCommGroup (Stalk v)] [∀ v, Module ℚ (Stalk v)]

/-- Compose restriction maps along a nonempty directed path. -/
def transport (sheaf : MomentSheaf V edge Stalk) :
    ∀ {source target}, Path edge source target → Stalk source →ₗ[ℚ] Stalk target
  | _, _, Path.single arrow => sheaf.restrict arrow
  | _, _, Path.tail path arrow => (sheaf.restrict arrow).comp (transport sheaf path)

/-- Every path transport intertwines every multiplication-moment operator. -/
theorem transport_naturality (sheaf : MomentSheaf V edge Stalk)
    {source target : V} (path : Path edge source target) (moment : Moment) :
    (sheaf.transport path).comp ((sheaf.representation source).action moment) =
      ((sheaf.representation target).action moment).comp (sheaf.transport path) := by
  induction path with
  | single arrow =>
      simpa [transport] using sheaf.naturality arrow moment
  | tail path arrow inductionHypothesis =>
      simp only [transport]
      rw [LinearMap.comp_assoc, inductionHypothesis, ← LinearMap.comp_assoc,
        sheaf.naturality arrow moment, LinearMap.comp_assoc]

end MomentSheaf

/-- An idempotent spectral component that commutes with every multiplication moment. -/
structure SpectralComponent {V : Type*} {edge : EdgeRelation V} {Stalk : V → Type*}
    [∀ v, AddCommGroup (Stalk v)] [∀ v, Module ℚ (Stalk v)]
    (sheaf : MomentSheaf V edge Stalk) (vertex : V) where
  projector : Module.End ℚ (Stalk vertex)
  idempotent : projector * projector = projector
  moment_commutes : ∀ moment : Moment,
    projector * (sheaf.representation vertex).action moment =
      (sheaf.representation vertex).action moment * projector

namespace SpectralComponent

variable {V : Type*} {edge : EdgeRelation V} {Stalk : V → Type*}
  [∀ v, AddCommGroup (Stalk v)] [∀ v, Module ℚ (Stalk v)]
  {sheaf : MomentSheaf V edge Stalk} {vertex : V}

@[simp]
theorem zeta_preserved (component : SpectralComponent sheaf vertex)
    (x : Stalk vertex) :
    component.projector ((sheaf.representation vertex).zetaOperator x) =
      (sheaf.representation vertex).zetaOperator (component.projector x) := by
  have equality := congrArg
    (fun operator : Module.End ℚ (Stalk vertex) => operator x)
    (component.moment_commutes zetaMoment)
  simpa [Representation.zetaOperator, Module.End.mul_apply] using equality

@[simp]
theorem mobius_preserved (component : SpectralComponent sheaf vertex)
    (x : Stalk vertex) :
    component.projector ((sheaf.representation vertex).mobiusOperator x) =
      (sheaf.representation vertex).mobiusOperator (component.projector x) := by
  have equality := congrArg
    (fun operator : Module.End ℚ (Stalk vertex) => operator x)
    (component.moment_commutes mobiusMoment)
  simpa [Representation.mobiusOperator, Module.End.mul_apply] using equality

/-- Möbius inversion is valid after projection to every supplied spectral component. -/
@[simp]
theorem mobius_zeta_on_component (component : SpectralComponent sheaf vertex)
    (x : Stalk vertex) :
    (sheaf.representation vertex).mobiusOperator
        ((sheaf.representation vertex).zetaOperator (component.projector x)) =
      component.projector x :=
  (sheaf.representation vertex).mobius_zeta_apply (component.projector x)

end SpectralComponent

/-- Finite-dimensional transfer data commuting with all rational multiplication moments.
Every endomorphism is Fredholm in this finite-dimensional surrogate; an analytic consumer
must separately supply the infinite-dimensional and determinant comparison theorems. -/
structure FiniteFredholmBridge {V : Type*} {edge : EdgeRelation V} {Stalk : V → Type*}
    [∀ v, AddCommGroup (Stalk v)] [∀ v, Module ℚ (Stalk v)]
    (sheaf : MomentSheaf V edge Stalk) (vertex : V)
    [Module.Free ℚ (Stalk vertex)] [Module.Finite ℚ (Stalk vertex)] where
  transfer : Module.End ℚ (Stalk vertex)
  moment_commutes : ∀ moment : Moment,
    transfer * (sheaf.representation vertex).action moment =
      (sheaf.representation vertex).action moment * transfer

/-- The finite determinant `det(I - qT)` attached to the transfer endomorphism. -/
def FiniteFredholmBridge.determinant
    {V : Type*} {edge : EdgeRelation V} {Stalk : V → Type*}
    [∀ v, AddCommGroup (Stalk v)] [∀ v, Module ℚ (Stalk v)]
    {sheaf : MomentSheaf V edge Stalk} {vertex : V}
    [Module.Free ℚ (Stalk vertex)] [Module.Finite ℚ (Stalk vertex)]
    (bridge : FiniteFredholmBridge sheaf vertex) (q : ℚ) : ℚ :=
  (1 - q • bridge.transfer).det

@[simp]
theorem FiniteFredholmBridge.determinant_zero
    {V : Type*} {edge : EdgeRelation V} {Stalk : V → Type*}
    [∀ v, AddCommGroup (Stalk v)] [∀ v, Module ℚ (Stalk v)]
    {sheaf : MomentSheaf V edge Stalk} {vertex : V}
    [Module.Free ℚ (Stalk vertex)] [Module.Finite ℚ (Stalk vertex)]
    (bridge : FiniteFredholmBridge sheaf vertex) :
    bridge.determinant 0 = 1 := by
  simp [FiniteFredholmBridge.determinant]

end

end GRWTSK.Analysis.OperatorTheory.SpectralTheory.Sheaf.RationalMomentFredholmBridge
