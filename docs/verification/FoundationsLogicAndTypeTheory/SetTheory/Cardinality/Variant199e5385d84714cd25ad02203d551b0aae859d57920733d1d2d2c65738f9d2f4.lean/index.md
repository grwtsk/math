# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.SetTheory.Cardinality.Variant199e5385d84714cd25ad02203d551b0aae859d57920733d1d2d2c65738f9d2f4

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "adfb26b64f255e49fbc037ca31ead88bb4a3e7dd",
  "lexical_observation_count": 8,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/SetTheory/Cardinality/Variant199e5385d84714cd25ad02203d551b0aae859d57920733d1d2d2c65738f9d2f4.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Cardinality/Variant199e5385d84714cd25ad02203d551b0aae859d57920733d1d2d2c65738f9d2f4.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Cardinality/Variant199e5385d84714cd25ad02203d551b0aae859d57920733d1d2d2c65738f9d2f4.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `adfb26b64f255e49fbc037ca31ead88bb4a3e7dd`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/SetTheory/Cardinality/Variant199e5385d84714cd25ad02203d551b0aae859d57920733d1d2d2c65738f9d2f4.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/SetTheory/Cardinality/Variant199e5385d84714cd25ad02203d551b0aae859d57920733d1d2d2c65738f9d2f4.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.SetTheory.Cardinal.Arithmetic` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [Cardinal.mk_ultrafilter_of_finite](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Cardinality/Variant199e5385d84714cd25ad02203d551b0aae859d57920733d1d2d2c65738f9d2f4.lean/declarations/cardinal-mk-ultrafilter-of-finite--d927f8020caacc81f25b1b07.md) | 26 | `result-track:d927f8020caacc81f25b1b0743091be8ea2a61fd7b43f958d29b70d4d3b91cb9` |
| 2 | `theorem` | [Cardinal.mk_filter_of_finite](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Cardinality/Variant199e5385d84714cd25ad02203d551b0aae859d57920733d1d2d2c65738f9d2f4.lean/declarations/cardinal-mk-filter-of-finite--39059d1097e4eacc20763855.md) | 31 | `result-track:39059d1097e4eacc20763855ecd2f2cd176040f475aead54c9369dc425b2c493` |
| 3 | `def` | [interPair](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Cardinality/Variant199e5385d84714cd25ad02203d551b0aae859d57920733d1d2d2c65738f9d2f4.lean/declarations/interpair--e050f467871db20663d1720d.md) | 41 | `declaration-track:e050f467871db20663d1720d0ae79d24e95b0c016671f5165202022ceca1f545` |
| 4 | `def` | [interPairsFilter](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Cardinality/Variant199e5385d84714cd25ad02203d551b0aae859d57920733d1d2d2c65738f9d2f4.lean/declarations/interpairsfilter--de6e7866287e183b25d1f2a5.md) | 44 | `declaration-track:de6e7866287e183b25d1f2a5cd7c5d89291ba16f62e131dd4c1a6e4fbeb589cd` |
| 5 | `instance` | [interPairsFilter_neBot](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Cardinality/Variant199e5385d84714cd25ad02203d551b0aae859d57920733d1d2d2c65738f9d2f4.lean/declarations/interpairsfilter-nebot--ba618cef818fcea16d5315a4.md) | 47 | `declaration-track:ba618cef818fcea16d5315a4b9855e9d6380e57e00c5130cab7ab112feef970a` |
| 6 | `theorem` | [interPairsFilter_pairwiseDisjoint](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Cardinality/Variant199e5385d84714cd25ad02203d551b0aae859d57920733d1d2d2c65738f9d2f4.lean/declarations/interpairsfilter-pairwisedisjoint--78b270a5659a5ccade533d16.md) | 85 | `result-track:78b270a5659a5ccade533d1616a9cfb8e6fcbf423ca8a96d4219cc73d76cab74` |
| 7 | `theorem` | [Cardinal.mk_ultrafilter_of_infinite](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Cardinality/Variant199e5385d84714cd25ad02203d551b0aae859d57920733d1d2d2c65738f9d2f4.lean/declarations/cardinal-mk-ultrafilter-of-infinite--3ff9730dfe86becb3e4c58e7.md) | 105 | `result-track:3ff9730dfe86becb3e4c58e75c8939073f4665833fa902f1ef10b96b203af71d` |
| 8 | `theorem` | [Cardinal.mk_filter_of_infinite](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Cardinality/Variant199e5385d84714cd25ad02203d551b0aae859d57920733d1d2d2c65738f9d2f4.lean/declarations/cardinal-mk-filter-of-infinite--b6190d57ab6aa67497f75b2f.md) | 122 | `result-track:b6190d57ab6aa67497f75b2f169e46159276849f98786c5ac17d55a1e97f8d0f` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
