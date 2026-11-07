/-
Copyright (c) 2026 grwtsk contributors. MIT.
Authors: grwtsk contributors.
SOURCE_PROOF_CANDIDATE / LEAN_ELABORATION_NOT_RUN /
FRESH_KERNEL_NOT_RUN / TRANSITIVE_AXIOM_AUDIT_NOT_RUN /
INDEPENDENT_ANALYTICAL_REVIEW_NOT_RUN.
-/
import GRWTSK.Analysis.OperatorTheory.OrderedDiffusion
import GRWTSK.Combinatorics.GraphTheory.EdgeIndexedStochasticHolonomy
import GRWTSK.Combinatorics.GraphTheory.SpinHolonomyFiniteDiffusion

/-!
# Ordered noncommutative adapters for the existing finite diffusers

This module connects `OrderedDiffuser` to two existing source-exact finite
transport families without changing their carriers or positivity claims.

## Edge-indexed stochastic holonomy

A `HolonomyStep` contains one actual `EdgeKernel` and one actual group-valued
connection.  The lifted ordered diffuser acts on the full `(vertex, group)`
fiber using `EdgeKernel.liftedStep`; the vertex diffuser uses the same kernel
but forgets the connection.  The existing one-step theorem
`EdgeKernel.lifted_marginal` supplies an `OrderedDiffuser.Hom`.  Consequently
marginalization commutes with EVERY ordered word of heterogeneous kernels and
connections.  This is the precise source-return connection:

  marginal (lifted.evolve word mass)
    = vertex.evolve word (marginal mass).

No commutativity of the group, the kernels, or the connections is assumed.
Total lifted mass is also conserved wordwise by induction from the existing
one-step conservation theorem.

The group action itself is noncommutative in general: the generic
`RightTransport.evolve_apply` theorem identifies an ordered word with the
ordered group product.  The present module does not infer that a particular
connection has noncommuting holonomy; that requires an actual pair of source
transport elements whose products differ.

## Spin-holonomy diffusion

The repository's `EventDiffusion` already separates a stochastic plain sector,
a signed odd sector, and a genuine two-sheet Markov lift.  We expose each as an
ordered diffuser indexed by the full source-labelled `EventDiffusion` object.
The existing one-step even/odd intertwining theorems become wordwise source
returns through `OrderedDiffuser.Hom.evolve_map`.

Thus noncommutativity of heterogeneous diffusion steps and signed holonomy are
retained without pretending the signed odd sector is a Markov kernel.  This is
also a hostile boundary for any future generic API: stochastic normalization,
signed source transport, and group/order information are independent fields.

Primary argument: reuse the existing one-step source-return theorems and the
new generic wordwise homomorphism theorem.  Standard finite transport algebra;
novelty not assessed.  No RH/GRH or analytic semigroup claim is made.
-/

set_option autoImplicit false
noncomputable section
open scoped BigOperators

namespace GRWTSK.CombinatoricsAndDiscreteMathematics.GraphTheory.OrderedHolonomyDiffusion

open Quiver
open GRWTSK.Analysis.OperatorTheory.OrderedDiffusion
open GRWTSK.Analysis.OperatorTheory.OrderedDiffusion.OrderedDiffuser
open GRWTSK.DifferentialGeometry.RelationalHolonomy
open GRWTSK.CombinatoricsAndDiscreteMathematics.GraphTheory.EdgeIndexedStochasticHolonomy
open GRWTSK.CombinatoricsAndDiscreteMathematics.GraphTheory.SpinHolonomyFiniteDiffusion

universe u w

section EdgeHolonomy

variable {V : Type u} [Quiver V] [Fintype V]
  [∀ a b : V, Fintype (a ⟶ b)]
variable {G : Type w} [Group G] [Fintype G]

/-- One heterogeneous stochastic-holonomy step.  The probability kernel and
connection remain separate source objects. -/
structure HolonomyStep (V : Type u) [Quiver V] [Fintype V]
    [∀ a b : V, Fintype (a ⟶ b)] (G : Type w) [Group G] [Fintype G] where
  kernel : EdgeKernel V
  connection : Connection (fun a b : V => a ⟶ b) G

/-- Full lifted ordered diffusion on the vertex/group fiber. -/
def liftedDiffuser : OrderedDiffuser (HolonomyStep V G) (V → G → ℝ) where
  step data mass := data.kernel.liftedStep data.connection mass

/-- The matching vertex-level ordered diffusion forgets only the group fiber;
it uses the identical probability kernel at each chronological step. -/
def vertexDiffuser : OrderedDiffuser (HolonomyStep V G) (V → ℝ) where
  step data mass := data.kernel.step mass

/-- Exact group-fiber marginal. -/
def marginal (mass : V → G → ℝ) : V → ℝ :=
  fun a => ∑ x : G, mass a x

/-- The existing one-step lifted marginal theorem is an exact ordered-diffuser
source return. -/
def marginalHom :
    OrderedDiffuser.Hom (liftedDiffuser (V := V) (G := G))
      (vertexDiffuser (V := V) (G := G)) where
  map := marginal
  step_map := by
    intro data mass
    funext b
    exact data.kernel.lifted_marginal data.connection mass b

/-- Marginalization commutes with every heterogeneous ordered word. -/
theorem marginal_evolve (word : List (HolonomyStep V G))
    (mass : V → G → ℝ) :
    marginal ((liftedDiffuser (V := V) (G := G)).evolve word mass) =
      (vertexDiffuser (V := V) (G := G)).evolve word (marginal mass) :=
  OrderedDiffuser.Hom.evolve_map (marginalHom (V := V) (G := G)) word mass

/-- Total mass on the full vertex/group fiber. -/
def totalMass (mass : V → G → ℝ) : ℝ :=
  ∑ a : V, ∑ x : G, mass a x

/-- Every finite ordered word of source kernels and connections conserves the
full lifted mass. -/
theorem lifted_evolve_total (word : List (HolonomyStep V G))
    (mass : V → G → ℝ) :
    totalMass ((liftedDiffuser (V := V) (G := G)).evolve word mass) =
      totalMass mass := by
  induction word generalizing mass with
  | nil => rfl
  | cons data word ih =>
      calc
        totalMass ((liftedDiffuser (V := V) (G := G)).evolve
            (data :: word) mass) =
          totalMass ((liftedDiffuser (V := V) (G := G)).evolve word
            (data.kernel.liftedStep data.connection mass)) := rfl
        _ = totalMass (data.kernel.liftedStep data.connection mass) :=
          ih (data.kernel.liftedStep data.connection mass)
        _ = totalMass mass := by
          simpa [totalMass] using
            data.kernel.lifted_total data.connection mass

end EdgeHolonomy

section SpinHolonomy

variable {V : Type u} [Quiver V] [Fintype V] [DecidableEq V]
  [Fintype (GRWTSK.CombinatoricsAndDiscreteMathematics.DirectedGraph.EdgeTrace.Event V)]

abbrev SpinStep := EventDiffusion V

/-- Ordered plain stochastic sector. -/
def spinPlainDiffuser : OrderedDiffuser (SpinStep (V := V)) (V → ℝ) where
  step D := D.plainStep

/-- Ordered signed odd sector.  This is not declared stochastic. -/
def spinSignedDiffuser : OrderedDiffuser (SpinStep (V := V)) (V → ℝ) where
  step D := D.signedStep

/-- Ordered two-sheet stochastic lift. -/
def spinLiftDiffuser :
    OrderedDiffuser (SpinStep (V := V)) (V × Bool → ℝ) where
  step D := D.liftStep

/-- The even embedding intertwines every chronological spin diffusion step. -/
def spinEvenHom :
    OrderedDiffuser.Hom (spinPlainDiffuser (V := V))
      (spinLiftDiffuser (V := V)) where
  map := EventDiffusion.evenLift
  step_map := by
    intro D f
    exact (D.liftStep_even f).symm

/-- The odd embedding intertwines every chronological signed step with the
full two-sheet Markov lift. -/
def spinOddHom :
    OrderedDiffuser.Hom (spinSignedDiffuser (V := V))
      (spinLiftDiffuser (V := V)) where
  map := EventDiffusion.oddLift
  step_map := by
    intro D f
    exact (D.liftStep_odd f).symm

/-- Wordwise even-sector return. -/
theorem spin_even_evolve (word : List (SpinStep (V := V))) (f : V → ℝ) :
    EventDiffusion.evenLift
        ((spinPlainDiffuser (V := V)).evolve word f) =
      (spinLiftDiffuser (V := V)).evolve word (EventDiffusion.evenLift f) :=
  OrderedDiffuser.Hom.evolve_map (spinEvenHom (V := V)) word f

/-- Wordwise signed odd-sector return.  This theorem preserves the sign sector;
it does not upgrade it to a Markov kernel. -/
theorem spin_odd_evolve (word : List (SpinStep (V := V))) (f : V → ℝ) :
    EventDiffusion.oddLift
        ((spinSignedDiffuser (V := V)).evolve word f) =
      (spinLiftDiffuser (V := V)).evolve word (EventDiffusion.oddLift f) :=
  OrderedDiffuser.Hom.evolve_map (spinOddHom (V := V)) word f

end SpinHolonomy

end GRWTSK.CombinatoricsAndDiscreteMathematics.GraphTheory.OrderedHolonomyDiffusion
