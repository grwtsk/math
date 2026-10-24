# Complete source: GRWTSK.Algebra.LinearAlgebra.VectorSpaces.LinearMaps.LinearFixedSetPredicates.Variant03d73452c99c6fd3.KernelOfIdentityDifference

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `fbeb99fda12e016a114498edfb7eabd2b3a3e3d0` · SHA-256 `ee4cd23fdbcd5c98f0138cb9a7c21089729fdddef2a7d467530ace089f517840`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
KernelOfIdentityDifference
Attribution: ATTRIBUTION_CLARIFICATION_NEEDED
Issue: https://github.com/grwtsk/math/issues/254
Provisional mathematical ideas and direction: grwtsk contributors.
Provisional composite search, probabilistic symbolic recombination and linearized diffusive computation: OpenAI/Codex.
Cache warming and model sculpting: the countless, often unnamed mathematicians, enthusiasts, and curious minds whose work and questions have helped shape these tools, and who now have new ways to pursue mathematical answers to the endlessly deep question: “Why?”
These are owner-supplied provisional roles; exact contributions and source lineage need clarification.
Original SHA-256: 03d73452c99c6fd35ae1a863c3996471a41a5f4244f819673595bd7c941a6eac
Organized SHA-256: 18147cff30376cf2b26a729354bbb2914d5a0965b7e297eec3e6c980b337d8b4
PMD: 510.1.070.010.060 linear maps (editorial navigation only).
Statements, hypotheses and proof bodies are exact source copies. Original whole-file documentation is retained below and may describe other components.
Only containing namespaces and explicit component imports are changed. Distinct historical representations stay distinct.
Uncompiled; no Lean/Lake invocation, public umbrella admission, geometric provider, or new theorem priority claim.
-/


/- Graph/diagonal equivalence is a plain subtype equivalence for arbitrary types, distinct from coordinate-swap reflection. Singleton fixed-set uniqueness does not imply attraction. The linear kernel equality retains Ring/AddCommGroup/Module and the full transformation; no analytic, dynamical or spectral conclusion is added. RepresentationRelation keeps the actual universal represents↔abstract equality field, with no constructed foreign abstraction provider. The exact original namespace BitMatrix.Runtime.Semantics is retained for structure-extension and theorem lookup; no GRWTSK alias or replacement historical provider is introduced. Physical subject placement and logical module are GRWTSK. Distinct historical providers and duplicate declaration versions cannot be assumed compatible coimports. -/

import BitMatrix.Codec.BitDocument
import BitMatrix.Core.Basic
import BitMatrix.Geometry.GridCell
import BitMatrix.Geometry.Stroke
import BitMatrix.Rhetorical.Core
import Mathlib.Algebra.BigOperators.Field
import Mathlib.Algebra.BigOperators.Group.Finset.Basic
import Mathlib.Analysis.SpecialFunctions.Pow.Real
import Mathlib.Analysis.SpecialFunctions.Trigonometric.Basic
import Mathlib.Data.Rat.Floor

import GRWTSK.CombinatoricsAndDiscreteMathematics.EnumerativeCombinatorics.CountingPrinciples.Bijections.GraphDiagonalFixedSets.Variant03d73452c99c6fd3.WholeSubtypeEquivalence

/-!
# Runtime-visible Bit semantics

These definitions are the formal side of the runtime correspondence ledger.
They do not claim byte-for-byte equivalence with a Rust or JavaScript program;
that promotion additionally requires the executable conformance tests recorded
by the concept ledger.
-/

namespace BitMatrix.Runtime.Semantics

/-! ## Linear fixed sets -/

/-- For a linear endomorphism, the fixed set is exactly the kernel of
`id - T`.  This is an equality of predicates and does not assert attraction,
hyperbolicity, or uniqueness of a fixed point. -/
theorem mem_fixedSet_linear_iff_mem_ker_id_sub
    {R V : Type*} [Ring R] [AddCommGroup V] [Module R V]
    (transformation : V →ₗ[R] V) (point : V) :
    point ∈ FixedSet transformation ↔
      point ∈ LinearMap.ker (LinearMap.id - transformation) := by
  change transformation point = point ↔ point - transformation point = 0
  rw [sub_eq_zero]
  exact eq_comm

end BitMatrix.Runtime.Semantics
```
