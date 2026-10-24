# Verification target: GRWTSK.Algebra.GroupTheory.PresentedGroup.Variant8e7de2ba88577db19f4d3d9562938a3e4ca93342717b6f9e5ec87b6f546a74d5

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "76b69e1a328268fca3eaa8c1e900c9b465526387",
  "lexical_observation_count": 27,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/GroupTheory/PresentedGroup/Variant8e7de2ba88577db19f4d3d9562938a3e4ca93342717b6f9e5ec87b6f546a74d5.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/GroupTheory/PresentedGroup/Variant8e7de2ba88577db19f4d3d9562938a3e4ca93342717b6f9e5ec87b6f546a74d5.lean/index.md) · [Full source](../../../../../mathematics/Algebra/GroupTheory/PresentedGroup/Variant8e7de2ba88577db19f4d3d9562938a3e4ca93342717b6f9e5ec87b6f546a74d5.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `76b69e1a328268fca3eaa8c1e900c9b465526387`.

Source path: `GRWTSK/Algebra/GroupTheory/PresentedGroup/Variant8e7de2ba88577db19f4d3d9562938a3e4ca93342717b6f9e5ec87b6f546a74d5.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/GroupTheory/PresentedGroup/Variant8e7de2ba88577db19f4d3d9562938a3e4ca93342717b6f9e5ec87b6f546a74d5.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [PresentedGroup](../../../../../mathematics/Algebra/GroupTheory/PresentedGroup/Variant8e7de2ba88577db19f4d3d9562938a3e4ca93342717b6f9e5ec87b6f546a74d5.lean/declarations/presentedgroup--1d8e745921e727098d5876f1.md) | 39 | `declaration-track:1d8e745921e727098d5876f1cb40065a62d98a4f1eca7a85fed0cb934dae7e4f` |
| 2 | `def` | [mk](../../../../../mathematics/Algebra/GroupTheory/PresentedGroup/Variant8e7de2ba88577db19f4d3d9562938a3e4ca93342717b6f9e5ec87b6f546a74d5.lean/declarations/mk--e9bdfa871109540fe5f89d7a.md) | 47 | `declaration-track:e9bdfa871109540fe5f89d7ae5fe077eb19af450724d762078f7bf627d3a8d51` |
| 3 | `theorem` | [mk_surjective](../../../../../mathematics/Algebra/GroupTheory/PresentedGroup/Variant8e7de2ba88577db19f4d3d9562938a3e4ca93342717b6f9e5ec87b6f546a74d5.lean/declarations/mk-surjective--9e25b0cc7565f8c557c0b156.md) | 50 | `result-track:9e25b0cc7565f8c557c0b1564aa7c8f7b0dec0ae0a2ab0f1916b76992cc1d576` |
| 4 | `def` | [of](../../../../../mathematics/Algebra/GroupTheory/PresentedGroup/Variant8e7de2ba88577db19f4d3d9562938a3e4ca93342717b6f9e5ec87b6f546a74d5.lean/declarations/of--a89c3b99567889c445f99afe.md) | 55 | `declaration-track:a89c3b99567889c445f99afe992f227a239479beea1ed97c3ae86bf33b947224` |
| 5 | `def` | [map](../../../../../mathematics/Algebra/GroupTheory/PresentedGroup/Variant8e7de2ba88577db19f4d3d9562938a3e4ca93342717b6f9e5ec87b6f546a74d5.lean/declarations/map--aecee6e638c15ffaac0bf7a3.md) | 63 | `declaration-track:aecee6e638c15ffaac0bf7a3fbbb8dddf17f30962983b5439fabe5886d6fdd82` |
| 6 | `lemma` | [mk_eq_one_iff](../../../../../mathematics/Algebra/GroupTheory/PresentedGroup/Variant8e7de2ba88577db19f4d3d9562938a3e4ca93342717b6f9e5ec87b6f546a74d5.lean/declarations/mk-eq-one-iff--2c4657aba107058a575a2790.md) | 70 | `result-track:2c4657aba107058a575a2790d5b3fc330419b78a91df9302b9db1ac46ecc62c4` |
| 7 | `lemma` | [one_of_mem](../../../../../mathematics/Algebra/GroupTheory/PresentedGroup/Variant8e7de2ba88577db19f4d3d9562938a3e4ca93342717b6f9e5ec87b6f546a74d5.lean/declarations/one-of-mem--34ae5e771fa76eef39b16291.md) | 74 | `result-track:34ae5e771fa76eef39b1629167d7f010f336fed5c6c852362d0805763dcaa5a4` |
| 8 | `lemma` | [mk_eq_mk_of_mul_inv_mem](../../../../../mathematics/Algebra/GroupTheory/PresentedGroup/Variant8e7de2ba88577db19f4d3d9562938a3e4ca93342717b6f9e5ec87b6f546a74d5.lean/declarations/mk-eq-mk-of-mul-inv-mem--9eb7ee122756ea0ae36a4123.md) | 78 | `result-track:9eb7ee122756ea0ae36a412338d1a0044b74b614eab9b6b6b51ea8dd140a3433` |
| 9 | `lemma` | [mk_eq_mk_of_inv_mul_mem](../../../../../mathematics/Algebra/GroupTheory/PresentedGroup/Variant8e7de2ba88577db19f4d3d9562938a3e4ca93342717b6f9e5ec87b6f546a74d5.lean/declarations/mk-eq-mk-of-inv-mul-mem--90d5db09037030d8258470e4.md) | 82 | `result-track:90d5db09037030d8258470e490c9f8b17cf3d7c3a5e304bf234c0ab60dd2b08c` |
| 10 | `theorem` | [closure_range_of](../../../../../mathematics/Algebra/GroupTheory/PresentedGroup/Variant8e7de2ba88577db19f4d3d9562938a3e4ca93342717b6f9e5ec87b6f546a74d5.lean/declarations/closure-range-of--1d72cbf219d1064af96fdea7.md) | 90 | `result-track:1d72cbf219d1064af96fdea700f28c6f1863dcedf41b7a489ad70faa75999ea3` |
| 11 | `theorem` | [induction_on](../../../../../mathematics/Algebra/GroupTheory/PresentedGroup/Variant8e7de2ba88577db19f4d3d9562938a3e4ca93342717b6f9e5ec87b6f546a74d5.lean/declarations/induction-on--43c91567ba10da8d89aa5d95.md) | 98 | `result-track:43c91567ba10da8d89aa5d959e0ed2952b96391a8cb74d5603fca04e1152de90` |
| 12 | `theorem` | [generated_by](../../../../../mathematics/Algebra/GroupTheory/PresentedGroup/Variant8e7de2ba88577db19f4d3d9562938a3e4ca93342717b6f9e5ec87b6f546a74d5.lean/declarations/generated-by--d03fb94d089da17a87f02687.md) | 102 | `result-track:d03fb94d089da17a87f02687c4bedad8e742805c1a4ffe58b8030b226550cc4c` |
| 13 | `theorem` | [closure_rels_subset_ker](../../../../../mathematics/Algebra/GroupTheory/PresentedGroup/Variant8e7de2ba88577db19f4d3d9562938a3e4ca93342717b6f9e5ec87b6f546a74d5.lean/declarations/closure-rels-subset-ker--de5d0ff2a44dec650603ef89.md) | 125 | `result-track:de5d0ff2a44dec650603ef8936ac304960e79bc1a7bb2dbefd2cc9c5c68432f5` |
| 14 | `theorem` | [to_group_eq_one_of_mem_closure](../../../../../mathematics/Algebra/GroupTheory/PresentedGroup/Variant8e7de2ba88577db19f4d3d9562938a3e4ca93342717b6f9e5ec87b6f546a74d5.lean/declarations/to-group-eq-one-of-mem-closure--4343e0758a631f0a5bb61936.md) | 129 | `result-track:4343e0758a631f0a5bb6193690d52a394bc86ea9c0b1fa276765ef2a5adac922` |
| 15 | `def` | [toGroup](../../../../../mathematics/Algebra/GroupTheory/PresentedGroup/Variant8e7de2ba88577db19f4d3d9562938a3e4ca93342717b6f9e5ec87b6f546a74d5.lean/declarations/togroup--7faff55f49ecd6cd1b700a70.md) | 135 | `declaration-track:7faff55f49ecd6cd1b700a70dcd74d1d5c8c58e0742d296b7c8ebc41a8300500` |
| 16 | `theorem` | [toGroup.of](../../../../../mathematics/Algebra/GroupTheory/PresentedGroup/Variant8e7de2ba88577db19f4d3d9562938a3e4ca93342717b6f9e5ec87b6f546a74d5.lean/declarations/togroup-of--339961e2e35227ec904a0f31.md) | 139 | `result-track:339961e2e35227ec904a0f312dad8a188f650962ad53dd228b6707c2730423e9` |
| 17 | `theorem` | [toGroup.unique](../../../../../mathematics/Algebra/GroupTheory/PresentedGroup/Variant8e7de2ba88577db19f4d3d9562938a3e4ca93342717b6f9e5ec87b6f546a74d5.lean/declarations/togroup-unique--df3531f8b0b6ca7dd7b3f067.md) | 142 | `result-track:df3531f8b0b6ca7dd7b3f06775485a723d916ae7da86589f2239e63368025387` |
| 18 | `theorem` | [ext](../../../../../mathematics/Algebra/GroupTheory/PresentedGroup/Variant8e7de2ba88577db19f4d3d9562938a3e4ca93342717b6f9e5ec87b6f546a74d5.lean/declarations/ext--af436c8d629197865f94f764.md) | 149 | `result-track:af436c8d629197865f94f76407886a787bb82b435b06fec5f6a7a396bffd26a9` |
| 19 | `def` | [equivPresentedGroup](../../../../../mathematics/Algebra/GroupTheory/PresentedGroup/Variant8e7de2ba88577db19f4d3d9562938a3e4ca93342717b6f9e5ec87b6f546a74d5.lean/declarations/equivpresentedgroup--36e3de5338bc85c1bfc2bd16.md) | 155 | `declaration-track:36e3de5338bc85c1bfc2bd168e713891b065873623a8f04dbf59d4d238ea4b54` |
| 20 | `theorem` | [equivPresentedGroup_apply_of](../../../../../mathematics/Algebra/GroupTheory/PresentedGroup/Variant8e7de2ba88577db19f4d3d9562938a3e4ca93342717b6f9e5ec87b6f546a74d5.lean/declarations/equivpresentedgroup-apply-of--5d60f1cb1611018927bf7702.md) | 162 | `result-track:5d60f1cb1611018927bf77024ff497c5f89459778809a3ed41fe475b25eb831e` |
| 21 | `theorem` | [equivPresentedGroup_symm_apply_of](../../../../../mathematics/Algebra/GroupTheory/PresentedGroup/Variant8e7de2ba88577db19f4d3d9562938a3e4ca93342717b6f9e5ec87b6f546a74d5.lean/declarations/equivpresentedgroup-symm-apply-of--07a22fb2fd56f617c24f1fb9.md) | 166 | `result-track:07a22fb2fd56f617c24f1fb9118854290b0fdc70f452908a7d06f81bb2317e57` |
| 22 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/GroupTheory/PresentedGroup/Variant8e7de2ba88577db19f4d3d9562938a3e4ca93342717b6f9e5ec87b6f546a74d5.lean/declarations/instance--8387b483f6f2302b752a63df.md) | 172 | `declaration-track:8387b483f6f2302b752a63dfe07435364ed382af9398337a520b2b0cca2180de` |
| 23 | `def` | [toCoprod](../../../../../mathematics/Algebra/GroupTheory/PresentedGroup/Variant8e7de2ba88577db19f4d3d9562938a3e4ca93342717b6f9e5ec87b6f546a74d5.lean/declarations/tocoprod--2a3ca811b6a970e218909726.md) | 182 | `declaration-track:2a3ca811b6a970e218909726c6009f61152c5bc4cf04db44bc254a8e3d6d1b43` |
| 24 | `lemma` | [lift_toCoprod_inl_eq_inl_mk](../../../../../mathematics/Algebra/GroupTheory/PresentedGroup/Variant8e7de2ba88577db19f4d3d9562938a3e4ca93342717b6f9e5ec87b6f546a74d5.lean/declarations/lift-tocoprod-inl-eq-inl-mk--cee549b0563f6fd1ee7252bd.md) | 186 | `result-track:cee549b0563f6fd1ee7252bde7d9b93cce3785c05861c09939c84c0a9aa5a49b` |
| 25 | `lemma` | [lift_toCoprod_inr_eq_inr_mk](../../../../../mathematics/Algebra/GroupTheory/PresentedGroup/Variant8e7de2ba88577db19f4d3d9562938a3e4ca93342717b6f9e5ec87b6f546a74d5.lean/declarations/lift-tocoprod-inr-eq-inr-mk--67782e73e00b004ff8ac74c0.md) | 191 | `result-track:67782e73e00b004ff8ac74c040bc68f79f7625b4498747a58f625af715c2e8ef` |
| 26 | `lemma` | [lift_toCoprod_eq_one](../../../../../mathematics/Algebra/GroupTheory/PresentedGroup/Variant8e7de2ba88577db19f4d3d9562938a3e4ca93342717b6f9e5ec87b6f546a74d5.lean/declarations/lift-tocoprod-eq-one--50ddce54fe43657fc37cd124.md) | 195 | `result-track:50ddce54fe43657fc37cd124d2adfbbbf516f92b83ede0b7613d591d0d785895` |
| 27 | `def` | [coprodPresentations](../../../../../mathematics/Algebra/GroupTheory/PresentedGroup/Variant8e7de2ba88577db19f4d3d9562938a3e4ca93342717b6f9e5ec87b6f546a74d5.lean/declarations/coprodpresentations--5001179b0ed242fd3f56b9e8.md) | 204 | `declaration-track:5001179b0ed242fd3f56b9e8187d8acb061b595046c30eb2091b74f28a6b90ff` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
