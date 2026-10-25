# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.SetTheory.HasCardinalLT.Variant8ee974cff7b96030b109e98058f157e950b500097c0212e3f1155728d36e2a48

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "f45099c63a72fcdbe09fc7b24f86030c435322fc",
  "lexical_observation_count": 12,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/SetTheory/HasCardinalLT/Variant8ee974cff7b96030b109e98058f157e950b500097c0212e3f1155728d36e2a48.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/HasCardinalLT/Variant8ee974cff7b96030b109e98058f157e950b500097c0212e3f1155728d36e2a48.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/HasCardinalLT/Variant8ee974cff7b96030b109e98058f157e950b500097c0212e3f1155728d36e2a48.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `f45099c63a72fcdbe09fc7b24f86030c435322fc`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/SetTheory/HasCardinalLT/Variant8ee974cff7b96030b109e98058f157e950b500097c0212e3f1155728d36e2a48.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/SetTheory/HasCardinalLT/Variant8ee974cff7b96030b109e98058f157e950b500097c0212e3f1155728d36e2a48.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.SetTheory.Cardinal.Regular` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [HasCardinalLT](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/HasCardinalLT/Variant8ee974cff7b96030b109e98058f157e950b500097c0212e3f1155728d36e2a48.lean/declarations/hascardinallt--2a6c73ac0864788a48748153.md) | 28 | `declaration-track:2a6c73ac0864788a4874815300b77e93b603966c53810b63a113a1c12bde3aff` |
| 2 | `lemma` | [hasCardinalLT_iff_cardinal_mk_lt](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/HasCardinalLT/Variant8ee974cff7b96030b109e98058f157e950b500097c0212e3f1155728d36e2a48.lean/declarations/hascardinallt-iff-cardinal-mk-lt--2cc5c24e0a4d510dbb425c30.md) | 31 | `result-track:2cc5c24e0a4d510dbb425c30e50ecc3ce62ab82ec990377c78dbd934545fc7a6` |
| 3 | `lemma` | [small](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/HasCardinalLT/Variant8ee974cff7b96030b109e98058f157e950b500097c0212e3f1155728d36e2a48.lean/declarations/small--71afd2a9241969b8748dd48c.md) | 43 | `result-track:71afd2a9241969b8748dd48cb96b507d8483bfdd9c273f27579f25ac14a333c7` |
| 4 | `lemma` | [of_le](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/HasCardinalLT/Variant8ee974cff7b96030b109e98058f157e950b500097c0212e3f1155728d36e2a48.lean/declarations/of-le--f49fb088a4645495d5c7b383.md) | 48 | `result-track:f49fb088a4645495d5c7b383636471ed9733d2e17fa8b9cd3c4f86670d1b4f62` |
| 5 | `lemma` | [of_injective](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/HasCardinalLT/Variant8ee974cff7b96030b109e98058f157e950b500097c0212e3f1155728d36e2a48.lean/declarations/of-injective--ef6f36bb2eccae7289530e16.md) | 54 | `result-track:ef6f36bb2eccae7289530e16b83167931eff440078f67662f040ac38ea652e14` |
| 6 | `lemma` | [of_surjective](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/HasCardinalLT/Variant8ee974cff7b96030b109e98058f157e950b500097c0212e3f1155728d36e2a48.lean/declarations/of-surjective--575ee062ba37fdcb466e136b.md) | 63 | `result-track:575ee062ba37fdcb466e136ba35fc6bdff3171b60274331368138f7864e50531` |
| 7 | `lemma` | [hasCardinalLT_iff_of_equiv](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/HasCardinalLT/Variant8ee974cff7b96030b109e98058f157e950b500097c0212e3f1155728d36e2a48.lean/declarations/hascardinallt-iff-of-equiv--4ced66bc80e43b8323f4451c.md) | 76 | `result-track:4ced66bc80e43b8323f4451cc9314baa6d6a92a90da1fac0980541f9f805a0f5` |
| 8 | `lemma` | [hasCardinalLT_aleph0_iff](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/HasCardinalLT/Variant8ee974cff7b96030b109e98058f157e950b500097c0212e3f1155728d36e2a48.lean/declarations/hascardinallt-aleph0-iff--45747cfbe22ecb00b849fb90.md) | 82 | `result-track:45747cfbe22ecb00b849fb900a9cbfa968bb945aa850a3555eef5f22c632366b` |
| 9 | `lemma` | [hasCardinalLT_sum_iff](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/HasCardinalLT/Variant8ee974cff7b96030b109e98058f157e950b500097c0212e3f1155728d36e2a48.lean/declarations/hascardinallt-sum-iff--f8111fe9dbd177a580be67b4.md) | 86 | `result-track:f8111fe9dbd177a580be67b468465a218b987726ec27f55e4cb03d91d5e7271c` |
| 10 | `lemma` | [hasCardinalLT_option_iff](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/HasCardinalLT/Variant8ee974cff7b96030b109e98058f157e950b500097c0212e3f1155728d36e2a48.lean/declarations/hascardinallt-option-iff--29f1287a1989753579f1d81b.md) | 100 | `result-track:29f1287a1989753579f1d81babdca9671ddf5a02a0fce5f9d6712f1b441375e4` |
| 11 | `lemma` | [exists_regular_cardinal](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/HasCardinalLT/Variant8ee974cff7b96030b109e98058f157e950b500097c0212e3f1155728d36e2a48.lean/declarations/exists-regular-cardinal--51fc6d635fec00fa2c198728.md) | 113 | `result-track:51fc6d635fec00fa2c19872822482224e85e697df0bda4b89a934fc184cb1494` |
| 12 | `lemma` | [exists_regular_cardinal_forall](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/HasCardinalLT/Variant8ee974cff7b96030b109e98058f157e950b500097c0212e3f1155728d36e2a48.lean/declarations/exists-regular-cardinal-forall--69f3b517bc3220d396b34874.md) | 122 | `result-track:69f3b517bc3220d396b348745d7f84dcfd1f224f72dbe19fc89291705129b194` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
