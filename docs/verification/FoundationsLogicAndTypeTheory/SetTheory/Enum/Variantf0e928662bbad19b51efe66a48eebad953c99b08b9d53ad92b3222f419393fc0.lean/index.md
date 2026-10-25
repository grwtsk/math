# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.SetTheory.Enum.Variantf0e928662bbad19b51efe66a48eebad953c99b08b9d53ad92b3222f419393fc0

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "ea03a3114102ec61188f415d4312045d7abc31a5",
  "lexical_observation_count": 22,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/SetTheory/Enum/Variantf0e928662bbad19b51efe66a48eebad953c99b08b9d53ad92b3222f419393fc0.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Enum/Variantf0e928662bbad19b51efe66a48eebad953c99b08b9d53ad92b3222f419393fc0.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Enum/Variantf0e928662bbad19b51efe66a48eebad953c99b08b9d53ad92b3222f419393fc0.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `ea03a3114102ec61188f415d4312045d7abc31a5`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/SetTheory/Enum/Variantf0e928662bbad19b51efe66a48eebad953c99b08b9d53ad92b3222f419393fc0.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/SetTheory/Enum/Variantf0e928662bbad19b51efe66a48eebad953c99b08b9d53ad92b3222f419393fc0.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.SetTheory.Ordinal.Family` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [enumOrd](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Enum/Variantf0e928662bbad19b51efe66a48eebad953c99b08b9d53ad92b3222f419393fc0.lean/declarations/enumord--3af0bd311cbf9bf7d74292ee.md) | 30 | `declaration-track:3af0bd311cbf9bf7d74292ee743668ba2447f3f005fc83c945741b00967a7d67` |
| 2 | `theorem` | [enumOrd_le_of_forall_lt](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Enum/Variantf0e928662bbad19b51efe66a48eebad953c99b08b9d53ad92b3222f419393fc0.lean/declarations/enumord-le-of-forall-lt--a7104a20449e710a21eff657.md) | 36 | `result-track:a7104a20449e710a21eff6570a26e9b4c1160b7592b215bf33d1420bcfbeaa16` |
| 3 | `theorem` | [enumOrd_nonempty](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Enum/Variantf0e928662bbad19b51efe66a48eebad953c99b08b9d53ad92b3222f419393fc0.lean/declarations/enumord-nonempty--9e1f6f5ce8c8bbebe9a46c20.md) | 41 | `result-track:9e1f6f5ce8c8bbebe9a46c206f71d9160d06dd14e97f80d4ce8d97438e307d0f` |
| 4 | `theorem` | [enumOrd_mem_aux](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Enum/Variantf0e928662bbad19b51efe66a48eebad953c99b08b9d53ad92b3222f419393fc0.lean/declarations/enumord-mem-aux--c5375cdadcb3913056c596ae.md) | 48 | `result-track:c5375cdadcb3913056c596ae294ae44a6448a2c85debe0c1fc917c56094a709f` |
| 5 | `theorem` | [enumOrd_mem](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Enum/Variantf0e928662bbad19b51efe66a48eebad953c99b08b9d53ad92b3222f419393fc0.lean/declarations/enumord-mem--111d96b2ecf8128cb9b77fdd.md) | 53 | `result-track:111d96b2ecf8128cb9b77fdd7f930152f6874945488619a92892ba3578dbcaaa` |
| 6 | `theorem` | [enumOrd_strictMono](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Enum/Variantf0e928662bbad19b51efe66a48eebad953c99b08b9d53ad92b3222f419393fc0.lean/declarations/enumord-strictmono--e9bee17d963f7436893abf9d.md) | 56 | `result-track:e9bee17d963f7436893abf9d4b4b2f2284f207b56d4f7fbbfe782e2f4e1922bd` |
| 7 | `theorem` | [enumOrd_injective](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Enum/Variantf0e928662bbad19b51efe66a48eebad953c99b08b9d53ad92b3222f419393fc0.lean/declarations/enumord-injective--b1fc39d0c7ad000b09f99dda.md) | 59 | `result-track:b1fc39d0c7ad000b09f99ddae91207d9c78a142afe051e91552979133a269599` |
| 8 | `theorem` | [enumOrd_inj](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Enum/Variantf0e928662bbad19b51efe66a48eebad953c99b08b9d53ad92b3222f419393fc0.lean/declarations/enumord-inj--23f9092f30bbd42172762103.md) | 62 | `result-track:23f9092f30bbd42172762103cdbb3a2d13cc1f63761171e8d6e7c5fc201de334` |
| 9 | `theorem` | [enumOrd_le_enumOrd](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Enum/Variantf0e928662bbad19b51efe66a48eebad953c99b08b9d53ad92b3222f419393fc0.lean/declarations/enumord-le-enumord--20ca3dba570f7e6c43bc7cbb.md) | 65 | `result-track:20ca3dba570f7e6c43bc7cbb82d73d4501954dbf5adfeec3ff84c72e344619ad` |
| 10 | `theorem` | [enumOrd_lt_enumOrd](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Enum/Variantf0e928662bbad19b51efe66a48eebad953c99b08b9d53ad92b3222f419393fc0.lean/declarations/enumord-lt-enumord--9b4de6b8cde3913b599555ed.md) | 69 | `result-track:9b4de6b8cde3913b599555ed99afe8c5694515ad6d098a824817e6c9b9daf47d` |
| 11 | `theorem` | [id_le_enumOrd](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Enum/Variantf0e928662bbad19b51efe66a48eebad953c99b08b9d53ad92b3222f419393fc0.lean/declarations/id-le-enumord--a32326dd334addddc65d4d57.md) | 73 | `result-track:a32326dd334addddc65d4d576baade76ffc5a71c10787cb52225c43d6ebeb1ae` |
| 12 | `theorem` | [le_enumOrd_self](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Enum/Variantf0e928662bbad19b51efe66a48eebad953c99b08b9d53ad92b3222f419393fc0.lean/declarations/le-enumord-self--5d1f1a4856cf3664f1dd1bb6.md) | 76 | `result-track:5d1f1a4856cf3664f1dd1bb67ac04071ef15fdd3d6f15b0ceedea5378e86af55` |
| 13 | `theorem` | [enumOrd_succ_le](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Enum/Variantf0e928662bbad19b51efe66a48eebad953c99b08b9d53ad92b3222f419393fc0.lean/declarations/enumord-succ-le--15a7f1fe7583fe96a7ef5ade.md) | 79 | `result-track:15a7f1fe7583fe96a7ef5ade4df6a1ef801d67977d6e26df3726b01bd883b2d8` |
| 14 | `theorem` | [range_enumOrd](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Enum/Variantf0e928662bbad19b51efe66a48eebad953c99b08b9d53ad92b3222f419393fc0.lean/declarations/range-enumord--683560c33785966a749685d5.md) | 86 | `result-track:683560c33785966a749685d50f2ee234b03268ea65ee497364eadc82bf3fc6b3` |
| 15 | `theorem` | [enumOrd_surjective](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Enum/Variantf0e928662bbad19b51efe66a48eebad953c99b08b9d53ad92b3222f419393fc0.lean/declarations/enumord-surjective--1cada6d53de607cc94f4caed.md) | 99 | `result-track:1cada6d53de607cc94f4caed6569cf2ede4b4301d413a1df23891c672964acfe` |
| 16 | `theorem` | [enumOrd_le_of_subset](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Enum/Variantf0e928662bbad19b51efe66a48eebad953c99b08b9d53ad92b3222f419393fc0.lean/declarations/enumord-le-of-subset--b3347506b5a1061f79723d36.md) | 103 | `result-track:b3347506b5a1061f79723d36a03cd3d06ccb5cb45acc554c520b63e82b6d8914` |
| 17 | `theorem` | [eq_enumOrd](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Enum/Variantf0e928662bbad19b51efe66a48eebad953c99b08b9d53ad92b3222f419393fc0.lean/declarations/eq-enumord--bcf2bb30a62cd60bca3c0162.md) | 113 | `result-track:bcf2bb30a62cd60bca3c0162f1b91554b731d2a5ca25a6406f37d2a3ddb95390` |
| 18 | `theorem` | [enumOrd_range](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Enum/Variantf0e928662bbad19b51efe66a48eebad953c99b08b9d53ad92b3222f419393fc0.lean/declarations/enumord-range--8adce9288ec744491f084a2c.md) | 121 | `result-track:8adce9288ec744491f084a2cd2c6d277aa54fae63c5a7a8062c655ad35960f58` |
| 19 | `theorem` | [isNormal_enumOrd](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Enum/Variantf0e928662bbad19b51efe66a48eebad953c99b08b9d53ad92b3222f419393fc0.lean/declarations/isnormal-enumord--bcabe526d372ed2f63ebd73b.md) | 126 | `result-track:bcabe526d372ed2f63ebd73b308d507dac38648f4ed25442d2526cf05358af2b` |
| 20 | `theorem` | [enumOrd_univ](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Enum/Variantf0e928662bbad19b51efe66a48eebad953c99b08b9d53ad92b3222f419393fc0.lean/declarations/enumord-univ--182b50fc7ed6494124422fc0.md) | 139 | `result-track:182b50fc7ed6494124422fc0f8e079ebacea154e705b8c4d5fde6701d48267da` |
| 21 | `theorem` | [enumOrd_zero](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Enum/Variantf0e928662bbad19b51efe66a48eebad953c99b08b9d53ad92b3222f419393fc0.lean/declarations/enumord-zero--5c0a16ca6ce119d98a468c26.md) | 144 | `result-track:5c0a16ca6ce119d98a468c26e47de4bda4f1972a90d349343fea38ff8a0880aa` |
| 22 | `def` | [enumOrdOrderIso](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Enum/Variantf0e928662bbad19b51efe66a48eebad953c99b08b9d53ad92b3222f419393fc0.lean/declarations/enumordorderiso--7c67f8402fcb4a2122afdba7.md) | 149 | `declaration-track:7c67f8402fcb4a2122afdba777b3a00a3e193ee32c5e86d8a940a95f2b156650` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
