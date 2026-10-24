# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.GraphTheory.Properties.Variant1eaa9b57215ffbc5d8de126016ed4a6cd52515a0f7c3f49d59ea4821c52e35d4

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "fcd414b272af396ab37591d54190be2126f38103",
  "lexical_observation_count": 5,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/GraphTheory/Properties/Variant1eaa9b57215ffbc5d8de126016ed4a6cd52515a0f7c3f49d59ea4821c52e35d4.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Properties/Variant1eaa9b57215ffbc5d8de126016ed4a6cd52515a0f7c3f49d59ea4821c52e35d4.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Properties/Variant1eaa9b57215ffbc5d8de126016ed4a6cd52515a0f7c3f49d59ea4821c52e35d4.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `fcd414b272af396ab37591d54190be2126f38103`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/GraphTheory/Properties/Variant1eaa9b57215ffbc5d8de126016ed4a6cd52515a0f7c3f49d59ea4821c52e35d4.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/GraphTheory/Properties/Variant1eaa9b57215ffbc5d8de126016ed4a6cd52515a0f7c3f49d59ea4821c52e35d4.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Combinatorics.SimpleGraph.Ends.Defs` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.CofilteredSystem` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [(anonymous)](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Properties/Variant1eaa9b57215ffbc5d8de126016ed4a6cd52515a0f7c3f49d59ea4821c52e35d4.lean/declarations/instance--b8c66dd16c91a23056132802.md) | 29 | `declaration-track:b8c66dd16c91a2305613280299bdab486d5f610db7d53c98870389b1001d9049` |
| 2 | `lemma` | [end_componentCompl_infinite](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Properties/Variant1eaa9b57215ffbc5d8de126016ed4a6cd52515a0f7c3f49d59ea4821c52e35d4.lean/declarations/end-componentcompl-infinite--1c88dbb2c19ef20b28c06669.md) | 38 | `result-track:1c88dbb2c19ef20b28c06669197b4eb49b664486c670083c0f58a8ac2652ce76` |
| 3 | `instance` | [compononentComplFunctor_nonempty_of_infinite](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Properties/Variant1eaa9b57215ffbc5d8de126016ed4a6cd52515a0f7c3f49d59ea4821c52e35d4.lean/declarations/compononentcomplfunctor-nonempty-of-infinite--46a0c4c9022ab8da2321cb57.md) | 44 | `declaration-track:46a0c4c9022ab8da2321cb579ff144d72a985f2eb3882bed3bf8dffe042a3f6e` |
| 4 | `instance` | [componentComplFunctor_finite](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Properties/Variant1eaa9b57215ffbc5d8de126016ed4a6cd52515a0f7c3f49d59ea4821c52e35d4.lean/declarations/componentcomplfunctor-finite--9607b7d5fdc1c1f8a47c37a1.md) | 47 | `declaration-track:9607b7d5fdc1c1f8a47c37a14909e99a1b4ffd00be30500bdd7cd50d3745ffd2` |
| 5 | `lemma` | [nonempty_ends_of_infinite](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Properties/Variant1eaa9b57215ffbc5d8de126016ed4a6cd52515a0f7c3f49d59ea4821c52e35d4.lean/declarations/nonempty-ends-of-infinite--bca4c9d21662578b4d7a9f8b.md) | 51 | `result-track:bca4c9d21662578b4d7a9f8b9657f16a323713dad75664adb6bcaaf0cbcd2e7f` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
