# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.TypeTheory.DependentTypeTheory.DependentFunctions.NamedMatrixEndomapFixedPoints.Variant87bd37ef0cd18a2c.SuppliedRecipeFixedPoint

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `df8d67ec86e143c6933add3daec98553ed9320f2` · SHA-256 `ace8696f91cbefa9e23775639330e5e20b9dcd67f26b091c5f9256dff1cababe`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
SuppliedRecipeFixedPoint — individually reviewed exact source
Attribution: ATTRIBUTION_CLARIFICATION_NEEDED
Issue: https://github.com/grwtsk/math/issues/254
Provisional mathematical ideas and direction: grwtsk contributors.
Provisional composite search, probabilistic symbolic recombination and linearized diffusive computation: OpenAI/Codex.
Cache warming and model sculpting: the countless, often unnamed mathematicians, enthusiasts, and curious minds whose work and questions have helped shape these tools, and who now have new ways to pursue mathematical answers to the endlessly deep question: “Why?”
These are owner-supplied provisional roles; exact contributions and source lineage need clarification.
Original SHA-256: 87bd37ef0cd18a2c13d2e6b10f5a4846981e9015f5ab16d87edcc2a75aa082e5
Organized SHA-256: adf19e591820ee05ab5663189db4985f654c2186102c502013c10c7e79e0f307
PMD: 510.0.070.020.010 dependent functions (editorial navigation only).
Statements, hypotheses and proof bodies are exact source copies. Original whole-file documentation is retained below and may describe other components.
Only containing namespaces and explicit component imports are changed. Distinct historical representations stay distinct.
Uncompiled; no Lean/Lake invocation, public umbrella admission, geometric provider, or new theorem priority claim.
-/

/- Every original recipe, output, realization/resolver equation and fixed certificate retained under full A/E/D. The exact theorem projects its supplied fixed equation only, constructing neither recipe nor rule resolution. -/

import Folder.Archive.RuleEngine

import GRWTSK.FoundationsLogicAndTypeTheory.TypeTheory.DependentTypeTheory.DependentFunctions.NamedMatrixEndomapFixedPoints.Variant87bd37ef0cd18a2c.FixedPointAndCopyData

/-!
# Folder.Archive.FixedPoint

Radiation role: archive-rule-engine
BinaryMatrix spine: This module certifies when a BinaryMatrix is fixed by a presentation rule.
Ontology: archive.fixed_point
Pivot role: none
Zero typology: none
Contract boundary: proved
Composite stack role: infrastructure
-/

namespace GRWTSK.FoundationsLogicAndTypeTheory.TypeTheory.DependentTypeTheory.DependentFunctions.NamedMatrixEndomapFixedPoints.Variant87bd37ef0cd18a2c

open Folder Folder.Archive

structure FixedPointRecipe
    (A : MatrixAction)
    (E : RuleEngine)
    (D : MatrixAtomDictionary) where
  recipe : LayerRecipe A E
  output : Carrier.BinaryMatrix
  realizes : realizeLayerRecipe? A E D recipe = some output
  rule : PresentationRule
  rule_resolved : E.resolve recipe.rule = some rule
  fixed : FixedPointCertificate rule output


theorem fixedPointRecipe_realizes_self
    {A : MatrixAction}
    {E : RuleEngine}
    {D : MatrixAtomDictionary}
    (F : FixedPointRecipe A E D) :
    F.rule.apply F.output = F.output :=
  F.fixed.fixed


end GRWTSK.FoundationsLogicAndTypeTheory.TypeTheory.DependentTypeTheory.DependentFunctions.NamedMatrixEndomapFixedPoints.Variant87bd37ef0cd18a2c
```
