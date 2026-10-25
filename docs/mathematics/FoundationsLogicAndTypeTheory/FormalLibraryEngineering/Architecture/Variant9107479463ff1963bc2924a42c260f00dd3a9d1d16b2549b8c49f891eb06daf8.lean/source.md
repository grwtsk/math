# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Architecture.Variant9107479463ff1963bc2924a42c260f00dd3a9d1d16b2549b8c49f891eb06daf8

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `fbe17c65bed266b1052778ad8fbef7572c5cde0d` · SHA-256 `9107479463ff1963bc2924a42c260f00dd3a9d1d16b2549b8c49f891eb06daf8`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
module

public import Surface.Core

/-!
# Canonical architecture audit

These executable guards and proof-level checks exercise the authority boundary
inside the canonical target.
-/

public section

namespace Surface.Audit

open Core

@[surface_novel, surface_published]
theorem every_patch_preserves_theorem_task
    (patch : ProofPatch)
    (task : TheoremTask) :
    patch.applyTask task = task := by
  simp

@[surface_novel, surface_published]
theorem legal_phase_steps_advance
    {a b : ProofPhase} (step : PhaseStep a b) :
    a.rank < b.rank :=
  step.rank_strict

end Surface.Audit
```
