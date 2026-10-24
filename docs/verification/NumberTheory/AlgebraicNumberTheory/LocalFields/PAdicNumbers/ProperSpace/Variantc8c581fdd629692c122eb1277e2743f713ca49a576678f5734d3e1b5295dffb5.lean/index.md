# Verification target: GRWTSK.NumberTheory.AlgebraicNumberTheory.LocalFields.PAdicNumbers.ProperSpace.Variantc8c581fdd629692c122eb1277e2743f713ca49a576678f5734d3e1b5295dffb5

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "31f109d9a128762c2d71331ffc555073797f1a96",
  "lexical_observation_count": 3,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/AlgebraicNumberTheory/LocalFields/PAdicNumbers/ProperSpace/Variantc8c581fdd629692c122eb1277e2743f713ca49a576678f5734d3e1b5295dffb5.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/LocalFields/PAdicNumbers/ProperSpace/Variantc8c581fdd629692c122eb1277e2743f713ca49a576678f5734d3e1b5295dffb5.lean/index.md) · [Full source](../../../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/LocalFields/PAdicNumbers/ProperSpace/Variantc8c581fdd629692c122eb1277e2743f713ca49a576678f5734d3e1b5295dffb5.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `31f109d9a128762c2d71331ffc555073797f1a96`.

Source path: `GRWTSK/NumberTheory/AlgebraicNumberTheory/LocalFields/PAdicNumbers/ProperSpace/Variantc8c581fdd629692c122eb1277e2743f713ca49a576678f5734d3e1b5295dffb5.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/AlgebraicNumberTheory/LocalFields/PAdicNumbers/ProperSpace/Variantc8c581fdd629692c122eb1277e2743f713ca49a576678f5734d3e1b5295dffb5.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.Normed.Field.ProperSpace` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.NumberTheory.Padics.RingHoms` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [totallyBounded_univ](../../../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/LocalFields/PAdicNumbers/ProperSpace/Variantc8c581fdd629692c122eb1277e2743f713ca49a576678f5734d3e1b5295dffb5.lean/declarations/totallybounded-univ--82dc665554ae44fae8a9edb2.md) | 49 | `result-track:82dc665554ae44fae8a9edb2c766e7a5df63584f6adba0da6e826a0a39d37239` |
| 2 | `instance` | [compactSpace](../../../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/LocalFields/PAdicNumbers/ProperSpace/Variantc8c581fdd629692c122eb1277e2743f713ca49a576678f5734d3e1b5295dffb5.lean/declarations/compactspace--64bcdf50fbbe8a2346f77c04.md) | 59 | `declaration-track:64bcdf50fbbe8a2346f77c0478730e28402bca7b5bcd09d05cd185dbefb35818` |
| 3 | `instance` | [(anonymous)](../../../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/LocalFields/PAdicNumbers/ProperSpace/Variantc8c581fdd629692c122eb1277e2743f713ca49a576678f5734d3e1b5295dffb5.lean/declarations/instance--680cc2c4e86663abbf5b128b.md) | 68 | `declaration-track:680cc2c4e86663abbf5b128b19c5eee208f1658c9535d3aea55187f8e4951b06` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
