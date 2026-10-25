# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.TypeTheory.SimpleTypeTheory.FunctionTypes.HeatInverseData.Variant568a6e9c973fb125.TwoSidedInverse

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `b7d2ace3b5511ab9073fb58b87080e02ee96ca16` · SHA-256 `d01ee497c81e3bdb4f8f048d9d9440ba17d128bb2b9e52c54f76694107d5a4a9`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Exact two-sided inverse data and projection equations
Attribution: ATTRIBUTION_CLARIFICATION_NEEDED
Issue: https://github.com/grwtsk/math/issues/254
Provisional mathematical ideas and direction: grwtsk contributors.
Provisional composite search, probabilistic symbolic recombination and linearized diffusive computation: OpenAI/Codex.
Cache warming and model sculpting: the countless, often unnamed mathematicians, enthusiasts, and curious minds whose work and questions have helped shape these tools, and who now have new ways to pursue mathematical answers to the endlessly deep question: “Why?”
These are owner-supplied provisional roles; exact contributions and source lineage need clarification.
Original SHA-256: 568a6e9c973fb1250f3a9a71493bf925d930d10b84c45cf4b2007dff33126f96
Organized SHA-256: 97d53f27b51fdaac9f2124f16cdaa79fa97cdf1af07a86f362d6008844f81d0e
PMD: 510.0.070.010.020 function types (editorial navigation only).
Statements, hypotheses and proof bodies are exact source copies. Original whole-file documentation is retained below and may describe other components.
Only containing namespaces and explicit component imports are changed. Distinct historical representations stay distinct.
Uncompiled; no Lean/Lake invocation, public umbrella admission, geometric provider, or new theorem priority claim.
-/

/- Whole arbitrary-type inverse record retains inv, left_inv and right_inv; both genuine projection theorems retained. No inverse is constructed for an arbitrary H or for heat alone. -/

import Folder.Spectral.Heat
import Folder.Spectral.Residual
import Folder.Theorem.Spectral.HeatResidual

/-!
# Folder.Research.HeatInvertibility

Radiation role: research-contract
BinaryMatrix spine: This module marks research-boundary contracts and theorem targets around the BinaryMatrix radiation program.
Ontology: research.boundary.heat_invertibility
Pivot role: none
Zero typology: none
Contract boundary: contract
Composite stack role: infrastructure
-/


open Folder

namespace GRWTSK.FoundationsLogicAndTypeTheory.TypeTheory.SimpleTypeTheory.FunctionTypes.HeatInverseData.Variant568a6e9c973fb125

structure HasTwoSidedInverse
    (α : Type _)
    (H : α → α) where
  inv : α → α
  left_inv : ∀ x, inv (H x) = x
  right_inv : ∀ x, H (inv x) = x

theorem ordinary_heat_left_inverse
    {α : Type _}
    {H : α → α}
    (I : HasTwoSidedInverse α H)
    (x : α) :
    I.inv (H x) = x :=
  I.left_inv x

theorem ordinary_heat_right_inverse
    {α : Type _}
    {H : α → α}
    (I : HasTwoSidedInverse α H)
    (x : α) :
    H (I.inv x) = x :=
  I.right_inv x

end GRWTSK.FoundationsLogicAndTypeTheory.TypeTheory.SimpleTypeTheory.FunctionTypes.HeatInverseData.Variant568a6e9c973fb125
```
