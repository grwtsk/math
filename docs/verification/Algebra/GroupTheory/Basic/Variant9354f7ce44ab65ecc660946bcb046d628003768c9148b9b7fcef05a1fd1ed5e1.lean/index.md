# Verification target: GRWTSK.Algebra.GroupTheory.Basic.Variant9354f7ce44ab65ecc660946bcb046d628003768c9148b9b7fcef05a1fd1ed5e1

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "791a0ae9747156a8638d926ec5461217d4f3b327",
  "lexical_observation_count": 73,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/GroupTheory/Basic/Variant9354f7ce44ab65ecc660946bcb046d628003768c9148b9b7fcef05a1fd1ed5e1.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant9354f7ce44ab65ecc660946bcb046d628003768c9148b9b7fcef05a1fd1ed5e1.lean/index.md) · [Full source](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant9354f7ce44ab65ecc660946bcb046d628003768c9148b9b7fcef05a1fd1ed5e1.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `791a0ae9747156a8638d926ec5461217d4f3b327`.

Source path: `GRWTSK/Algebra/GroupTheory/Basic/Variant9354f7ce44ab65ecc660946bcb046d628003768c9148b9b7fcef05a1fd1ed5e1.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/GroupTheory/Basic/Variant9354f7ce44ab65ecc660946bcb046d628003768c9148b9b7fcef05a1fd1ed5e1.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Hom.Group` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Group.Units` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.GroupTheory.Subsemigroup.Basic` — import line 14; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `class` | [OneMemClass](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant9354f7ce44ab65ecc660946bcb046d628003768c9148b9b7fcef05a1fd1ed5e1.lean/declarations/onememclass--f137a08993ec4b679eb4720b.md) | 79 | `declaration-track:f137a08993ec4b679eb4720b460e212a3fe6214c9341b6a7bf4917a1e75fcf08` |
| 2 | `class` | [ZeroMemClass](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant9354f7ce44ab65ecc660946bcb046d628003768c9148b9b7fcef05a1fd1ed5e1.lean/declarations/zeromemclass--b04f9b1c2a5c8394b0ac59d9.md) | 87 | `declaration-track:b04f9b1c2a5c8394b0ac59d971c4cd52d3fcff48d0fbd806dfddfe7bdf109bed` |
| 3 | `structure` | [Submonoid](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant9354f7ce44ab65ecc660946bcb046d628003768c9148b9b7fcef05a1fd1ed5e1.lean/declarations/submonoid--f56e5f06d4b6fa193566737a.md) | 99 | `declaration-track:f56e5f06d4b6fa193566737a9106f2154c3d331219dd8c5426f207933c0dd867` |
| 4 | `class` | [SubmonoidClass](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant9354f7ce44ab65ecc660946bcb046d628003768c9148b9b7fcef05a1fd1ed5e1.lean/declarations/submonoidclass--e2f7c87a20ecf55722a12f15.md) | 112 | `declaration-track:e2f7c87a20ecf55722a12f1587576735a6dac956e36b64ece36dc177322032ac` |
| 5 | `structure` | [AddSubmonoid](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant9354f7ce44ab65ecc660946bcb046d628003768c9148b9b7fcef05a1fd1ed5e1.lean/declarations/addsubmonoid--1512321576e47c0b622f1ed7.md) | 120 | `declaration-track:1512321576e47c0b622f1ed74e51e7f315320215d4f1a23d8b6fdbaecc256412` |
| 6 | `class` | [AddSubmonoidClass](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant9354f7ce44ab65ecc660946bcb046d628003768c9148b9b7fcef05a1fd1ed5e1.lean/declarations/addsubmonoidclass--6f9b7078ffde8c59ab6f8053.md) | 134 | `declaration-track:6f9b7078ffde8c59ab6f805351b111a021ed368258e4339863e7491bca567cec` |
| 7 | `theorem` | [pow_mem](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant9354f7ce44ab65ecc660946bcb046d628003768c9148b9b7fcef05a1fd1ed5e1.lean/declarations/pow-mem--9a6286e49f09b2055c598ff9.md) | 141 | `result-track:9a6286e49f09b2055c598ff972abed94acb98bb39c381daa1076eafb35790f93` |
| 8 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant9354f7ce44ab65ecc660946bcb046d628003768c9148b9b7fcef05a1fd1ed5e1.lean/declarations/instance--9925db80412a460c2048c032.md) | 155 | `declaration-track:9925db80412a460c2048c032b50b6c78a53b074b26ef2c518c41d7a866fa7bff` |
| 9 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant9354f7ce44ab65ecc660946bcb046d628003768c9148b9b7fcef05a1fd1ed5e1.lean/declarations/instance--47c82973f737cefded7beb1f.md) | 160 | `declaration-track:47c82973f737cefded7beb1f393802b56f8ab7dc89dcb7dd37daf25b14074be6` |
| 10 | `theorem` | [mem_toSubsemigroup](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant9354f7ce44ab65ecc660946bcb046d628003768c9148b9b7fcef05a1fd1ed5e1.lean/declarations/mem-tosubsemigroup--0b80e37bbc74dbe45ea02611.md) | 169 | `result-track:0b80e37bbc74dbe45ea0261150d49517851553278fbfb1e92f1ec0a626ebe59b` |
| 11 | `theorem` | [mem_carrier](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant9354f7ce44ab65ecc660946bcb046d628003768c9148b9b7fcef05a1fd1ed5e1.lean/declarations/mem-carrier--e45313c2c11c5ec25d5840c8.md) | 177 | `result-track:e45313c2c11c5ec25d5840c8f31a2c12606557cee98fdb590799b01d48fe6400` |
| 12 | `theorem` | [mem_mk](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant9354f7ce44ab65ecc660946bcb046d628003768c9148b9b7fcef05a1fd1ed5e1.lean/declarations/mem-mk--569dde37fc94e7e9cfa48f8d.md) | 183 | `result-track:569dde37fc94e7e9cfa48f8d188a07a9db74dee365f4298c60834c853a055320` |
| 13 | `theorem` | [coe_set_mk](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant9354f7ce44ab65ecc660946bcb046d628003768c9148b9b7fcef05a1fd1ed5e1.lean/declarations/coe-set-mk--c174933a6799d8fc380000ef.md) | 189 | `result-track:c174933a6799d8fc380000ef43cbdc54428aeddb79b6f64dfebbd88c7ebb11a1` |
| 14 | `theorem` | [mk_le_mk](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant9354f7ce44ab65ecc660946bcb046d628003768c9148b9b7fcef05a1fd1ed5e1.lean/declarations/mk-le-mk--cfc8f2ba28392fad670fee12.md) | 195 | `result-track:cfc8f2ba28392fad670fee12c8bfed0f74f2d9ae978fd18a477217d412686e3f` |
| 15 | `theorem` | [ext](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant9354f7ce44ab65ecc660946bcb046d628003768c9148b9b7fcef05a1fd1ed5e1.lean/declarations/ext--b9998c33a91f93a3575e81bf.md) | 202 | `result-track:b9998c33a91f93a3575e81bfde8234a7fce6fe6fee35ac8544bbb36e45839416` |
| 16 | `def` | [copy](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant9354f7ce44ab65ecc660946bcb046d628003768c9148b9b7fcef05a1fd1ed5e1.lean/declarations/copy--c1af923f0a826f9a36b20b2f.md) | 209 | `declaration-track:c1af923f0a826f9a36b20b2fffdd7cb81063978d6a89cd546f2e3aed96d9b97a` |
| 17 | `theorem` | [coe_copy](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant9354f7ce44ab65ecc660946bcb046d628003768c9148b9b7fcef05a1fd1ed5e1.lean/declarations/coe-copy--09f7518c6aec0269f0104964.md) | 219 | `result-track:09f7518c6aec0269f01049641db1e0ed404c9b0e2f425fd460000a8a0b047f97` |
| 18 | `theorem` | [copy_eq](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant9354f7ce44ab65ecc660946bcb046d628003768c9148b9b7fcef05a1fd1ed5e1.lean/declarations/copy-eq--c5cf6a01f3bdf2f1bdc3b453.md) | 225 | `result-track:c5cf6a01f3bdf2f1bdc3b4535b0643f9c81afdea5c908348e2626e5493e69830` |
| 19 | `theorem` | [one_mem](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant9354f7ce44ab65ecc660946bcb046d628003768c9148b9b7fcef05a1fd1ed5e1.lean/declarations/one-mem--20178e2cbff6e8f715ebaa65.md) | 234 | `result-track:20178e2cbff6e8f715ebaa65b4b85905ebf04fbbd8d763d464f36d00a9f54bf9` |
| 20 | `theorem` | [mul_mem](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant9354f7ce44ab65ecc660946bcb046d628003768c9148b9b7fcef05a1fd1ed5e1.lean/declarations/mul-mem--391267144c51be59f91cb805.md) | 241 | `result-track:391267144c51be59f91cb80579fb8c6c143e77077cff878121cc2abd938145f5` |
| 21 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant9354f7ce44ab65ecc660946bcb046d628003768c9148b9b7fcef05a1fd1ed5e1.lean/declarations/instance--1505a4e144592c8057f8c61d.md) | 248 | `declaration-track:1505a4e144592c8057f8c61d794b7f2f40527ce29d59ff47193fdf0d20c1cbd0` |
| 22 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant9354f7ce44ab65ecc660946bcb046d628003768c9148b9b7fcef05a1fd1ed5e1.lean/declarations/instance--8041bf5331242a1a0d8653e4.md) | 255 | `declaration-track:8041bf5331242a1a0d8653e4906f56f035d8fa4754520c1afaf3a7bf336b324b` |
| 23 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant9354f7ce44ab65ecc660946bcb046d628003768c9148b9b7fcef05a1fd1ed5e1.lean/declarations/instance--298f60f71ed56ccd3e8cfa34.md) | 263 | `declaration-track:298f60f71ed56ccd3e8cfa34743bc6869fd1b00eeb425b5c7f28c7f0cf876e62` |
| 24 | `theorem` | [mem_bot](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant9354f7ce44ab65ecc660946bcb046d628003768c9148b9b7fcef05a1fd1ed5e1.lean/declarations/mem-bot--b8f7ac396945a2e36dea8585.md) | 267 | `result-track:b8f7ac396945a2e36dea8585d749985d3b0460388dceec8bcd43899bbc075652` |
| 25 | `theorem` | [mem_top](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant9354f7ce44ab65ecc660946bcb046d628003768c9148b9b7fcef05a1fd1ed5e1.lean/declarations/mem-top--d78813a750732d9c16f22fc4.md) | 273 | `result-track:d78813a750732d9c16f22fc42830716db30517bd5d625b4d37aeb266f0ca8893` |
| 26 | `theorem` | [coe_top](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant9354f7ce44ab65ecc660946bcb046d628003768c9148b9b7fcef05a1fd1ed5e1.lean/declarations/coe-top--7a004e775b2e0e65f2d9de92.md) | 279 | `result-track:7a004e775b2e0e65f2d9de92819d2bae312d5ddf319f1cd8030dedab3e4af8b3` |
| 27 | `theorem` | [coe_bot](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant9354f7ce44ab65ecc660946bcb046d628003768c9148b9b7fcef05a1fd1ed5e1.lean/declarations/coe-bot--17ae43f1492a5d9746f4096c.md) | 285 | `result-track:17ae43f1492a5d9746f4096c4069db7aeecb9244556b28068a6715c9850dc3ac` |
| 28 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant9354f7ce44ab65ecc660946bcb046d628003768c9148b9b7fcef05a1fd1ed5e1.lean/declarations/instance--dd22f154cb3d1736b8e5c2f1.md) | 292 | `declaration-track:dd22f154cb3d1736b8e5c2f1ae3384cb4e9564e1970d492614db9212602731af` |
| 29 | `theorem` | [coe_inf](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant9354f7ce44ab65ecc660946bcb046d628003768c9148b9b7fcef05a1fd1ed5e1.lean/declarations/coe-inf--172a7d58227205308e2863fa.md) | 299 | `result-track:172a7d58227205308e2863fadc1892c561e4307a43572dde5abfb25a2192de06` |
| 30 | `theorem` | [mem_inf](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant9354f7ce44ab65ecc660946bcb046d628003768c9148b9b7fcef05a1fd1ed5e1.lean/declarations/mem-inf--331115e3164e89cf84e26ce1.md) | 305 | `result-track:331115e3164e89cf84e26ce13b999d186273241e7ab40e0dd8c714f0aec9445e` |
| 31 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant9354f7ce44ab65ecc660946bcb046d628003768c9148b9b7fcef05a1fd1ed5e1.lean/declarations/instance--8c3a6b9f1c9ea45d96a9196e.md) | 311 | `declaration-track:8c3a6b9f1c9ea45d96a9196e744d108514e02ec02a343194f5bf74dd48287092` |
| 32 | `theorem` | [coe_sInf](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant9354f7ce44ab65ecc660946bcb046d628003768c9148b9b7fcef05a1fd1ed5e1.lean/declarations/coe-sinf--a11f643f64aed9e5b1652ff5.md) | 320 | `result-track:a11f643f64aed9e5b1652ff524f90e04de1f6477191583217cbc07b39eb472dc` |
| 33 | `theorem` | [mem_sInf](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant9354f7ce44ab65ecc660946bcb046d628003768c9148b9b7fcef05a1fd1ed5e1.lean/declarations/mem-sinf--7bd0e555b38c2d4b610e974e.md) | 326 | `result-track:7bd0e555b38c2d4b610e974e3e758560ed84b4f831193445e8178fedd80d0d1b` |
| 34 | `theorem` | [mem_iInf](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant9354f7ce44ab65ecc660946bcb046d628003768c9148b9b7fcef05a1fd1ed5e1.lean/declarations/mem-iinf--13a37f8c073f748c8325ead2.md) | 332 | `result-track:13a37f8c073f748c8325ead280ec3870f60b0ac0831baec9018450d50e4f5afa` |
| 35 | `theorem` | [coe_iInf](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant9354f7ce44ab65ecc660946bcb046d628003768c9148b9b7fcef05a1fd1ed5e1.lean/declarations/coe-iinf--01be441dc6d54f8110765827.md) | 338 | `result-track:01be441dc6d54f81107658271edb7e000b307cfb71b9252c20a41a32a71cd613` |
| 36 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant9354f7ce44ab65ecc660946bcb046d628003768c9148b9b7fcef05a1fd1ed5e1.lean/declarations/instance--c87b05b9a0c6a39469d78746.md) | 345 | `declaration-track:c87b05b9a0c6a39469d7874626ce8a65911cb85881d82fba5c17943079ad8cd3` |
| 37 | `theorem` | [subsingleton_iff](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant9354f7ce44ab65ecc660946bcb046d628003768c9148b9b7fcef05a1fd1ed5e1.lean/declarations/subsingleton-iff--a5c64657cb9116d8c4c3a17c.md) | 363 | `result-track:a5c64657cb9116d8c4c3a17cf2d619d0ec580f42862a51f7889928361c44afe5` |
| 38 | `theorem` | [nontrivial_iff](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant9354f7ce44ab65ecc660946bcb046d628003768c9148b9b7fcef05a1fd1ed5e1.lean/declarations/nontrivial-iff--f03f07f7efc2d5a135d1a36d.md) | 375 | `result-track:f03f07f7efc2d5a135d1a36d582a9eaddddb281be589dcf55d526a5b6c9dc08a` |
| 39 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant9354f7ce44ab65ecc660946bcb046d628003768c9148b9b7fcef05a1fd1ed5e1.lean/declarations/instance--db3ff743fcd538eeab4feff7.md) | 383 | `declaration-track:db3ff743fcd538eeab4feff7ca74889cdba4b9323827f6eb1b5f42c322f39ff6` |
| 40 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant9354f7ce44ab65ecc660946bcb046d628003768c9148b9b7fcef05a1fd1ed5e1.lean/declarations/instance--c79c26f9989b50cb7943a67f.md) | 387 | `declaration-track:c79c26f9989b50cb7943a67fa89fb0004800be36f1562849a60bf63f69a09469` |
| 41 | `def` | [closure](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant9354f7ce44ab65ecc660946bcb046d628003768c9148b9b7fcef05a1fd1ed5e1.lean/declarations/closure--609f34e990b266647c8ef573.md) | 392 | `declaration-track:609f34e990b266647c8ef573de06612c99b5a9e56b37c462d32a4cac80afeda3` |
| 42 | `theorem` | [mem_closure](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant9354f7ce44ab65ecc660946bcb046d628003768c9148b9b7fcef05a1fd1ed5e1.lean/declarations/mem-closure--984ba23b7517acdde6207b9c.md) | 398 | `result-track:984ba23b7517acdde6207b9c01af31500f4e3dbfc3a40f4473aa93baed979a84` |
| 43 | `theorem` | [subset_closure](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant9354f7ce44ab65ecc660946bcb046d628003768c9148b9b7fcef05a1fd1ed5e1.lean/declarations/subset-closure--aae01e89f3531ad62891a073.md) | 405 | `result-track:aae01e89f3531ad62891a0730fc07698fc6aa3cc02e8961a988edea22fdc679a` |
| 44 | `theorem` | [not_mem_of_not_mem_closure](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant9354f7ce44ab65ecc660946bcb046d628003768c9148b9b7fcef05a1fd1ed5e1.lean/declarations/not-mem-of-not-mem-closure--92b7158115d8872d2d693a39.md) | 410 | `result-track:92b7158115d8872d2d693a394ee4aa509b49a02bb4da50b85859110d759e95e3` |
| 45 | `theorem` | [closure_le](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant9354f7ce44ab65ecc660946bcb046d628003768c9148b9b7fcef05a1fd1ed5e1.lean/declarations/closure-le--4208d6d9e3257c53f3b10ef2.md) | 422 | `result-track:4208d6d9e3257c53f3b10ef2b4a03264b842aa27f923848d1a6e8ab0d049e8d3` |
| 46 | `theorem` | [closure_mono](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant9354f7ce44ab65ecc660946bcb046d628003768c9148b9b7fcef05a1fd1ed5e1.lean/declarations/closure-mono--5ec4bbf05dc63f48484d78af.md) | 432 | `result-track:5ec4bbf05dc63f48484d78af462d9233c35398b6c42377873cb5343f778f4339` |
| 47 | `theorem` | [closure_eq_of_le](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant9354f7ce44ab65ecc660946bcb046d628003768c9148b9b7fcef05a1fd1ed5e1.lean/declarations/closure-eq-of-le--bc2071e18fb53282fb234844.md) | 438 | `result-track:bc2071e18fb53282fb234844bcfbf640c79dcbd85bb323ce735dae2826ec4423` |
| 48 | `theorem` | [closure_induction](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant9354f7ce44ab65ecc660946bcb046d628003768c9148b9b7fcef05a1fd1ed5e1.lean/declarations/closure-induction--b08c9b892898e8c2cf4eb116.md) | 451 | `result-track:b08c9b892898e8c2cf4eb116a4d7bbc5c7fd40ba4d62e1531d40a45c80755302` |
| 49 | `theorem` | [closure_induction'](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant9354f7ce44ab65ecc660946bcb046d628003768c9148b9b7fcef05a1fd1ed5e1.lean/declarations/closure-induction--0736fc6cbac8b72e3fd7ce64.md) | 459 | `result-track:0736fc6cbac8b72e3fd7ce6487fb54fe5d067d1846d93c831df902ab6f906d33` |
| 50 | `theorem` | [closure_induction₂](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant9354f7ce44ab65ecc660946bcb046d628003768c9148b9b7fcef05a1fd1ed5e1.lean/declarations/closure-induction--a594eab075e0bd3e0f30544c.md) | 473 | `result-track:a594eab075e0bd3e0f30544c7455e2c0f5968a66a3836c4e139268890c144964` |
| 51 | `theorem` | [dense_induction](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant9354f7ce44ab65ecc660946bcb046d628003768c9148b9b7fcef05a1fd1ed5e1.lean/declarations/dense-induction--c6a199f593bb50a4cd9492ba.md) | 491 | `result-track:c6a199f593bb50a4cd9492ba30e399d625f656893819169c7f0a3ea09a14599e` |
| 52 | `def` | [gi](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant9354f7ce44ab65ecc660946bcb046d628003768c9148b9b7fcef05a1fd1ed5e1.lean/declarations/gi--a5422f06d2e08c8dd3ab40df.md) | 502 | `declaration-track:a5422f06d2e08c8dd3ab40dffcd50decf5370c0b94d64108514e529a5a6977d1` |
| 53 | `theorem` | [closure_eq](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant9354f7ce44ab65ecc660946bcb046d628003768c9148b9b7fcef05a1fd1ed5e1.lean/declarations/closure-eq--dd2257d21371f20bbf00f970.md) | 514 | `result-track:dd2257d21371f20bbf00f970a3186e43ed5ce96797134ad4365657ac1b5ed4d1` |
| 54 | `theorem` | [closure_empty](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant9354f7ce44ab65ecc660946bcb046d628003768c9148b9b7fcef05a1fd1ed5e1.lean/declarations/closure-empty--efc887c63942208f5666a9f0.md) | 520 | `result-track:efc887c63942208f5666a9f07502904dab7c697b5eebb0382ec4d64fa720813a` |
| 55 | `theorem` | [closure_univ](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant9354f7ce44ab65ecc660946bcb046d628003768c9148b9b7fcef05a1fd1ed5e1.lean/declarations/closure-univ--9dc0c37f642e9224e8fcf1c4.md) | 526 | `result-track:9dc0c37f642e9224e8fcf1c4d373142425e6fca04f5a4c7ce86110dead7ce4a4` |
| 56 | `theorem` | [closure_union](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant9354f7ce44ab65ecc660946bcb046d628003768c9148b9b7fcef05a1fd1ed5e1.lean/declarations/closure-union--314ca5329d4b721d0712ab52.md) | 532 | `result-track:314ca5329d4b721d0712ab52945b45da55a9b99c5d1bf847361d3b17e9a9b262` |
| 57 | `theorem` | [closure_iUnion](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant9354f7ce44ab65ecc660946bcb046d628003768c9148b9b7fcef05a1fd1ed5e1.lean/declarations/closure-iunion--0895d622074f0ee8abe509b3.md) | 538 | `result-track:0895d622074f0ee8abe509b32ce4b5f98a76598eff4b00be4d7bc1ca0e683d41` |
| 58 | `theorem` | [closure_singleton_le_iff_mem](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant9354f7ce44ab65ecc660946bcb046d628003768c9148b9b7fcef05a1fd1ed5e1.lean/declarations/closure-singleton-le-iff-mem--2f344ae6a811e2d5b823259b.md) | 545 | `result-track:2f344ae6a811e2d5b823259b0a372045810f5388eb1d67e4e8a04351d3b020c3` |
| 59 | `theorem` | [mem_iSup](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant9354f7ce44ab65ecc660946bcb046d628003768c9148b9b7fcef05a1fd1ed5e1.lean/declarations/mem-isup--03f00b93df5cba5a3de1f936.md) | 551 | `result-track:03f00b93df5cba5a3de1f93603077fdf1c2bf1469920f9aee70829cb59128ced` |
| 60 | `theorem` | [iSup_eq_closure](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant9354f7ce44ab65ecc660946bcb046d628003768c9148b9b7fcef05a1fd1ed5e1.lean/declarations/isup-eq-closure--ce8eb08148c49d8dd00c1829.md) | 559 | `result-track:ce8eb08148c49d8dd00c1829e8d4311d6a6c6e3b16c5c2b26619fbb8097e638f` |
| 61 | `theorem` | [disjoint_def](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant9354f7ce44ab65ecc660946bcb046d628003768c9148b9b7fcef05a1fd1ed5e1.lean/declarations/disjoint-def--c3bb18fed0b1bd99ec06d33a.md) | 566 | `result-track:c3bb18fed0b1bd99ec06d33ad86cd5741a9948d8594033403f19511118c99a0c` |
| 62 | `theorem` | [disjoint_def'](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant9354f7ce44ab65ecc660946bcb046d628003768c9148b9b7fcef05a1fd1ed5e1.lean/declarations/disjoint-def--66760b04515e8366a4a143f1.md) | 572 | `result-track:66760b04515e8366a4a143f1f2d67b4b9b0f7c256bfd6f3551df013ebddc8750` |
| 63 | `def` | [eqLocusM](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant9354f7ce44ab65ecc660946bcb046d628003768c9148b9b7fcef05a1fd1ed5e1.lean/declarations/eqlocusm--c0ab652c9679f9123b79153a.md) | 588 | `declaration-track:c0ab652c9679f9123b79153a23dc584d769d1202f1fbb4b27a10302a027e8745` |
| 64 | `theorem` | [eqLocusM_same](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant9354f7ce44ab65ecc660946bcb046d628003768c9148b9b7fcef05a1fd1ed5e1.lean/declarations/eqlocusm-same--72ba9a0364f34f889c8f9da3.md) | 596 | `result-track:72ba9a0364f34f889c8f9da3f7c20caa8307873d99f1bf77cea8c39b0002085e` |
| 65 | `theorem` | [eqOn_closureM](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant9354f7ce44ab65ecc660946bcb046d628003768c9148b9b7fcef05a1fd1ed5e1.lean/declarations/eqon-closurem--10d7aa00446459e44e75bec1.md) | 605 | `result-track:10d7aa00446459e44e75bec1f9b1bbafbeb17fd5792904ba4a50aa6427bb2223` |
| 66 | `theorem` | [eq_of_eqOn_topM](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant9354f7ce44ab65ecc660946bcb046d628003768c9148b9b7fcef05a1fd1ed5e1.lean/declarations/eq-of-eqon-topm--71bfc5d428713b128fcec9bc.md) | 611 | `result-track:71bfc5d428713b128fcec9bc46eef025f643fe64f41c42031c123bbbb9eae182` |
| 67 | `theorem` | [eq_of_eqOn_denseM](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant9354f7ce44ab65ecc660946bcb046d628003768c9148b9b7fcef05a1fd1ed5e1.lean/declarations/eq-of-eqon-densem--62cb4b2c5bca317eac7fc416.md) | 617 | `result-track:62cb4b2c5bca317eac7fc416af953629e8a7b21e10f376bcb6359ee979d17a49` |
| 68 | `def` | [IsUnit.submonoid](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant9354f7ce44ab65ecc660946bcb046d628003768c9148b9b7fcef05a1fd1ed5e1.lean/declarations/isunit-submonoid--05461e62ef72780d592671c8.md) | 635 | `declaration-track:05461e62ef72780d592671c852118538824626aa32775313dd603150c56a5ce8` |
| 69 | `theorem` | [IsUnit.mem_submonoid_iff](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant9354f7ce44ab65ecc660946bcb046d628003768c9148b9b7fcef05a1fd1ed5e1.lean/declarations/isunit-mem-submonoid-iff--4b8f640093a97b4beab6ae51.md) | 646 | `result-track:4b8f640093a97b4beab6ae5102a0ff1dccb1ea318d92b4050d5a1f1cf96a29cc` |
| 70 | `def` | [ofClosureMEqTopLeft](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant9354f7ce44ab65ecc660946bcb046d628003768c9148b9b7fcef05a1fd1ed5e1.lean/declarations/ofclosuremeqtopleft--a01a8a2ce73a9c5b300a01ce.md) | 666 | `declaration-track:a01a8a2ce73a9c5b300a01ce4b9b1e9f8c306d8551f9b54399dbb91469565f1a` |
| 71 | `theorem` | [coe_ofClosureMEqTopLeft](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant9354f7ce44ab65ecc660946bcb046d628003768c9148b9b7fcef05a1fd1ed5e1.lean/declarations/coe-ofclosuremeqtopleft--107ecc6cb7f449e7cfc086c4.md) | 678 | `result-track:107ecc6cb7f449e7cfc086c46a24030f339728917ebb8526dc43b26bbeabdec4` |
| 72 | `def` | [ofClosureMEqTopRight](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant9354f7ce44ab65ecc660946bcb046d628003768c9148b9b7fcef05a1fd1ed5e1.lean/declarations/ofclosuremeqtopright--ed44fab7c8ea7e0c08f22865.md) | 691 | `declaration-track:ed44fab7c8ea7e0c08f22865d35ea1b5f6a155e0296b898ee28ae37589711f1a` |
| 73 | `theorem` | [coe_ofClosureMEqTopRight](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant9354f7ce44ab65ecc660946bcb046d628003768c9148b9b7fcef05a1fd1ed5e1.lean/declarations/coe-ofclosuremeqtopright--32c0b8cc839eedfb9079c743.md) | 704 | `result-track:32c0b8cc839eedfb9079c74398cc4b756a98e222be5c357454df691696ab6a46` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
