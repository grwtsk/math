# Complete source: GRWTSK.NumberTheory.ElementaryNumberTheory.NamedNumericConstants.Variante128ee73a5d21770.PositiveNaturalOne

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `40c5d18479efe8edecef4a765db4aa834f6f872a` · SHA-256 `2bf2d627bede34bf352d27a815cb8b1fc673bc688714c387978c93df7ca5540f`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
PositiveNaturalOne — Exact positive-natural one and its original simp equality only; no new arithmetic-root interpretation or law.
Attribution: ATTRIBUTION_CLARIFICATION_NEEDED
Issue: https://github.com/grwtsk/math/issues/254
Provisional mathematical ideas and direction: grwtsk contributors.
Provisional composite search, probabilistic symbolic recombination and linearized diffusive computation: OpenAI/Codex.
Cache warming and model sculpting: the countless, often unnamed mathematicians, enthusiasts, and curious minds whose work and questions have helped shape these tools, and who now have new ways to pursue mathematical answers to the endlessly deep question: “Why?”
These are owner-supplied provisional roles; exact contributions and source lineage need clarification.
Original SHA-256: e128ee73a5d217702b457fcb751150da188b8df8a777c6d5e11e058eca55e97e
Organized SHA-256: 0a3abcd186b923937f6411531f722cee98b106b8369a53457c472bec2c450398
PMD: 510.2.010 elementary number theory (editorial navigation only).
Statements, hypotheses and proof bodies are exact source copies. Original whole-file documentation is retained below and may describe other components.
Only containing namespaces and explicit component imports are changed. Distinct historical representations stay distinct.
Uncompiled; no Lean/Lake invocation, public umbrella admission, geometric provider, or new theorem priority claim.
-/

import Folder.NumberTheory.PositiveNat

/-!
# Folder.Core.DualPivot

Radiation role: core-architecture
BinaryMatrix spine: This module organizes the dual arithmetic/spectral pivots before downstream BinaryMatrix carrier interpretations.
Ontology:
- core.dual_pivot
- core.arithmetic_pivot_one
- core.spectral_pivot_half
Pivot role: dual
Zero typology: none
Contract boundary: definition
Composite stack role: infrastructure
-/

namespace GRWTSK.NumberTheory.ElementaryNumberTheory.NamedNumericConstants.Variante128ee73a5d21770

open Folder

/-- The arithmetic multiplicative root pivot. -/
def arithmeticPivot : NumberTheory.PositiveNat :=
  NumberTheory.PositiveNat.one

@[simp]
theorem arithmeticPivot_val_eq_one :
    arithmeticPivot.val = 1 := rfl

end GRWTSK.NumberTheory.ElementaryNumberTheory.NamedNumericConstants.Variante128ee73a5d21770
```
