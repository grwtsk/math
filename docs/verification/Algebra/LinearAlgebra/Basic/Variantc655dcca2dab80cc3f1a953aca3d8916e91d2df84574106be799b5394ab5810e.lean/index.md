# Verification target: GRWTSK.Algebra.LinearAlgebra.Basic.Variantc655dcca2dab80cc3f1a953aca3d8916e91d2df84574106be799b5394ab5810e

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "d7c8fc3e12a810bf72411f6558cbfbd72c99d13c",
  "lexical_observation_count": 44,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/Basic/Variantc655dcca2dab80cc3f1a953aca3d8916e91d2df84574106be799b5394ab5810e.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variantc655dcca2dab80cc3f1a953aca3d8916e91d2df84574106be799b5394ab5810e.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variantc655dcca2dab80cc3f1a953aca3d8916e91d2df84574106be799b5394ab5810e.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `d7c8fc3e12a810bf72411f6558cbfbd72c99d13c`.

Source path: `GRWTSK/Algebra/LinearAlgebra/Basic/Variantc655dcca2dab80cc3f1a953aca3d8916e91d2df84574106be799b5394ab5810e.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/Basic/Variantc655dcca2dab80cc3f1a953aca3d8916e91d2df84574106be799b5394ab5810e.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Algebra.Operations` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Algebra.Subalgebra.Tower` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.Prod` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.Finsupp` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [subset_adjoin](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variantc655dcca2dab80cc3f1a953aca3d8916e91d2df84574106be799b5394ab5810e.lean/declarations/subset-adjoin--0c61e791a856abc6ef63c854.md) | 43 | `result-track:0c61e791a856abc6ef63c854e1e99b7b6fbcdc3e58bafffb270d9df9a3c0fdb8` |
| 2 | `theorem` | [adjoin_le](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variantc655dcca2dab80cc3f1a953aca3d8916e91d2df84574106be799b5394ab5810e.lean/declarations/adjoin-le--092550e0b81d8f912191ae09.md) | 47 | `result-track:092550e0b81d8f912191ae090507315b8254132fe36b6f6b157edb9e98e90402` |
| 3 | `theorem` | [adjoin_eq_sInf](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variantc655dcca2dab80cc3f1a953aca3d8916e91d2df84574106be799b5394ab5810e.lean/declarations/adjoin-eq-sinf--4db4666d820d064608e3b145.md) | 51 | `result-track:4db4666d820d064608e3b145c7d9ffc39ed0c27f595c82ac302a78ab6436d142` |
| 4 | `theorem` | [adjoin_le_iff](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variantc655dcca2dab80cc3f1a953aca3d8916e91d2df84574106be799b5394ab5810e.lean/declarations/adjoin-le-iff--3913c8fcac01eba2d1e2036d.md) | 55 | `result-track:3913c8fcac01eba2d1e2036dbc1cc754cfed1b13c413498f71f24b71c48e7c17` |
| 5 | `theorem` | [adjoin_mono](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variantc655dcca2dab80cc3f1a953aca3d8916e91d2df84574106be799b5394ab5810e.lean/declarations/adjoin-mono--a831022321f52542a4174879.md) | 59 | `result-track:a831022321f52542a4174879dd1073cf0095fe6398353053c935ad91639c4be4` |
| 6 | `theorem` | [adjoin_eq_of_le](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variantc655dcca2dab80cc3f1a953aca3d8916e91d2df84574106be799b5394ab5810e.lean/declarations/adjoin-eq-of-le--674dcaf5b2cc1bd43a530b80.md) | 63 | `result-track:674dcaf5b2cc1bd43a530b80f1774e7e75c82db68d3b8a1f9add87ac4af39e9b` |
| 7 | `theorem` | [adjoin_eq](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variantc655dcca2dab80cc3f1a953aca3d8916e91d2df84574106be799b5394ab5810e.lean/declarations/adjoin-eq--16bc7efebaad8049cf99de81.md) | 67 | `result-track:16bc7efebaad8049cf99de8116145a3c927fa82faf64d9a7dd35fb82c5bbe9b8` |
| 8 | `theorem` | [adjoin_iUnion](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variantc655dcca2dab80cc3f1a953aca3d8916e91d2df84574106be799b5394ab5810e.lean/declarations/adjoin-iunion--bc9033ee8e926bee20394aab.md) | 71 | `result-track:bc9033ee8e926bee20394aabd46b0aff2add8cae9d6eecd8c2d567ee5e41a316` |
| 9 | `theorem` | [adjoin_attach_biUnion](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variantc655dcca2dab80cc3f1a953aca3d8916e91d2df84574106be799b5394ab5810e.lean/declarations/adjoin-attach-biunion--7d343a6d27253cdbe1937ab7.md) | 76 | `result-track:7d343a6d27253cdbe1937ab7b31826d68d596aa3ea608303bd554f32318680cd` |
| 10 | `theorem` | [adjoin_induction](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variantc655dcca2dab80cc3f1a953aca3d8916e91d2df84574106be799b5394ab5810e.lean/declarations/adjoin-induction--976525d800eb97bc643a7152.md) | 81 | `result-track:976525d800eb97bc643a71524af1fc7b492e12742a29f50a4789457f7900b9fa` |
| 11 | `theorem` | [adjoin_induction₂](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variantc655dcca2dab80cc3f1a953aca3d8916e91d2df84574106be799b5394ab5810e.lean/declarations/adjoin-induction--e85ff13225c9285aebce6652.md) | 96 | `result-track:e85ff13225c9285aebce6652729a6ec6742eebb6f8d5b8eeb6a6391765b4c049` |
| 12 | `theorem` | [adjoin_induction'](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variantc655dcca2dab80cc3f1a953aca3d8916e91d2df84574106be799b5394ab5810e.lean/declarations/adjoin-induction--a02d1ff484185f0ea5d0f864.md) | 115 | `result-track:a02d1ff484185f0ea5d0f864c79594f7ce01b5395f43437c29cd1fc8ce6a3fbc` |
| 13 | `theorem` | [adjoin_adjoin_coe_preimage](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variantc655dcca2dab80cc3f1a953aca3d8916e91d2df84574106be799b5394ab5810e.lean/declarations/adjoin-adjoin-coe-preimage--23ab59c8c8bbd9c6e5682ddb.md) | 131 | `result-track:23ab59c8c8bbd9c6e5682ddbb61397e9e09dd37e82377186eefb9aa9dd84bfe3` |
| 14 | `theorem` | [adjoin_union](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variantc655dcca2dab80cc3f1a953aca3d8916e91d2df84574106be799b5394ab5810e.lean/declarations/adjoin-union--66fb14bb9bd281201678ef19.md) | 143 | `result-track:66fb14bb9bd281201678ef197659072a5e5375d2a0019b1187d8e1ac527ac102` |
| 15 | `theorem` | [adjoin_empty](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variantc655dcca2dab80cc3f1a953aca3d8916e91d2df84574106be799b5394ab5810e.lean/declarations/adjoin-empty--83eca97aafb29aaa2fdb931e.md) | 150 | `result-track:83eca97aafb29aaa2fdb931e0303b32b40cd21fe091612b3eac9b8df10c73517` |
| 16 | `theorem` | [adjoin_univ](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variantc655dcca2dab80cc3f1a953aca3d8916e91d2df84574106be799b5394ab5810e.lean/declarations/adjoin-univ--539c257063ab29247f9572a8.md) | 157 | `result-track:539c257063ab29247f9572a8de55cfdf7a4f996233b3bcd5cd0e41533f9f9a00` |
| 17 | `theorem` | [adjoin_eq_span](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variantc655dcca2dab80cc3f1a953aca3d8916e91d2df84574106be799b5394ab5810e.lean/declarations/adjoin-eq-span--a18f6128ab94c364bff84ac3.md) | 163 | `result-track:a18f6128ab94c364bff84ac3467b7e20f04594b172f619833f0b1ecf47b92271` |
| 18 | `theorem` | [span_le_adjoin](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variantc655dcca2dab80cc3f1a953aca3d8916e91d2df84574106be799b5394ab5810e.lean/declarations/span-le-adjoin--5748c0d4fbef7e0d269f953a.md) | 195 | `result-track:5748c0d4fbef7e0d269f953a84f802ae70f41b2d9d0397c15c08cfa5779d2efa` |
| 19 | `theorem` | [adjoin_toSubmodule_le](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variantc655dcca2dab80cc3f1a953aca3d8916e91d2df84574106be799b5394ab5810e.lean/declarations/adjoin-tosubmodule-le--083f0520f2fe849e2a6c59c8.md) | 199 | `result-track:083f0520f2fe849e2a6c59c89bc01646bde62c73726a3b7ccde80f8942af5c2e` |
| 20 | `theorem` | [adjoin_eq_span_of_subset](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variantc655dcca2dab80cc3f1a953aca3d8916e91d2df84574106be799b5394ab5810e.lean/declarations/adjoin-eq-span-of-subset--8ffe2e4b2fe9f5cace1e981f.md) | 204 | `result-track:8ffe2e4b2fe9f5cace1e981f90da1c5693fd65895c398a9168ec89624f82e360` |
| 21 | `theorem` | [adjoin_span](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variantc655dcca2dab80cc3f1a953aca3d8916e91d2df84574106be799b5394ab5810e.lean/declarations/adjoin-span--98a44b75dcda07b5aab8e659.md) | 210 | `result-track:98a44b75dcda07b5aab8e659c61a7cbe20e87b32bc9e801d7d826435fc2a7142` |
| 22 | `theorem` | [adjoin_image](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variantc655dcca2dab80cc3f1a953aca3d8916e91d2df84574106be799b5394ab5810e.lean/declarations/adjoin-image--7c3f34d899aa92a5834e1f0d.md) | 214 | `result-track:7c3f34d899aa92a5834e1f0dac750612e00d872bd3046bd958a0aa5f7ab00342` |
| 23 | `theorem` | [adjoin_insert_adjoin](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variantc655dcca2dab80cc3f1a953aca3d8916e91d2df84574106be799b5394ab5810e.lean/declarations/adjoin-insert-adjoin--3fdbc1b93f474f6c9bc7c0e5.md) | 224 | `result-track:3fdbc1b93f474f6c9bc7c0e5bcaaa85e110e3ee149c37501729abb88e22e9c4d` |
| 24 | `theorem` | [adjoin_prod_le](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variantc655dcca2dab80cc3f1a953aca3d8916e91d2df84574106be799b5394ab5810e.lean/declarations/adjoin-prod-le--66714dd95b550b4efb1e8912.md) | 232 | `result-track:66714dd95b550b4efb1e891287b1afffeea5aa54d4693d77c2f363f94d25344f` |
| 25 | `theorem` | [mem_adjoin_of_map_mul](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variantc655dcca2dab80cc3f1a953aca3d8916e91d2df84574106be799b5394ab5810e.lean/declarations/mem-adjoin-of-map-mul--b8a94880a25a76340cc26e8d.md) | 237 | `result-track:b8a94880a25a76340cc26e8daf30c565409b17e5aa12a987d07bdc40a18e8721` |
| 26 | `theorem` | [adjoin_inl_union_inr_eq_prod](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variantc655dcca2dab80cc3f1a953aca3d8916e91d2df84574106be799b5394ab5810e.lean/declarations/adjoin-inl-union-inr-eq-prod--820bfd9f7b52d6bcd80f8766.md) | 251 | `result-track:820bfd9f7b52d6bcd80f8766b759e0c4d1a014a2eab5e1a2111a32aad4612fb8` |
| 27 | `def` | [adjoinCommSemiringOfComm](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variantc655dcca2dab80cc3f1a953aca3d8916e91d2df84574106be799b5394ab5810e.lean/declarations/adjoincommsemiringofcomm--cd9d981aa61305e0e46024fc.md) | 274 | `declaration-track:cd9d981aa61305e0e46024fc2b48b7f37aa5a4952a15d2450e0b0e4f9e1b949c` |
| 28 | `theorem` | [adjoin_singleton_one](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variantc655dcca2dab80cc3f1a953aca3d8916e91d2df84574106be799b5394ab5810e.lean/declarations/adjoin-singleton-one--95d3e771c8460750b5bccb94.md) | 288 | `result-track:95d3e771c8460750b5bccb94a5a082a125a3c5b3cbe0099600d1a36dd16d736b` |
| 29 | `theorem` | [self_mem_adjoin_singleton](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variantc655dcca2dab80cc3f1a953aca3d8916e91d2df84574106be799b5394ab5810e.lean/declarations/self-mem-adjoin-singleton--0126b8be1d50e01ebab165ab.md) | 292 | `result-track:0126b8be1d50e01ebab165ab62648c2f207d149a3c7f5a9f4b23737085b04cd1` |
| 30 | `theorem` | [adjoin_algebraMap](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variantc655dcca2dab80cc3f1a953aca3d8916e91d2df84574106be799b5394ab5810e.lean/declarations/adjoin-algebramap--aa9e0043876aea791d6e313c.md) | 297 | `result-track:aa9e0043876aea791d6e313c97b50f90295af3b4712718f404a8e13b4905fef9` |
| 31 | `theorem` | [adjoin_algebraMap_image_union_eq_adjoin_adjoin](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variantc655dcca2dab80cc3f1a953aca3d8916e91d2df84574106be799b5394ab5810e.lean/declarations/adjoin-algebramap-image-union-eq-adjoin-adjoin--789d8ae8382fc2993b23d8be.md) | 302 | `result-track:789d8ae8382fc2993b23d8be584c602f119ff54f54f96ffdb23bc8d774698e7b` |
| 32 | `theorem` | [adjoin_adjoin_of_tower](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variantc655dcca2dab80cc3f1a953aca3d8916e91d2df84574106be799b5394ab5810e.lean/declarations/adjoin-adjoin-of-tower--481662158689472bbfbc554f.md) | 314 | `result-track:481662158689472bbfbc554fceb3a7d3aae41800008b1ff6c9a3f04e9f1dc99a` |
| 33 | `theorem` | [adjoin_top](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variantc655dcca2dab80cc3f1a953aca3d8916e91d2df84574106be799b5394ab5810e.lean/declarations/adjoin-top--e314fa9dc5435d2f4b06d00f.md) | 326 | `result-track:e314fa9dc5435d2f4b06d00f0fd35cd8aa5b27bfb6f5f8066964f1f579345d63` |
| 34 | `theorem` | [adjoin_union_eq_adjoin_adjoin](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variantc655dcca2dab80cc3f1a953aca3d8916e91d2df84574106be799b5394ab5810e.lean/declarations/adjoin-union-eq-adjoin-adjoin--706e38d488e0b9fd1a85922e.md) | 349 | `result-track:706e38d488e0b9fd1a85922e9bc9bcfb0c8cc7bad2c344b894b52b129aa51b76` |
| 35 | `theorem` | [adjoin_union_coe_submodule](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variantc655dcca2dab80cc3f1a953aca3d8916e91d2df84574106be799b5394ab5810e.lean/declarations/adjoin-union-coe-submodule--19a65503d4978889b841aaa5.md) | 354 | `result-track:19a65503d4978889b841aaa5bf68029e1e26dc9ad7cd71e4fa66de47d8e5a3da` |
| 36 | `theorem` | [pow_smul_mem_of_smul_subset_of_mem_adjoin](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variantc655dcca2dab80cc3f1a953aca3d8916e91d2df84574106be799b5394ab5810e.lean/declarations/pow-smul-mem-of-smul-subset-of-mem-adjoin--8b41bbb83a28cc9a4481d863.md) | 363 | `result-track:8b41bbb83a28cc9a4481d863d5bee0051e1988f2133971b06772367b69074437` |
| 37 | `theorem` | [pow_smul_mem_adjoin_smul](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variantc655dcca2dab80cc3f1a953aca3d8916e91d2df84574106be799b5394ab5810e.lean/declarations/pow-smul-mem-adjoin-smul--70e20c2560bc87546db2f398.md) | 388 | `result-track:70e20c2560bc87546db2f3989fb244f8329ed332b127ee3425ef7729118e8ba1` |
| 38 | `theorem` | [adjoin_int](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variantc655dcca2dab80cc3f1a953aca3d8916e91d2df84574106be799b5394ab5810e.lean/declarations/adjoin-int--a284daf3b06606e4640e0659.md) | 401 | `result-track:a284daf3b06606e4640e0659d31e384ec4d667d566efa18d41c1a5e32f35fb1a` |
| 39 | `theorem` | [mem_adjoin_iff](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variantc655dcca2dab80cc3f1a953aca3d8916e91d2df84574106be799b5394ab5810e.lean/declarations/mem-adjoin-iff--539462b5e26719e3da439d0a.md) | 406 | `result-track:539462b5e26719e3da439d0a5622d7ca6f2cb556c5800e73c7db974b96e7cc69` |
| 40 | `theorem` | [adjoin_eq_ring_closure](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variantc655dcca2dab80cc3f1a953aca3d8916e91d2df84574106be799b5394ab5810e.lean/declarations/adjoin-eq-ring-closure--01ca1d047fe212cabfb31510.md) | 418 | `result-track:01ca1d047fe212cabfb315104f6dedcf0bedb8e3378876fcada3ae84ec44dd0e` |
| 41 | `def` | [adjoinCommRingOfComm](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variantc655dcca2dab80cc3f1a953aca3d8916e91d2df84574106be799b5394ab5810e.lean/declarations/adjoincommringofcomm--c34d243d5e15d0cd5a4d0abf.md) | 427 | `declaration-track:c34d243d5e15d0cd5a4d0abffd92b84674a8fc65bd50a2bd6715f1b077b6d0a1` |
| 42 | `theorem` | [map_adjoin](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variantc655dcca2dab80cc3f1a953aca3d8916e91d2df84574106be799b5394ab5810e.lean/declarations/map-adjoin--99d9aaf12804d42baa188575.md) | 442 | `result-track:99d9aaf12804d42baa188575688add22ac85c358b0a8f1129cf9771668295db7` |
| 43 | `theorem` | [adjoin_le_equalizer](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variantc655dcca2dab80cc3f1a953aca3d8916e91d2df84574106be799b5394ab5810e.lean/declarations/adjoin-le-equalizer--21487557e285964eba3c2a15.md) | 446 | `result-track:21487557e285964eba3c2a1507c3122e4163b6972780e56fe2fa3053349f05a8` |
| 44 | `theorem` | [ext_of_adjoin_eq_top](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variantc655dcca2dab80cc3f1a953aca3d8916e91d2df84574106be799b5394ab5810e.lean/declarations/ext-of-adjoin-eq-top--3856f9105ba73d9e1fb8eec7.md) | 451 | `result-track:3856f9105ba73d9e1fb8eec7fa9ed0ea4ebdfda05a0006544bfc84779a59f2cc` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
