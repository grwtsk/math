# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Sheafification.Variant29becff5e2b4999d0afef7c2528a9a307a8ea44c0794d449890b9ba1ccaad1bf

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "b9c5ac5731d77d7da3562ef67dbb9644b05bdc83",
  "lexical_observation_count": 37,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Sheafification/Variant29becff5e2b4999d0afef7c2528a9a307a8ea44c0794d449890b9ba1ccaad1bf.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Sheafification/Variant29becff5e2b4999d0afef7c2528a9a307a8ea44c0794d449890b9ba1ccaad1bf.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Sheafification/Variant29becff5e2b4999d0afef7c2528a9a307a8ea44c0794d449890b9ba1ccaad1bf.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `b9c5ac5731d77d7da3562ef67dbb9644b05bdc83`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Sheafification/Variant29becff5e2b4999d0afef7c2528a9a307a8ea44c0794d449890b9ba1ccaad1bf.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Sheafification/Variant29becff5e2b4999d0afef7c2528a9a307a8ea44c0794d449890b9ba1ccaad1bf.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.Adjunction.Unique` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Adjunction.Reflective` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Sites.Sheaf` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Limits.Preserves.Finite` — import line 14; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `abbrev` | [HasWeakSheafify](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Sheafification/Variant29becff5e2b4999d0afef7c2528a9a307a8ea44c0794d449890b9ba1ccaad1bf.lean/declarations/hasweaksheafify--1006b1deacd6254b0956a95b.md) | 41 | `declaration-track:1006b1deacd6254b0956a95b4bd549ab7a07a246fb56b89780b31762eec561bf` |
| 2 | `class` | [HasSheafify](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Sheafification/Variant29becff5e2b4999d0afef7c2528a9a307a8ea44c0794d449890b9ba1ccaad1bf.lean/declarations/hassheafify--6e8f8949cb8b8a9426603d8a.md) | 50 | `declaration-track:6e8f8949cb8b8a9426603d8a6dbb2b68e42116e27f4ad2042ff12c210bb0f0dd` |
| 3 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Sheafification/Variant29becff5e2b4999d0afef7c2528a9a307a8ea44c0794d449890b9ba1ccaad1bf.lean/declarations/instance--16a9430be850cbf1463362c4.md) | 54 | `declaration-track:16a9430be850cbf1463362c4a636359be02f4449a0519ffc69a867e47007f104` |
| 4 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Sheafification/Variant29becff5e2b4999d0afef7c2528a9a307a8ea44c0794d449890b9ba1ccaad1bf.lean/declarations/instance--c7c25a842dbbe463dbc765e4.md) | 58 | `declaration-track:c7c25a842dbbe463dbc765e4f3d4dc173fc54f65c1c94052c28d3b1229550e4e` |
| 5 | `theorem` | [HasSheafify.mk'](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Sheafification/Variant29becff5e2b4999d0afef7c2528a9a307a8ea44c0794d449890b9ba1ccaad1bf.lean/declarations/hassheafify-mk--456a520df962c8e3156705af.md) | 61 | `result-track:456a520df962c8e3156705afb289630973325543a6927f631241f741f148aebe` |
| 6 | `def` | [presheafToSheaf](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Sheafification/Variant29becff5e2b4999d0afef7c2528a9a307a8ea44c0794d449890b9ba1ccaad1bf.lean/declarations/presheaftosheaf--400c329e4600c731209ba368.md) | 70 | `declaration-track:400c329e4600c731209ba3681fa3eb4b5121381b79fe8d21099e09800c8fa31b` |
| 7 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Sheafification/Variant29becff5e2b4999d0afef7c2528a9a307a8ea44c0794d449890b9ba1ccaad1bf.lean/declarations/instance--5358bfdb70d78ef57fe54da3.md) | 73 | `declaration-track:5358bfdb70d78ef57fe54da3ee47aff5edecdf53f7b6162465bd0325d41a5bd4` |
| 8 | `def` | [sheafificationAdjunction](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Sheafification/Variant29becff5e2b4999d0afef7c2528a9a307a8ea44c0794d449890b9ba1ccaad1bf.lean/declarations/sheafificationadjunction--4d4a01545b9d484cd441a4af.md) | 77 | `declaration-track:4d4a01545b9d484cd441a4af454df52b5ee0034d1502194fb5dfdf3e5d3072f4` |
| 9 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Sheafification/Variant29becff5e2b4999d0afef7c2528a9a307a8ea44c0794d449890b9ba1ccaad1bf.lean/declarations/instance--aa4dbf7bedc62efcc9210c38.md) | 80 | `declaration-track:aa4dbf7bedc62efcc9210c38ddb7c386426450d111163c4a595595e494345875` |
| 10 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Sheafification/Variant29becff5e2b4999d0afef7c2528a9a307a8ea44c0794d449890b9ba1ccaad1bf.lean/declarations/instance--702423efc8e8b3adda858b29.md) | 83 | `declaration-track:702423efc8e8b3adda858b295b1ba57b2da2357f143cc7ee9080aa28d5df13e8` |
| 11 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Sheafification/Variant29becff5e2b4999d0afef7c2528a9a307a8ea44c0794d449890b9ba1ccaad1bf.lean/declarations/instance--9bb89f5e7c1256e844584fa1.md) | 87 | `declaration-track:9bb89f5e7c1256e844584fa163082b9a9b3f99cdf7a92cec4bc12e3250281b9a` |
| 12 | `abbrev` | [sheafify](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Sheafification/Variant29becff5e2b4999d0afef7c2528a9a307a8ea44c0794d449890b9ba1ccaad1bf.lean/declarations/sheafify--73cd678aafd94cccc7d7e518.md) | 95 | `declaration-track:73cd678aafd94cccc7d7e51863262e80585848f7b6289c0a9b429493a4f07176` |
| 13 | `abbrev` | [toSheafify](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Sheafification/Variant29becff5e2b4999d0afef7c2528a9a307a8ea44c0794d449890b9ba1ccaad1bf.lean/declarations/tosheafify--3290bce6824df18f2c044ce7.md) | 99 | `declaration-track:3290bce6824df18f2c044ce7f3a5af9e40a715ebb889549543dbbf3e6cc99cae` |
| 14 | `theorem` | [sheafificationAdjunction_unit_app](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Sheafification/Variant29becff5e2b4999d0afef7c2528a9a307a8ea44c0794d449890b9ba1ccaad1bf.lean/declarations/sheafificationadjunction-unit-app--88ee84484cf877f49d42883c.md) | 103 | `result-track:88ee84484cf877f49d42883c620edd0660a715713b890d4c060b7a3e9aed0ab6` |
| 15 | `abbrev` | [sheafifyMap](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Sheafification/Variant29becff5e2b4999d0afef7c2528a9a307a8ea44c0794d449890b9ba1ccaad1bf.lean/declarations/sheafifymap--6b27281983012dab90e1f483.md) | 107 | `declaration-track:6b27281983012dab90e1f4838a04aec73652673773ffd6b659c99f9944ed0a77` |
| 16 | `theorem` | [sheafifyMap_id](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Sheafification/Variant29becff5e2b4999d0afef7c2528a9a307a8ea44c0794d449890b9ba1ccaad1bf.lean/declarations/sheafifymap-id--2fd69afcdacbdc2a1b68cada.md) | 111 | `result-track:2fd69afcdacbdc2a1b68cada2372c847e99b9f4441a064caf8b2737594df2b4c` |
| 17 | `theorem` | [sheafifyMap_comp](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Sheafification/Variant29becff5e2b4999d0afef7c2528a9a307a8ea44c0794d449890b9ba1ccaad1bf.lean/declarations/sheafifymap-comp--4f0406731fe2a5f24890f0ba.md) | 115 | `result-track:4f0406731fe2a5f24890f0babda02db66c529447083e5ce5fac1648f0514c12e` |
| 18 | `theorem` | [toSheafify_naturality](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Sheafification/Variant29becff5e2b4999d0afef7c2528a9a307a8ea44c0794d449890b9ba1ccaad1bf.lean/declarations/tosheafify-naturality--696f140b7baf5320da1d5a85.md) | 120 | `result-track:696f140b7baf5320da1d5a85a481695727580ae718f85c84bba35c6ea77648f2` |
| 19 | `abbrev` | [sheafification](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Sheafification/Variant29becff5e2b4999d0afef7c2528a9a307a8ea44c0794d449890b9ba1ccaad1bf.lean/declarations/sheafification--ca25a3cbeb1674a9de89320c.md) | 127 | `declaration-track:ca25a3cbeb1674a9de89320c59141dbc1a8c3fa50dedb39436ac1438434a1d52` |
| 20 | `theorem` | [sheafification_obj](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Sheafification/Variant29becff5e2b4999d0afef7c2528a9a307a8ea44c0794d449890b9ba1ccaad1bf.lean/declarations/sheafification-obj--97edade2c43f36648f6b84e6.md) | 130 | `result-track:97edade2c43f36648f6b84e6f143bc321472bab0ddda5f93d2eee39941fb35ac` |
| 21 | `theorem` | [sheafification_map](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Sheafification/Variant29becff5e2b4999d0afef7c2528a9a307a8ea44c0794d449890b9ba1ccaad1bf.lean/declarations/sheafification-map--aa3b2d86e342561ab3441108.md) | 133 | `result-track:aa3b2d86e342561ab3441108ac25b522bb26c070c289926d0e487d4de5bd62cd` |
| 22 | `abbrev` | [toSheafification](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Sheafification/Variant29becff5e2b4999d0afef7c2528a9a307a8ea44c0794d449890b9ba1ccaad1bf.lean/declarations/tosheafification--d7ce9bea8b3a71142982a839.md) | 138 | `declaration-track:d7ce9bea8b3a71142982a839e62584b5368b39262c1d7be50853a718e034646a` |
| 23 | `theorem` | [toSheafification_app](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Sheafification/Variant29becff5e2b4999d0afef7c2528a9a307a8ea44c0794d449890b9ba1ccaad1bf.lean/declarations/tosheafification-app--bf23eae1137664c977262c7c.md) | 141 | `result-track:bf23eae1137664c977262c7c23d7f58b4b37b3442c431e727be0c72c1d0bebba` |
| 24 | `theorem` | [isIso_toSheafify](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Sheafification/Variant29becff5e2b4999d0afef7c2528a9a307a8ea44c0794d449890b9ba1ccaad1bf.lean/declarations/isiso-tosheafify--37fa9e5fdab177d44939c082.md) | 146 | `result-track:37fa9e5fdab177d44939c0824dc7ff2c7db9411db4cbbb7928dc19139c00ceb6` |
| 25 | `def` | [isoSheafify](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Sheafification/Variant29becff5e2b4999d0afef7c2528a9a307a8ea44c0794d449890b9ba1ccaad1bf.lean/declarations/isosheafify--b1e6efbd1f4729bec57a98c5.md) | 157 | `declaration-track:b1e6efbd1f4729bec57a98c58dcdb7436dc57eeadb15138e9746268c4b4319a2` |
| 26 | `theorem` | [isoSheafify_hom](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Sheafification/Variant29becff5e2b4999d0afef7c2528a9a307a8ea44c0794d449890b9ba1ccaad1bf.lean/declarations/isosheafify-hom--8a8acfd41d1a3704f6dbb5d1.md) | 162 | `result-track:8a8acfd41d1a3704f6dbb5d1e843abbd4ddd2b25acc675c329bf4d14cb7688c0` |
| 27 | `def` | [sheafifyLift](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Sheafification/Variant29becff5e2b4999d0afef7c2528a9a307a8ea44c0794d449890b9ba1ccaad1bf.lean/declarations/sheafifylift--5346ec5ca4bae42ae4b91589.md) | 167 | `declaration-track:5346ec5ca4bae42ae4b915899b16d17e65b5f546d7978cf6505462deaf0766e4` |
| 28 | `theorem` | [sheafificationAdjunction_counit_app_val](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Sheafification/Variant29becff5e2b4999d0afef7c2528a9a307a8ea44c0794d449890b9ba1ccaad1bf.lean/declarations/sheafificationadjunction-counit-app-val--9bd6e33ec4eb16ccf418c748.md) | 172 | `result-track:9bd6e33ec4eb16ccf418c7485ff65de0d23e44b482f3e3459fede96dfe2259fe` |
| 29 | `theorem` | [toSheafify_sheafifyLift](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Sheafification/Variant29becff5e2b4999d0afef7c2528a9a307a8ea44c0794d449890b9ba1ccaad1bf.lean/declarations/tosheafify-sheafifylift--bae1f97adec8e0fddfd9a9b8.md) | 179 | `result-track:bae1f97adec8e0fddfd9a9b8c9667987e6f22a61168871164c5f299087683667` |
| 30 | `theorem` | [sheafifyLift_unique](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Sheafification/Variant29becff5e2b4999d0afef7c2528a9a307a8ea44c0794d449890b9ba1ccaad1bf.lean/declarations/sheafifylift-unique--4cf8ac867218b32957d1860e.md) | 189 | `result-track:4cf8ac867218b32957d1860ee89801bba68ced232efc98342f9506da86a60858` |
| 31 | `theorem` | [isoSheafify_inv](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Sheafification/Variant29becff5e2b4999d0afef7c2528a9a307a8ea44c0794d449890b9ba1ccaad1bf.lean/declarations/isosheafify-inv--541e6dd45ed41b44892d1f7e.md) | 200 | `result-track:541e6dd45ed41b44892d1f7e07f86235a0535383e05c4c5e8388b13718e73bf7` |
| 32 | `theorem` | [sheafify_hom_ext](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Sheafification/Variant29becff5e2b4999d0afef7c2528a9a307a8ea44c0794d449890b9ba1ccaad1bf.lean/declarations/sheafify-hom-ext--0f681f3618aa11a80d37e044.md) | 205 | `result-track:0f681f3618aa11a80d37e044381c4ad53541f6cb7a4b41bd5b574d33af455539` |
| 33 | `theorem` | [sheafifyMap_sheafifyLift](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Sheafification/Variant29becff5e2b4999d0afef7c2528a9a307a8ea44c0794d449890b9ba1ccaad1bf.lean/declarations/sheafifymap-sheafifylift--4dae4590213b210ea5c67b25.md) | 211 | `result-track:4dae4590213b210ea5c67b251f5fc3a28db75603bf76b7b3beb0b461d8095439` |
| 34 | `def` | [sheafificationIso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Sheafification/Variant29becff5e2b4999d0afef7c2528a9a307a8ea44c0794d449890b9ba1ccaad1bf.lean/declarations/sheafificationiso--2a0fa8ba468c6f9549628601.md) | 221 | `declaration-track:2a0fa8ba468c6f9549628601e13ecdf387390c4b56a3352cd6c6fea3f40e4239` |
| 35 | `instance` | [isIso_sheafificationAdjunction_counit](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Sheafification/Variant29becff5e2b4999d0afef7c2528a9a307a8ea44c0794d449890b9ba1ccaad1bf.lean/declarations/isiso-sheafificationadjunction-counit--96f242f79787eb3f5fe4c062.md) | 231 | `declaration-track:96f242f79787eb3f5fe4c062e2733afbe8bedc55f5ed69a75364e94e00236538` |
| 36 | `instance` | [sheafification_reflective](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Sheafification/Variant29becff5e2b4999d0afef7c2528a9a307a8ea44c0794d449890b9ba1ccaad1bf.lean/declarations/sheafification-reflective--83f6caf4a8e3b576fb0c6e51.md) | 235 | `declaration-track:83f6caf4a8e3b576fb0c6e51a288b4b20e81224550569de5933ea59aa44b6a56` |
| 37 | `def` | [sheafificationNatIso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Sheafification/Variant29becff5e2b4999d0afef7c2528a9a307a8ea44c0794d449890b9ba1ccaad1bf.lean/declarations/sheafificationnatiso--b4ee091ab2b83edbfccb0db4.md) | 242 | `declaration-track:b4ee091ab2b83edbfccb0db43a1c62b3c5b88d8e0a8f8122104e83904c8b0dbc` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
