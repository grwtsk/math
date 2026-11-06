/-
Copyright (c) 2026 grwtsk contributors. All rights reserved.
Released under the repository's existing license.
-/
import GRWTSK.MathematicalLogicAndFoundations.GeneralLogic.ObservationRefinement
import GRWTSK.MathematicalLogicAndFoundations.GeneralLogic.PersistentChannels
import GRWTSK.MathematicalLogicAndFoundations.GeneralLogic.PersistentQuestions
import GRWTSK.MathematicalLogicAndFoundations.GeneralLogic.EvidenceRetraction
import GRWTSK.MathematicalLogicAndFoundations.GeneralLogic.NeedBasedEligibility
import GRWTSK.OrderLatticesOrderedAlgebraicStructures.OrderedSets.ReservedCapacity

/-!
# Scoped entry point for accessible, revisable communication

The constituent namespaces separate observation refinement, persistent partial
outputs, reception opportunities, retained provenance, retractable interpretation,
need-based eligibility, and allocation with protected obligations.

Principal consumers:
* `Observation.refines_iff_determined`: precise information-preservation boundary.
* `Channel.Time.eventual_serial_iff`: asynchronous composition under persistence.
* `Communication.Window.serial_receivable_iff`: exact end-to-end accessibility.
* `Evidence.Retraction.Record.withdrawal_retains_support`: correction without erasure.
* `Eligibility.least_invariant_extension_covers`: coverage without achievement gates.
* `Order.Capacity.Reservation.reserved_feasible_iff`: protected cooperative feasibility.

This entry point does not modify the default library root or dependency pins.
The results are conditional pure mathematics, not evidence about a biography,
medical causation, empirical reliability, legal consent, or an actual scheduler.
Source-level derivations and counterexamples are present; compilation, fresh
kernel verification, transitive axiom audit, and independent review are NOT_RUN.
The source reuses the repository definitions inspected at
`e5cdd56509a9e0df7bd721c8cf4a75bf9f2b890b`; it replaces none of those definitions.
-/
