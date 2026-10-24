# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.SheafedSpace.Variant1691dcc71733c2a3f97af6155e861ccad7accb134fdc5c198971f738db8d93d3

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "f368b59fa96641bd69dd7bed4651720e6a96bde0",
  "lexical_observation_count": 40,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/SheafedSpace/Variant1691dcc71733c2a3f97af6155e861ccad7accb134fdc5c198971f738db8d93d3.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/SheafedSpace/Variant1691dcc71733c2a3f97af6155e861ccad7accb134fdc5c198971f738db8d93d3.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/SheafedSpace/Variant1691dcc71733c2a3f97af6155e861ccad7accb134fdc5c198971f738db8d93d3.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `f368b59fa96641bd69dd7bed4651720e6a96bde0`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/SheafedSpace/Variant1691dcc71733c2a3f97af6155e861ccad7accb134fdc5c198971f738db8d93d3.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/SheafedSpace/Variant1691dcc71733c2a3f97af6155e861ccad7accb134fdc5c198971f738db8d93d3.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Geometry.RingedSpace.PresheafedSpace.HasColimits` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Geometry.RingedSpace.Stalks` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Sheaves.Functors` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [SheafedSpace](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/SheafedSpace/Variant1691dcc71733c2a3f97af6155e861ccad7accb134fdc5c198971f738db8d93d3.lean/declarations/sheafedspace--c2d569f8473c1702c8537212.md) | 46 | `declaration-track:c2d569f8473c1702c8537212ffeb8bf96e0a826a70a0f46c0e0ec4b8dc9d5e8a` |
| 2 | `instance` | [coeCarrier](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/SheafedSpace/Variant1691dcc71733c2a3f97af6155e861ccad7accb134fdc5c198971f738db8d93d3.lean/declarations/coecarrier--b11175fdf72806a915831487.md) | 55 | `declaration-track:b11175fdf72806a915831487692be17fb2724cd7bb8a9a49a4861cbd3dc9b69a` |
| 3 | `instance` | [coeSort](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/SheafedSpace/Variant1691dcc71733c2a3f97af6155e861ccad7accb134fdc5c198971f738db8d93d3.lean/declarations/coesort--0684c0b13066356ffd980c3f.md) | 57 | `declaration-track:0684c0b13066356ffd980c3fbbe1b6e861767aa91db32c28d8e7a0d7b3d488cb` |
| 4 | `def` | [sheaf](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/SheafedSpace/Variant1691dcc71733c2a3f97af6155e861ccad7accb134fdc5c198971f738db8d93d3.lean/declarations/sheaf--efe8088686d15542634228b2.md) | 61 | `declaration-track:efe8088686d15542634228b21dcc55989af9bcb6bf818b741f32518434a04fd2` |
| 5 | `theorem` | [mk_coe](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/SheafedSpace/Variant1691dcc71733c2a3f97af6155e861ccad7accb134fdc5c198971f738db8d93d3.lean/declarations/mk-coe--c876f1c3f04facb178c95e13.md) | 71 | `result-track:c876f1c3f04facb178c95e138360fb5d252687edcad39e7eade2253d770b042c` |
| 6 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/SheafedSpace/Variant1691dcc71733c2a3f97af6155e861ccad7accb134fdc5c198971f738db8d93d3.lean/declarations/instance--b94e3105f0e42f8fa2229e06.md) | 77 | `declaration-track:b94e3105f0e42f8fa2229e06e75c5eef2082c96ea010b97c6c11659bc478f23d` |
| 7 | `def` | [unit](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/SheafedSpace/Variant1691dcc71733c2a3f97af6155e861ccad7accb134fdc5c198971f738db8d93d3.lean/declarations/unit--b6153d7ead473897ca8efe11.md) | 81 | `declaration-track:b6153d7ead473897ca8efe1165814a6f22a827506b4ee9875f8b4c24bf6f2d5d` |
| 8 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/SheafedSpace/Variant1691dcc71733c2a3f97af6155e861ccad7accb134fdc5c198971f738db8d93d3.lean/declarations/instance--cdfca7f35a13c102c90d654a.md) | 84 | `declaration-track:cdfca7f35a13c102c90d654a25ae93dd5092183290d0a3ddf70b2d6794fd2caf` |
| 9 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/SheafedSpace/Variant1691dcc71733c2a3f97af6155e861ccad7accb134fdc5c198971f738db8d93d3.lean/declarations/instance--bb38eac8b49aa1a5cdaf07c8.md) | 87 | `declaration-track:bb38eac8b49aa1a5cdaf07c86e10408814c676cd89d97133060e6ddb4e467ccd` |
| 10 | `theorem` | [ext](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/SheafedSpace/Variant1691dcc71733c2a3f97af6155e861ccad7accb134fdc5c198971f738db8d93d3.lean/declarations/ext--d6f30d9a0128faab4eae41be.md) | 92 | `result-track:d6f30d9a0128faab4eae41be0389650e562a95ede28d35072117bf5fbc4b6d70` |
| 11 | `def` | [isoMk](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/SheafedSpace/Variant1691dcc71733c2a3f97af6155e861ccad7accb134fdc5c198971f738db8d93d3.lean/declarations/isomk--1ca59251ac17a45d0a0d9239.md) | 98 | `declaration-track:1ca59251ac17a45d0a0d923921891fe93de5acfa6c83deeac5009ca12342dbcf` |
| 12 | `def` | [forgetToPresheafedSpace](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/SheafedSpace/Variant1691dcc71733c2a3f97af6155e861ccad7accb134fdc5c198971f738db8d93d3.lean/declarations/forgettopresheafedspace--1eec4f82b1d1bfa8e592aa06.md) | 106 | `declaration-track:1eec4f82b1d1bfa8e592aa069ee3c04381765a82945a199e95213087678a152e` |
| 13 | `instance` | [forgetToPresheafedSpace_full](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/SheafedSpace/Variant1691dcc71733c2a3f97af6155e861ccad7accb134fdc5c198971f738db8d93d3.lean/declarations/forgettopresheafedspace-full--c121e152be8f9f8780bd192d.md) | 111 | `declaration-track:c121e152be8f9f8780bd192d7846db154ab6322aa9159be0d3c0a514de001cc9` |
| 14 | `instance` | [forgetToPresheafedSpace_faithful](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/SheafedSpace/Variant1691dcc71733c2a3f97af6155e861ccad7accb134fdc5c198971f738db8d93d3.lean/declarations/forgettopresheafedspace-faithful--c6b2705777dcf0823c4455a0.md) | 114 | `declaration-track:c6b2705777dcf0823c4455a05ad0b6a44aedb0eab0083c037c50f7248391332a` |
| 15 | `instance` | [is_presheafedSpace_iso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/SheafedSpace/Variant1691dcc71733c2a3f97af6155e861ccad7accb134fdc5c198971f738db8d93d3.lean/declarations/is-presheafedspace-iso--83087b01032bdd84e5895c36.md) | 116 | `declaration-track:83087b01032bdd84e5895c3638f968780d8b6e198da1b5845598887645ba5738` |
| 16 | `theorem` | [id_base](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/SheafedSpace/Variant1691dcc71733c2a3f97af6155e861ccad7accb134fdc5c198971f738db8d93d3.lean/declarations/id-base--6897bd2af3158a2c5435add9.md) | 125 | `result-track:6897bd2af3158a2c5435add958987a6f44bb9633ce9844994b4c8089a3c7fe4c` |
| 17 | `theorem` | [id_c](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/SheafedSpace/Variant1691dcc71733c2a3f97af6155e861ccad7accb134fdc5c198971f738db8d93d3.lean/declarations/id-c--5103aee35afcfd05bb211077.md) | 128 | `result-track:5103aee35afcfd05bb211077c0d9ec0531e216f581865fb8b5a4584c2bdce042` |
| 18 | `theorem` | [id_c_app](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/SheafedSpace/Variant1691dcc71733c2a3f97af6155e861ccad7accb134fdc5c198971f738db8d93d3.lean/declarations/id-c-app--922d8cd7a8535a042bc2f6b8.md) | 133 | `result-track:922d8cd7a8535a042bc2f6b8a3be0f536fa717e123efbd18a6b69e4140a62092` |
| 19 | `theorem` | [comp_base](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/SheafedSpace/Variant1691dcc71733c2a3f97af6155e861ccad7accb134fdc5c198971f738db8d93d3.lean/declarations/comp-base--39c7e1f478cf5369e9c2abe3.md) | 137 | `result-track:39c7e1f478cf5369e9c2abe3f92709c7623dbe65da6dd5f749401eba5e2cb5c0` |
| 20 | `theorem` | [comp_c_app](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/SheafedSpace/Variant1691dcc71733c2a3f97af6155e861ccad7accb134fdc5c198971f738db8d93d3.lean/declarations/comp-c-app--edbba61d588a9eac956fb882.md) | 142 | `result-track:edbba61d588a9eac956fb88243e8c4bc040daafd6d4d5b55034618ac37210376` |
| 21 | `theorem` | [comp_c_app'](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/SheafedSpace/Variant1691dcc71733c2a3f97af6155e861ccad7accb134fdc5c198971f738db8d93d3.lean/declarations/comp-c-app--c8e3e78b7194cd9206039112.md) | 146 | `result-track:c8e3e78b7194cd9206039112a0cd683714b71f7b95f216346626d8cf3b2b61b7` |
| 22 | `theorem` | [congr_app](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/SheafedSpace/Variant1691dcc71733c2a3f97af6155e861ccad7accb134fdc5c198971f738db8d93d3.lean/declarations/congr-app--c86e78b0cdfa4b68c1c09926.md) | 150 | `result-track:c86e78b0cdfa4b68c1c0992693b1a600898ba0d10d5c1e5366d3c1ebabb829dc` |
| 23 | `def` | [forget](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/SheafedSpace/Variant1691dcc71733c2a3f97af6155e861ccad7accb134fdc5c198971f738db8d93d3.lean/declarations/forget--b9690e25cdf73ffe6549d18e.md) | 157 | `declaration-track:b9690e25cdf73ffe6549d18e09d14d5330624108bec435719a7cce8d3f61bb86` |
| 24 | `def` | [restrict](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/SheafedSpace/Variant1691dcc71733c2a3f97af6155e861ccad7accb134fdc5c198971f738db8d93d3.lean/declarations/restrict--e1a93f9060bbf796fb0f5cf9.md) | 167 | `declaration-track:e1a93f9060bbf796fb0f5cf929e542a1cf939e698a847c64b188f795f1b5ee1d` |
| 25 | `def` | [ofRestrict](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/SheafedSpace/Variant1691dcc71733c2a3f97af6155e861ccad7accb134fdc5c198971f738db8d93d3.lean/declarations/ofrestrict--452ae7b52f6cff0f1f3e5003.md) | 174 | `declaration-track:452ae7b52f6cff0f1f3e5003b9de41201e74140a5bb83bb4dd9a7a06463ce6c1` |
| 26 | `def` | [restrictTopIso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/SheafedSpace/Variant1691dcc71733c2a3f97af6155e861ccad7accb134fdc5c198971f738db8d93d3.lean/declarations/restricttopiso--0dd2f02c2e912123761e0d66.md) | 180 | `declaration-track:0dd2f02c2e912123761e0d6679c37199eef78943c41da7c8fb8f01e01f74f113` |
| 27 | `def` | [Γ](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/SheafedSpace/Variant1691dcc71733c2a3f97af6155e861ccad7accb134fdc5c198971f738db8d93d3.lean/declarations/anonymous--0c384d73d3aa3ee6a8641a7d.md) | 185 | `declaration-track:0c384d73d3aa3ee6a8641a7d31f20994eed437d9d6c6a09c863874e185c33a77` |
| 28 | `theorem` | [Γ_def](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/SheafedSpace/Variant1691dcc71733c2a3f97af6155e861ccad7accb134fdc5c198971f738db8d93d3.lean/declarations/def--cf11382bdbafe35684457a0c.md) | 188 | `result-track:cf11382bdbafe35684457a0cab8914f70b87726e5429046bc02dc10f7f2a97d5` |
| 29 | `theorem` | [Γ_obj](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/SheafedSpace/Variant1691dcc71733c2a3f97af6155e861ccad7accb134fdc5c198971f738db8d93d3.lean/declarations/obj--361c9ff0e9dfe82d7b174bd0.md) | 192 | `result-track:361c9ff0e9dfe82d7b174bd00db2f3381145b6f0122355947ffbaadbce40eea9` |
| 30 | `theorem` | [Γ_obj_op](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/SheafedSpace/Variant1691dcc71733c2a3f97af6155e861ccad7accb134fdc5c198971f738db8d93d3.lean/declarations/obj-op--3fbf25f6b88ab3598ad0df58.md) | 195 | `result-track:3fbf25f6b88ab3598ad0df588e76cd71c6eff91c3046ff942dbdeb0d2f47a1f4` |
| 31 | `theorem` | [Γ_map](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/SheafedSpace/Variant1691dcc71733c2a3f97af6155e861ccad7accb134fdc5c198971f738db8d93d3.lean/declarations/map--35c1724660dd39dfd3caccf7.md) | 199 | `result-track:35c1724660dd39dfd3caccf74fbd671e22fd3e744a3b56a0d80fe9d6740e504a` |
| 32 | `theorem` | [Γ_map_op](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/SheafedSpace/Variant1691dcc71733c2a3f97af6155e861ccad7accb134fdc5c198971f738db8d93d3.lean/declarations/map-op--8cc0d8d6cc14bab2cdd9c7ad.md) | 202 | `result-track:8cc0d8d6cc14bab2cdd9c7adf251fad48c71fa9d43160b64148212e571eb6cf6` |
| 33 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/SheafedSpace/Variant1691dcc71733c2a3f97af6155e861ccad7accb134fdc5c198971f738db8d93d3.lean/declarations/instance--10c2b4c1fa8bb03d1dc393c0.md) | 205 | `declaration-track:10c2b4c1fa8bb03d1dc393c0ec0a5d7312aea49eb38a9d7ff7eded7c7e7346c6` |
| 34 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/SheafedSpace/Variant1691dcc71733c2a3f97af6155e861ccad7accb134fdc5c198971f738db8d93d3.lean/declarations/instance--c8f49f744df92fc343771fdf.md) | 213 | `declaration-track:c8f49f744df92fc343771fdf18675101b818854c8bc5e5fe299302e2ad90fb07` |
| 35 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/SheafedSpace/Variant1691dcc71733c2a3f97af6155e861ccad7accb134fdc5c198971f738db8d93d3.lean/declarations/instance--5f021c88d2d05e3a3548139b.md) | 216 | `declaration-track:5f021c88d2d05e3a3548139bdcbe7dabc85200b11ba7f40a994c12b85fae420b` |
| 36 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/SheafedSpace/Variant1691dcc71733c2a3f97af6155e861ccad7accb134fdc5c198971f738db8d93d3.lean/declarations/instance--364f4ffbce9e1b1369693b3e.md) | 220 | `declaration-track:364f4ffbce9e1b1369693b3e1187640dc96acdb84a60414230b90bc893466471` |
| 37 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/SheafedSpace/Variant1691dcc71733c2a3f97af6155e861ccad7accb134fdc5c198971f738db8d93d3.lean/declarations/instance--ff175b8ca526217032dc3755.md) | 222 | `declaration-track:ff175b8ca526217032dc375595e9bdcfc2c20bdf1ca1fd8c08b805feab2eae27` |
| 38 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/SheafedSpace/Variant1691dcc71733c2a3f97af6155e861ccad7accb134fdc5c198971f738db8d93d3.lean/declarations/instance--0fd6aeb1f57aae9ecaf7c1b6.md) | 226 | `declaration-track:0fd6aeb1f57aae9ecaf7c1b60c1d9fc5b74472035f69cee0e4b2ac99e9255f96` |
| 39 | `lemma` | [hom_stalk_ext](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/SheafedSpace/Variant1691dcc71733c2a3f97af6155e861ccad7accb134fdc5c198971f738db8d93d3.lean/declarations/hom-stalk-ext--c8dd4e2d0cf7e4df872be2c7.md) | 238 | `result-track:c8dd4e2d0cf7e4df872be2c7df6f0f2f58ecc284462e3e704b3e912540129ad7` |
| 40 | `lemma` | [mono_of_base_injective_of_stalk_epi](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/SheafedSpace/Variant1691dcc71733c2a3f97af6155e861ccad7accb134fdc5c198971f738db8d93d3.lean/declarations/mono-of-base-injective-of-stalk-epi--4bebfa0da3f5d7569508945d.md) | 253 | `result-track:4bebfa0da3f5d7569508945d9f572b790afedc1c23acdb6233dded2ab27f7707` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
