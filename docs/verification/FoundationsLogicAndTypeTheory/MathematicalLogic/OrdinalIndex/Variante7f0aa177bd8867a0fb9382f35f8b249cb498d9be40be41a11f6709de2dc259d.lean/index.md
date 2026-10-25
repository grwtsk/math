# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.OrdinalIndex.Variante7f0aa177bd8867a0fb9382f35f8b249cb498d9be40be41a11f6709de2dc259d

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "7b8dd0b1ba291f1e25fbb5048b171272e41ff156",
  "lexical_observation_count": 4,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/OrdinalIndex/Variante7f0aa177bd8867a0fb9382f35f8b249cb498d9be40be41a11f6709de2dc259d.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/OrdinalIndex/Variante7f0aa177bd8867a0fb9382f35f8b249cb498d9be40be41a11f6709de2dc259d.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/OrdinalIndex/Variante7f0aa177bd8867a0fb9382f35f8b249cb498d9be40be41a11f6709de2dc259d.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `7b8dd0b1ba291f1e25fbb5048b171272e41ff156`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/OrdinalIndex/Variante7f0aa177bd8867a0fb9382f35f8b249cb498d9be40be41a11f6709de2dc259d.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/MathematicalLogic/OrdinalIndex/Variante7f0aa177bd8867a0fb9382f35f8b249cb498d9be40be41a11f6709de2dc259d.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathematics.StratifiedBoundary.Frontier.LocalRank` — import line 6; external provider; requires a separately pinned dependency.
- `Mathematics.StratifiedBoundary.OrdinalTally.Syntax` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [StratifiedFrontierIndex](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/OrdinalIndex/Variante7f0aa177bd8867a0fb9382f35f8b249cb498d9be40be41a11f6709de2dc259d.lean/declarations/stratifiedfrontierindex--2167cef7a97db6c841bce0d5.md) | 20 | `declaration-track:2167cef7a97db6c841bce0d500a54e949459d534dc23945c7fa873d54c193191` |
| 2 | `def` | [finiteFrontierIndex](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/OrdinalIndex/Variante7f0aa177bd8867a0fb9382f35f8b249cb498d9be40be41a11f6709de2dc259d.lean/declarations/finitefrontierindex--1c87c8564ec042d95aad8d68.md) | 26 | `declaration-track:1c87c8564ec042d95aad8d68167778b3a31e0bbea8622effce268ec62a8cda91` |
| 3 | `theorem` | [stratified_frontier_index_injective](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/OrdinalIndex/Variante7f0aa177bd8867a0fb9382f35f8b249cb498d9be40be41a11f6709de2dc259d.lean/declarations/stratified-frontier-index-injective--dd489672e8b0c5fd15e81ea5.md) | 36 | `result-track:dd489672e8b0c5fd15e81ea59128863b799143c720f00a8cddcfd4d60961139b` |
| 4 | `structure` | [IndexedPersistentLineage](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/OrdinalIndex/Variante7f0aa177bd8867a0fb9382f35f8b249cb498d9be40be41a11f6709de2dc259d.lean/declarations/indexedpersistentlineage--d70133a76f3abc0093744a29.md) | 47 | `declaration-track:d70133a76f3abc0093744a294840d1900d5bbd87f88d9d2dad8f47acfa87d0fe` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
