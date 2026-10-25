# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.TypeTheory.DependentTypeTheory.DependentFunctions.LocalFiniteRasterReconstruction.Variantc9985a078193e553.LocalityAndExactReconstruction

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `0078c6dabb94ddac71576b25102db759fd7b8cdb` · SHA-256 `05d6742c28de0073a32ea989c1e31216b3566d330c07c31292f94f9168864c4e`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Finite raster replacement locality and exact reconstruction
Attribution: ATTRIBUTION_CLARIFICATION_NEEDED
Issue: https://github.com/grwtsk/math/issues/254
Provisional mathematical ideas and direction: grwtsk contributors.
Provisional composite search, probabilistic symbolic recombination and linearized diffusive computation: OpenAI/Codex.
Cache warming and model sculpting: the countless, often unnamed mathematicians, enthusiasts, and curious minds whose work and questions have helped shape these tools, and who now have new ways to pursue mathematical answers to the endlessly deep question: “Why?”
These are owner-supplied provisional roles; exact contributions and source lineage need clarification.
Original SHA-256: c9985a078193e553c47a02413b7c173c44201a1a240b3572234e75e576fd40ad
Organized SHA-256: de0791d8a9c5ceb0e9a453063c2c44af6c6dac5719e5f8c9211437a81f395d46
PMD: 510.0.070.020.010 dependent functions (editorial navigation only).
Statements, hypotheses and proof bodies are exact source copies. Original whole-file documentation is retained below and may describe other components.
Only containing namespaces and explicit component imports are changed. Distinct historical representations stay distinct.
Uncompiled; no Lean/Lake invocation, public umbrella admission, geometric provider, or new theorem priority claim.
-/


/- Whole RasterSurgeryEvent retains all six actual prestate/cut/cutSource/repair/poststate/postStateSpec fields. outside_unchanged keeps the old typed GridCell, outside-selected premise and both state equations. reconstruction uses original Repair.reconstruct and its exact equality; final simp is reflexive. These are finite Boolean replacement laws, not topology-changing/smooth surgery or a runtime controller. -/

import BitMatrix.Surgery.Digital

/-!
# Evolution–surgery–restart declarations

This module formalizes the project's finite, declarative profile of the
architecture: structured detection, a distinguished discontinuous repair
event, restart from the post-event state, linked event streams, and derived
status over a validated dependency closure.  It does not define a metric-flow
solver, a smooth surgery constructor, or a continuation/nonaccumulation
theorem.
-/

namespace GRWTSK.FoundationsLogicAndTypeTheory.TypeTheory.DependentTypeTheory.DependentFunctions.LocalFiniteRasterReconstruction.Variantc9985a078193e553

/-! ## Concrete finite-raster transition profile -/

open BitMatrix.Surgery.Digital

/-- A concrete digital repair event with exact pre/post transition equations. -/
structure RasterSurgeryEvent (rows columns : Nat) where
  preEventState : RasterState rows columns
  cut : CutDatum rows columns
  cutSource : cut.source = preEventState
  repair : Repair cut
  postEventState : RasterState rows columns
  postStateSpec : postEventState = repair.apply

namespace RasterSurgeryEvent

/-- A raster repair changes only cells in its selected local cut. -/
theorem outside_unchanged {rows columns : Nat}
    (event : RasterSurgeryEvent rows columns)
    (cell : BitMatrix.Runtime.Semantics.GridCell rows columns)
    (outside : cell ∉ event.cut.selected) :
    event.postEventState cell = event.preEventState cell := by
  rw [event.postStateSpec]
  calc
    event.repair.apply cell = event.cut.source cell :=
      event.repair.apply_outside cell outside
    _ = event.preEventState cell := congrFun event.cutSource cell

/-- Original-value regluing is exact reconstruction of the finite state. -/
def reconstruction {rows columns : Nat}
    (cut : CutDatum rows columns) : RasterSurgeryEvent rows columns where
  preEventState := cut.source
  cut := cut
  cutSource := rfl
  repair := Repair.reconstruct cut
  postEventState := cut.source
  postStateSpec := (Repair.reconstruct_apply cut).symm

@[simp]
theorem reconstruction_post_eq_pre {rows columns : Nat}
    (cut : CutDatum rows columns) :
    (reconstruction cut).postEventState =
      (reconstruction cut).preEventState :=
  rfl

end RasterSurgeryEvent

end GRWTSK.FoundationsLogicAndTypeTheory.TypeTheory.DependentTypeTheory.DependentFunctions.LocalFiniteRasterReconstruction.Variantc9985a078193e553
```
