# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.H1.Variant893e7bdacbf73081f5693c370b9077a1a2870ab1bf039face1c04b4b015efbb1

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "d17e4b9ccc12bdc48dfa54d43b92f11883921268",
  "lexical_observation_count": 29,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/H1/Variant893e7bdacbf73081f5693c370b9077a1a2870ab1bf039face1c04b4b015efbb1.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/H1/Variant893e7bdacbf73081f5693c370b9077a1a2870ab1bf039face1c04b4b015efbb1.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/H1/Variant893e7bdacbf73081f5693c370b9077a1a2870ab1bf039face1c04b4b015efbb1.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `d17e4b9ccc12bdc48dfa54d43b92f11883921268`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/H1/Variant893e7bdacbf73081f5693c370b9077a1a2870ab1bf039face1c04b4b015efbb1.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/H1/Variant893e7bdacbf73081f5693c370b9077a1a2870ab1bf039face1c04b4b015efbb1.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Category.Grp.Basic` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [ZeroCochain](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/H1/Variant893e7bdacbf73081f5693c370b9077a1a2870ab1bf039face1c04b4b015efbb1.lean/declarations/zerocochain--85be6a50c58ea5257eb4d6cb.md) | 62 | `declaration-track:85be6a50c58ea5257eb4d6cbf192cd887958182a18f1b2b3e396d8b4d0c29816` |
| 2 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/H1/Variant893e7bdacbf73081f5693c370b9077a1a2870ab1bf039face1c04b4b015efbb1.lean/declarations/instance--eb46d38c26c3999902bcb694.md) | 64 | `declaration-track:eb46d38c26c3999902bcb6942f4ebbe76ffe0296a0bd04242dd6c0b8416f180d` |
| 3 | `lemma` | [one_apply](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/H1/Variant893e7bdacbf73081f5693c370b9077a1a2870ab1bf039face1c04b4b015efbb1.lean/declarations/one-apply--3b36706c2aeaed4834fb11b9.md) | 69 | `result-track:3b36706c2aeaed4834fb11b968cf7da8dfe2f53a9974ae498ac127bdf67548fa` |
| 4 | `lemma` | [inv_apply](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/H1/Variant893e7bdacbf73081f5693c370b9077a1a2870ab1bf039face1c04b4b015efbb1.lean/declarations/inv-apply--b8ec37f16754dda5ee687b4e.md) | 72 | `result-track:b8ec37f16754dda5ee687b4e981dd7abd7bbc5de60ee40f865d46978a2d27866` |
| 5 | `lemma` | [mul_apply](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/H1/Variant893e7bdacbf73081f5693c370b9077a1a2870ab1bf039face1c04b4b015efbb1.lean/declarations/mul-apply--78e9413a2b66e701f33bb018.md) | 75 | `result-track:78e9413a2b66e701f33bb01897d0d9a1895f7eb407edf75bc31f2871dd4336fe` |
| 6 | `structure` | [OneCochain](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/H1/Variant893e7bdacbf73081f5693c370b9077a1a2870ab1bf039face1c04b4b015efbb1.lean/declarations/onecochain--5e1bc4fea4f0782595187966.md) | 85 | `declaration-track:5e1bc4fea4f07825951879661e88e9e8522995d209ee1d3345746a20f883e8b6` |
| 7 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/H1/Variant893e7bdacbf73081f5693c370b9077a1a2870ab1bf039face1c04b4b015efbb1.lean/declarations/instance--1516cc5d75a3ba3a5e76326a.md) | 95 | `declaration-track:1516cc5d75a3ba3a5e76326a9c2d4b8e71c656b28a20f12a8239220b0e8a369f` |
| 8 | `lemma` | [one_ev](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/H1/Variant893e7bdacbf73081f5693c370b9077a1a2870ab1bf039face1c04b4b015efbb1.lean/declarations/one-ev--922ec552e6aeeb927dd68a8a.md) | 99 | `result-track:922ec552e6aeeb927dd68a8a0767d73c00ec2da2205ff6b2c05a3149813ec1fd` |
| 9 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/H1/Variant893e7bdacbf73081f5693c370b9077a1a2870ab1bf039face1c04b4b015efbb1.lean/declarations/instance--f7e60efe0f892b48c0c38b75.md) | 104 | `declaration-track:f7e60efe0f892b48c0c38b75af5aaaacaadb13a8dbbe0f33600573421ca2407e` |
| 10 | `lemma` | [mul_ev](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/H1/Variant893e7bdacbf73081f5693c370b9077a1a2870ab1bf039face1c04b4b015efbb1.lean/declarations/mul-ev--e319afd746083f700029b9cd.md) | 108 | `result-track:e319afd746083f700029b9cd48d821dda60c164faf8e9c603044c66f29c6a617` |
| 11 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/H1/Variant893e7bdacbf73081f5693c370b9077a1a2870ab1bf039face1c04b4b015efbb1.lean/declarations/instance--f57f9a52d869dcb0c55ac210.md) | 111 | `declaration-track:f57f9a52d869dcb0c55ac2109f3769d713c51e1c673e4b76fb2d302669f99f3b` |
| 12 | `lemma` | [inv_ev](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/H1/Variant893e7bdacbf73081f5693c370b9077a1a2870ab1bf039face1c04b4b015efbb1.lean/declarations/inv-ev--9df4ebb6e52cccaa2c0eb2c8.md) | 115 | `result-track:9df4ebb6e52cccaa2c0eb2c8fe27a0d8be65e17c8ecfe269928674fc1773f66c` |
| 13 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/H1/Variant893e7bdacbf73081f5693c370b9077a1a2870ab1bf039face1c04b4b015efbb1.lean/declarations/instance--3f6a126b113c41fa060f0ee9.md) | 118 | `declaration-track:3f6a126b113c41fa060f0ee94e50f9329cc2cf8a025273dfda5706685390080f` |
| 14 | `structure` | [OneCocycle](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/H1/Variant893e7bdacbf73081f5693c370b9077a1a2870ab1bf039face1c04b4b015efbb1.lean/declarations/onecocycle--f0ef2c46e50ec25787620600.md) | 127 | `declaration-track:f0ef2c46e50ec257876206001061205250ae4f972b29149b6f7f4c0af67e6bad` |
| 15 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/H1/Variant893e7bdacbf73081f5693c370b9077a1a2870ab1bf039face1c04b4b015efbb1.lean/declarations/instance--b138bd5d05450619701680b5.md) | 133 | `declaration-track:b138bd5d05450619701680b5f78cf96a8c80a8db4ab7646b863cb6f88a8a3b4c` |
| 16 | `lemma` | [one_toOneCochain](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/H1/Variant893e7bdacbf73081f5693c370b9077a1a2870ab1bf039face1c04b4b015efbb1.lean/declarations/one-toonecochain--1053a9f6964a922df54a40b7.md) | 137 | `result-track:1053a9f6964a922df54a40b73d7c9d8c4f06e9bb1e88eb4f277b820bfdc60ea8` |
| 17 | `lemma` | [ev_refl](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/H1/Variant893e7bdacbf73081f5693c370b9077a1a2870ab1bf039face1c04b4b015efbb1.lean/declarations/ev-refl--cbfbd29d66bd2b1d19ac4d65.md) | 140 | `result-track:cbfbd29d66bd2b1d19ac4d65fe5bab03e257222936a0081a211856a761e0ad1a` |
| 18 | `lemma` | [ev_symm](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/H1/Variant893e7bdacbf73081f5693c370b9077a1a2870ab1bf039face1c04b4b015efbb1.lean/declarations/ev-symm--78e44a33ebe07015cb59774e.md) | 144 | `result-track:78e44a33ebe07015cb59774e4d41dff4386c84f26404afbad0876d1c78cc7cec` |
| 19 | `def` | [OneCohomologyRelation](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/H1/Variant893e7bdacbf73081f5693c370b9077a1a2870ab1bf039face1c04b4b015efbb1.lean/declarations/onecohomologyrelation--8d065acbf70edc92f318c33e.md) | 155 | `declaration-track:8d065acbf70edc92f318c33e587e60c5761a4eb2510237342d25a6a7cf16ead8` |
| 20 | `lemma` | [refl](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/H1/Variant893e7bdacbf73081f5693c370b9077a1a2870ab1bf039face1c04b4b015efbb1.lean/declarations/refl--48b1c3fa9aab9f7679af1378.md) | 161 | `result-track:48b1c3fa9aab9f7679af137867ec7e54c7696f15196367ade0078039a65d56ff` |
| 21 | `lemma` | [symm](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/H1/Variant893e7bdacbf73081f5693c370b9077a1a2870ab1bf039face1c04b4b015efbb1.lean/declarations/symm--f2fdf44e76560664776d97ff.md) | 163 | `result-track:f2fdf44e76560664776d97ffb191f2b1c4a3130e65a2a3c587df362087c7f57c` |
| 22 | `lemma` | [trans](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/H1/Variant893e7bdacbf73081f5693c370b9077a1a2870ab1bf039face1c04b4b015efbb1.lean/declarations/trans--5b0e30c85bd647558ae0484b.md) | 169 | `result-track:5b0e30c85bd647558ae0484ba2da60aa661c440acc7489097bc641141330cab6` |
| 23 | `def` | [IsCohomologous](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/H1/Variant893e7bdacbf73081f5693c370b9077a1a2870ab1bf039face1c04b4b015efbb1.lean/declarations/iscohomologous--19a384335d9be8d2226dae24.md) | 181 | `declaration-track:19a384335d9be8d2226dae24b06419d476398d11f93afe6187a356b03096b2e7` |
| 24 | `lemma` | [equivalence_isCohomologous](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/H1/Variant893e7bdacbf73081f5693c370b9077a1a2870ab1bf039face1c04b4b015efbb1.lean/declarations/equivalence-iscohomologous--06e09843b8a868a12245a759.md) | 186 | `result-track:06e09843b8a868a12245a759b29abd2a0cf73415a196fe458e0b293e5ce9992c` |
| 25 | `def` | [H1](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/H1/Variant893e7bdacbf73081f5693c370b9077a1a2870ab1bf039face1c04b4b015efbb1.lean/declarations/h1--da75158c47bf709e2f7275d1.md) | 201 | `declaration-track:da75158c47bf709e2f7275d1dbb8070d40cc6a75e39c74d3f65f084c3d8730b9` |
| 26 | `def` | [OneCocycle.class](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/H1/Variant893e7bdacbf73081f5693c370b9077a1a2870ab1bf039face1c04b4b015efbb1.lean/declarations/onecocycle-class--79039a842325cd2c70f7d5ab.md) | 204 | `declaration-track:79039a842325cd2c70f7d5ab7fa3a41a41a33f253a8e6f40c8f07c6d1af3d067` |
| 27 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/H1/Variant893e7bdacbf73081f5693c370b9077a1a2870ab1bf039face1c04b4b015efbb1.lean/declarations/instance--ba13bd4ea1a4be908c05c443.md) | 206 | `declaration-track:ba13bd4ea1a4be908c05c443e9bcb5d008938b185d061d9985ecc2340fc295d3` |
| 28 | `lemma` | [OneCocycle.class_eq_iff](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/H1/Variant893e7bdacbf73081f5693c370b9077a1a2870ab1bf039face1c04b4b015efbb1.lean/declarations/onecocycle-class-eq-iff--0371992f01d440c35c90abd1.md) | 209 | `result-track:0371992f01d440c35c90abd1ce4c99f6c1b5f0db1e8491f6704afc069dc46b17` |
| 29 | `lemma` | [OneCocycle.IsCohomologous.class_eq](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/H1/Variant893e7bdacbf73081f5693c370b9077a1a2870ab1bf039face1c04b4b015efbb1.lean/declarations/onecocycle-iscohomologous-class-eq--70c98f5f6d6b4177496e614a.md) | 213 | `result-track:70c98f5f6d6b4177496e614a1bec845515d6e64010eb61c91a0cd833fa377d83` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
