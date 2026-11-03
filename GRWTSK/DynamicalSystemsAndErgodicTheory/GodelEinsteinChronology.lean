/- Copyright (c) 2026 grwtsk contributors. MIT. -/
import Mathlib

/-!
# Finite causal chronology obstruction, motivated by Gödel and Einstein

Local attribution: grwtsk contributors.

The paper-based context is:
Kurt Gödel, An Example of a New Type of Cosmological Solutions of
Einstein's Field Equations of Gravitation, Rev. Mod. Phys. 21 (1949),
447--450, DOI 10.1103/RevModPhys.21.447; and Gödel,
A Remark About the Relationship Between Relativity Theory and Idealistic
Philosophy (1949), in Albert Einstein: Philosopher-Scientist.

The theorem here is the exact, elementary directed-path obstruction:
an admitted strictly future-oriented finite cycle has no real-valued
global clock that increases strictly along each admitted edge.
This formalizes ONLY a finite causal graph principle; it does not
construct Gödel's Lorentzian metric, prove a timelike trajectory,
or decide the philosophical interpretation of objective passage.

Crucially, a Gödel spacetime in ordinary general relativity uses
a torsion-free Levi-Civita connection, yet may have NONZERO vorticity.
Covariant-connection torsion, physical vorticity, and finite-order
group torsion must not be identified.

Lean compilation, kernel checking and transitive axiom audit: NOT_RUN.
-/

set_option autoImplicit false
noncomputable section

namespace GRWTSK.DynamicalSystemsAndErgodicTheory.GodelEinsteinChronology

universe u

/-- At least one causal transition, retaining its complete path. -/
inductive NonemptyCausalPath {State : Type u}
    (edge : State → State → Prop) : State → State → Prop where
  | single {a b : State} :
      edge a b → NonemptyCausalPath edge a b
  | cons {a b c : State} :
      edge a b → NonemptyCausalPath edge b c →
      NonemptyCausalPath edge a c

/-- A directed cycle genuinely containing at least one edge. -/
def HasClosedCausalCycle {State : Type u}
    (edge : State → State → Prop) : Prop :=
  ∃ x : State, NonemptyCausalPath edge x x

/-- A proposed absolute chronology that increases at every causal edge. -/
def HasStrictGlobalClock {State : Type u}
    (edge : State → State → Prop) : Prop :=
  ∃ time : State → ℝ, ∀ a b : State, edge a b → time a < time b

/-- Every nonempty causal path raises the proposed clock. -/
theorem NonemptyCausalPath.time_strict
    {State : Type u} {edge : State → State → Prop}
    (time : State → ℝ)
    (ht : ∀ a b : State, edge a b → time a < time b)
    {a b : State} (path : NonemptyCausalPath edge a b) :
    time a < time b := by
  induction path with
  | single h =>
      exact ht _ _ h
  | cons h tail ih =>
      exact (ht _ _ h).trans ih

/-- The exact Gödel-style finite chronology obstruction: local forward
directions need not glue to one globally increasing temporal coordinate. -/
theorem no_global_clock_of_closed_cycle
    {State : Type u} {edge : State → State → Prop}
    (cycle : HasClosedCausalCycle edge) :
    ¬ HasStrictGlobalClock edge := by
  rintro ⟨time, ht⟩
  obtain ⟨x, hx⟩ := cycle
  have hs : time x < time x :=
    NonemptyCausalPath.time_strict time ht hx
  exact (lt_irrefl (time x)) hs

/-- Two states each locally advance to the other, so no single strictly
increasing scalar chronology exists. This is a *finite toy example*,
not the actual Gödel metric or a physical closed timelike curve. -/
theorem two_state_closed_cycle :
    HasClosedCausalCycle (fun a b : Bool => a ≠ b) := by
  have h01 : false ≠ true := by decide
  have h10 : true ≠ false := by decide
  exact ⟨false,
    NonemptyCausalPath.cons h01 (NonemptyCausalPath.single h10)⟩

theorem two_state_no_strict_global_clock :
    ¬ HasStrictGlobalClock (fun a b : Bool => a ≠ b) :=
  no_global_clock_of_closed_cycle two_state_closed_cycle

end GRWTSK.DynamicalSystemsAndErgodicTheory.GodelEinsteinChronology

end
