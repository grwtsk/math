# Verification target: GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.CeilingLaw256.Variant58a344ade8cc0e62c4f232fe608d92abb0a9103b804f9b1dca494b9acf0a1031

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "b470b5b2a90ce807792c8358412478838f2ac62f",
  "lexical_observation_count": 3,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/CeilingLaw256/Variant58a344ade8cc0e62c4f232fe608d92abb0a9103b804f9b1dca494b9acf0a1031.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/CeilingLaw256/Variant58a344ade8cc0e62c4f232fe608d92abb0a9103b804f9b1dca494b9acf0a1031.lean/index.md) · [Full source](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/CeilingLaw256/Variant58a344ade8cc0e62c4f232fe608d92abb0a9103b804f9b1dca494b9acf0a1031.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `b470b5b2a90ce807792c8358412478838f2ac62f`.

Source path: `GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/CeilingLaw256/Variant58a344ade8cc0e62c4f232fe608d92abb0a9103b804f9b1dca494b9acf0a1031.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/CeilingLaw256/Variant58a344ade8cc0e62c4f232fe608d92abb0a9103b804f9b1dca494b9acf0a1031.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Zeta23.PairCeiling.LawN256` — import line 15; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [lawN256_rows](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/CeilingLaw256/Variant58a344ade8cc0e62c4f232fe608d92abb0a9103b804f9b1dca494b9acf0a1031.lean/declarations/lawn256-rows--b3a0d7b3a2ba9fa154e2354a.md) | 26 | `result-track:b3a0d7b3a2ba9fa154e2354aa5996dd114e95e3b858eb4d146efba32b1719f52` |
| 2 | `theorem` | [ceiling_law256](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/CeilingLaw256/Variant58a344ade8cc0e62c4f232fe608d92abb0a9103b804f9b1dca494b9acf0a1031.lean/declarations/ceiling-law256--869cd9f9cb23283815240c71.md) | 38 | `result-track:869cd9f9cb23283815240c71b54010025c730cfbe4199a49e51698ff791d1272` |
| 3 | `theorem` | [ceiling_law256_decimal](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/CeilingLaw256/Variant58a344ade8cc0e62c4f232fe608d92abb0a9103b804f9b1dca494b9acf0a1031.lean/declarations/ceiling-law256-decimal--8617fadcf5f06a44a9d81544.md) | 53 | `result-track:8617fadcf5f06a44a9d815448817478bf336bceb536fa87e8438db73a7005d5d` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
