# Complete source: GRWTSK.Analysis.NonlinearAnalysis.FixedPointTheory.BanachFixedPointTheorem.HistoricalFixedPointAdapters.Variantf2c31cae2f7a7af7.CompleteMetricExistenceAndPicardIteration

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `6cd0eaad8c41e23dcb4b571e55fa88536dc665ee` · SHA-256 `aa4aa10b7556362f80970ac2be044637cf692ed703e079b80526c10b618cb2f1`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
CompleteMetricExistenceAndPicardIteration — individual source review
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

/- CompleteSpace, Nonempty, MetricSpace, contraction parameter and the full selected-point/existence/fixedness/Picard statements are copied. These are original project names for existing Mathlib results, not an executable solver or reproof. -/

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

section BanachExistence

variable {α : Type u} [MetricSpace α] [CompleteSpace α] [Nonempty α]
variable {K : NNReal} {f : α → α}

/-- The canonical point selected by Mathlib's Banach fixed-point construction. -/
noncomputable abbrev banachPoint (hf : ContractingWith K f) : α :=
  ContractingWith.fixedPoint f hf

/-- A contraction on a nonempty complete metric space has a fixed point. -/
theorem banach_exists (hf : ContractingWith K f) : ∃ y, IsFixedPt f y :=
  ⟨banachPoint hf, hf.fixedPoint_isFixedPt⟩

/-- The selected Banach point is fixed by the contraction. -/
theorem banach_fixed (hf : ContractingWith K f) : IsFixedPt f (banachPoint hf) :=
  hf.fixedPoint_isFixedPt

/-- Every Picard iteration converges to the selected Banach point. -/
theorem banach_iteration (hf : ContractingWith K f) (x : α) :
    Tendsto (fun n ↦ f^[n] x) atTop (nhds (banachPoint hf)) :=
  hf.tendsto_iterate_fixedPoint x

end BanachExistence

end BitMatrix.Topology.FixedPointAuthority
```
