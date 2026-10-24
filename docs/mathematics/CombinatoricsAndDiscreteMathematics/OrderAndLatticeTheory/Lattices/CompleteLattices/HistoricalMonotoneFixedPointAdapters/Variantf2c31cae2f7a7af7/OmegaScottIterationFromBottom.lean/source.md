# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.OrderAndLatticeTheory.Lattices.CompleteLattices.HistoricalMonotoneFixedPointAdapters.Variantf2c31cae2f7a7af7.OmegaScottIterationFromBottom

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `215ad682e0d8720bf421e2874b6af3e35a67a81e` · SHA-256 `6a01f1d4de5adf1e23a7665969cc7294ae250be5720d00e2d67e5a28001dc1c0`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
OmegaScottIterationFromBottom — individual source review
Attribution: ATTRIBUTION_CLARIFICATION_NEEDED
Issue: https://github.com/grwtsk/math/issues/254
Provisional mathematical ideas and direction: grwtsk contributors.
Provisional composite search, probabilistic symbolic recombination and linearized diffusive computation: OpenAI/Codex.
Cache warming and model sculpting: the countless, often unnamed mathematicians, enthusiasts, and curious minds whose work and questions have helped shape these tools, and who now have new ways to pursue mathematical answers to the endlessly deep question: “Why?”
These are owner-supplied provisional roles; exact contributions and source lineage need clarification.
Original SHA-256: f2c31cae2f7a7af7359fe38737ed993b9fdb4954927a461ec429b5635d09e5ac
Organized SHA-256: 58fdb418afca8ff2285180619ea0bffaba4df4ea31ceeba45cf3726ed7db9ef5
PMD: 510.7.070.020.050 complete lattices (editorial navigation only).
Statements, hypotheses and proof bodies are exact source copies. Original whole-file documentation is retained below and may describe other components.
Only containing namespaces and explicit component imports are changed. Distinct historical representations stay distinct.
Uncompiled; no Lean/Lake invocation, public umbrella admission, geometric provider, or new theorem priority claim.
-/

/- Only the exact complete-lattice Kleene iteration identity with its explicit omega-Scott-continuity hypothesis is retained; monotonicity alone is not claimed sufficient. -/

import Mathlib.Order.FixedPoints
import Mathlib.Topology.MetricSpace.Contracting

/-!
# Fixed-point theorem authority bindings

This module gives stable project names to fixed-point results that are already
proved by the exact Mathlib revision pinned in `Surface/lake-manifest.json`.
It is an import adapter, not a project-owned reproof and not an executable
fixed-point solver.  Each declaration below preserves Mathlib's hypotheses and
conclusion; the glossary records the named theorems that have no local binding.
-/

namespace BitMatrix.Topology.FixedPointAuthority

open Filter Function

universe u

section KnasterTarski

variable {α : Type u} [CompleteLattice α] (f : α →o α)

/-- Mathlib's complete-lattice specialization of Kleene's fixed-point theorem:
an omega-Scott-continuous endomap has least fixed point equal to the supremum
of its iterates from bottom. -/
theorem kleene_completeLattice_iteration
    (h : OmegaCompletePartialOrder.ωScottContinuous f) :
    f.lfp = ⨆ n, f^[n] ⊥ :=
  fixedPoints.lfp_eq_sSup_iterate f h

end KnasterTarski
end BitMatrix.Topology.FixedPointAuthority
```
