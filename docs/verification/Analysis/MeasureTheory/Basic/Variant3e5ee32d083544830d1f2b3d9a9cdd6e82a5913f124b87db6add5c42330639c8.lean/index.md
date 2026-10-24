# Verification target: GRWTSK.Analysis.MeasureTheory.Basic.Variant3e5ee32d083544830d1f2b3d9a9cdd6e82a5913f124b87db6add5c42330639c8

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "5855ddc898674ffb401916a573479432f4bd6f33",
  "lexical_observation_count": 58,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/MeasureTheory/Basic/Variant3e5ee32d083544830d1f2b3d9a9cdd6e82a5913f124b87db6add5c42330639c8.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/MeasureTheory/Basic/Variant3e5ee32d083544830d1f2b3d9a9cdd6e82a5913f124b87db6add5c42330639c8.lean/index.md) · [Full source](../../../../../mathematics/Analysis/MeasureTheory/Basic/Variant3e5ee32d083544830d1f2b3d9a9cdd6e82a5913f124b87db6add5c42330639c8.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `5855ddc898674ffb401916a573479432f4bd6f33`.

Source path: `GRWTSK/Analysis/MeasureTheory/Basic/Variant3e5ee32d083544830d1f2b3d9a9cdd6e82a5913f124b87db6add5c42330639c8.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/MeasureTheory/Basic/Variant3e5ee32d083544830d1f2b3d9a9cdd6e82a5913f124b87db6add5c42330639c8.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.MeasureTheory.Measure.Content` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Group.Prod` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.GroupTheory.Divisible` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Algebra.Group.Compact` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [index](../../../../../mathematics/Analysis/MeasureTheory/Basic/Variant3e5ee32d083544830d1f2b3d9a9cdd6e82a5913f124b87db6add5c42330639c8.lean/declarations/index--ce5611a6224183dd919af02c.md) | 96 | `declaration-track:ce5611a6224183dd919af02caf45daddb759c6bac40ab46883a16b65a3718a1c` |
| 2 | `theorem` | [index_empty](../../../../../mathematics/Analysis/MeasureTheory/Basic/Variant3e5ee32d083544830d1f2b3d9a9cdd6e82a5913f124b87db6add5c42330639c8.lean/declarations/index-empty--030335836c498a3c9840f383.md) | 102 | `result-track:030335836c498a3c9840f383f2218c22253a196853818935c4731cb0c147302f` |
| 3 | `def` | [prehaar](../../../../../mathematics/Analysis/MeasureTheory/Basic/Variant3e5ee32d083544830d1f2b3d9a9cdd6e82a5913f124b87db6add5c42330639c8.lean/declarations/prehaar--0634e5a38504356e774c40f4.md) | 116 | `declaration-track:0634e5a38504356e774c40f48c0b22305f6219a98eb3ed910a1416e05a56151c` |
| 4 | `theorem` | [prehaar_empty](../../../../../mathematics/Analysis/MeasureTheory/Basic/Variant3e5ee32d083544830d1f2b3d9a9cdd6e82a5913f124b87db6add5c42330639c8.lean/declarations/prehaar-empty--e0596bd04f06f9f416185b9e.md) | 122 | `result-track:e0596bd04f06f9f416185b9e754b7974e4caa043634e5719dd7bc504d3ced95c` |
| 5 | `theorem` | [prehaar_nonneg](../../../../../mathematics/Analysis/MeasureTheory/Basic/Variant3e5ee32d083544830d1f2b3d9a9cdd6e82a5913f124b87db6add5c42330639c8.lean/declarations/prehaar-nonneg--cb2db959faa4833a62e4e66f.md) | 128 | `result-track:cb2db959faa4833a62e4e66f056a712fc0ce50d325b210179b1d669927b8b875` |
| 6 | `def` | [haarProduct](../../../../../mathematics/Analysis/MeasureTheory/Basic/Variant3e5ee32d083544830d1f2b3d9a9cdd6e82a5913f124b87db6add5c42330639c8.lean/declarations/haarproduct--6d5fcda6be54333439fb3271.md) | 136 | `declaration-track:6d5fcda6be54333439fb3271b23280d0934e947773a7ffd1f32b07cd6cf0e261` |
| 7 | `theorem` | [mem_prehaar_empty](../../../../../mathematics/Analysis/MeasureTheory/Basic/Variant3e5ee32d083544830d1f2b3d9a9cdd6e82a5913f124b87db6add5c42330639c8.lean/declarations/mem-prehaar-empty--7894f061abce2418507542f2.md) | 142 | `result-track:7894f061abce2418507542f2290934f97bb42a0a8492fda900b2591d706415e6` |
| 8 | `def` | [clPrehaar](../../../../../mathematics/Analysis/MeasureTheory/Basic/Variant3e5ee32d083544830d1f2b3d9a9cdd6e82a5913f124b87db6add5c42330639c8.lean/declarations/clprehaar--203f517ed149d2fcafb36daf.md) | 154 | `declaration-track:203f517ed149d2fcafb36dafa4d7073f3b47498ed26f9d17e0f9a1655bff6db9` |
| 9 | `theorem` | [index_defined](../../../../../mathematics/Analysis/MeasureTheory/Basic/Variant3e5ee32d083544830d1f2b3d9a9cdd6e82a5913f124b87db6add5c42330639c8.lean/declarations/index-defined--baedde1454fa43fa8e3820c9.md) | 171 | `result-track:baedde1454fa43fa8e3820c99043a7c90cdc14c62798fb2a10db12ae3ada8a0d` |
| 10 | `theorem` | [index_elim](../../../../../mathematics/Analysis/MeasureTheory/Basic/Variant3e5ee32d083544830d1f2b3d9a9cdd6e82a5913f124b87db6add5c42330639c8.lean/declarations/index-elim--495e2aa6861c7d1dab5d986f.md) | 178 | `result-track:495e2aa6861c7d1dab5d986f74881de79cd6df9a632cfa9cd149f56dde483dba` |
| 11 | `theorem` | [le_index_mul](../../../../../mathematics/Analysis/MeasureTheory/Basic/Variant3e5ee32d083544830d1f2b3d9a9cdd6e82a5913f124b87db6add5c42330639c8.lean/declarations/le-index-mul--7de28e20b01b779cdc35d2ec.md) | 185 | `result-track:7de28e20b01b779cdc35d2ec4e328a28b7129421229ee2519f337b9bcc9e1ae7` |
| 12 | `theorem` | [index_pos](../../../../../mathematics/Analysis/MeasureTheory/Basic/Variant3e5ee32d083544830d1f2b3d9a9cdd6e82a5913f124b87db6add5c42330639c8.lean/declarations/index-pos--6a17c13d0353bef08ad98016.md) | 201 | `result-track:6a17c13d0353bef08ad980164bba094fd7703d938222ee0d3588b3a2e6078e7f` |
| 13 | `theorem` | [index_mono](../../../../../mathematics/Analysis/MeasureTheory/Basic/Variant3e5ee32d083544830d1f2b3d9a9cdd6e82a5913f124b87db6add5c42330639c8.lean/declarations/index-mono--fe8e02464ff38692897e5008.md) | 214 | `result-track:fe8e02464ff38692897e50083c1ca60180e96ec4c2a15d8ca2e630c5aa479b1b` |
| 14 | `theorem` | [index_union_le](../../../../../mathematics/Analysis/MeasureTheory/Basic/Variant3e5ee32d083544830d1f2b3d9a9cdd6e82a5913f124b87db6add5c42330639c8.lean/declarations/index-union-le--82bc2b8f9d0e1de21902b245.md) | 222 | `result-track:82bc2b8f9d0e1de21902b245a0b156c480b97fd6e9196cbba3730382660ed66d` |
| 15 | `theorem` | [index_union_eq](../../../../../mathematics/Analysis/MeasureTheory/Basic/Variant3e5ee32d083544830d1f2b3d9a9cdd6e82a5913f124b87db6add5c42330639c8.lean/declarations/index-union-eq--7357f172d1186fbfa02c0426.md) | 236 | `result-track:7357f172d1186fbfa02c04264fef6b98de6c45851e4afcb3a3698cc83992fad1` |
| 16 | `theorem` | [mul_left_index_le](../../../../../mathematics/Analysis/MeasureTheory/Basic/Variant3e5ee32d083544830d1f2b3d9a9cdd6e82a5913f124b87db6add5c42330639c8.lean/declarations/mul-left-index-le--5626c8b73d3300712c5a73de.md) | 271 | `result-track:5626c8b73d3300712c5a73de80867bb02a06597b942ee32c27baa822c4790ab6` |
| 17 | `theorem` | [is_left_invariant_index](../../../../../mathematics/Analysis/MeasureTheory/Basic/Variant3e5ee32d083544830d1f2b3d9a9cdd6e82a5913f124b87db6add5c42330639c8.lean/declarations/is-left-invariant-index--a2b3953a3623f37349a73173.md) | 286 | `result-track:a2b3953a3623f37349a73173d094d380d6de451b215529ad57fe9e1be947f6f0` |
| 18 | `theorem` | [prehaar_le_index](../../../../../mathematics/Analysis/MeasureTheory/Basic/Variant3e5ee32d083544830d1f2b3d9a9cdd6e82a5913f124b87db6add5c42330639c8.lean/declarations/prehaar-le-index--6698c9fd18e1c09c51aa41bb.md) | 300 | `result-track:6698c9fd18e1c09c51aa41bbce7a42de931052dadf2bc35911aa28ea38fea62d` |
| 19 | `theorem` | [prehaar_pos](../../../../../mathematics/Analysis/MeasureTheory/Basic/Variant3e5ee32d083544830d1f2b3d9a9cdd6e82a5913f124b87db6add5c42330639c8.lean/declarations/prehaar-pos--26796f6b7d515cff0e322d4d.md) | 309 | `result-track:26796f6b7d515cff0e322d4d2b8f0a8247bf349ef112d6a8eca6f584f8fa4022` |
| 20 | `theorem` | [prehaar_mono](../../../../../mathematics/Analysis/MeasureTheory/Basic/Variant3e5ee32d083544830d1f2b3d9a9cdd6e82a5913f124b87db6add5c42330639c8.lean/declarations/prehaar-mono--deca05645ad987658b99bb38.md) | 316 | `result-track:deca05645ad987658b99bb383f34a7bd1e51b6a14e7c49acb82937284d8e3938` |
| 21 | `theorem` | [prehaar_self](../../../../../mathematics/Analysis/MeasureTheory/Basic/Variant3e5ee32d083544830d1f2b3d9a9cdd6e82a5913f124b87db6add5c42330639c8.lean/declarations/prehaar-self--36ac2176a5759a71294dea8a.md) | 325 | `result-track:36ac2176a5759a71294dea8aa6c25c87d3aa712593e0ebd9c254bfa4348b56df` |
| 22 | `theorem` | [prehaar_sup_le](../../../../../mathematics/Analysis/MeasureTheory/Basic/Variant3e5ee32d083544830d1f2b3d9a9cdd6e82a5913f124b87db6add5c42330639c8.lean/declarations/prehaar-sup-le--62804c3f9dc4606de3bdc39e.md) | 332 | `result-track:62804c3f9dc4606de3bdc39edc5ef83e368b684686035cba226cf24522338544` |
| 23 | `theorem` | [prehaar_sup_eq](../../../../../mathematics/Analysis/MeasureTheory/Basic/Variant3e5ee32d083544830d1f2b3d9a9cdd6e82a5913f124b87db6add5c42330639c8.lean/declarations/prehaar-sup-eq--460cacbe5665f367fe9a4069.md) | 341 | `result-track:460cacbe5665f367fe9a4069c3a2d278c3d67521337f319e4e443469694ef84d` |
| 24 | `theorem` | [is_left_invariant_prehaar](../../../../../mathematics/Analysis/MeasureTheory/Basic/Variant3e5ee32d083544830d1f2b3d9a9cdd6e82a5913f124b87db6add5c42330639c8.lean/declarations/is-left-invariant-prehaar--041349586a01c34041a6d0aa.md) | 352 | `result-track:041349586a01c34041a6d0aa2f14a13b0d94968becdaad718eb24ba324b41bec` |
| 25 | `theorem` | [prehaar_mem_haarProduct](../../../../../mathematics/Analysis/MeasureTheory/Basic/Variant3e5ee32d083544830d1f2b3d9a9cdd6e82a5913f124b87db6add5c42330639c8.lean/declarations/prehaar-mem-haarproduct--306a414f1e51f6d03aebc527.md) | 364 | `result-track:306a414f1e51f6d03aebc52734e3cb7bef50380e697b89bccd1be85429c86675` |
| 26 | `theorem` | [nonempty_iInter_clPrehaar](../../../../../mathematics/Analysis/MeasureTheory/Basic/Variant3e5ee32d083544830d1f2b3d9a9cdd6e82a5913f124b87db6add5c42330639c8.lean/declarations/nonempty-iinter-clprehaar--4ce2b02e82d188ccb4f7c84e.md) | 371 | `result-track:4ce2b02e82d188ccb4f7c84e14e2dd0cdbfe916106a1e6901282c9681f66c088` |
| 27 | `def` | [chaar](../../../../../mathematics/Analysis/MeasureTheory/Basic/Variant3e5ee32d083544830d1f2b3d9a9cdd6e82a5913f124b87db6add5c42330639c8.lean/declarations/chaar--692e9bfa9322bf7518ab1933.md) | 405 | `declaration-track:692e9bfa9322bf7518ab1933c2ff913e9765f81db78b422c7bc4df66b4bfee86` |
| 28 | `theorem` | [chaar_mem_haarProduct](../../../../../mathematics/Analysis/MeasureTheory/Basic/Variant3e5ee32d083544830d1f2b3d9a9cdd6e82a5913f124b87db6add5c42330639c8.lean/declarations/chaar-mem-haarproduct--cd39f8e080302d75b7b7a278.md) | 411 | `result-track:cd39f8e080302d75b7b7a2781a019663dc52924404684bb9598b6f92fc38db84` |
| 29 | `theorem` | [chaar_mem_clPrehaar](../../../../../mathematics/Analysis/MeasureTheory/Basic/Variant3e5ee32d083544830d1f2b3d9a9cdd6e82a5913f124b87db6add5c42330639c8.lean/declarations/chaar-mem-clprehaar--5cd57bec5f18c8629d9a77e2.md) | 417 | `result-track:5cd57bec5f18c8629d9a77e2ed9e68529a4a951cd3d5698907f6e98d3456e965` |
| 30 | `theorem` | [chaar_nonneg](../../../../../mathematics/Analysis/MeasureTheory/Basic/Variant3e5ee32d083544830d1f2b3d9a9cdd6e82a5913f124b87db6add5c42330639c8.lean/declarations/chaar-nonneg--16dde65b7099ae541c5361db.md) | 425 | `result-track:16dde65b7099ae541c5361db4413cb6b22e820b6af0e16fa48f4a098151bff3f` |
| 31 | `theorem` | [chaar_empty](../../../../../mathematics/Analysis/MeasureTheory/Basic/Variant3e5ee32d083544830d1f2b3d9a9cdd6e82a5913f124b87db6add5c42330639c8.lean/declarations/chaar-empty--ec3500a5ba18fa6f4bbc05a5.md) | 431 | `result-track:ec3500a5ba18fa6f4bbc05a5c0e7ed9e8e1523ef7ff75313a6bcdef0aca51360` |
| 32 | `theorem` | [chaar_self](../../../../../mathematics/Analysis/MeasureTheory/Basic/Variant3e5ee32d083544830d1f2b3d9a9cdd6e82a5913f124b87db6add5c42330639c8.lean/declarations/chaar-self--57fdc97f4a11581f23fe1f4d.md) | 443 | `result-track:57fdc97f4a11581f23fe1f4d1dbe95389c9e9e68fc50a22225c41ed0255077bb` |
| 33 | `theorem` | [chaar_mono](../../../../../mathematics/Analysis/MeasureTheory/Basic/Variant3e5ee32d083544830d1f2b3d9a9cdd6e82a5913f124b87db6add5c42330639c8.lean/declarations/chaar-mono--35bb7be7e766fecffae4a74c.md) | 456 | `result-track:35bb7be7e766fecffae4a74c4a2b33fa563f384ebece3d91243255e830e31347` |
| 34 | `theorem` | [chaar_sup_le](../../../../../mathematics/Analysis/MeasureTheory/Basic/Variant3e5ee32d083544830d1f2b3d9a9cdd6e82a5913f124b87db6add5c42330639c8.lean/declarations/chaar-sup-le--f3fc63b97a9d96065014eeb7.md) | 470 | `result-track:f3fc63b97a9d96065014eeb78023400c70397480a0ea68408f8db6224abad46a` |
| 35 | `theorem` | [chaar_sup_eq](../../../../../mathematics/Analysis/MeasureTheory/Basic/Variant3e5ee32d083544830d1f2b3d9a9cdd6e82a5913f124b87db6add5c42330639c8.lean/declarations/chaar-sup-eq--2e5886de85c1f7ae6f1ef9f1.md) | 485 | `result-track:2e5886de85c1f7ae6f1ef9f1cc1c53740bdb8d655ee746d94f3bbd09290401d6` |
| 36 | `theorem` | [is_left_invariant_chaar](../../../../../mathematics/Analysis/MeasureTheory/Basic/Variant3e5ee32d083544830d1f2b3d9a9cdd6e82a5913f124b87db6add5c42330639c8.lean/declarations/is-left-invariant-chaar--b21d5038677c7e93f3331c0b.md) | 519 | `result-track:b21d5038677c7e93f3331c0bf817ebe331f5e2ba7403cc173cd828c25e10dfb5` |
| 37 | `def` | [haarContent](../../../../../mathematics/Analysis/MeasureTheory/Basic/Variant3e5ee32d083544830d1f2b3d9a9cdd6e82a5913f124b87db6add5c42330639c8.lean/declarations/haarcontent--d23c946340d262719112c9b5.md) | 541 | `declaration-track:d23c946340d262719112c9b52b616c057c99620530daf02d3955e2038d73737b` |
| 38 | `theorem` | [haarContent_apply](../../../../../mathematics/Analysis/MeasureTheory/Basic/Variant3e5ee32d083544830d1f2b3d9a9cdd6e82a5913f124b87db6add5c42330639c8.lean/declarations/haarcontent-apply--5b956352b29f7c1b0216326e.md) | 555 | `result-track:5b956352b29f7c1b0216326ebbe27d37e7015cf29cc2f712aeb775a9acf20b9a` |
| 39 | `theorem` | [haarContent_self](../../../../../mathematics/Analysis/MeasureTheory/Basic/Variant3e5ee32d083544830d1f2b3d9a9cdd6e82a5913f124b87db6add5c42330639c8.lean/declarations/haarcontent-self--c05e01454d7e3d92808dfcd7.md) | 563 | `result-track:c05e01454d7e3d92808dfcd7bc7faea5e618884e3df1df98df961f3bb0cf2eb9` |
| 40 | `theorem` | [is_left_invariant_haarContent](../../../../../mathematics/Analysis/MeasureTheory/Basic/Variant3e5ee32d083544830d1f2b3d9a9cdd6e82a5913f124b87db6add5c42330639c8.lean/declarations/is-left-invariant-haarcontent--e3fbd4c5c1f8f8b1cd67f62a.md) | 570 | `result-track:e3fbd4c5c1f8f8b1cd67f62a3b86cf661b8e4c29cf960f9297a3f4350cd7ebd1` |
| 41 | `theorem` | [haarContent_outerMeasure_self_pos](../../../../../mathematics/Analysis/MeasureTheory/Basic/Variant3e5ee32d083544830d1f2b3d9a9cdd6e82a5913f124b87db6add5c42330639c8.lean/declarations/haarcontent-outermeasure-self-pos--3769e98c05f50f6d980c9485.md) | 578 | `result-track:3769e98c05f50f6d980c94857f65359e702aa4285bd896b76adf7344eed7668d` |
| 42 | `def` | [haarMeasure](../../../../../mathematics/Analysis/MeasureTheory/Basic/Variant3e5ee32d083544830d1f2b3d9a9cdd6e82a5913f124b87db6add5c42330639c8.lean/declarations/haarmeasure--7de4f367ca2733312c565fa8.md) | 606 | `declaration-track:7de4f367ca2733312c565fa809a97f2e0b872f5d8223e44fc51d02eb8557d51e` |
| 43 | `theorem` | [haarMeasure_apply](../../../../../mathematics/Analysis/MeasureTheory/Basic/Variant3e5ee32d083544830d1f2b3d9a9cdd6e82a5913f124b87db6add5c42330639c8.lean/declarations/haarmeasure-apply--5c2bbb5e45955313f5217d37.md) | 612 | `result-track:5c2bbb5e45955313f5217d37ac27c483215fae59e3ccec8e44d6d52ee04146a8` |
| 44 | `instance` | [isMulLeftInvariant_haarMeasure](../../../../../mathematics/Analysis/MeasureTheory/Basic/Variant3e5ee32d083544830d1f2b3d9a9cdd6e82a5913f124b87db6add5c42330639c8.lean/declarations/ismulleftinvariant-haarmeasure--1822c4b343abd84028a2797b.md) | 620 | `declaration-track:1822c4b343abd84028a2797b995bf5cfc888306fdabbba38ff8c37d5e427ef9e` |
| 45 | `theorem` | [haarMeasure_self](../../../../../mathematics/Analysis/MeasureTheory/Basic/Variant3e5ee32d083544830d1f2b3d9a9cdd6e82a5913f124b87db6add5c42330639c8.lean/declarations/haarmeasure-self--dee336e8eea67255769d1412.md) | 633 | `result-track:dee336e8eea67255769d14127a4f16bbd7cdeab57066a6f344304f5f36682822` |
| 46 | `instance` | [regular_haarMeasure](../../../../../mathematics/Analysis/MeasureTheory/Basic/Variant3e5ee32d083544830d1f2b3d9a9cdd6e82a5913f124b87db6add5c42330639c8.lean/declarations/regular-haarmeasure--015c70fa7799d6b84f3d92fc.md) | 643 | `declaration-track:015c70fa7799d6b84f3d92fced553fb1246a5a223e71b10dd7fdb6682a2433d8` |
| 47 | `instance` | [sigmaFinite_haarMeasure](../../../../../mathematics/Analysis/MeasureTheory/Basic/Variant3e5ee32d083544830d1f2b3d9a9cdd6e82a5913f124b87db6add5c42330639c8.lean/declarations/sigmafinite-haarmeasure--2d36a961ee8611e99328efc1.md) | 653 | `declaration-track:2d36a961ee8611e99328efc1a70586f0adff5133168c62decb77379d57d1a4c3` |
| 48 | `instance` | [isHaarMeasure_haarMeasure](../../../../../mathematics/Analysis/MeasureTheory/Basic/Variant3e5ee32d083544830d1f2b3d9a9cdd6e82a5913f124b87db6add5c42330639c8.lean/declarations/ishaarmeasure-haarmeasure--d7348f6cbc06a5b0d5c7cc64.md) | 664 | `declaration-track:d7348f6cbc06a5b0d5c7cc645ace28a39dfddbfebfed580719836c1adfb1d647` |
| 49 | `def` | [haar](../../../../../mathematics/Analysis/MeasureTheory/Basic/Variant3e5ee32d083544830d1f2b3d9a9cdd6e82a5913f124b87db6add5c42330639c8.lean/declarations/haar--3683ce51fce151c473fe88c5.md) | 676 | `declaration-track:3683ce51fce151c473fe88c5487fd12b7e2049af76fec9f16a7ad8857e77cd85` |
| 50 | `theorem` | [haarMeasure_unique](../../../../../mathematics/Analysis/MeasureTheory/Basic/Variant3e5ee32d083544830d1f2b3d9a9cdd6e82a5913f124b87db6add5c42330639c8.lean/declarations/haarmeasure-unique--c8624af2b01ecec0f74b0905.md) | 693 | `result-track:c8624af2b01ecec0f74b090596f622f05a5bc23521b2e2bafc4890ef251eed63` |
| 51 | `example` | [(anonymous)](../../../../../mathematics/Analysis/MeasureTheory/Basic/Variant3e5ee32d083544830d1f2b3d9a9cdd6e82a5913f124b87db6add5c42330639c8.lean/declarations/example--d2973fa50ed40639f49ecf27.md) | 702 | `declaration-track:d2973fa50ed40639f49ecf2717b0001216ace4e74ce9a30522c138d4ce86bc63` |
| 52 | `theorem` | [regular_of_isMulLeftInvariant](../../../../../mathematics/Analysis/MeasureTheory/Basic/Variant3e5ee32d083544830d1f2b3d9a9cdd6e82a5913f124b87db6add5c42330639c8.lean/declarations/regular-of-ismulleftinvariant--6de28db6ad0b6a3e0a65aad6.md) | 711 | `result-track:6de28db6ad0b6a3e0a65aad606311f86241a379ded21a2bbef3ef5858ed30d34` |
| 53 | `theorem` | [isHaarMeasure_eq_smul_isHaarMeasure](../../../../../mathematics/Analysis/MeasureTheory/Basic/Variant3e5ee32d083544830d1f2b3d9a9cdd6e82a5913f124b87db6add5c42330639c8.lean/declarations/ishaarmeasure-eq-smul-ishaarmeasure--0e1ec6df601b8c4bb2b4197a.md) | 718 | `result-track:0e1ec6df601b8c4bb2b4197a8d4ea98919a364758649ba9af375d79c5a2e2af2` |
| 54 | `instance` | [(anonymous)](../../../../../mathematics/Analysis/MeasureTheory/Basic/Variant3e5ee32d083544830d1f2b3d9a9cdd6e82a5913f124b87db6add5c42330639c8.lean/declarations/instance--738ea484cc12296e2575c444.md) | 739 | `declaration-track:738ea484cc12296e2575c444a0ac7386630a6a609bb0c19fbd4e31f10decc0f0` |
| 55 | `theorem` | [div_mem_nhds_one_of_haar_pos](../../../../../mathematics/Analysis/MeasureTheory/Basic/Variant3e5ee32d083544830d1f2b3d9a9cdd6e82a5913f124b87db6add5c42330639c8.lean/declarations/div-mem-nhds-one-of-haar-pos--2555f8a99555881469a78538.md) | 754 | `result-track:2555f8a99555881469a78538c6f82498ddedd4682afbcf189c730152cc2c5e3f` |
| 56 | `instance` | [(anonymous)](../../../../../mathematics/Analysis/MeasureTheory/Basic/Variant3e5ee32d083544830d1f2b3d9a9cdd6e82a5913f124b87db6add5c42330639c8.lean/declarations/instance--3e1db2bb43e2faf0fe7050db.md) | 810 | `declaration-track:3e1db2bb43e2faf0fe7050db5d3cdf0bb10ab406c987c64fa6a2ef386b7c3d08` |
| 57 | `theorem` | [measurePreserving_zpow](../../../../../mathematics/Analysis/MeasureTheory/Basic/Variant3e5ee32d083544830d1f2b3d9a9cdd6e82a5913f124b87db6add5c42330639c8.lean/declarations/measurepreserving-zpow--4312ab1cc1d194866f8ad5f3.md) | 838 | `result-track:4312ab1cc1d194866f8ad5f3c0f76bf2b83d5d32f1e64c6623d973bbec99f89d` |
| 58 | `theorem` | [MeasurePreserving.zpow](../../../../../mathematics/Analysis/MeasureTheory/Basic/Variant3e5ee32d083544830d1f2b3d9a9cdd6e82a5913f124b87db6add5c42330639c8.lean/declarations/measurepreserving-zpow--f40a6494df828274f0f6f6f3.md) | 859 | `result-track:f40a6494df828274f0f6f6f3e35f70514f8c05d2ba40cfa235573ca4aa828dba` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
