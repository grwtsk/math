# Verification target: GRWTSK.Algebra.LinearAlgebra.OfAssociative.Variant0d60808334c6d6e3a54b391a52b5cfbcda2ecb6fc740b033a8a73af6b03502b1

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "71878f6eca30b62ed5a80e0d373310bc203604c3",
  "lexical_observation_count": 38,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/OfAssociative/Variant0d60808334c6d6e3a54b391a52b5cfbcda2ecb6fc740b033a8a73af6b03502b1.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/OfAssociative/Variant0d60808334c6d6e3a54b391a52b5cfbcda2ecb6fc740b033a8a73af6b03502b1.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/OfAssociative/Variant0d60808334c6d6e3a54b391a52b5cfbcda2ecb6fc740b033a8a73af6b03502b1.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `71878f6eca30b62ed5a80e0d373310bc203604c3`.

Source path: `GRWTSK/Algebra/LinearAlgebra/OfAssociative/Variant0d60808334c6d6e3a54b391a52b5cfbcda2ecb6fc740b033a8a73af6b03502b1.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/OfAssociative/Variant0d60808334c6d6e3a54b391a52b5cfbcda2ecb6fc740b033a8a73af6b03502b1.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Lie.Basic` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Lie.Subalgebra` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Lie.Submodule` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Algebra.Subalgebra.Basic` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/OfAssociative/Variant0d60808334c6d6e3a54b391a52b5cfbcda2ecb6fc740b033a8a73af6b03502b1.lean/declarations/instance--2afd891ba438fce5d4a719d9.md) | 48 | `declaration-track:2afd891ba438fce5d4a719d99fd6f5f7735b202f72630a2332e3f7def5b4bc14` |
| 2 | `theorem` | [lie_def](../../../../../mathematics/Algebra/LinearAlgebra/OfAssociative/Variant0d60808334c6d6e3a54b391a52b5cfbcda2ecb6fc740b033a8a73af6b03502b1.lean/declarations/lie-def--5ef7029da3d296fbef99b0e5.md) | 51 | `result-track:5ef7029da3d296fbef99b0e5c5bd333a02c2e220062063f6b64b60ee3bbc0d57` |
| 3 | `theorem` | [commute_iff_lie_eq](../../../../../mathematics/Algebra/LinearAlgebra/OfAssociative/Variant0d60808334c6d6e3a54b391a52b5cfbcda2ecb6fc740b033a8a73af6b03502b1.lean/declarations/commute-iff-lie-eq--4d6be0f1fa144d8e8ebbd373.md) | 57 | `result-track:4d6be0f1fa144d8e8ebbd3732b44c348f2346888af398a8e4b906aab0ff0b615` |
| 4 | `theorem` | [Commute.lie_eq](../../../../../mathematics/Algebra/LinearAlgebra/OfAssociative/Variant0d60808334c6d6e3a54b391a52b5cfbcda2ecb6fc740b033a8a73af6b03502b1.lean/declarations/commute-lie-eq--f4cc26d97077be5356673ba6.md) | 61 | `result-track:f4cc26d97077be5356673ba67b5553b4a23d8af438fa258a31e13ef59cac4d0b` |
| 5 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/OfAssociative/Variant0d60808334c6d6e3a54b391a52b5cfbcda2ecb6fc740b033a8a73af6b03502b1.lean/declarations/instance--ffe86a3e8293b2ba0b628aff.md) | 68 | `declaration-track:ffe86a3e8293b2ba0b628afffe92094035afe3c81c5e89795e6b8b7e9fe36d76` |
| 6 | `theorem` | [of_associative_ring_bracket](../../../../../mathematics/Algebra/LinearAlgebra/OfAssociative/Variant0d60808334c6d6e3a54b391a52b5cfbcda2ecb6fc740b033a8a73af6b03502b1.lean/declarations/of-associative-ring-bracket--8b71248e563a5f52b37ca6ab.md) | 76 | `result-track:8b71248e563a5f52b37ca6aba31f69f76fd8c7c91e30f63b354a8dd29d792c02` |
| 7 | `theorem` | [lie_apply](../../../../../mathematics/Algebra/LinearAlgebra/OfAssociative/Variant0d60808334c6d6e3a54b391a52b5cfbcda2ecb6fc740b033a8a73af6b03502b1.lean/declarations/lie-apply--f6e33b5b5c086c42c5a7d551.md) | 81 | `result-track:f6e33b5b5c086c42c5a7d551de9797f88fb8ab63de35eec3649fc67c18d4920f` |
| 8 | `def` | [LieRingModule.ofAssociativeModule](../../../../../mathematics/Algebra/LinearAlgebra/OfAssociative/Variant0d60808334c6d6e3a54b391a52b5cfbcda2ecb6fc740b033a8a73af6b03502b1.lean/declarations/lieringmodule-ofassociativemodule--103831b1e6252faf64d3d6e0.md) | 102 | `declaration-track:103831b1e6252faf64d3d6e0a87733ba5df95d05aa39fa09e70de6bd9a862e78` |
| 9 | `theorem` | [lie_eq_smul](../../../../../mathematics/Algebra/LinearAlgebra/OfAssociative/Variant0d60808334c6d6e3a54b391a52b5cfbcda2ecb6fc740b033a8a73af6b03502b1.lean/declarations/lie-eq-smul--af83058b4af5d5aaeaa51f4f.md) | 111 | `result-track:af83058b4af5d5aaeaa51f4f080a0d58890fee1f2cb303098abd10ecddf7cc37` |
| 10 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/OfAssociative/Variant0d60808334c6d6e3a54b391a52b5cfbcda2ecb6fc740b033a8a73af6b03502b1.lean/declarations/instance--08e952cac07118c704f82f7b.md) | 123 | `declaration-track:08e952cac07118c704f82f7b31f6313d97b98f276729b866f929c5d43d818dd9` |
| 11 | `theorem` | [LieModule.ofAssociativeModule](../../../../../mathematics/Algebra/LinearAlgebra/OfAssociative/Variant0d60808334c6d6e3a54b391a52b5cfbcda2ecb6fc740b033a8a73af6b03502b1.lean/declarations/liemodule-ofassociativemodule--42c5ffc5e722e784ccdefe71.md) | 140 | `result-track:42c5ffc5e722e784ccdefe71a1ee106d08165af42bf2a625d8792bbfe3119d81` |
| 12 | `instance` | [Module.End.lieRingModule](../../../../../mathematics/Algebra/LinearAlgebra/OfAssociative/Variant0d60808334c6d6e3a54b391a52b5cfbcda2ecb6fc740b033a8a73af6b03502b1.lean/declarations/module-end-lieringmodule--e7ccc09c907a962a2aa0fef6.md) | 145 | `declaration-track:e7ccc09c907a962a2aa0fef6de631204e4b1ecebc4ecac84fa0ae9c61d4dcd49` |
| 13 | `instance` | [Module.End.lieModule](../../../../../mathematics/Algebra/LinearAlgebra/OfAssociative/Variant0d60808334c6d6e3a54b391a52b5cfbcda2ecb6fc740b033a8a73af6b03502b1.lean/declarations/module-end-liemodule--95c3a4a0ae48f2786d2953c0.md) | 149 | `declaration-track:95c3a4a0ae48f2786d2953c09201faf7e0de831287e37c409e48ee838e64629b` |
| 14 | `def` | [toLieHom](../../../../../mathematics/Algebra/LinearAlgebra/OfAssociative/Variant0d60808334c6d6e3a54b391a52b5cfbcda2ecb6fc740b033a8a73af6b03502b1.lean/declarations/toliehom--11c630dd8cc1e43b35863b7a.md) | 163 | `declaration-track:11c630dd8cc1e43b35863b7a1fad970decd6a8cb48a5fb11c8eca40d07e9d61a` |
| 15 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/OfAssociative/Variant0d60808334c6d6e3a54b391a52b5cfbcda2ecb6fc740b033a8a73af6b03502b1.lean/declarations/instance--e488e92189f155fe069aeb05.md) | 168 | `declaration-track:e488e92189f155fe069aeb052cacc99ba0050de926d02dfe58f367072f4e79cd` |
| 16 | `theorem` | [coe_toLieHom](../../../../../mathematics/Algebra/LinearAlgebra/OfAssociative/Variant0d60808334c6d6e3a54b391a52b5cfbcda2ecb6fc740b033a8a73af6b03502b1.lean/declarations/coe-toliehom--343eb84b93b7ba8d82887f68.md) | 179 | `result-track:343eb84b93b7ba8d82887f68a547933e99d0797d9b695d0acb262ad86e21516c` |
| 17 | `theorem` | [toLieHom_apply](../../../../../mathematics/Algebra/LinearAlgebra/OfAssociative/Variant0d60808334c6d6e3a54b391a52b5cfbcda2ecb6fc740b033a8a73af6b03502b1.lean/declarations/toliehom-apply--569aac682640763a69ae7df2.md) | 183 | `result-track:569aac682640763a69ae7df2171a057cbd563dc3213a0ff57ac2d66a6ab3aea6` |
| 18 | `theorem` | [toLieHom_id](../../../../../mathematics/Algebra/LinearAlgebra/OfAssociative/Variant0d60808334c6d6e3a54b391a52b5cfbcda2ecb6fc740b033a8a73af6b03502b1.lean/declarations/toliehom-id--e9b3436bb81fb29a4b78f63e.md) | 188 | `result-track:e9b3436bb81fb29a4b78f63ee10043127539fe81f9588772b9903896c616dd1f` |
| 19 | `theorem` | [toLieHom_comp](../../../../../mathematics/Algebra/LinearAlgebra/OfAssociative/Variant0d60808334c6d6e3a54b391a52b5cfbcda2ecb6fc740b033a8a73af6b03502b1.lean/declarations/toliehom-comp--965a6ffea74c3567b39b899c.md) | 193 | `result-track:965a6ffea74c3567b39b899cd5ee4c538b05c81055fcf91c4a002eac4f4a461c` |
| 20 | `theorem` | [toLieHom_injective](../../../../../mathematics/Algebra/LinearAlgebra/OfAssociative/Variant0d60808334c6d6e3a54b391a52b5cfbcda2ecb6fc740b033a8a73af6b03502b1.lean/declarations/toliehom-injective--5744616df95db381c356fa6a.md) | 197 | `result-track:5744616df95db381c356fa6ab82e2bb84873e6c0dbddae947cada644c95a3c43` |
| 21 | `def` | [LieModule.toEndomorphism](../../../../../mathematics/Algebra/LinearAlgebra/OfAssociative/Variant0d60808334c6d6e3a54b391a52b5cfbcda2ecb6fc740b033a8a73af6b03502b1.lean/declarations/liemodule-toendomorphism--3f9b62b466ccf892b912cb2d.md) | 219 | `declaration-track:3f9b62b466ccf892b912cb2d003952b35417e65ebba995173cfbe63b086a7ee9` |
| 22 | `def` | [LieAlgebra.ad](../../../../../mathematics/Algebra/LinearAlgebra/OfAssociative/Variant0d60808334c6d6e3a54b391a52b5cfbcda2ecb6fc740b033a8a73af6b03502b1.lean/declarations/liealgebra-ad--e965f1ee9c532a1207bfc287.md) | 230 | `declaration-track:e965f1ee9c532a1207bfc287a1cb856dfe1dceb089d99623f049881ca204f3f4` |
| 23 | `theorem` | [LieAlgebra.ad_apply](../../../../../mathematics/Algebra/LinearAlgebra/OfAssociative/Variant0d60808334c6d6e3a54b391a52b5cfbcda2ecb6fc740b033a8a73af6b03502b1.lean/declarations/liealgebra-ad-apply--cfc589e2f30990eff07bc4c3.md) | 235 | `result-track:cfc589e2f30990eff07bc4c36ba76fdc2471f2840d7a9b55c6520f6083e98455` |
| 24 | `theorem` | [LieModule.toEndomorphism_module_end](../../../../../mathematics/Algebra/LinearAlgebra/OfAssociative/Variant0d60808334c6d6e3a54b391a52b5cfbcda2ecb6fc740b033a8a73af6b03502b1.lean/declarations/liemodule-toendomorphism-module-end--1e0bf0352260b924632e9fda.md) | 240 | `result-track:1e0bf0352260b924632e9fdab81545e10c322a7cc74f4050c76a89d6fbb001eb` |
| 25 | `theorem` | [LieSubalgebra.toEndomorphism_eq](../../../../../mathematics/Algebra/LinearAlgebra/OfAssociative/Variant0d60808334c6d6e3a54b391a52b5cfbcda2ecb6fc740b033a8a73af6b03502b1.lean/declarations/liesubalgebra-toendomorphism-eq--bdbfeb330b83492eae986f2a.md) | 244 | `result-track:bdbfeb330b83492eae986f2a7bc5850851f787b1b6b673d460d76288bd889fb7` |
| 26 | `theorem` | [LieSubalgebra.toEndomorphism_mk](../../../../../mathematics/Algebra/LinearAlgebra/OfAssociative/Variant0d60808334c6d6e3a54b391a52b5cfbcda2ecb6fc740b033a8a73af6b03502b1.lean/declarations/liesubalgebra-toendomorphism-mk--083c8623b21ad6b7b8f3be61.md) | 250 | `result-track:083c8623b21ad6b7b8f3be61c0683e4abdb008a2de16e3521b30e963db02ecd7` |
| 27 | `theorem` | [coe_map_toEndomorphism_le](../../../../../mathematics/Algebra/LinearAlgebra/OfAssociative/Variant0d60808334c6d6e3a54b391a52b5cfbcda2ecb6fc740b033a8a73af6b03502b1.lean/declarations/coe-map-toendomorphism-le--b36eb3d7b61d032c32034807.md) | 263 | `result-track:b36eb3d7b61d032c32034807e574421ccd360dfbbab7a4223bfbed736e63e7c3` |
| 28 | `theorem` | [toEndomorphism_comp_subtype_mem](../../../../../mathematics/Algebra/LinearAlgebra/OfAssociative/Variant0d60808334c6d6e3a54b391a52b5cfbcda2ecb6fc740b033a8a73af6b03502b1.lean/declarations/toendomorphism-comp-subtype-mem--0498b0083cd4d3971b84b163.md) | 271 | `result-track:0498b0083cd4d3971b84b163f5a85eaba9285aaeaf00c6ec79b92834bdfdcd5f` |
| 29 | `theorem` | [toEndomorphism_restrict_eq_toEndomorphism](../../../../../mathematics/Algebra/LinearAlgebra/OfAssociative/Variant0d60808334c6d6e3a54b391a52b5cfbcda2ecb6fc740b033a8a73af6b03502b1.lean/declarations/toendomorphism-restrict-eq-toendomorphism--581bbc36365491d5b9749bd9.md) | 277 | `result-track:581bbc36365491d5b9749bd9f415c7cf5a6cff2bd619f7dd7087c0592105cdb9` |
| 30 | `theorem` | [LieAlgebra.ad_eq_lmul_left_sub_lmul_right](../../../../../mathematics/Algebra/LinearAlgebra/OfAssociative/Variant0d60808334c6d6e3a54b391a52b5cfbcda2ecb6fc740b033a8a73af6b03502b1.lean/declarations/liealgebra-ad-eq-lmul-left-sub-lmul-right--28b8080cab4a169724d14d21.md) | 286 | `result-track:28b8080cab4a169724d14d21c33e661feba4e25f27427229d828b98f4f784030` |
| 31 | `theorem` | [LieSubalgebra.ad_comp_incl_eq](../../../../../mathematics/Algebra/LinearAlgebra/OfAssociative/Variant0d60808334c6d6e3a54b391a52b5cfbcda2ecb6fc740b033a8a73af6b03502b1.lean/declarations/liesubalgebra-ad-comp-incl-eq--f2ad6cf8c5f19041e186f691.md) | 291 | `result-track:f2ad6cf8c5f19041e186f691f060f216bfe6992dcfa1bdb99adef7da9f6b80f2` |
| 32 | `def` | [lieSubalgebraOfSubalgebra](../../../../../mathematics/Algebra/LinearAlgebra/OfAssociative/Variant0d60808334c6d6e3a54b391a52b5cfbcda2ecb6fc740b033a8a73af6b03502b1.lean/declarations/liesubalgebraofsubalgebra--0c1ea61f6afeb430fc3fe959.md) | 301 | `declaration-track:0c1ea61f6afeb430fc3fe959cf1b59c3443e895682105bcd17a6b5dd775af500` |
| 33 | `def` | [lieConj](../../../../../mathematics/Algebra/LinearAlgebra/OfAssociative/Variant0d60808334c6d6e3a54b391a52b5cfbcda2ecb6fc740b033a8a73af6b03502b1.lean/declarations/lieconj--1ec60e95350687c30214c1b6.md) | 321 | `declaration-track:1ec60e95350687c30214c1b6caff71c0f7fc44e2cb0a6139f59491a6fa80431e` |
| 34 | `theorem` | [lieConj_apply](../../../../../mathematics/Algebra/LinearAlgebra/OfAssociative/Variant0d60808334c6d6e3a54b391a52b5cfbcda2ecb6fc740b033a8a73af6b03502b1.lean/declarations/lieconj-apply--9e5210a4c72ef46fa12c404d.md) | 330 | `result-track:9e5210a4c72ef46fa12c404d5c2c266d9c26d0f1d032a49fea7d9f73e01af33c` |
| 35 | `theorem` | [lieConj_symm](../../../../../mathematics/Algebra/LinearAlgebra/OfAssociative/Variant0d60808334c6d6e3a54b391a52b5cfbcda2ecb6fc740b033a8a73af6b03502b1.lean/declarations/lieconj-symm--e01c33374ec33391229d4405.md) | 335 | `result-track:e01c33374ec33391229d4405105d17623a9d836d471d18a702eb51b48b53c646` |
| 36 | `def` | [toLieEquiv](../../../../../mathematics/Algebra/LinearAlgebra/OfAssociative/Variant0d60808334c6d6e3a54b391a52b5cfbcda2ecb6fc740b033a8a73af6b03502b1.lean/declarations/tolieequiv--86d330ba7b0d8cd67db48aef.md) | 350 | `declaration-track:86d330ba7b0d8cd67db48aefe569656dd3408c168b1c62276c435c8a40c1a69a` |
| 37 | `theorem` | [toLieEquiv_apply](../../../../../mathematics/Algebra/LinearAlgebra/OfAssociative/Variant0d60808334c6d6e3a54b391a52b5cfbcda2ecb6fc740b033a8a73af6b03502b1.lean/declarations/tolieequiv-apply--dc154871d4b8269218502036.md) | 359 | `result-track:dc154871d4b8269218502036d1af492368a8669598c2688b43f98b3a4f619433` |
| 38 | `theorem` | [toLieEquiv_symm_apply](../../../../../mathematics/Algebra/LinearAlgebra/OfAssociative/Variant0d60808334c6d6e3a54b391a52b5cfbcda2ecb6fc740b033a8a73af6b03502b1.lean/declarations/tolieequiv-symm-apply--8de07d96127b99ba61f9cb6a.md) | 364 | `result-track:8de07d96127b99ba61f9cb6ad92fb4b0483d7ec1a010f5ee8ffafa5a977557f4` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
