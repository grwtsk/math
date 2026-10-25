# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.SetTheory.PartENat.Variant407a4a38628d3f51fc039e91427fd9a555a422bde1643b2e5cf4c2fcf612affc

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "47e21caf7cb314fa5bf4596c22e5b38055a1bd3a",
  "lexical_observation_count": 17,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/SetTheory/PartENat/Variant407a4a38628d3f51fc039e91427fd9a555a422bde1643b2e5cf4c2fcf612affc.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/PartENat/Variant407a4a38628d3f51fc039e91427fd9a555a422bde1643b2e5cf4c2fcf612affc.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/PartENat/Variant407a4a38628d3f51fc039e91427fd9a555a422bde1643b2e5cf4c2fcf612affc.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `47e21caf7cb314fa5bf4596c22e5b38055a1bd3a`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/SetTheory/PartENat/Variant407a4a38628d3f51fc039e91427fd9a555a422bde1643b2e5cf4c2fcf612affc.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/SetTheory/PartENat/Variant407a4a38628d3f51fc039e91427fd9a555a422bde1643b2e5cf4c2fcf612affc.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.SetTheory.Cardinal.ToNat` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Nat.PartENat` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [toPartENat](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/PartENat/Variant407a4a38628d3f51fc039e91427fd9a555a422bde1643b2e5cf4c2fcf612affc.lean/declarations/topartenat--7d7d972cb0294ca4eeac089d.md) | 26 | `declaration-track:7d7d972cb0294ca4eeac089dd791d3ebcf2c61fc799c764ae40c559b29139bf3` |
| 2 | `theorem` | [partENatOfENat_toENat](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/PartENat/Variant407a4a38628d3f51fc039e91427fd9a555a422bde1643b2e5cf4c2fcf612affc.lean/declarations/partenatofenat-toenat--4cebacbb3b644c7cc82dbcb9.md) | 33 | `result-track:4cebacbb3b644c7cc82dbcb9075086856265ce52aaf2bc123bb180434dd7ac38` |
| 3 | `theorem` | [toPartENat_natCast](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/PartENat/Variant407a4a38628d3f51fc039e91427fd9a555a422bde1643b2e5cf4c2fcf612affc.lean/declarations/topartenat-natcast--f5c2637c14d885d970ec7733.md) | 36 | `result-track:f5c2637c14d885d970ec7733758daf72baf496ab47c9fb856d5ea400aa15a6c1` |
| 4 | `theorem` | [toPartENat_apply_of_lt_aleph0](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/PartENat/Variant407a4a38628d3f51fc039e91427fd9a555a422bde1643b2e5cf4c2fcf612affc.lean/declarations/topartenat-apply-of-lt-aleph0--705f92d65a3cda867c44e888.md) | 39 | `result-track:705f92d65a3cda867c44e88899917fd3a74df1b2a43597b99db7769bb4d00242` |
| 5 | `theorem` | [toPartENat_eq_top](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/PartENat/Variant407a4a38628d3f51fc039e91427fd9a555a422bde1643b2e5cf4c2fcf612affc.lean/declarations/topartenat-eq-top--2a4a53eae1944be287c6b5b6.md) | 42 | `result-track:2a4a53eae1944be287c6b5b6791e5280a48824b012f6834103b4f1ded5290d4a` |
| 6 | `theorem` | [toPartENat_apply_of_aleph0_le](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/PartENat/Variant407a4a38628d3f51fc039e91427fd9a555a422bde1643b2e5cf4c2fcf612affc.lean/declarations/topartenat-apply-of-aleph0-le--c053c95b9e6348208da359ce.md) | 48 | `result-track:c053c95b9e6348208da359cec809d7caf6a46df812b83916599bb018b592031c` |
| 7 | `theorem` | [mk_toPartENat_of_infinite](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/PartENat/Variant407a4a38628d3f51fc039e91427fd9a555a422bde1643b2e5cf4c2fcf612affc.lean/declarations/mk-topartenat-of-infinite--41439226d541533417184974.md) | 52 | `result-track:41439226d541533417184974240e4cf380d2e87e431c183b6b61b0dfa8490137` |
| 8 | `theorem` | [aleph0_toPartENat](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/PartENat/Variant407a4a38628d3f51fc039e91427fd9a555a422bde1643b2e5cf4c2fcf612affc.lean/declarations/aleph0-topartenat--fe168c28b7daf53a142bc20b.md) | 56 | `result-track:fe168c28b7daf53a142bc20bbf8e374ae3b1f75ec0bb0525083259ecd684e0d2` |
| 9 | `theorem` | [toPartENat_surjective](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/PartENat/Variant407a4a38628d3f51fc039e91427fd9a555a422bde1643b2e5cf4c2fcf612affc.lean/declarations/topartenat-surjective--bdafb9d2c871d768b5de1cad.md) | 59 | `result-track:bdafb9d2c871d768b5de1cad4333f383dd84951c3e3b481827d0f225f8e3cfc3` |
| 10 | `theorem` | [toPartENat_strictMonoOn](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/PartENat/Variant407a4a38628d3f51fc039e91427fd9a555a422bde1643b2e5cf4c2fcf612affc.lean/declarations/topartenat-strictmonoon--c51d927d9f5b319fd92cf596.md) | 63 | `result-track:c51d927d9f5b319fd92cf5967547ef206fa81560035f9f0d64fb496ef44a1d33` |
| 11 | `lemma` | [toPartENat_le_iff_of_le_aleph0](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/PartENat/Variant407a4a38628d3f51fc039e91427fd9a555a422bde1643b2e5cf4c2fcf612affc.lean/declarations/topartenat-le-iff-of-le-aleph0--011648a2bcd0287f8cdce541.md) | 66 | `result-track:011648a2bcd0287f8cdce541c92887410cd2f894df23f4a6454069d1c39593a9` |
| 12 | `lemma` | [toPartENat_le_iff_of_lt_aleph0](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/PartENat/Variant407a4a38628d3f51fc039e91427fd9a555a422bde1643b2e5cf4c2fcf612affc.lean/declarations/topartenat-le-iff-of-lt-aleph0--6377f6b737da3e363afbade0.md) | 72 | `result-track:6377f6b737da3e363afbade0a2bd12d6b1e8422fc025fc4ea506c0fdd380dd3f` |
| 13 | `lemma` | [toPartENat_inj_of_le_aleph0](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/PartENat/Variant407a4a38628d3f51fc039e91427fd9a555a422bde1643b2e5cf4c2fcf612affc.lean/declarations/topartenat-inj-of-le-aleph0--bc7ba476a45f30dbe66ad9ac.md) | 78 | `result-track:bc7ba476a45f30dbe66ad9acba86db2c728a1c40426063698f247f78e98f1b48` |
| 14 | `theorem` | [toPartENat_mono](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/PartENat/Variant407a4a38628d3f51fc039e91427fd9a555a422bde1643b2e5cf4c2fcf612affc.lean/declarations/topartenat-mono--653970f8cb0f753f640bd699.md) | 85 | `result-track:653970f8cb0f753f640bd69966b2b1c4e774352350f54604b9f18f58fc27ad6a` |
| 15 | `theorem` | [toPartENat_lift](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/PartENat/Variant407a4a38628d3f51fc039e91427fd9a555a422bde1643b2e5cf4c2fcf612affc.lean/declarations/topartenat-lift--3a2ec84952b4edc6a43f4440.md) | 89 | `result-track:3a2ec84952b4edc6a43f44409701b5de4ceaed155d4627ba74dea8561667b609` |
| 16 | `theorem` | [toPartENat_congr](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/PartENat/Variant407a4a38628d3f51fc039e91427fd9a555a422bde1643b2e5cf4c2fcf612affc.lean/declarations/topartenat-congr--53392d2390bc9587c452e4a2.md) | 92 | `result-track:53392d2390bc9587c452e4a22ae7769dfcfb8256a9acdb32561a0c0bca0f60e0` |
| 17 | `theorem` | [mk_toPartENat_eq_coe_card](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/PartENat/Variant407a4a38628d3f51fc039e91427fd9a555a422bde1643b2e5cf4c2fcf612affc.lean/declarations/mk-topartenat-eq-coe-card--087dfa25aafb3bbce326d32a.md) | 95 | `result-track:087dfa25aafb3bbce326d32a5fa08f74db80b5ad5c246cad72e13e77d77543f1` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
