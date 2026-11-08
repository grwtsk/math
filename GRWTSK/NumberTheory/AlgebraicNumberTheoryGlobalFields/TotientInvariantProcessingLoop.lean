/- Copyright (c) 2026 grwtsk contributors. MIT.
Mathematical direction: grwtsk contributors; formalization assistance: OpenAI.
SOURCE_PROOF_CANDIDATE / COMPILATION_NOT_RUN / EXPECTED_TYPES_NOT_RUN /
FRESH_KERNEL_NOT_RUN / TRANSITIVE_AXIOM_AUDIT_NOT_RUN. -/
import GRWTSK.NumberTheory.AlgebraicNumberTheoryGlobalFields.TotientInvariantCharacterLoop
import GRWTSK.Combinatorics.GraphTheory.TypedSpinDiffusionLoop
import Mathlib.Tactic

/-!
# The totient as derived initial mass in an invariant two-sheet loop

The actual unit state count is Nat.totient q, by Mathlib's
ZMod.card_units_eq_totient. The earlier two-sheet spin-diffusion carrier
uses UNIT STATES crossed with Bool, so assigning 1/2 to each sheet
gives EXACTLY phi(q), not 2*phi(q), as initial total mass.

Every existing typed SpinProcess step is source-COLUMN stochastic, not
the separately defined row-stochastic EventDiffusion convention.
The published SpinProcess.iterate_mass theorem now preserves that
DERIVED phi(q) mass at every finite step, conditional on the original
fully typed stochastic source-supported SpinProcess.

This is a conservation theorem, NOT a derivation of prime-density
cancellation, a new Markov kernel on primes, or a signed Weil lower bound.
The source network/process remains a separate given object. The
arithmetic group size is derived, while its choice as the state space
is explicit and essential. The signed sheet-antisymmetric observable
is NOT claimed to be a probability density.
-/
set_option autoImplicit false
noncomputable section
open scoped BigOperators

namespace GRWTSK.NumberTheory.AlgebraicNumberTheoryGlobalFields.TotientInvariantProcessingLoop

open GRWTSK.CombinatoricsAndDiscreteMathematics.GraphTheory.TypedSpinDiffusionLoop

variable (q : ℕ) [NeZero q]

abbrev UnitVertex : Type := (ZMod q)ˣ

/-- Each of two sheets receives half a unit of mass over every ACTUAL
invertible residue. The total comes from the enumerated state count. -/
def initialUnitSheetDensity : Sheet (UnitVertex q) → ℝ :=
  fun _ => 1 / 2

theorem initialUnitSheetDensity_nonneg
    (x : Sheet (UnitVertex q)) :
    0 ≤ initialUnitSheetDensity q x := by
  simp [initialUnitSheetDensity]

theorem initial_unit_sheet_mass :
    (∑ x : Sheet (UnitVertex q), initialUnitSheetDensity q x) =
      (Nat.totient q : ℝ) := by
  classical
  calc
    (∑ x : Sheet (UnitVertex q), initialUnitSheetDensity q x) =
        (Fintype.card (UnitVertex q) : ℝ) := by
          simp [initialUnitSheetDensity, Sheet, Fintype.card_prod, nsmul_eq_mul]
          ring
    _ = (Nat.totient q : ℝ) := by
          rw [ZMod.card_units_eq_totient]

/-- A typed conservation state with its mass PRECISELY computed from the
complete unit inventory, rather than introduced as an unproved field. -/
def totientInvariantState : InvariantState (V := UnitVertex q) where
  density := initialUnitSheetDensity q
  mass := (Nat.totient q : ℝ)
  nonneg := initialUnitSheetDensity_nonneg q
  mass_eq := initial_unit_sheet_mass q

/-- Consumer of the ACTUAL source-supported column-stochastic
SpinProcess processing theorem. The spin network and legal process
are explicit sources, not invented prime interactions. -/
theorem processing_loop_preserves_totient
    [Quiver (UnitVertex q)]
    (N : SpinNetwork (UnitVertex q)) (P : SpinProcess N) (n : ℕ) :
    (∑ x : Sheet (UnitVertex q),
      P.iterate (initialUnitSheetDensity q) n x) =
        (Nat.totient q : ℝ) := by
  calc
    (∑ x : Sheet (UnitVertex q),
      P.iterate (initialUnitSheetDensity q) n x) =
      ∑ x : Sheet (UnitVertex q), initialUnitSheetDensity q x :=
        P.iterate_mass (initialUnitSheetDensity q) n
    _ = (Nat.totient q : ℝ) := initial_unit_sheet_mass q

end GRWTSK.NumberTheory.AlgebraicNumberTheoryGlobalFields.TotientInvariantProcessingLoop
