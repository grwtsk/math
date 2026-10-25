# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.ClassGroup.Variant48f93bd5954ea0140a7ae8ba633f49784d65efc71395328459c3af4c71792503

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "7b31e1b20d6be8aabaf838d1636b5320aaba114b",
  "lexical_observation_count": 34,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/ClassGroup/Variant48f93bd5954ea0140a7ae8ba633f49784d65efc71395328459c3af4c71792503.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/ClassGroup/Variant48f93bd5954ea0140a7ae8ba633f49784d65efc71395328459c3af4c71792503.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/ClassGroup/Variant48f93bd5954ea0140a7ae8ba633f49784d65efc71395328459c3af4c71792503.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `7b31e1b20d6be8aabaf838d1636b5320aaba114b`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/ClassGroup/Variant48f93bd5954ea0140a7ae8ba633f49784d65efc71395328459c3af4c71792503.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/MathematicalLogic/ClassGroup/Variant48f93bd5954ea0140a7ae8ba633f49784d65efc71395328459c3af4c71792503.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.GroupTheory.QuotientGroup` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.DedekindDomain.Ideal` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [coe_toPrincipalIdeal](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/ClassGroup/Variant48f93bd5954ea0140a7ae8ba633f49784d65efc71395328459c3af4c71792503.lean/declarations/coe-toprincipalideal--112d5f6798f560b6dc6ca814.md) | 65 | `result-track:112d5f6798f560b6dc6ca81443d7b7f46a7762976e63ef28478bc50ec8e8046c` |
| 2 | `theorem` | [toPrincipalIdeal_eq_iff](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/ClassGroup/Variant48f93bd5954ea0140a7ae8ba633f49784d65efc71395328459c3af4c71792503.lean/declarations/toprincipalideal-eq-iff--942a501e79a7dc32929d10dd.md) | 71 | `result-track:942a501e79a7dc32929d10dd1281205dc5f9b09db464123dba22cefab017906f` |
| 3 | `theorem` | [mem_principal_ideals_iff](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/ClassGroup/Variant48f93bd5954ea0140a7ae8ba633f49784d65efc71395328459c3af4c71792503.lean/declarations/mem-principal-ideals-iff--d3a33d339ae119c1fb5694ce.md) | 76 | `result-track:d3a33d339ae119c1fb5694ce29682d940981bd39f6a15bdfd43874169237f0bb` |
| 4 | `instance` | [PrincipalIdeals.normal](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/ClassGroup/Variant48f93bd5954ea0140a7ae8ba633f49784d65efc71395328459c3af4c71792503.lean/declarations/principalideals-normal--ac9a0aa150e6bd389a4974df.md) | 86 | `declaration-track:ac9a0aa150e6bd389a4974df501acf95319754b4ed3a4e331b4009f2d5650bc0` |
| 5 | `def` | [ClassGroup](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/ClassGroup/Variant48f93bd5954ea0140a7ae8ba633f49784d65efc71395328459c3af4c71792503.lean/declarations/classgroup--ee8fb1b1ff1347286a55b635.md) | 98 | `declaration-track:ee8fb1b1ff1347286a55b63504b16b1c4a7d3f5ae72a34589e8750156e554671` |
| 6 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/ClassGroup/Variant48f93bd5954ea0140a7ae8ba633f49784d65efc71395328459c3af4c71792503.lean/declarations/instance--82cb55696e10adb379cd7138.md) | 102 | `declaration-track:82cb55696e10adb379cd7138cd2741c62cff44b8b4498eefd404de2efc3c6dc7` |
| 7 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/ClassGroup/Variant48f93bd5954ea0140a7ae8ba633f49784d65efc71395328459c3af4c71792503.lean/declarations/instance--a57b2fe0b827942187d7e9d2.md) | 105 | `declaration-track:a57b2fe0b827942187d7e9d236dc2f04b82603fd526c5b2539b765bb9a243088` |
| 8 | `def` | [ClassGroup.mk](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/ClassGroup/Variant48f93bd5954ea0140a7ae8ba633f49784d65efc71395328459c3af4c71792503.lean/declarations/classgroup-mk--f1d14ae72404a4baa9c9fa02.md) | 110 | `declaration-track:f1d14ae72404a4baa9c9fa02447cd6cd8468b2d43069a3da4a2bcd955c5be1be` |
| 9 | `theorem` | [ClassGroup.Quot_mk_eq_mk](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/ClassGroup/Variant48f93bd5954ea0140a7ae8ba633f49784d65efc71395328459c3af4c71792503.lean/declarations/classgroup-quot-mk-eq-mk--4d37e6a3e8cd7d9b888e2805.md) | 116 | `result-track:4d37e6a3e8cd7d9b888e2805a0e51e9a029b37440b6d70ef4e6d7432b0051530` |
| 10 | `theorem` | [ClassGroup.mk_eq_mk](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/ClassGroup/Variant48f93bd5954ea0140a7ae8ba633f49784d65efc71395328459c3af4c71792503.lean/declarations/classgroup-mk-eq-mk--3cd95a1d28ad6b41faab694b.md) | 122 | `result-track:3cd95a1d28ad6b41faab694bb36e98f962c03e8be05744b791be75d0a089def6` |
| 11 | `theorem` | [ClassGroup.mk_eq_mk_of_coe_ideal](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/ClassGroup/Variant48f93bd5954ea0140a7ae8ba633f49784d65efc71395328459c3af4c71792503.lean/declarations/classgroup-mk-eq-mk-of-coe-ideal--902cbf0960fc24df2fd8268a.md) | 129 | `result-track:902cbf0960fc24df2fd8268a0980d73231c4eb944036a66954d653f8781d80bc` |
| 12 | `theorem` | [ClassGroup.mk_eq_one_of_coe_ideal](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/ClassGroup/Variant48f93bd5954ea0140a7ae8ba633f49784d65efc71395328459c3af4c71792503.lean/declarations/classgroup-mk-eq-one-of-coe-ideal--b8a138ac6512f57e0ace6027.md) | 150 | `result-track:b8a138ac6512f57e0ace6027b3bd83acba0a51ec476277ae0c40f925db0f7760` |
| 13 | `theorem` | [ClassGroup.induction](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/ClassGroup/Variant48f93bd5954ea0140a7ae8ba633f49784d65efc71395328459c3af4c71792503.lean/declarations/classgroup-induction--50738e9e36bc0c55db796f33.md) | 173 | `result-track:50738e9e36bc0c55db796f33f94a11b5df76c3f885023a4a65084e7f37e3d5c8` |
| 14 | `def` | [ClassGroup.equiv](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/ClassGroup/Variant48f93bd5954ea0140a7ae8ba633f49784d65efc71395328459c3af4c71792503.lean/declarations/classgroup-equiv--716d003a4f93ebe9c675dc16.md) | 184 | `declaration-track:716d003a4f93ebe9c675dc16e7107009946a63cc31a2c70cd992171b8d70b9ec` |
| 15 | `theorem` | [ClassGroup.equiv_mk](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/ClassGroup/Variant48f93bd5954ea0140a7ae8ba633f49784d65efc71395328459c3af4c71792503.lean/declarations/classgroup-equiv-mk--5f6bd39b51dd98b09653bc7e.md) | 212 | `result-track:5f6bd39b51dd98b09653bc7ec3a295dfb2aecb55d7f2f03d14c154a3e10a28b1` |
| 16 | `theorem` | [ClassGroup.mk_canonicalEquiv](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/ClassGroup/Variant48f93bd5954ea0140a7ae8ba633f49784d65efc71395328459c3af4c71792503.lean/declarations/classgroup-mk-canonicalequiv--0b619319afbc00736d8f785c.md) | 223 | `result-track:0b619319afbc00736d8f785cc2ba5ec5ad4f30c57c9a78c979220721ab83122d` |
| 17 | `def` | [FractionalIdeal.mk0](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/ClassGroup/Variant48f93bd5954ea0140a7ae8ba633f49784d65efc71395328459c3af4c71792503.lean/declarations/fractionalideal-mk0--5f93bf38ebb7a87e5289bc08.md) | 233 | `declaration-track:5f93bf38ebb7a87e5289bc08a6a308994d8d8173d2a4577a8d788ea4b3094338` |
| 18 | `theorem` | [FractionalIdeal.coe_mk0](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/ClassGroup/Variant48f93bd5954ea0140a7ae8ba633f49784d65efc71395328459c3af4c71792503.lean/declarations/fractionalideal-coe-mk0--3c9f78f54b8738051ff55ad3.md) | 241 | `result-track:3c9f78f54b8738051ff55ad35933e39c82f1235100bcb6053d16b83ca5687575` |
| 19 | `theorem` | [FractionalIdeal.canonicalEquiv_mk0](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/ClassGroup/Variant48f93bd5954ea0140a7ae8ba633f49784d65efc71395328459c3af4c71792503.lean/declarations/fractionalideal-canonicalequiv-mk0--749c7d01dc38555e51fb5efb.md) | 245 | `result-track:749c7d01dc38555e51fb5efb10ba935eb9cc59f049f44e2d10c85dd8b22c1fbb` |
| 20 | `theorem` | [FractionalIdeal.map_canonicalEquiv_mk0](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/ClassGroup/Variant48f93bd5954ea0140a7ae8ba633f49784d65efc71395328459c3af4c71792503.lean/declarations/fractionalideal-map-canonicalequiv-mk0--b6444f08220144363960efd2.md) | 252 | `result-track:b6444f08220144363960efd2509e44270dd02eafcc813f3719007a8014ea7299` |
| 21 | `def` | [ClassGroup.mk0](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/ClassGroup/Variant48f93bd5954ea0140a7ae8ba633f49784d65efc71395328459c3af4c71792503.lean/declarations/classgroup-mk0--1a3c35b2c4814d799f664735.md) | 260 | `declaration-track:1a3c35b2c4814d799f664735ff7a7bea4dd16fb0a26d57499728d8ba84759183` |
| 22 | `theorem` | [ClassGroup.mk_mk0](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/ClassGroup/Variant48f93bd5954ea0140a7ae8ba633f49784d65efc71395328459c3af4c71792503.lean/declarations/classgroup-mk-mk0--be8c43018e8ddaed73b3e13f.md) | 265 | `result-track:be8c43018e8ddaed73b3e13f919f3dfe118b22231c37bb863a120bea6245a033` |
| 23 | `theorem` | [ClassGroup.equiv_mk0](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/ClassGroup/Variant48f93bd5954ea0140a7ae8ba633f49784d65efc71395328459c3af4c71792503.lean/declarations/classgroup-equiv-mk0--e1af85094f5961f2ee4f8360.md) | 272 | `result-track:e1af85094f5961f2ee4f83606919cb5f441192c1be3628e2b6fa6466473db07c` |
| 24 | `theorem` | [ClassGroup.mk0_eq_mk0_iff_exists_fraction_ring](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/ClassGroup/Variant48f93bd5954ea0140a7ae8ba633f49784d65efc71395328459c3af4c71792503.lean/declarations/classgroup-mk0-eq-mk0-iff-exists-fraction-ring--b9c0e021cc62e53ed012c8a2.md) | 280 | `result-track:b9c0e021cc62e53ed012c8a2864b729f7104c72945ebe3e6fefe5b6c63265833` |
| 25 | `theorem` | [ClassGroup.mk0_eq_mk0_iff](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/ClassGroup/Variant48f93bd5954ea0140a7ae8ba633f49784d65efc71395328459c3af4c71792503.lean/declarations/classgroup-mk0-eq-mk0-iff--154248cee48a0b46d8e1c85f.md) | 298 | `result-track:154248cee48a0b46d8e1c85fd5ea3aa949c6aa6c0e245172d7725d590b444a0a` |
| 26 | `def` | [ClassGroup.integralRep](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/ClassGroup/Variant48f93bd5954ea0140a7ae8ba633f49784d65efc71395328459c3af4c71792503.lean/declarations/classgroup-integralrep--f9893bc93ac8d884b98edbe2.md) | 319 | `declaration-track:f9893bc93ac8d884b98edbe2be785251110f76d9a35dbcfe37a1a8ec5b7b0a7f` |
| 27 | `theorem` | [ClassGroup.integralRep_mem_nonZeroDivisors](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/ClassGroup/Variant48f93bd5954ea0140a7ae8ba633f49784d65efc71395328459c3af4c71792503.lean/declarations/classgroup-integralrep-mem-nonzerodivisors--0b02b95ed3d4789793ab5469.md) | 337 | `result-track:0b02b95ed3d4789793ab54694e17468947fef94f28ef06bbfef69630004ad530` |
| 28 | `theorem` | [ClassGroup.mk0_integralRep](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/ClassGroup/Variant48f93bd5954ea0140a7ae8ba633f49784d65efc71395328459c3af4c71792503.lean/declarations/classgroup-mk0-integralrep--fd7389e8e738c4d95c2db841.md) | 351 | `result-track:fd7389e8e738c4d95c2db84102383d619e90ee404f1cdc1e604ac4ec8145efd8` |
| 29 | `theorem` | [ClassGroup.mk0_surjective](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/ClassGroup/Variant48f93bd5954ea0140a7ae8ba633f49784d65efc71395328459c3af4c71792503.lean/declarations/classgroup-mk0-surjective--066728a1d1c7a8011e7ab3a5.md) | 384 | `result-track:066728a1d1c7a8011e7ab3a5a16f13a5cf359c89dc24dae0e946c3d52944cdd0` |
| 30 | `theorem` | [ClassGroup.mk_eq_one_iff](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/ClassGroup/Variant48f93bd5954ea0140a7ae8ba633f49784d65efc71395328459c3af4c71792503.lean/declarations/classgroup-mk-eq-one-iff--28f038673494dd630eec083b.md) | 391 | `result-track:28f038673494dd630eec083ba13c1f851dc9b2b5a7cef71cc3109113b6048944` |
| 31 | `theorem` | [ClassGroup.mk0_eq_one_iff](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/ClassGroup/Variant48f93bd5954ea0140a7ae8ba633f49784d65efc71395328459c3af4c71792503.lean/declarations/classgroup-mk0-eq-one-iff--65cfd882aa1787fc4f595411.md) | 408 | `result-track:65cfd882aa1787fc4f595411df571e6440c683fc0ca6428173c93552e4bb659c` |
| 32 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/ClassGroup/Variant48f93bd5954ea0140a7ae8ba633f49784d65efc71395328459c3af4c71792503.lean/declarations/instance--cff3806db209199c5d13eaee.md) | 418 | `declaration-track:cff3806db209199c5d13eaee99118c3270e6f3324b4b75e675540f230b117652` |
| 33 | `theorem` | [card_classGroup_eq_one](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/ClassGroup/Variant48f93bd5954ea0140a7ae8ba633f49784d65efc71395328459c3af4c71792503.lean/declarations/card-classgroup-eq-one--1bcb2c5195c1d7678084f9d7.md) | 426 | `result-track:1bcb2c5195c1d7678084f9d7af819a48a8690513475ddde8d1fd4177c39338b6` |
| 34 | `theorem` | [card_classGroup_eq_one_iff](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/ClassGroup/Variant48f93bd5954ea0140a7ae8ba633f49784d65efc71395328459c3af4c71792503.lean/declarations/card-classgroup-eq-one-iff--4472f82c6a32f09e8a5a1af1.md) | 434 | `result-track:4472f82c6a32f09e8a5a1af1807dcabb0e4da4555c511bdae45a7bd89cffb9d3` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
