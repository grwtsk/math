# Verification target: GRWTSK.Algebra.LinearAlgebra.Dual.Variant5795f40f9fc51ab66e82682f3ddf54809b4aa3c49b664ba47a3a4b3306df177f

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "240850681fddbbd46ac835642caa39093dfc9626",
  "lexical_observation_count": 26,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/Dual/Variant5795f40f9fc51ab66e82682f3ddf54809b4aa3c49b664ba47a3a4b3306df177f.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/Dual/Variant5795f40f9fc51ab66e82682f3ddf54809b4aa3c49b664ba47a3a4b3306df177f.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/Dual/Variant5795f40f9fc51ab66e82682f3ddf54809b4aa3c49b664ba47a3a4b3306df177f.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `240850681fddbbd46ac835642caa39093dfc9626`.

Source path: `GRWTSK/Algebra/LinearAlgebra/Dual/Variant5795f40f9fc51ab66e82682f3ddf54809b4aa3c49b664ba47a3a4b3306df177f.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/Dual/Variant5795f40f9fc51ab66e82682f3ddf54809b4aa3c49b664ba47a3a4b3306df177f.lean.json)

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
| 1 | `def` | [dual](../../../../../mathematics/Algebra/LinearAlgebra/Dual/Variant5795f40f9fc51ab66e82682f3ddf54809b4aa3c49b664ba47a3a4b3306df177f.lean/declarations/dual--519ee270805b58e74f47f2be.md) | 50 | `declaration-track:519ee270805b58e74f47f2be5f2ae3dfdea8378ed7f82ed8fed2ed2e92f654b4` |
| 2 | `lemma` | [mem_dual](../../../../../mathematics/Algebra/LinearAlgebra/Dual/Variant5795f40f9fc51ab66e82682f3ddf54809b4aa3c49b664ba47a3a4b3306df177f.lean/declarations/mem-dual--d7b1f5f786ac70246544ce07.md) | 56 | `result-track:d7b1f5f786ac70246544ce07422dfcad1191066fa4aad8ca503bdfcd66cd2fce` |
| 3 | `lemma` | [dual_empty](../../../../../mathematics/Algebra/LinearAlgebra/Dual/Variant5795f40f9fc51ab66e82682f3ddf54809b4aa3c49b664ba47a3a4b3306df177f.lean/declarations/dual-empty--18dce20bbc1cefef97b81abc.md) | 58 | `result-track:18dce20bbc1cefef97b81abc4b5fadded81294392d90605ca4370e9cb7e2ff6f` |
| 4 | `lemma` | [dual_zero](../../../../../mathematics/Algebra/LinearAlgebra/Dual/Variant5795f40f9fc51ab66e82682f3ddf54809b4aa3c49b664ba47a3a4b3306df177f.lean/declarations/dual-zero--412e53c86625150b81ed2aac.md) | 59 | `result-track:412e53c86625150b81ed2aacff26fa305ece387ce0d106cb03bf1c8cbc8989b9` |
| 5 | `lemma` | [dual_singleton_zero](../../../../../mathematics/Algebra/LinearAlgebra/Dual/Variant5795f40f9fc51ab66e82682f3ddf54809b4aa3c49b664ba47a3a4b3306df177f.lean/declarations/dual-singleton-zero--a49e9bf7b88ebd1b750e1f02.md) | 60 | `result-track:a49e9bf7b88ebd1b750e1f02c11829acfe43374a6bfcf695a34fbcc2d6c5b069` |
| 6 | `lemma` | [dual_ker](../../../../../mathematics/Algebra/LinearAlgebra/Dual/Variant5795f40f9fc51ab66e82682f3ddf54809b4aa3c49b664ba47a3a4b3306df177f.lean/declarations/dual-ker--8cf9a89a1819007feb10bf77.md) | 61 | `result-track:8cf9a89a1819007feb10bf77c188d9d7c3282554dbb08ce4734260851b052a8a` |
| 7 | `lemma` | [dual_anti](../../../../../mathematics/Algebra/LinearAlgebra/Dual/Variant5795f40f9fc51ab66e82682f3ddf54809b4aa3c49b664ba47a3a4b3306df177f.lean/declarations/dual-anti--2789592918b86da3df6eced0.md) | 63 | `result-track:2789592918b86da3df6eced05ee2438f4dae61877fade263f2ece6392f2597b5` |
| 8 | `lemma` | [dual_antitone](../../../../../mathematics/Algebra/LinearAlgebra/Dual/Variant5795f40f9fc51ab66e82682f3ddf54809b4aa3c49b664ba47a3a4b3306df177f.lean/declarations/dual-antitone--c99326e2a004cb3c86fb36eb.md) | 67 | `result-track:c99326e2a004cb3c86fb36eb5e3727c97b933714168d7d873fb24b345c4a866a` |
| 9 | `lemma` | [dual_singleton](../../../../../mathematics/Algebra/LinearAlgebra/Dual/Variant5795f40f9fc51ab66e82682f3ddf54809b4aa3c49b664ba47a3a4b3306df177f.lean/declarations/dual-singleton--4cc3e88b60ebeb77846218e0.md) | 71 | `result-track:4cc3e88b60ebeb77846218e0858c6bb8483cb722f653a4635af5a97e02958f24` |
| 10 | `lemma` | [dual_union](../../../../../mathematics/Algebra/LinearAlgebra/Dual/Variant5795f40f9fc51ab66e82682f3ddf54809b4aa3c49b664ba47a3a4b3306df177f.lean/declarations/dual-union--e41f48f6b25a95017776643d.md) | 73 | `result-track:e41f48f6b25a95017776643dd0ef4a4d09dcac2dea6a3096b7a3ab0649a98d8e` |
| 11 | `lemma` | [dual_insert](../../../../../mathematics/Algebra/LinearAlgebra/Dual/Variant5795f40f9fc51ab66e82682f3ddf54809b4aa3c49b664ba47a3a4b3306df177f.lean/declarations/dual-insert--ea78e2285f2a7ac478831865.md) | 75 | `result-track:ea78e2285f2a7ac4788318653f26a185b6d8bc22cff3342193d9d57f355a1cfa` |
| 12 | `lemma` | [dual_iUnion](../../../../../mathematics/Algebra/LinearAlgebra/Dual/Variant5795f40f9fc51ab66e82682f3ddf54809b4aa3c49b664ba47a3a4b3306df177f.lean/declarations/dual-iunion--1c4c506ed2e8b45b731ae072.md) | 78 | `result-track:1c4c506ed2e8b45b731ae072d05ef457c2ecd1346da0f41a69917ad0c36c985b` |
| 13 | `lemma` | [dual_sUnion](../../../../../mathematics/Algebra/LinearAlgebra/Dual/Variant5795f40f9fc51ab66e82682f3ddf54809b4aa3c49b664ba47a3a4b3306df177f.lean/declarations/dual-sunion--1eb66e9bab8a370b595a9d34.md) | 81 | `result-track:1eb66e9bab8a370b595a9d34c7022e1a797711ea02cece3fe24e149b68fe9656` |
| 14 | `lemma` | [dual_eq_iInter_dual_singleton](../../../../../mathematics/Algebra/LinearAlgebra/Dual/Variant5795f40f9fc51ab66e82682f3ddf54809b4aa3c49b664ba47a3a4b3306df177f.lean/declarations/dual-eq-iinter-dual-singleton--e5d4b848f7fc9ec844f59540.md) | 85 | `result-track:e5d4b848f7fc9ec844f595408c0c7a042804efa7104015970def8b30e970c5d5` |
| 15 | `lemma` | [subset_dual_dual](../../../../../mathematics/Algebra/LinearAlgebra/Dual/Variant5795f40f9fc51ab66e82682f3ddf54809b4aa3c49b664ba47a3a4b3306df177f.lean/declarations/subset-dual-dual--06e55cde1541cc62762dcfe9.md) | 89 | `result-track:06e55cde1541cc62762dcfe9004f0060250f4459d520c6a989fa25d2e7a04a7f` |
| 16 | `lemma` | [subset_dual_flip_iff_subset_dual](../../../../../mathematics/Algebra/LinearAlgebra/Dual/Variant5795f40f9fc51ab66e82682f3ddf54809b4aa3c49b664ba47a3a4b3306df177f.lean/declarations/subset-dual-flip-iff-subset-dual--eddeb46e82d8097332bb6617.md) | 91 | `result-track:eddeb46e82d8097332bb6617a390d7a7bde20c78042e94bdb4bbc0da85794fdc` |
| 17 | `lemma` | [dual_dual_flip_dual](../../../../../mathematics/Algebra/LinearAlgebra/Dual/Variant5795f40f9fc51ab66e82682f3ddf54809b4aa3c49b664ba47a3a4b3306df177f.lean/declarations/dual-dual-flip-dual--355e91b267c86743c3e9b92e.md) | 96 | `result-track:355e91b267c86743c3e9b92eb0d9d0e422f09661d39058b65adb2e8ec53c0089` |
| 18 | `lemma` | [dual_flip_dual_dual_flip](../../../../../mathematics/Algebra/LinearAlgebra/Dual/Variant5795f40f9fc51ab66e82682f3ddf54809b4aa3c49b664ba47a3a4b3306df177f.lean/declarations/dual-flip-dual-dual-flip--1a95eb788e6a3efd96a7ed27.md) | 99 | `result-track:1a95eb788e6a3efd96a7ed27339aa8cf10938b6328b4a53338d6d2eed14b997d` |
| 19 | `lemma` | [dual_hull](../../../../../mathematics/Algebra/LinearAlgebra/Dual/Variant5795f40f9fc51ab66e82682f3ddf54809b4aa3c49b664ba47a3a4b3306df177f.lean/declarations/dual-hull--4970cb45ba0161853e0313b4.md) | 103 | `result-track:4970cb45ba0161853e0313b472842efe40320838d4c8725ef0424dbc2e11e78e` |
| 20 | `lemma` | [dual_sup](../../../../../mathematics/Algebra/LinearAlgebra/Dual/Variant5795f40f9fc51ab66e82682f3ddf54809b4aa3c49b664ba47a3a4b3306df177f.lean/declarations/dual-sup--0769bcb2ee1aed5da117a0ec.md) | 114 | `result-track:0769bcb2ee1aed5da117a0ec942fc2f3b7eebfbe17316e8125e2f85bf30c5b63` |
| 21 | `lemma` | [dual_image](../../../../../mathematics/Algebra/LinearAlgebra/Dual/Variant5795f40f9fc51ab66e82682f3ddf54809b4aa3c49b664ba47a3a4b3306df177f.lean/declarations/dual-image--b348e06d10c85279d2fa8c8e.md) | 119 | `result-track:b348e06d10c85279d2fa8c8e8d7950090ceaa28b3df0fdc32a05217d7d1fe43c` |
| 22 | `lemma` | [dual_eq_dual_id_image](../../../../../mathematics/Algebra/LinearAlgebra/Dual/Variant5795f40f9fc51ab66e82682f3ddf54809b4aa3c49b664ba47a3a4b3306df177f.lean/declarations/dual-eq-dual-id-image--65d75be1c586bf760996b3c8.md) | 124 | `result-track:65d75be1c586bf760996b3c827b61cdc5538690cbb6983bc93fa2af312d9e093` |
| 23 | `lemma` | [dual_eq_dual_id_map](../../../../../mathematics/Algebra/LinearAlgebra/Dual/Variant5795f40f9fc51ab66e82682f3ddf54809b4aa3c49b664ba47a3a4b3306df177f.lean/declarations/dual-eq-dual-id-map--6ed24160178a7ea1493a9f30.md) | 128 | `result-track:6ed24160178a7ea1493a9f3008435258d1188f4b7cae3cba19380a74bc152d60` |
| 24 | `lemma` | [dual_eq_comap_dual_eval](../../../../../mathematics/Algebra/LinearAlgebra/Dual/Variant5795f40f9fc51ab66e82682f3ddf54809b4aa3c49b664ba47a3a4b3306df177f.lean/declarations/dual-eq-comap-dual-eval--870b7d11208a17c7348cd0ac.md) | 132 | `result-track:870b7d11208a17c7348cd0ac6a5659ef3dda2f4dfaa84e21feb033cc9a42412f` |
| 25 | `lemma` | [dual_univ](../../../../../mathematics/Algebra/LinearAlgebra/Dual/Variant5795f40f9fc51ab66e82682f3ddf54809b4aa3c49b664ba47a3a4b3306df177f.lean/declarations/dual-univ--070fa1cf9f3dbbeeba729345.md) | 145 | `result-track:070fa1cf9f3dbbeeba729345132661526cc2f62893a64063b37286b3adb06ee0` |
| 26 | `lemma` | [dual_neg](../../../../../mathematics/Algebra/LinearAlgebra/Dual/Variant5795f40f9fc51ab66e82682f3ddf54809b4aa3c49b664ba47a3a4b3306df177f.lean/declarations/dual-neg--e32651fbf2aad170db5bdf4c.md) | 153 | `result-track:e32651fbf2aad170db5bdf4c50c19ba899cf2b8cf6adf48c7eb39a808d7f01df` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
