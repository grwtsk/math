# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.SetTheory.Cardinality.Variantda3933bf3ebe3fd6500934bbf75c7787678bb71ebd58ff5e4bed2b02fa3f1c5c

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "7d8a0b6365da0797eb4f88e25b9f31a8252572ef",
  "lexical_observation_count": 8,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/SetTheory/Cardinality/Variantda3933bf3ebe3fd6500934bbf75c7787678bb71ebd58ff5e4bed2b02fa3f1c5c.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Cardinality/Variantda3933bf3ebe3fd6500934bbf75c7787678bb71ebd58ff5e4bed2b02fa3f1c5c.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Cardinality/Variantda3933bf3ebe3fd6500934bbf75c7787678bb71ebd58ff5e4bed2b02fa3f1c5c.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `7d8a0b6365da0797eb4f88e25b9f31a8252572ef`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/SetTheory/Cardinality/Variantda3933bf3ebe3fd6500934bbf75c7787678bb71ebd58ff5e4bed2b02fa3f1c5c.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/SetTheory/Cardinality/Variantda3933bf3ebe3fd6500934bbf75c7787678bb71ebd58ff5e4bed2b02fa3f1c5c.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.SetTheory.Cardinal.Arithmetic` — import line 17; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [Cardinal.mk_ultrafilter_of_finite](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Cardinality/Variantda3933bf3ebe3fd6500934bbf75c7787678bb71ebd58ff5e4bed2b02fa3f1c5c.lean/declarations/cardinal-mk-ultrafilter-of-finite--7caca53abe28c4dfa2fda3dd.md) | 34 | `result-track:7caca53abe28c4dfa2fda3ddcf423b026402d77fe75ee6a17343ecb84b98e0db` |
| 2 | `theorem` | [Cardinal.mk_filter_of_finite](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Cardinality/Variantda3933bf3ebe3fd6500934bbf75c7787678bb71ebd58ff5e4bed2b02fa3f1c5c.lean/declarations/cardinal-mk-filter-of-finite--5b64b633d534aff4d3bc899b.md) | 39 | `result-track:5b64b633d534aff4d3bc899b7778de6e8067b22a37afa24fff726a6b1f4c115d` |
| 3 | `def` | [interPair](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Cardinality/Variantda3933bf3ebe3fd6500934bbf75c7787678bb71ebd58ff5e4bed2b02fa3f1c5c.lean/declarations/interpair--baf7016c911b2a79be8f76b8.md) | 49 | `declaration-track:baf7016c911b2a79be8f76b8d963c7b70f3f9df05df6d939d1a2715ccba4b7c2` |
| 4 | `def` | [interPairsFilter](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Cardinality/Variantda3933bf3ebe3fd6500934bbf75c7787678bb71ebd58ff5e4bed2b02fa3f1c5c.lean/declarations/interpairsfilter--14400e90096e7fc1177173c5.md) | 52 | `declaration-track:14400e90096e7fc1177173c591803d9486667738c0538ef10c8f031f1b07108c` |
| 5 | `instance` | [interPairsFilter_neBot](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Cardinality/Variantda3933bf3ebe3fd6500934bbf75c7787678bb71ebd58ff5e4bed2b02fa3f1c5c.lean/declarations/interpairsfilter-nebot--61763a35b111b4680eaf4dd4.md) | 55 | `declaration-track:61763a35b111b4680eaf4dd46f6d015c33464755f30eb4db386b3420268bcd14` |
| 6 | `theorem` | [interPairsFilter_pairwiseDisjoint](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Cardinality/Variantda3933bf3ebe3fd6500934bbf75c7787678bb71ebd58ff5e4bed2b02fa3f1c5c.lean/declarations/interpairsfilter-pairwisedisjoint--396019a0a01532c9b8571d28.md) | 93 | `result-track:396019a0a01532c9b8571d28454384643615a3d2cf9a307d145abaf48e8fc54b` |
| 7 | `theorem` | [Cardinal.mk_ultrafilter_of_infinite](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Cardinality/Variantda3933bf3ebe3fd6500934bbf75c7787678bb71ebd58ff5e4bed2b02fa3f1c5c.lean/declarations/cardinal-mk-ultrafilter-of-infinite--8afb2a2736401b58e9e9efdd.md) | 113 | `result-track:8afb2a2736401b58e9e9efddaa7cb6e0a736ad073170c6c860844c55492d7478` |
| 8 | `theorem` | [Cardinal.mk_filter_of_infinite](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Cardinality/Variantda3933bf3ebe3fd6500934bbf75c7787678bb71ebd58ff5e4bed2b02fa3f1c5c.lean/declarations/cardinal-mk-filter-of-infinite--fc9ef779a5e94f18b7ab0a5a.md) | 130 | `result-track:fc9ef779a5e94f18b7ab0a5a04ae20fa26d307597d70a884e2c8b82dde84e93b` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
