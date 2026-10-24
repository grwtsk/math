# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.IsConnected.Variant1c8460c209235819cf0c63d76b772eeb3eac73fa867c4d86646e994dd8498beb

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "be77a69f088bbef1907ab5ed6bd6da4ea01e60dd",
  "lexical_observation_count": 36,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/IsConnected/Variant1c8460c209235819cf0c63d76b772eeb3eac73fa867c4d86646e994dd8498beb.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/IsConnected/Variant1c8460c209235819cf0c63d76b772eeb3eac73fa867c4d86646e994dd8498beb.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/IsConnected/Variant1c8460c209235819cf0c63d76b772eeb3eac73fa867c4d86646e994dd8498beb.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `be77a69f088bbef1907ab5ed6bd6da4ea01e60dd`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/IsConnected/Variant1c8460c209235819cf0c63d76b772eeb3eac73fa867c4d86646e994dd8498beb.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/IsConnected/Variant1c8460c209235819cf0c63d76b772eeb3eac73fa867c4d86646e994dd8498beb.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.List.Chain` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.PUnit` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Groupoid` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Category.ULift` — import line 14; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `class` | [IsPreconnected](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/IsConnected/Variant1c8460c209235819cf0c63d76b772eeb3eac73fa867c4d86646e994dd8498beb.lean/declarations/ispreconnected--5f5929e3d41691055e6373b5.md) | 67 | `declaration-track:5f5929e3d41691055e6373b5b56ac9e9560c7a0a1a750aa33e391682132201f5` |
| 2 | `class` | [IsConnected](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/IsConnected/Variant1c8460c209235819cf0c63d76b772eeb3eac73fa867c4d86646e994dd8498beb.lean/declarations/isconnected--628693c916e883bd20f49634.md) | 85 | `declaration-track:628693c916e883bd20f49634acd768246833fa2091e6551fc28b312306754614` |
| 3 | `def` | [liftToDiscrete](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/IsConnected/Variant1c8460c209235819cf0c63d76b772eeb3eac73fa867c4d86646e994dd8498beb.lean/declarations/lifttodiscrete--f14ad705ac18cc67fda10f4e.md) | 98 | `declaration-track:f14ad705ac18cc67fda10f4e242ec113467f70549f254073ef8a065b20f3d16f` |
| 4 | `def` | [factorThroughDiscrete](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/IsConnected/Variant1c8460c209235819cf0c63d76b772eeb3eac73fa867c4d86646e994dd8498beb.lean/declarations/factorthroughdiscrete--c020dbc9a099ea49cb71709b.md) | 105 | `declaration-track:c020dbc9a099ea49cb71709b19e188a14dfcb327c1e6df3255e3a0b45b2146a1` |
| 5 | `def` | [isoConstant](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/IsConnected/Variant1c8460c209235819cf0c63d76b772eeb3eac73fa867c4d86646e994dd8498beb.lean/declarations/isoconstant--3ce5170c2570344e99589883.md) | 114 | `declaration-track:3ce5170c2570344e995898837331f2d3c79ae98291135ae777eb6475ed45d879` |
| 6 | `theorem` | [any_functor_const_on_obj](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/IsConnected/Variant1c8460c209235819cf0c63d76b772eeb3eac73fa867c4d86646e994dd8498beb.lean/declarations/any-functor-const-on-obj--4424715ca611ff6d53687caa.md) | 124 | `result-track:4424715ca611ff6d53687caacdcea6188d5379a02e82ee0676a2233b097ede24` |
| 7 | `theorem` | [IsConnected.of_any_functor_const_on_obj](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/IsConnected/Variant1c8460c209235819cf0c63d76b772eeb3eac73fa867c4d86646e994dd8498beb.lean/declarations/isconnected-of-any-functor-const-on-obj--1f3266acde5671044fd2e0ba.md) | 132 | `result-track:1f3266acde5671044fd2e0ba823fc35f41404de432d8c25b976eea8439202594` |
| 8 | `theorem` | [constant_of_preserves_morphisms](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/IsConnected/Variant1c8460c209235819cf0c63d76b772eeb3eac73fa867c4d86646e994dd8498beb.lean/declarations/constant-of-preserves-morphisms--5ea56c7abed3deea10c8f07e.md) | 143 | `result-track:5ea56c7abed3deea10c8f07e951d734eb3473e4151025c8a33e0ac2122949bfa` |
| 9 | `theorem` | [IsConnected.of_constant_of_preserves_morphisms](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/IsConnected/Variant1c8460c209235819cf0c63d76b772eeb3eac73fa867c4d86646e994dd8498beb.lean/declarations/isconnected-of-constant-of-preserves-morphisms--40f36a4b73e7c431c324036a.md) | 162 | `result-track:40f36a4b73e7c431c324036a09ff5613b3937ef3d8103b2123aea6d9491630b7` |
| 10 | `theorem` | [induct_on_objects](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/IsConnected/Variant1c8460c209235819cf0c63d76b772eeb3eac73fa867c4d86646e994dd8498beb.lean/declarations/induct-on-objects--18d53c63c2d2fcf3d172666e.md) | 176 | `result-track:18d53c63c2d2fcf3d172666e956b66df37b73c31ba11b93b702f0c08856b09d4` |
| 11 | `theorem` | [IsConnected.of_induct](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/IsConnected/Variant1c8460c209235819cf0c63d76b772eeb3eac73fa867c4d86646e994dd8498beb.lean/declarations/isconnected-of-induct--87122c39c1cce12b582dd84c.md) | 188 | `result-track:87122c39c1cce12b582dd84c735affc7c2f163fe1dd7d3dfc68da36ec57494f6` |
| 12 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/IsConnected/Variant1c8460c209235819cf0c63d76b772eeb3eac73fa867c4d86646e994dd8498beb.lean/declarations/instance--fccb11bd6c682f9a74a21855.md) | 200 | `declaration-track:fccb11bd6c682f9a74a21855e54636cd8c57b30e365d91f5a4f8a301f20cc6c3` |
| 13 | `theorem` | [isPreconnected_induction](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/IsConnected/Variant1c8460c209235819cf0c63d76b772eeb3eac73fa867c4d86646e994dd8498beb.lean/declarations/ispreconnected-induction--4467cd591abad61bc82ec87a.md) | 216 | `result-track:4467cd591abad61bc82ec87a1343883315a75b1269a96cad288015148e4eccbd` |
| 14 | `theorem` | [isPreconnected_of_equivalent](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/IsConnected/Variant1c8460c209235819cf0c63d76b772eeb3eac73fa867c4d86646e994dd8498beb.lean/declarations/ispreconnected-of-equivalent--5379130fc8144fbb751bed42.md) | 231 | `result-track:5379130fc8144fbb751bed422c97500e592521b8764f317c1c58fe1f03bc5a2e` |
| 15 | `theorem` | [isConnected_of_equivalent](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/IsConnected/Variant1c8460c209235819cf0c63d76b772eeb3eac73fa867c4d86646e994dd8498beb.lean/declarations/isconnected-of-equivalent--2d053b628c574cea92ba3609.md) | 244 | `result-track:2d053b628c574cea92ba3609e3ffbf5cd5891acd0d803626f6ff71a8f28e74fc` |
| 16 | `instance` | [isPreconnected_op](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/IsConnected/Variant1c8460c209235819cf0c63d76b772eeb3eac73fa867c4d86646e994dd8498beb.lean/declarations/ispreconnected-op--97c8bbe6601fb48624055e07.md) | 251 | `declaration-track:97c8bbe6601fb48624055e07a77e665f68075e7db5f60054904ccef370b2ab4a` |
| 17 | `instance` | [isConnected_op](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/IsConnected/Variant1c8460c209235819cf0c63d76b772eeb3eac73fa867c4d86646e994dd8498beb.lean/declarations/isconnected-op--78584a2dc7a389674452a783.md) | 260 | `declaration-track:78584a2dc7a389674452a78317b422d84e9737e2e76ab8f3f5f5d53bb725ec83` |
| 18 | `theorem` | [isPreconnected_of_isPreconnected_op](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/IsConnected/Variant1c8460c209235819cf0c63d76b772eeb3eac73fa867c4d86646e994dd8498beb.lean/declarations/ispreconnected-of-ispreconnected-op--f4ec5cb206f3083a6b16c19a.md) | 264 | `result-track:f4ec5cb206f3083a6b16c19a1f00662a8b3b200149a948096839f1a6a4514135` |
| 19 | `theorem` | [isConnected_of_isConnected_op](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/IsConnected/Variant1c8460c209235819cf0c63d76b772eeb3eac73fa867c4d86646e994dd8498beb.lean/declarations/isconnected-of-isconnected-op--82d8aa277364faa4cac74612.md) | 268 | `result-track:82d8aa277364faa4cac746126ab3b4f7618e60900af681c2caa3348599f47542` |
| 20 | `def` | [Zag](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/IsConnected/Variant1c8460c209235819cf0c63d76b772eeb3eac73fa867c4d86646e994dd8498beb.lean/declarations/zag--62c4365878dae6be3a11d3e9.md) | 274 | `declaration-track:62c4365878dae6be3a11d3e90004e548642426ec1792caa243ac82342f72cc45` |
| 21 | `theorem` | [zag_symmetric](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/IsConnected/Variant1c8460c209235819cf0c63d76b772eeb3eac73fa867c4d86646e994dd8498beb.lean/declarations/zag-symmetric--21276025092b36596be0e8ac.md) | 278 | `result-track:21276025092b36596be0e8ac4ed39241b10780ba5f59771b3703243b3a3cb0f5` |
| 22 | `def` | [Zigzag](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/IsConnected/Variant1c8460c209235819cf0c63d76b772eeb3eac73fa867c4d86646e994dd8498beb.lean/declarations/zigzag--8592542216ed4bf6d0283a5a.md) | 285 | `declaration-track:8592542216ed4bf6d0283a5a78305e90e572d1d05b738e20dc7864c761414e11` |
| 23 | `theorem` | [zigzag_symmetric](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/IsConnected/Variant1c8460c209235819cf0c63d76b772eeb3eac73fa867c4d86646e994dd8498beb.lean/declarations/zigzag-symmetric--a3d8671c472b4f6fd6ad0704.md) | 289 | `result-track:a3d8671c472b4f6fd6ad07040b674cd16d606b59aef7a8d10c2eab40a5af3565` |
| 24 | `theorem` | [zigzag_equivalence](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/IsConnected/Variant1c8460c209235819cf0c63d76b772eeb3eac73fa867c4d86646e994dd8498beb.lean/declarations/zigzag-equivalence--1d9a27a3758e787743ac1c39.md) | 293 | `result-track:1d9a27a3758e787743ac1c39dafe9f8a0573559d6dd27391a7abbaebc64e632b` |
| 25 | `def` | [Zigzag.setoid](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/IsConnected/Variant1c8460c209235819cf0c63d76b772eeb3eac73fa867c4d86646e994dd8498beb.lean/declarations/zigzag-setoid--61f35106d148ecc0fe44db7b.md) | 301 | `declaration-track:61f35106d148ecc0fe44db7b6609012977044dd75b06eb4fd0e61ce78363481e` |
| 26 | `theorem` | [zigzag_obj_of_zigzag](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/IsConnected/Variant1c8460c209235819cf0c63d76b772eeb3eac73fa867c4d86646e994dd8498beb.lean/declarations/zigzag-obj-of-zigzag--bf20712b691f97ccaff3c2a7.md) | 309 | `result-track:bf20712b691f97ccaff3c2a72b6c5c6a057983514dd8c8447ef2ce82ae45bcaa` |
| 27 | `theorem` | [zag_of_zag_obj](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/IsConnected/Variant1c8460c209235819cf0c63d76b772eeb3eac73fa867c4d86646e994dd8498beb.lean/declarations/zag-of-zag-obj--667c1121e74d89c2e5468830.md) | 315 | `result-track:667c1121e74d89c2e54688303059586b958195b0b20608a2147adb21800a1311` |
| 28 | `theorem` | [equiv_relation](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/IsConnected/Variant1c8460c209235819cf0c63d76b772eeb3eac73fa867c4d86646e994dd8498beb.lean/declarations/equiv-relation--b9a7c61d3daa0fb2d8332cbe.md) | 321 | `result-track:b9a7c61d3daa0fb2d8332cbeeaa977e5c4e5e455b45d79add7f39509bbba9345` |
| 29 | `theorem` | [isConnected_zigzag](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/IsConnected/Variant1c8460c209235819cf0c63d76b772eeb3eac73fa867c4d86646e994dd8498beb.lean/declarations/isconnected-zigzag--814adb05f1a259e7bb88f8a6.md) | 331 | `result-track:814adb05f1a259e7bb88f8a6f0ba13d6d524b7cb8654f3893095dc5d81a732b5` |
| 30 | `theorem` | [zigzag_isConnected](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/IsConnected/Variant1c8460c209235819cf0c63d76b772eeb3eac73fa867c4d86646e994dd8498beb.lean/declarations/zigzag-isconnected--ce483e253be203f89b061257.md) | 338 | `result-track:ce483e253be203f89b0612572be0e8b4512b7ddfca1783b8bb5f98e081809d49` |
| 31 | `theorem` | [exists_zigzag'](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/IsConnected/Variant1c8460c209235819cf0c63d76b772eeb3eac73fa867c4d86646e994dd8498beb.lean/declarations/exists-zigzag--632ab1aee8615f75716a9e81.md) | 352 | `result-track:632ab1aee8615f75716a9e81248c9e5f32989e698a423b901039662360c603e9` |
| 32 | `theorem` | [isConnected_of_zigzag](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/IsConnected/Variant1c8460c209235819cf0c63d76b772eeb3eac73fa867c4d86646e994dd8498beb.lean/declarations/isconnected-of-zigzag--e8038124e516929c5bfa1260.md) | 362 | `result-track:e8038124e516929c5bfa12602bea277f7adc0c81edd5963f20119e8785b88616` |
| 33 | `def` | [discreteIsConnectedEquivPUnit](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/IsConnected/Variant1c8460c209235819cf0c63d76b772eeb3eac73fa867c4d86646e994dd8498beb.lean/declarations/discreteisconnectedequivpunit--56bfd2d48328ba231131fb22.md) | 372 | `declaration-track:56bfd2d48328ba231131fb22d45874b84da0d7bc58ba2cea4356c2ad048c3f55` |
| 34 | `theorem` | [nat_trans_from_is_connected](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/IsConnected/Variant1c8460c209235819cf0c63d76b772eeb3eac73fa867c4d86646e994dd8498beb.lean/declarations/nat-trans-from-is-connected--34c04317f123545292fd444a.md) | 386 | `result-track:34c04317f123545292fd444a1d6a94c7f841d8c35820ad87ff09872bbcedcb49` |
| 35 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/IsConnected/Variant1c8460c209235819cf0c63d76b772eeb3eac73fa867c4d86646e994dd8498beb.lean/declarations/instance--d1ddb08a006ab69de012beaf.md) | 395 | `declaration-track:d1ddb08a006ab69de012beaf078289aa66cb4c79c896b2821a26d03ea34018fc` |
| 36 | `instance` | [nonempty_hom_of_connected_groupoid](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/IsConnected/Variant1c8460c209235819cf0c63d76b772eeb3eac73fa867c4d86646e994dd8498beb.lean/declarations/nonempty-hom-of-connected-groupoid--0e0d6585aeb6cb390da2d81b.md) | 401 | `declaration-track:0e0d6585aeb6cb390da2d81ba51de82db3480a0d641695bb1f022a442576f400` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
