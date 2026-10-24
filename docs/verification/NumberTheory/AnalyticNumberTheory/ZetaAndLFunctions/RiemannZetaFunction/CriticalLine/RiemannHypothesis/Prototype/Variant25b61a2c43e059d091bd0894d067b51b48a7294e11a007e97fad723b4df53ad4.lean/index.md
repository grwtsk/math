# Verification target: GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.Prototype.Variant25b61a2c43e059d091bd0894d067b51b48a7294e11a007e97fad723b4df53ad4

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "e315b2fd4faadef3dd46bf980c7492ff380c3bfd",
  "lexical_observation_count": 6,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Prototype/Variant25b61a2c43e059d091bd0894d067b51b48a7294e11a007e97fad723b4df53ad4.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Prototype/Variant25b61a2c43e059d091bd0894d067b51b48a7294e11a007e97fad723b4df53ad4.lean/index.md) · [Full source](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Prototype/Variant25b61a2c43e059d091bd0894d067b51b48a7294e11a007e97fad723b4df53ad4.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `e315b2fd4faadef3dd46bf980c7492ff380c3bfd`.

Source path: `GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Prototype/Variant25b61a2c43e059d091bd0894d067b51b48a7294e11a007e97fad723b4df53ad4.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Prototype/Variant25b61a2c43e059d091bd0894d067b51b48a7294e11a007e97fad723b4df53ad4.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.RiemannHypothesis.SourcePrimeSquareTailWork` — import line 6; external provider; requires a separately pinned dependency.
- `FormalResearch.RiemannHypothesis.SourcePairedTailQuadrature` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [pairedSquareReadout](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Prototype/Variant25b61a2c43e059d091bd0894d067b51b48a7294e11a007e97fad723b4df53ad4.lean/declarations/pairedsquarereadout--23f99f3e67de941772c27ddc.md) | 36 | `declaration-track:23f99f3e67de941772c27ddce29bb4ec70914a6b387c1a4d6ce1ef49002ebca8` |
| 2 | `theorem` | [squarePrefix_pairedTail_work](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Prototype/Variant25b61a2c43e059d091bd0894d067b51b48a7294e11a007e97fad723b4df53ad4.lean/declarations/squareprefix-pairedtail-work--917d902cc609be63d1196d0d.md) | 41 | `result-track:917d902cc609be63d1196d0d7a2c183f1f024e15e71ed47b9bf9af29b660d153` |
| 3 | `theorem` | [squareTail_pairedTail_work](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Prototype/Variant25b61a2c43e059d091bd0894d067b51b48a7294e11a007e97fad723b4df53ad4.lean/declarations/squaretail-pairedtail-work--251281266a42606b2b77e81f.md) | 69 | `result-track:251281266a42606b2b77e81f6cab3a0506ad6b68e27ee1350c12a101ee55ed34` |
| 4 | `theorem` | [squareTailPairedWork_eq_neg_integral_pairedTail_deriv](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Prototype/Variant25b61a2c43e059d091bd0894d067b51b48a7294e11a007e97fad723b4df53ad4.lean/declarations/squaretailpairedwork-eq-neg-integral-pairedtail-deriv--176958c65a0dfc32d4b3b19d.md) | 85 | `result-track:176958c65a0dfc32d4b3b19dd52eafb026475d5b1042da86fe1cbcf4c4a34043` |
| 5 | `theorem` | [squareTailPairedWork_eq_neg_readout](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Prototype/Variant25b61a2c43e059d091bd0894d067b51b48a7294e11a007e97fad723b4df53ad4.lean/declarations/squaretailpairedwork-eq-neg-readout--826e912c2fbfa13d519e3b77.md) | 104 | `result-track:826e912c2fbfa13d519e3b77ba337d438a3bfadbd39a704c155a6c5328c92dc9` |
| 6 | `theorem` | [squareRemovedPairedWork_eq_first_square_quadrature](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Prototype/Variant25b61a2c43e059d091bd0894d067b51b48a7294e11a007e97fad723b4df53ad4.lean/declarations/squareremovedpairedwork-eq-first-square-quadrature--a302b06a8a5f616f6045bf81.md) | 110 | `result-track:a302b06a8a5f616f6045bf819bfd79b7a52b9b675ba5091c1c8d66e9bcfb8c79` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
