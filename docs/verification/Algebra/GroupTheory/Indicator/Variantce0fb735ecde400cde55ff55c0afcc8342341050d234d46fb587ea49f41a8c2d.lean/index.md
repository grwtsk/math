# Verification target: GRWTSK.Algebra.GroupTheory.Indicator.Variantce0fb735ecde400cde55ff55c0afcc8342341050d234d46fb587ea49f41a8c2d

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "d305d7ff2fba223692111d8f776cf16264d1431a",
  "lexical_observation_count": 29,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/GroupTheory/Indicator/Variantce0fb735ecde400cde55ff55c0afcc8342341050d234d46fb587ea49f41a8c2d.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/GroupTheory/Indicator/Variantce0fb735ecde400cde55ff55c0afcc8342341050d234d46fb587ea49f41a8c2d.lean/index.md) · [Full source](../../../../../mathematics/Algebra/GroupTheory/Indicator/Variantce0fb735ecde400cde55ff55c0afcc8342341050d234d46fb587ea49f41a8c2d.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `d305d7ff2fba223692111d8f776cf16264d1431a`.

Source path: `GRWTSK/Algebra/GroupTheory/Indicator/Variantce0fb735ecde400cde55ff55c0afcc8342341050d234d46fb587ea49f41a8c2d.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/GroupTheory/Indicator/Variantce0fb735ecde400cde55ff55c0afcc8342341050d234d46fb587ea49f41a8c2d.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Group.Indicator` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.GroupWithZero.Basic` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `lemma` | [indicator_mul](../../../../../mathematics/Algebra/GroupTheory/Indicator/Variantce0fb735ecde400cde55ff55c0afcc8342341050d234d46fb587ea49f41a8c2d.lean/declarations/indicator-mul--112d28aa050262063c238f71.md) | 23 | `result-track:112d28aa050262063c238f71b89d97f8e0ac33920f82adb0118c72c58d675727` |
| 2 | `lemma` | [indicator_mul_left](../../../../../mathematics/Algebra/GroupTheory/Indicator/Variantce0fb735ecde400cde55ff55c0afcc8342341050d234d46fb587ea49f41a8c2d.lean/declarations/indicator-mul-left--b13b0bf0882b6e1d453b80a5.md) | 31 | `result-track:b13b0bf0882b6e1d453b80a58dc2510d9ad2a3cd658679232dbaed126abd7289` |
| 3 | `lemma` | [indicator_mul_right](../../../../../mathematics/Algebra/GroupTheory/Indicator/Variantce0fb735ecde400cde55ff55c0afcc8342341050d234d46fb587ea49f41a8c2d.lean/declarations/indicator-mul-right--0248440a0ecf6dc3d8412160.md) | 38 | `result-track:0248440a0ecf6dc3d84121604c2ae8a7639d846fc1c801990e2daeef81105dbd` |
| 4 | `lemma` | [indicator_mul_const](../../../../../mathematics/Algebra/GroupTheory/Indicator/Variantce0fb735ecde400cde55ff55c0afcc8342341050d234d46fb587ea49f41a8c2d.lean/declarations/indicator-mul-const--8fdb778ff788b45bbe4d8ff4.md) | 45 | `result-track:8fdb778ff788b45bbe4d8ff46763184f80f0aed356a696e887315c402971e051` |
| 5 | `lemma` | [indicator_const_mul](../../../../../mathematics/Algebra/GroupTheory/Indicator/Variantce0fb735ecde400cde55ff55c0afcc8342341050d234d46fb587ea49f41a8c2d.lean/declarations/indicator-const-mul--bb5ba703867c27d5e2dd10f6.md) | 48 | `result-track:bb5ba703867c27d5e2dd10f60eb7172f8bd6ef265137f276fff41eca1c562359` |
| 6 | `lemma` | [inter_indicator_mul](../../../../../mathematics/Algebra/GroupTheory/Indicator/Variantce0fb735ecde400cde55ff55c0afcc8342341050d234d46fb587ea49f41a8c2d.lean/declarations/inter-indicator-mul--f9b38de63326bc1b85d638b3.md) | 51 | `result-track:f9b38de63326bc1b85d638b39a93db5ba73f247f07cc919f248665ba33f4a641` |
| 7 | `lemma` | [inter_indicator_one](../../../../../mathematics/Algebra/GroupTheory/Indicator/Variantce0fb735ecde400cde55ff55c0afcc8342341050d234d46fb587ea49f41a8c2d.lean/declarations/inter-indicator-one--cf28a9540bd50e2f0b744aa7.md) | 62 | `result-track:cf28a9540bd50e2f0b744aa7e81c065b6ce335791744dc00afd38972892ec0df` |
| 8 | `lemma` | [indicator_prod_one](../../../../../mathematics/Algebra/GroupTheory/Indicator/Variantce0fb735ecde400cde55ff55c0afcc8342341050d234d46fb587ea49f41a8c2d.lean/declarations/indicator-prod-one--b4a0598e660d70476e215ec2.md) | 65 | `result-track:b4a0598e660d70476e215ec25dc576699c17d965db43f45829942256c3050fe4` |
| 9 | `lemma` | [indicator_eq_zero_iff_notMem](../../../../../mathematics/Algebra/GroupTheory/Indicator/Variantce0fb735ecde400cde55ff55c0afcc8342341050d234d46fb587ea49f41a8c2d.lean/declarations/indicator-eq-zero-iff-notmem--d0c0dff8f87753a92c25b7f8.md) | 72 | `result-track:d0c0dff8f87753a92c25b7f8301d6a3ff5656020a11c8f8605d3d14c03185cea` |
| 10 | `lemma` | [indicator_eq_one_iff_mem](../../../../../mathematics/Algebra/GroupTheory/Indicator/Variantce0fb735ecde400cde55ff55c0afcc8342341050d234d46fb587ea49f41a8c2d.lean/declarations/indicator-eq-one-iff-mem--b6c938ce55158c3d6abd252a.md) | 78 | `result-track:b6c938ce55158c3d6abd252ac62c1ef1be3bfb48022b96ab9a5800261f7f2ca1` |
| 11 | `lemma` | [indicator_one_inj](../../../../../mathematics/Algebra/GroupTheory/Indicator/Variantce0fb735ecde400cde55ff55c0afcc8342341050d234d46fb587ea49f41a8c2d.lean/declarations/indicator-one-inj--3e4009ff9847e21553caeb06.md) | 81 | `result-track:3e4009ff9847e21553caeb06cdfc611391415ac49b04085cefa96509f35fa2a8` |
| 12 | `lemma` | [support_one](../../../../../mathematics/Algebra/GroupTheory/Indicator/Variantce0fb735ecde400cde55ff55c0afcc8342341050d234d46fb587ea49f41a8c2d.lean/declarations/support-one--d8e74d4de70825a01601be87.md) | 91 | `result-track:d8e74d4de70825a01601be8783e99221510464dba68839106a4da66785f0b86b` |
| 13 | `lemma` | [mulSupport_zero](../../../../../mathematics/Algebra/GroupTheory/Indicator/Variantce0fb735ecde400cde55ff55c0afcc8342341050d234d46fb587ea49f41a8c2d.lean/declarations/mulsupport-zero--2ff2a9375ee20067bcf84a35.md) | 93 | `result-track:2ff2a9375ee20067bcf84a353212e34e4343a763ee0e8af1f8a4680847758540` |
| 14 | `lemma` | [support_mul_subset_left](../../../../../mathematics/Algebra/GroupTheory/Indicator/Variantce0fb735ecde400cde55ff55c0afcc8342341050d234d46fb587ea49f41a8c2d.lean/declarations/support-mul-subset-left--8a1a9d49d8a442618c99fe74.md) | 101 | `result-track:8a1a9d49d8a442618c99fe74fb26a6ca51950076de2cd77f2cc60b8c53c2d422` |
| 15 | `lemma` | [support_mul_subset_right](../../../../../mathematics/Algebra/GroupTheory/Indicator/Variantce0fb735ecde400cde55ff55c0afcc8342341050d234d46fb587ea49f41a8c2d.lean/declarations/support-mul-subset-right--17ed1e290243c053dd03ae4f.md) | 105 | `result-track:17ed1e290243c053dd03ae4f4982ff292228b653bc625df26f8e8b3fdbc2f0a7` |
| 16 | `lemma` | [support_mul](../../../../../mathematics/Algebra/GroupTheory/Indicator/Variantce0fb735ecde400cde55ff55c0afcc8342341050d234d46fb587ea49f41a8c2d.lean/declarations/support-mul--a311a4fb640a710635ac63c4.md) | 110 | `result-track:a311a4fb640a710635ac63c46e757b5ebd4f6b3f9a72ebce8afe81909e64389f` |
| 17 | `lemma` | [support_mul'](../../../../../mathematics/Algebra/GroupTheory/Indicator/Variantce0fb735ecde400cde55ff55c0afcc8342341050d234d46fb587ea49f41a8c2d.lean/declarations/support-mul--f73ba49ef1fef6d65feaf394.md) | 113 | `result-track:f73ba49ef1fef6d65feaf3946311f217443f0b69f8df1ffd354c28490b50ab15` |
| 18 | `lemma` | [support_pow](../../../../../mathematics/Algebra/GroupTheory/Indicator/Variantce0fb735ecde400cde55ff55c0afcc8342341050d234d46fb587ea49f41a8c2d.lean/declarations/support-pow--3c55b5cf2d3d47f340c5c807.md) | 121 | `result-track:3c55b5cf2d3d47f340c5c807a53f7782dc5da1f626e1e68ed025080e5d6d063d` |
| 19 | `lemma` | [support_pow'](../../../../../mathematics/Algebra/GroupTheory/Indicator/Variantce0fb735ecde400cde55ff55c0afcc8342341050d234d46fb587ea49f41a8c2d.lean/declarations/support-pow--2863912d2b840944b9330ae5.md) | 124 | `result-track:2863912d2b840944b9330ae5d3b221765f6c6b648fd283aaa97598cd6bdf2c3d` |
| 20 | `lemma` | [support_inv](../../../../../mathematics/Algebra/GroupTheory/Indicator/Variantce0fb735ecde400cde55ff55c0afcc8342341050d234d46fb587ea49f41a8c2d.lean/declarations/support-inv--cbd1337956558e0b0754d282.md) | 132 | `result-track:cbd1337956558e0b0754d2824d465641f1043b6b2ad59d11d6337036aff41079` |
| 21 | `lemma` | [support_inv'](../../../../../mathematics/Algebra/GroupTheory/Indicator/Variantce0fb735ecde400cde55ff55c0afcc8342341050d234d46fb587ea49f41a8c2d.lean/declarations/support-inv--e2c921ac1193b5e6d62d8bd9.md) | 135 | `result-track:e2c921ac1193b5e6d62d8bd91e3e1a039e7286833a2e7b97617378505f5e831c` |
| 22 | `lemma` | [support_div](../../../../../mathematics/Algebra/GroupTheory/Indicator/Variantce0fb735ecde400cde55ff55c0afcc8342341050d234d46fb587ea49f41a8c2d.lean/declarations/support-div--10ac6ff2c2016ad96d5fc35a.md) | 137 | `result-track:10ac6ff2c2016ad96d5fc35ab812a4e4234a992b8fe11902ec01bb9108b233f3` |
| 23 | `lemma` | [support_div'](../../../../../mathematics/Algebra/GroupTheory/Indicator/Variantce0fb735ecde400cde55ff55c0afcc8342341050d234d46fb587ea49f41a8c2d.lean/declarations/support-div--11f258a29d27e05a7aec3327.md) | 140 | `result-track:11f258a29d27e05a7aec3327a3892ba5bff22f56abc3539754eb505d0ebfe48e` |
| 24 | `lemma` | [mulSupport_one_add](../../../../../mathematics/Algebra/GroupTheory/Indicator/Variantce0fb735ecde400cde55ff55c0afcc8342341050d234d46fb587ea49f41a8c2d.lean/declarations/mulsupport-one-add--328c1254ebbbc6447f2ebacc.md) | 147 | `result-track:328c1254ebbbc6447f2ebaccbab2300954f51216404825fb8a9bc42bbc79a418` |
| 25 | `lemma` | [mulSupport_one_add'](../../../../../mathematics/Algebra/GroupTheory/Indicator/Variantce0fb735ecde400cde55ff55c0afcc8342341050d234d46fb587ea49f41a8c2d.lean/declarations/mulsupport-one-add--e1dc4b7a84c90f76afa39b74.md) | 151 | `result-track:e1dc4b7a84c90f76afa39b7480f04260872371190f8ce68e9fe7e9d0fd0d5a3b` |
| 26 | `lemma` | [mulSupport_add_one](../../../../../mathematics/Algebra/GroupTheory/Indicator/Variantce0fb735ecde400cde55ff55c0afcc8342341050d234d46fb587ea49f41a8c2d.lean/declarations/mulsupport-add-one--6d78db4c2f5f1ec1f81ed182.md) | 154 | `result-track:6d78db4c2f5f1ec1f81ed182b47209d3a87fcee78efd38d3797aad786fdc484a` |
| 27 | `lemma` | [mulSupport_add_one'](../../../../../mathematics/Algebra/GroupTheory/Indicator/Variantce0fb735ecde400cde55ff55c0afcc8342341050d234d46fb587ea49f41a8c2d.lean/declarations/mulsupport-add-one--600c8641af78404326e3d80b.md) | 157 | `result-track:600c8641af78404326e3d80b3106580fc7a5a822cde9176a26cf9d2e3aee0c7d` |
| 28 | `lemma` | [mulSupport_one_sub'](../../../../../mathematics/Algebra/GroupTheory/Indicator/Variantce0fb735ecde400cde55ff55c0afcc8342341050d234d46fb587ea49f41a8c2d.lean/declarations/mulsupport-one-sub--a8a0a769ed502950712a902a.md) | 160 | `result-track:a8a0a769ed502950712a902a3232dab5a8c1b28cbf2b4a5aa2a45fe6d3c011f7` |
| 29 | `lemma` | [mulSupport_one_sub](../../../../../mathematics/Algebra/GroupTheory/Indicator/Variantce0fb735ecde400cde55ff55c0afcc8342341050d234d46fb587ea49f41a8c2d.lean/declarations/mulsupport-one-sub--a770a73180f22bf20c56a053.md) | 163 | `result-track:a770a73180f22bf20c56a05304f14160626ffc41d555c69cc0356f63ad59332b` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
