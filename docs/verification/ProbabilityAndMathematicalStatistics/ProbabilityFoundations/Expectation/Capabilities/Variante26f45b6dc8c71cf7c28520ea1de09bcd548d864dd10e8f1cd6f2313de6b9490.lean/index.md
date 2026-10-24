# Verification target: GRWTSK.ProbabilityAndMathematicalStatistics.ProbabilityFoundations.Expectation.Capabilities.Variante26f45b6dc8c71cf7c28520ea1de09bcd548d864dd10e8f1cd6f2313de6b9490

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "3697ae44294b8e62fc47c0099cdea9de0ade2bc9",
  "lexical_observation_count": 11,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/Capabilities/Variante26f45b6dc8c71cf7c28520ea1de09bcd548d864dd10e8f1cd6f2313de6b9490.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/Capabilities/Variante26f45b6dc8c71cf7c28520ea1de09bcd548d864dd10e8f1cd6f2313de6b9490.lean/index.md) · [Full source](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/Capabilities/Variante26f45b6dc8c71cf7c28520ea1de09bcd548d864dd10e8f1cd6f2313de6b9490.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `3697ae44294b8e62fc47c0099cdea9de0ade2bc9`.

Source path: `GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/Capabilities/Variante26f45b6dc8c71cf7c28520ea1de09bcd548d864dd10e8f1cd6f2313de6b9490.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/Capabilities/Variante26f45b6dc8c71cf7c28520ea1de09bcd548d864dd10e8f1cd6f2313de6b9490.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `BitMatrix.Spectral.FinitePacket` — import line 1; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic` — import line 2; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [PacketEquiv](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/Capabilities/Variante26f45b6dc8c71cf7c28520ea1de09bcd548d864dd10e8f1cd6f2313de6b9490.lean/declarations/packetequiv--1039724f98dcd58d07551cca.md) | 24 | `declaration-track:1039724f98dcd58d07551cca26ca65cdeb2b456411bbc6feeb2466f67b3673fa` |
| 2 | `theorem` | [expectation_preserved](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/Capabilities/Variante26f45b6dc8c71cf7c28520ea1de09bcd548d864dd10e8f1cd6f2313de6b9490.lean/declarations/expectation-preserved--2b509a55d179f10e4867ceeb.md) | 40 | `result-track:2b509a55d179f10e4867ceeb3b384c61d2d966c334ba9981a63c80603d2af1d0` |
| 3 | `theorem` | [spectralExpectation_preserved](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/Capabilities/Variante26f45b6dc8c71cf7c28520ea1de09bcd548d864dd10e8f1cd6f2313de6b9490.lean/declarations/spectralexpectation-preserved--19bc5503fc589b06bf9dc8ed.md) | 59 | `result-track:19bc5503fc589b06bf9dc8edab5c187ddbf6dd9a80aadc748c97293e901f8480` |
| 4 | `structure` | [FamilyTurnCovariance](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/Capabilities/Variante26f45b6dc8c71cf7c28520ea1de09bcd548d864dd10e8f1cd6f2313de6b9490.lean/declarations/familyturncovariance--45a07662f6bf3774ad11620a.md) | 75 | `declaration-track:45a07662f6bf3774ad11620ad47de57b3b80ae440ed5c2f5f2d1a8fc2c0c1e34` |
| 5 | `def` | [sumOutcomeEquiv](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/Capabilities/Variante26f45b6dc8c71cf7c28520ea1de09bcd548d864dd10e8f1cd6f2313de6b9490.lean/declarations/sumoutcomeequiv--94f7d8b4a070f849758eb357.md) | 91 | `declaration-track:94f7d8b4a070f849758eb35755af52d73a83e194df1f0a8be77ac9757353dfbb` |
| 6 | `def` | [mixtureEquiv](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/Capabilities/Variante26f45b6dc8c71cf7c28520ea1de09bcd548d864dd10e8f1cd6f2313de6b9490.lean/declarations/mixtureequiv--0b6e3f7bb9d1761e49b6fe7d.md) | 98 | `declaration-track:0b6e3f7bb9d1761e49b6fe7df9716b3ee0a007df037c5f4c0d4b861062557ce5` |
| 7 | `theorem` | [spectralExpectation_reindex](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/Capabilities/Variante26f45b6dc8c71cf7c28520ea1de09bcd548d864dd10e8f1cd6f2313de6b9490.lean/declarations/spectralexpectation-reindex--d050114485bbf4fd05ce50b8.md) | 118 | `result-track:d050114485bbf4fd05ce50b857989a670106213ad0bfa81491a1b24a0c91af8d` |
| 8 | `structure` | [OperatorSemantics](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/Capabilities/Variante26f45b6dc8c71cf7c28520ea1de09bcd548d864dd10e8f1cd6f2313de6b9490.lean/declarations/operatorsemantics--ca2d78d5873a76761d2351b4.md) | 130 | `declaration-track:ca2d78d5873a76761d2351b46e6a124bb48ba33ce7c19cace9d9be65845b4b0e` |
| 9 | `structure` | [OperatorRealization](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/Capabilities/Variante26f45b6dc8c71cf7c28520ea1de09bcd548d864dd10e8f1cd6f2313de6b9490.lean/declarations/operatorrealization--f3e22eb9fa7e664afd71dd3b.md) | 139 | `declaration-track:f3e22eb9fa7e664afd71dd3b7d426bb8891b0f9ebd476aa060b9556d1bccf74a` |
| 10 | `structure` | [UnitaryTransportSemantics](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/Capabilities/Variante26f45b6dc8c71cf7c28520ea1de09bcd548d864dd10e8f1cd6f2313de6b9490.lean/declarations/unitarytransportsemantics--8e8a023f19e1cb5ff9005683.md) | 155 | `declaration-track:8e8a023f19e1cb5ff90056836b19e4c00ab26d6ddcac6208241ab04573bf0258` |
| 11 | `structure` | [OperatorTurnCovariance](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/Capabilities/Variante26f45b6dc8c71cf7c28520ea1de09bcd548d864dd10e8f1cd6f2313de6b9490.lean/declarations/operatorturncovariance--44f504639e8527d3b80d6066.md) | 164 | `declaration-track:44f504639e8527d3b80d6066fb8907d01ce6e79317992d3a73fd580aba0e51cb` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
