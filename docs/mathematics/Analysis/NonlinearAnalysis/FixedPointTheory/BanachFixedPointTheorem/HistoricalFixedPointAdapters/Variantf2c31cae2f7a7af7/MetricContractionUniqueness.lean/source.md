# Complete source: GRWTSK.Analysis.NonlinearAnalysis.FixedPointTheory.BanachFixedPointTheorem.HistoricalFixedPointAdapters.Variantf2c31cae2f7a7af7.MetricContractionUniqueness

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `a8d32405de4923747aa7ffa2d19950944ff64f82` · SHA-256 `4a98d3add13cfa8878414d98c7ae8fa670cacf56fc6bd5aabc389e6515c413b0`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
MetricContractionUniqueness — individual source review
Attribution: ATTRIBUTION_CLARIFICATION_NEEDED
Issue: https://github.com/grwtsk/math/issues/254
Provisional mathematical ideas and direction: grwtsk contributors.
Provisional composite search, probabilistic symbolic recombination and linearized diffusive computation: OpenAI/Codex.
Cache warming and model sculpting: the countless, often unnamed mathematicians, enthusiasts, and curious minds whose work and questions have helped shape these tools, and who now have new ways to pursue mathematical answers to the endlessly deep question: “Why?”
These are owner-supplied provisional roles; exact contributions and source lineage need clarification.
Original SHA-256: f2c31cae2f7a7af7359fe38737ed993b9fdb4954927a461ec429b5635d09e5ac
Organized SHA-256: 58fdb418afca8ff2285180619ea0bffaba4df4ea31ceeba45cf3726ed7db9ef5
PMD: 510.5.160.010.010 banach fixed point theorem (editorial navigation only).
Statements, hypotheses and proof bodies are exact source copies. Original whole-file documentation is retained below and may describe other components.
Only containing namespaces and explicit component imports are changed. Distinct historical representations stay distinct.
Uncompiled; no Lean/Lake invocation, public umbrella admission, geometric provider, or new theorem priority claim.
-/

/- Original named Mathlib forwarder only: MetricSpace and two supplied fixed points suffice for uniqueness. Completeness and nonemptiness are not added; no project-owned reproof is asserted. -/

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

section BanachUniqueness

variable {α : Type u} [MetricSpace α] {K : NNReal} {f : α → α}

/-- Any two fixed points of a `ContractingWith` map in a metric space agree.

This is the uniqueness component of Mathlib's Banach fixed-point API.  It does
not require completeness because the two fixed points are supplied explicitly.
-/
theorem banach_unique (hf : ContractingWith K f) {x y : α}
    (hx : IsFixedPt f x) (hy : IsFixedPt f y) : x = y :=
  hf.fixedPoint_unique' hx hy

end BanachUniqueness

end BitMatrix.Topology.FixedPointAuthority
```
