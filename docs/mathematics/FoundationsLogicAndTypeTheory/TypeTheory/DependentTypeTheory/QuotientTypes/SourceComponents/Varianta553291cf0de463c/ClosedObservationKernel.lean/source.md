# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.TypeTheory.DependentTypeTheory.QuotientTypes.SourceComponents.Varianta553291cf0de463c.ClosedObservationKernel

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `9f6101b95e24c83c89878df246d40e8dae08743a` · SHA-256 `cad9d3335f7a5d164259eda612d97bcc6e0461acb9c50b6dec05b7c305812b2d`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
ClosedObservationKernel — exact source mathematical component
Attribution: ATTRIBUTION_CLARIFICATION_NEEDED
Issue: https://github.com/grwtsk/math/issues/254
Provisional mathematical ideas and direction: grwtsk contributors.
Provisional composite search, probabilistic symbolic recombination and linearized diffusive computation: OpenAI/Codex.
Cache warming and model sculpting: the countless, often unnamed mathematicians, enthusiasts, and curious minds whose work and questions have helped shape these tools, and who now have new ways to pursue mathematical answers to the endlessly deep question: “Why?”
These are owner-supplied provisional roles; exact contributions and source lineage need clarification.
Original SHA-256: a553291cf0de463c1c92d6dd0ee720e42de38b4f9a1041b2ea6f5d17b3150779
Organized SHA-256: ae0be3f44005013d9b35894cc4465ac5bf5d971abc7c17c3edbb9788513c6606
PMD: 510.0.070.020.080 quotient types (editorial navigation only).
Statements, hypotheses and proof bodies are exact source copies. Original whole-file documentation is retained below and may describe other components.
Only containing namespaces and explicit component imports are changed. Distinct historical representations stay distinct.
Uncompiled; no Lean/Lake invocation, public umbrella admission, geometric provider, or new theorem priority claim.
-/

/- Whole two-field observation closure package and both directions of current-observation equality versus future-trace equality. Exact original namespaces and imports remain; no added containing namespace or open binding. Only declared same-source public companions are added. Source documentation may describe archived components. Provider resolution, namespace coimport compatibility and elaboration are unreplayed. -/

import DAF.Causal.ObserverFactor
import Mathlib.Order.BoundedOrder.Basic

/-!
# Coherent towers of observer resolutions

A `QuantizerTower` specifies how a fine observation is projected to every
coarser resolution.  The order convention is `coarse ≤ fine`, so maps travel
from fine observations to coarse observations.  Coherence and compatibility
with the global observation induce canonical surjections between the
corresponding observer-local causal quotients.

When the resolution order has a top element, equality of top-resolution
future traces implies equality at every resolution.  Consequently the global
causal state is equivalent to the top local causal state.  Without a finest
resolution this module makes no claim that one local state represents the
whole observer family.  Causal minimality remains relative to the selected
observers, and none of these projections imply equality of concrete states,
reversibility, phase information, cycle data, homological transport, or
avalanche behavior.
-/

open ObservableRecursion
open ObserverFactor

universe uI uS uR uO


/-! ## Dynamically closed observations -/

namespace ObserverFactor

universe uInput uState uResolution uObservation

/--
An observation whose value evolves autonomously under every system input.
Only under this kernel-stability condition is the current observation already
a sufficient local causal state.
-/
structure ClosedObservation
    {Input : Type uInput}
    {State : Type uState}
    {Resolution : Type uResolution}
    (M : System Input State Resolution)
    (ρ : Resolution) where
  observedStep : Input → M.Observation ρ → M.Observation ρ
  commute : ∀ input x,
    M.observe ρ (M.step input x) =
      observedStep input (M.observe ρ x)

/-- A closed observation has no additional hidden future distinctions. -/
theorem localCausalEquivalent_iff_currentObservation_eq
    {Input : Type uInput}
    {State : Type uState}
    {Resolution : Type uResolution}
    {M : System Input State Resolution}
    {ρ : Resolution}
    (C : ClosedObservation M ρ)
    (x y : State) :
    LocalCausalEquivalent M ρ x y ↔
      M.observe ρ x = M.observe ρ y := by
  constructor
  · intro h
    simpa using h []
  · intro h inputs
    induction inputs generalizing x y with
    | nil => exact h
    | cons input rest ih =>
        apply ih
        rw [C.commute, C.commute, h]

end ObserverFactor
```
