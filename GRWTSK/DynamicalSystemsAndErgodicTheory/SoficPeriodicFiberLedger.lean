/- Copyright (c) 2026 grwtsk contributors. MIT.
Local mathematical attribution: grwtsk contributors.
SOURCE_PROOF_CANDIDATE / COMPILATION_NOT_RUN /
EXPECTED_TYPES_NOT_RUN / FRESH_KERNEL_NOT_RUN /
TRANSITIVE_AXIOM_AUDIT_NOT_RUN.
-/
import GRWTSK.DynamicalSystemsAndErgodicTheory.SoficBasedCycleCard
import Mathlib

set_option autoImplicit false
noncomputable section
open scoped BigOperators

/-!
# Exact signed compensation between based-cycle trace and label points

Once a chosen map from ACTUAL graph cycles to admissible period-n
label points is constructed and proved to preserve their symbols,
the source-matrix trace is the SUM of its finite fibers. It is
therefore equal to the number of period-n label points PLUS
surplus graph lifts MINUS unlifted period-n label points.

This accounting preserves both kinds of failure demonstrated by the
published duplicate-loop and alternating-state graphs. It does
NOT assume that exact finite-word language presentation supplies
a period-preserving graph-cycle lift. Existence of the canonical
label map is an explicit open Lean proposition, not an axiom.

The original LabeledGraph, actual word-path relation, complete
source language, matrix and integer recurrence remain unchanged.
-/

namespace GRWTSK.DifferentialEquationsAndDynamicalSystems.DynamicalSystems.SymbolicDynamics.SoficPeriodicFiberLedger

open GRWTSK.DifferentialEquationsAndDynamicalSystems.DynamicalSystems.SymbolicDynamics.ExactSoficLanguageCover
open GRWTSK.DifferentialEquationsAndDynamicalSystems.DynamicalSystems.SymbolicDynamics.SoficPeriodicMatrixTrace
open GRWTSK.DifferentialEquationsAndDynamicalSystems.DynamicalSystems.SymbolicDynamics.SoficBasedCycleCard

universe u v x y
variable {State : Type u} {Alphabet : Type v}
variable [Fintype State] [DecidableEq State] [Fintype Alphabet]

/-- Periodic-label finiteness is supplied by the defining matrix module. -/

/-- The map from based graph cycles to true periodic factor-language
points must be constructed from the ACTUAL cycle, and must preserve
the actual emitted block. Its existence is a NAMED UNPROVED Prop,
not a generic property inferred from exact word-language coverage. -/
def HasLabelPreservingCycleMap
    (G : LabeledGraph State Alphabet)
    (language : List Alphabet → Prop)
    (n : ℕ) (hn : 0 < n) : Prop :=
  ∃ f : BasedCycleData G n → PeriodicLabelPoint language n hn,
    ∀ c : BasedCycleData G n,
      (f c).val = basedCycleWord G n c

/-- A type-theoretic partition of all graph cycles by the chosen
periodic-label point. This is a finite exact equivalence, not
a numerical approximation or an arbitrary selected representative. -/
private def cycleSigmaFiberEquiv
    {C : Type x} {P : Type y} (f : C → P) :
    (Σ p : P, {c : C // f c = p}) ≃ C where
  toFun := fun z => z.2.1
  invFun := fun c => ⟨f c, ⟨c, rfl⟩⟩
  left_inv := by
    intro z
    rcases z with ⟨p, ⟨c, hc⟩⟩
    cases hc
    rfl
  right_inv := by
    intro c
    rfl

/-- Exact number of based ORIGINAL graph lifts over one real
period-n label point, including zero or multiple lifts. -/
noncomputable def liftFiberCount
    {language : List Alphabet → Prop} {n : ℕ} {hn : 0 < n}
    {G : LabeledGraph State Alphabet}
    (f : BasedCycleData G n → PeriodicLabelPoint language n hn)
    (p : PeriodicLabelPoint language n hn) : ℕ := by
  classical
  exact Fintype.card {c : BasedCycleData G n // f c = p}

/-- The original matrix trace is the sum of exact lift fibers
for any supplied map. The hLabels premise documents its intended
SOURCE-bound meaning, but finite fiber partition itself depends only
on the chosen function; it does NOT prove that a label-preserving map
exists for an arbitrary source language. -/
theorem trace_eq_sum_label_lift_fibers
    (G : LabeledGraph State Alphabet)
    (language : List Alphabet → Prop)
    (n : ℕ) (hn : 0 < n)
    (f : BasedCycleData G n → PeriodicLabelPoint language n hn)
    (hLabels : ∀ c : BasedCycleData G n,
      (f c).val = basedCycleWord G n c) :
    Matrix.trace (labeledAdjacency G ^ n) =
      ∑ p : PeriodicLabelPoint language n hn,
        liftFiberCount f p := by
  classical
  rw [trace_pow_eq_card_based_cycles G n]
  calc
    Fintype.card (BasedCycleData G n) =
        Fintype.card
          (Σ p : PeriodicLabelPoint language n hn,
            {c : BasedCycleData G n // f c = p}) :=
      (Fintype.card_congr (cycleSigmaFiberEquiv f)).symm
    _ = ∑ p : PeriodicLabelPoint language n hn,
          Fintype.card {c : BasedCycleData G n // f c = p} := by
      rw [Fintype.card_sigma]
    _ = ∑ p : PeriodicLabelPoint language n hn,
          liftFiberCount f p := by
      apply Finset.sum_congr rfl
      intro p _
      rfl

/-- Number of genuine period-n label points with NO based n-cycle
lift under the chosen actual-label-preserving map. -/
noncomputable def unliftedLabelCount
    {language : List Alphabet → Prop} {n : ℕ} {hn : 0 < n}
    {G : LabeledGraph State Alphabet}
    (f : BasedCycleData G n → PeriodicLabelPoint language n hn) : ℕ := by
  classical
  exact ∑ p : PeriodicLabelPoint language n hn,
    if liftFiberCount f p = 0 then 1 else 0

/-- Number of graph lifts ABOVE the first lift over each target.
At a missing target, truncated subtraction charges zero, leaving
the missing-label term to account for the deficit separately. -/
noncomputable def surplusLabelLiftCount
    {language : List Alphabet → Prop} {n : ℕ} {hn : 0 < n}
    {G : LabeledGraph State Alphabet}
    (f : BasedCycleData G n → PeriodicLabelPoint language n hn) : ℕ := by
  classical
  exact ∑ p : PeriodicLabelPoint language n hn,
    liftFiberCount f p - 1

/-- The precise graph-to-label periodic-point correction:
 trace + missing = number of label points + surplus.
All quantities are NATURAL finite counts and both orientations of
information loss are retained, with no unsupported cancellation. -/
theorem trace_add_unlifted_eq_label_card_add_surplus
    (G : LabeledGraph State Alphabet)
    (language : List Alphabet → Prop)
    (n : ℕ) (hn : 0 < n)
    (f : BasedCycleData G n → PeriodicLabelPoint language n hn)
    (hLabels : ∀ c : BasedCycleData G n,
      (f c).val = basedCycleWord G n c) :
    Matrix.trace (labeledAdjacency G ^ n) +
        unliftedLabelCount f =
      Fintype.card (PeriodicLabelPoint language n hn) +
        surplusLabelLiftCount f := by
  classical
  rw [trace_eq_sum_label_lift_fibers G language n hn f hLabels]
  unfold unliftedLabelCount surplusLabelLiftCount
  rw [Fintype.card_eq_sum_ones]
  rw [← Finset.sum_add_distrib, ← Finset.sum_add_distrib]
  apply Finset.sum_congr rfl
  intro p _
  by_cases hp : liftFiberCount f p = 0
  · simp [hp]
  · have hpos : 1 ≤ liftFiberCount f p := Nat.one_le_iff_ne_zero.mpr hp
    simp only [if_neg hp]
    omega

/-- An exact one-to-one, onto actual-label lift has no defects;
this conclusion is NOT asserted for arbitrary sofic presentations. -/
theorem label_card_eq_trace_of_bijective_map
    (G : LabeledGraph State Alphabet)
    (language : List Alphabet → Prop)
    (n : ℕ) (hn : 0 < n)
    (f : BasedCycleData G n → PeriodicLabelPoint language n hn)
    (hLabels : ∀ c : BasedCycleData G n,
      (f c).val = basedCycleWord G n c)
    (hBijective : Function.Bijective f) :
    Fintype.card (PeriodicLabelPoint language n hn) =
      Matrix.trace (labeledAdjacency G ^ n) := by
  classical
  calc
    Fintype.card (PeriodicLabelPoint language n hn) =
        Fintype.card (BasedCycleData G n) :=
      (Fintype.card_congr (Equiv.ofBijective f hBijective)).symm
    _ = Matrix.trace (labeledAdjacency G ^ n) :=
      (trace_pow_eq_card_based_cycles G n).symm

end GRWTSK.DifferentialEquationsAndDynamicalSystems.DynamicalSystems.SymbolicDynamics.SoficPeriodicFiberLedger
