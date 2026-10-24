# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Split.Variantc7591ac5912776e7631b668aa4b8253daca72c6865c7728f80cc922354428b7c

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "3de7e1d3eb2747270cc5937d5cbc1dddf2ad4d5d",
  "lexical_observation_count": 48,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Split/Variantc7591ac5912776e7631b668aa4b8253daca72c6865c7728f80cc922354428b7c.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Split/Variantc7591ac5912776e7631b668aa4b8253daca72c6865c7728f80cc922354428b7c.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Split/Variantc7591ac5912776e7631b668aa4b8253daca72c6865c7728f80cc922354428b7c.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `3de7e1d3eb2747270cc5937d5cbc1dddf2ad4d5d`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Split/Variantc7591ac5912776e7631b668aa4b8253daca72c6865c7728f80cc922354428b7c.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Split/Variantc7591ac5912776e7631b668aa4b8253daca72c6865c7728f80cc922354428b7c.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.AlgebraicTopology.SimplicialObject.Basic` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Limits.Shapes.Products` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Fintype.Sigma` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [IndexSet](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Split/Variantc7591ac5912776e7631b668aa4b8253daca72c6865c7728f80cc922354428b7c.lean/declarations/indexset--48b0a40babd5e4f9352d9a16.md) | 59 | `declaration-track:48b0a40babd5e4f9352d9a1672d688d11fe612a30c20aec8f3c5604f394ada5b` |
| 2 | `def` | [mk](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Split/Variantc7591ac5912776e7631b668aa4b8253daca72c6865c7728f80cc922354428b7c.lean/declarations/mk--8dda5711d36b03603d99e102.md) | 66 | `declaration-track:8dda5711d36b03603d99e1026caaf11765b04c1e6775c9c0e7b13229e1d60016` |
| 3 | `def` | [e](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Split/Variantc7591ac5912776e7631b668aa4b8253daca72c6865c7728f80cc922354428b7c.lean/declarations/e--18f94eacf13fafb56f0e284a.md) | 72 | `declaration-track:18f94eacf13fafb56f0e284ab7e687e40a8276ec15719913224c1c9f1d911703` |
| 4 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Split/Variantc7591ac5912776e7631b668aa4b8253daca72c6865c7728f80cc922354428b7c.lean/declarations/instance--3c3f3f024ae57c4f98dbf25a.md) | 75 | `declaration-track:3c3f3f024ae57c4f98dbf25af1b73fa24521a71aed63e60f14ed2194f9974d4a` |
| 5 | `theorem` | [ext'](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Split/Variantc7591ac5912776e7631b668aa4b8253daca72c6865c7728f80cc922354428b7c.lean/declarations/ext--32fce9b7c41c55aa5eddb570.md) | 78 | `result-track:32fce9b7c41c55aa5eddb570937c76379d866679e2487c8cca8ee7b590c4be1e` |
| 6 | `theorem` | [ext](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Split/Variantc7591ac5912776e7631b668aa4b8253daca72c6865c7728f80cc922354428b7c.lean/declarations/ext--2e4c648a3e30a4018d6496ad.md) | 80 | `result-track:2e4c648a3e30a4018d6496adb17f87146196acf0b44da4a029430c66ccd62323` |
| 7 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Split/Variantc7591ac5912776e7631b668aa4b8253daca72c6865c7728f80cc922354428b7c.lean/declarations/instance--cd9897ec43cd8e944e66befe.md) | 89 | `declaration-track:cd9897ec43cd8e944e66befe970df721d5ab0c8456db8310435f3241deb4968d` |
| 8 | `def` | [id](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Split/Variantc7591ac5912776e7631b668aa4b8253daca72c6865c7728f80cc922354428b7c.lean/declarations/id--97522b275746eb2e73eb5370.md) | 113 | `declaration-track:97522b275746eb2e73eb53702457dcc2c39f496796754f9ef4907ca998535a48` |
| 9 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Split/Variantc7591ac5912776e7631b668aa4b8253daca72c6865c7728f80cc922354428b7c.lean/declarations/instance--acd92173e4e58c6c3b76cffc.md) | 116 | `declaration-track:acd92173e4e58c6c3b76cffcdd6271c1f4c8aa787d44646f464ff7f4ff80e0c8` |
| 10 | `def` | [EqId](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Split/Variantc7591ac5912776e7631b668aa4b8253daca72c6865c7728f80cc922354428b7c.lean/declarations/eqid--60e8ff60fe9a137b6f21ae55.md) | 124 | `declaration-track:60e8ff60fe9a137b6f21ae554a4e7a3be7a579239138e5412ebba9fa7ffff98e` |
| 11 | `theorem` | [eqId_iff_eq](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Split/Variantc7591ac5912776e7631b668aa4b8253daca72c6865c7728f80cc922354428b7c.lean/declarations/eqid-iff-eq--4f79f93ba3671d26479f0ab8.md) | 127 | `result-track:4f79f93ba3671d26479f0ab8134e80ca7bdedfcd459391f7e920d6de8dae3c09` |
| 12 | `theorem` | [eqId_iff_len_eq](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Split/Variantc7591ac5912776e7631b668aa4b8253daca72c6865c7728f80cc922354428b7c.lean/declarations/eqid-iff-len-eq--16b2580da522bad6b94fb615.md) | 142 | `result-track:16b2580da522bad6b94fb615dfee528c5cc1e363542a44932a46491b8e0fc74b` |
| 13 | `theorem` | [eqId_iff_len_le](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Split/Variantc7591ac5912776e7631b668aa4b8253daca72c6865c7728f80cc922354428b7c.lean/declarations/eqid-iff-len-le--1581551c7770e28e1102bc38.md) | 152 | `result-track:1581551c7770e28e1102bc38a3043fd6a2455d7577f4a21b5d51a2c1b1f03ce1` |
| 14 | `theorem` | [eqId_iff_mono](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Split/Variantc7591ac5912776e7631b668aa4b8253daca72c6865c7728f80cc922354428b7c.lean/declarations/eqid-iff-mono--3d8fcc9950b4723644ad0a8a.md) | 159 | `result-track:3d8fcc9950b4723644ad0a8ab8676d9c6f22d4b90457058593517cf9fc46dbaf` |
| 15 | `def` | [epiComp](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Split/Variantc7591ac5912776e7631b668aa4b8253daca72c6865c7728f80cc922354428b7c.lean/declarations/epicomp--a3fe9e272418ab43cad2241c.md) | 174 | `declaration-track:a3fe9e272418ab43cad2241cbc4001da7a233d9f88cd708d77639038434ccfd1` |
| 16 | `def` | [pull](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Split/Variantc7591ac5912776e7631b668aa4b8253daca72c6865c7728f80cc922354428b7c.lean/declarations/pull--185ba89284ea59a8690c21eb.md) | 184 | `declaration-track:185ba89284ea59a8690c21eb6391ca81729efbe19f20a2f700d53a4aee65880a` |
| 17 | `theorem` | [fac_pull](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Split/Variantc7591ac5912776e7631b668aa4b8253daca72c6865c7728f80cc922354428b7c.lean/declarations/fac-pull--c6f9e5f714ec547c62939f80.md) | 188 | `result-track:c6f9e5f714ec547c62939f80788acaf1cdbe956311f2535254b2d239a1cfcf95` |
| 18 | `def` | [summand](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Split/Variantc7591ac5912776e7631b668aa4b8253daca72c6865c7728f80cc922354428b7c.lean/declarations/summand--88ca57954555a909958612e2.md) | 200 | `declaration-track:88ca57954555a909958612e2b6986007165b2b55174ca5aa51fdb56d6d6e6c71` |
| 19 | `def` | [cofan'](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Split/Variantc7591ac5912776e7631b668aa4b8253daca72c6865c7728f80cc922354428b7c.lean/declarations/cofan--59ffa0df4623bbbf9d245616.md) | 204 | `declaration-track:59ffa0df4623bbbf9d245616f88ac3496552ca4180329b530a4e892ff9ef9334` |
| 20 | `structure` | [Splitting](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Split/Variantc7591ac5912776e7631b668aa4b8253daca72c6865c7728f80cc922354428b7c.lean/declarations/splitting--f5ec1367ca2c7eb5549e9a0d.md) | 213 | `declaration-track:f5ec1367ca2c7eb5549e9a0d512cfd4c6de81db6ff778646da0dbc76a9fa0841` |
| 21 | `def` | [cofan](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Split/Variantc7591ac5912776e7631b668aa4b8253daca72c6865c7728f80cc922354428b7c.lean/declarations/cofan--44fe3334ab613f393ef5c924.md) | 227 | `declaration-track:44fe3334ab613f393ef5c92432e390d03e1205d9a1b3b83a3d33931f46a9d1de` |
| 22 | `def` | [isColimit](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Split/Variantc7591ac5912776e7631b668aa4b8253daca72c6865c7728f80cc922354428b7c.lean/declarations/iscolimit--a32ece263da326886e4bc30a.md) | 231 | `declaration-track:a32ece263da326886e4bc30a5dbb0665db728be9d90485f26da2ccd7dd53adb8` |
| 23 | `theorem` | [cofan_inj_eq](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Split/Variantc7591ac5912776e7631b668aa4b8253daca72c6865c7728f80cc922354428b7c.lean/declarations/cofan-inj-eq--67040550b03f625f8d052593.md) | 234 | `result-track:67040550b03f625f8d052593a254728a6e6113e1bd5fd666957eefb2911745f7` |
| 24 | `theorem` | [cofan_inj_id](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Split/Variantc7591ac5912776e7631b668aa4b8253daca72c6865c7728f80cc922354428b7c.lean/declarations/cofan-inj-id--0c4408eb2ac9dca9d56ed374.md) | 237 | `result-track:0c4408eb2ac9dca9d56ed374cd68a7e13b64047b46539926122ccffd453f71da` |
| 25 | `def` | [φ](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Split/Variantc7591ac5912776e7631b668aa4b8253daca72c6865c7728f80cc922354428b7c.lean/declarations/anonymous--5214ac1c2c1a96e060bbad42.md) | 244 | `declaration-track:5214ac1c2c1a96e060bbad42f2f8246b56685450fbf82c11e98513317a3f434d` |
| 26 | `theorem` | [cofan_inj_comp_app](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Split/Variantc7591ac5912776e7631b668aa4b8253daca72c6865c7728f80cc922354428b7c.lean/declarations/cofan-inj-comp-app--b21b8c32297dcc671ffd2fff.md) | 248 | `result-track:b21b8c32297dcc671ffd2fff0b61fc016d9e46716dc44dbd2b925af75807daa1` |
| 27 | `theorem` | [hom_ext'](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Split/Variantc7591ac5912776e7631b668aa4b8253daca72c6865c7728f80cc922354428b7c.lean/declarations/hom-ext--bb5c8e513d87c4b91d3869fa.md) | 253 | `result-track:bb5c8e513d87c4b91d3869fa3a7ab15e4f6786fed71f60b59e7a8ade4efb8e5e` |
| 28 | `theorem` | [hom_ext](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Split/Variantc7591ac5912776e7631b668aa4b8253daca72c6865c7728f80cc922354428b7c.lean/declarations/hom-ext--347d2de448a89a425a8ee1ab.md) | 257 | `result-track:347d2de448a89a425a8ee1ab783f2308e75f509aeff1e26522e256bf098868a8` |
| 29 | `def` | [desc](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Split/Variantc7591ac5912776e7631b668aa4b8253daca72c6865c7728f80cc922354428b7c.lean/declarations/desc--0d1fa8d1d7de6e3ae47c0ca7.md) | 268 | `declaration-track:0d1fa8d1d7de6e3ae47c0ca79783c3d264e5ab36f60949f6c79f52b31c43e907` |
| 30 | `theorem` | [ι_desc](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Split/Variantc7591ac5912776e7631b668aa4b8253daca72c6865c7728f80cc922354428b7c.lean/declarations/desc--e2ff73fa59eb9f98535c52a9.md) | 273 | `result-track:e2ff73fa59eb9f98535c52a97c92361cc269d4d95efb67f272263eb4596c28c3` |
| 31 | `def` | [ofIso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Split/Variantc7591ac5912776e7631b668aa4b8253daca72c6865c7728f80cc922354428b7c.lean/declarations/ofiso--fef09fc6710be4b69ff514e1.md) | 279 | `declaration-track:fef09fc6710be4b69ff514e189b77bc72c582e925b7ccdc9b03d75444bda85e0` |
| 32 | `theorem` | [cofan_inj_epi_naturality](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Split/Variantc7591ac5912776e7631b668aa4b8253daca72c6865c7728f80cc922354428b7c.lean/declarations/cofan-inj-epi-naturality--e124eadb121e334a8170623d.md) | 286 | `result-track:e124eadb121e334a8170623de9055a7b763e53e6b823c6b8c5b48c7e87e48d54` |
| 33 | `structure` | [Split](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Split/Variantc7591ac5912776e7631b668aa4b8253daca72c6865c7728f80cc922354428b7c.lean/declarations/split--bb02a4a0c7149c48a2a77b9c.md) | 300 | `declaration-track:bb02a4a0c7149c48a2a77b9c499722939c65c8013f0012c3bda9e4d803c1a8c8` |
| 34 | `def` | [mk'](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Split/Variantc7591ac5912776e7631b668aa4b8253daca72c6865c7728f80cc922354428b7c.lean/declarations/mk--85778ac2ad6cbc1d21fb40de.md) | 313 | `declaration-track:85778ac2ad6cbc1d21fb40def94d49a9a8909253d48bc918c2f506266e43e186` |
| 35 | `structure` | [Hom](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Split/Variantc7591ac5912776e7631b668aa4b8253daca72c6865c7728f80cc922354428b7c.lean/declarations/hom--c977fcc4780511f00a46463b.md) | 318 | `declaration-track:c977fcc4780511f00a46463bdf84e1d40038c0383b8f849ca42994d81ab8a336` |
| 36 | `theorem` | [Hom.ext](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Split/Variantc7591ac5912776e7631b668aa4b8253daca72c6865c7728f80cc922354428b7c.lean/declarations/hom-ext--bbfbf0bb44a42b08475b9553.md) | 326 | `result-track:bbfbf0bb44a42b08475b9553a88ff3bbf1f3ada96bfc39ef056287cc22253737` |
| 37 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Split/Variantc7591ac5912776e7631b668aa4b8253daca72c6865c7728f80cc922354428b7c.lean/declarations/instance--378ceefc934cf5cf433f3e8e.md) | 343 | `declaration-track:378ceefc934cf5cf433f3e8ef140ce9a52f79741029c8e513cbfaa04dcf4317a` |
| 38 | `theorem` | [hom_ext](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Split/Variantc7591ac5912776e7631b668aa4b8253daca72c6865c7728f80cc922354428b7c.lean/declarations/hom-ext--a8432bc86d6453e68705103c.md) | 360 | `result-track:a8432bc86d6453e68705103c4d049fcc266e74eb2894a59d70bbfb0b3e2fb856` |
| 39 | `theorem` | [congr_F](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Split/Variantc7591ac5912776e7631b668aa4b8253daca72c6865c7728f80cc922354428b7c.lean/declarations/congr-f--60340579f785950392589aa0.md) | 363 | `result-track:60340579f785950392589aa0a85ce895b278de5ceae7517fe274a627e0909996` |
| 40 | `theorem` | [congr_f](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Split/Variantc7591ac5912776e7631b668aa4b8253daca72c6865c7728f80cc922354428b7c.lean/declarations/congr-f--c9bdef56cd465cfd25013dd7.md) | 365 | `result-track:c9bdef56cd465cfd25013dd70e67ff58a911f8644d658d626771e77804a2c931` |
| 41 | `theorem` | [id_F](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Split/Variantc7591ac5912776e7631b668aa4b8253daca72c6865c7728f80cc922354428b7c.lean/declarations/id-f--812e423731dd59d416c5ce15.md) | 369 | `result-track:812e423731dd59d416c5ce159ad332cc349e1c4913409bfbe034f2572d207804` |
| 42 | `theorem` | [id_f](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Split/Variantc7591ac5912776e7631b668aa4b8253daca72c6865c7728f80cc922354428b7c.lean/declarations/id-f--dc2980a5d643cbade9e07764.md) | 373 | `result-track:dc2980a5d643cbade9e077643dddef2a7523135781c2da94f294176ebceab2e1` |
| 43 | `theorem` | [comp_F](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Split/Variantc7591ac5912776e7631b668aa4b8253daca72c6865c7728f80cc922354428b7c.lean/declarations/comp-f--0e6fb303a08698560fd0f00b.md) | 377 | `result-track:0e6fb303a08698560fd0f00b1973e0c979ab482d6b76941358f38ee55730c9cb` |
| 44 | `theorem` | [comp_f](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Split/Variantc7591ac5912776e7631b668aa4b8253daca72c6865c7728f80cc922354428b7c.lean/declarations/comp-f--f34aad1066e4b7f9e30ca811.md) | 382 | `result-track:f34aad1066e4b7f9e30ca811ec6f38471b3c968ddfaf6492f2e7b0f024507d89` |
| 45 | `theorem` | [cofan_inj_naturality_symm](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Split/Variantc7591ac5912776e7631b668aa4b8253daca72c6865c7728f80cc922354428b7c.lean/declarations/cofan-inj-naturality-symm--b72d32acd4ee847bcd46bdeb.md) | 388 | `result-track:b72d32acd4ee847bcd46bdeb01a475f87665a387b029ee61fbe02ece4d1930ac` |
| 46 | `def` | [forget](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Split/Variantc7591ac5912776e7631b668aa4b8253daca72c6865c7728f80cc922354428b7c.lean/declarations/forget--1ef5d950f1312b361687a16d.md) | 398 | `declaration-track:1ef5d950f1312b361687a16d1cfe16a7274ab7075f38796b4036b4565f2c07fa` |
| 47 | `def` | [evalN](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Split/Variantc7591ac5912776e7631b668aa4b8253daca72c6865c7728f80cc922354428b7c.lean/declarations/evaln--d8251f4d499bdf6441c3cb68.md) | 405 | `declaration-track:d8251f4d499bdf6441c3cb6875c9118a272dc48bb8fc1d57a584509237cea07b` |
| 48 | `def` | [natTransCofanInj](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Split/Variantc7591ac5912776e7631b668aa4b8253daca72c6865c7728f80cc922354428b7c.lean/declarations/nattranscofaninj--47b37b44539eab5418290369.md) | 413 | `declaration-track:47b37b44539eab5418290369ccfe65df6e0d2fa5e6a1fd3fecf992ef0c3617dc` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
