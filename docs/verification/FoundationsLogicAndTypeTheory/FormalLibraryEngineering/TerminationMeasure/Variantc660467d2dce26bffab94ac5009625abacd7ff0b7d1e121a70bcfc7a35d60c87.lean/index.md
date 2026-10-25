# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.TerminationMeasure.Variantc660467d2dce26bffab94ac5009625abacd7ff0b7d1e121a70bcfc7a35d60c87

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "bd9b520513d877501adeae20d62fcc4f3cea7498",
  "lexical_observation_count": 5,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/TerminationMeasure/Variantc660467d2dce26bffab94ac5009625abacd7ff0b7d1e121a70bcfc7a35d60c87.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/TerminationMeasure/Variantc660467d2dce26bffab94ac5009625abacd7ff0b7d1e121a70bcfc7a35d60c87.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/TerminationMeasure/Variantc660467d2dce26bffab94ac5009625abacd7ff0b7d1e121a70bcfc7a35d60c87.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `bd9b520513d877501adeae20d62fcc4f3cea7498`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/TerminationMeasure/Variantc660467d2dce26bffab94ac5009625abacd7ff0b7d1e121a70bcfc7a35d60c87.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/TerminationMeasure/Variantc660467d2dce26bffab94ac5009625abacd7ff0b7d1e121a70bcfc7a35d60c87.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Init.Omega` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [TerminationMeasure](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/TerminationMeasure/Variantc660467d2dce26bffab94ac5009625abacd7ff0b7d1e121a70bcfc7a35d60c87.lean/declarations/terminationmeasure--e76cf81ef308095d8fa38be0.md) | 37 | `declaration-track:e76cf81ef308095d8fa38be06312e0690f578aca042e02c489d63dc89092a36b` |
| 2 | `abbrev` | [TerminationMeasures](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/TerminationMeasure/Variantc660467d2dce26bffab94ac5009625abacd7ff0b7d1e121a70bcfc7a35d60c87.lean/declarations/terminationmeasures--1c4d1df33b3533fc508c3cef.md) | 44 | `declaration-track:1c4d1df33b3533fc508c3cef13a1e71a445276cb8c201c8e86cc4f094cb01e3e` |
| 3 | `def` | [TerminationMeasure.elab](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/TerminationMeasure/Variantc660467d2dce26bffab94ac5009625abacd7ff0b7d1e121a70bcfc7a35d60c87.lean/declarations/terminationmeasure-elab--7e4b8ee7ac2486a48448eee7.md) | 52 | `declaration-track:7e4b8ee7ac2486a48448eee73a31eab1af2f8afa570530d77345409d62383594` |
| 4 | `def` | [TerminationMeasure.structuralArg](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/TerminationMeasure/Variantc660467d2dce26bffab94ac5009625abacd7ff0b7d1e121a70bcfc7a35d60c87.lean/declarations/terminationmeasure-structuralarg--fe00ebe85da10b774ef0343c.md) | 89 | `declaration-track:fe00ebe85da10b774ef0343cd525652615210073a97a5e345783a738d86776eb` |
| 5 | `def` | [TerminationMeasure.delab](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/TerminationMeasure/Variantc660467d2dce26bffab94ac5009625abacd7ff0b7d1e121a70bcfc7a35d60c87.lean/declarations/terminationmeasure-delab--58f65b0b84f8ac59493604d7.md) | 105 | `declaration-track:58f65b0b84f8ac59493604d72bc66bc1947de04d13f057b5c3247dc7fbf26505` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
