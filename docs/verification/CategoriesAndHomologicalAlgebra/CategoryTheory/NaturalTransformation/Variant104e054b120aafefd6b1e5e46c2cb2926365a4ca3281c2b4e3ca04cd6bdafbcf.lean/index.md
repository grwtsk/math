# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.NaturalTransformation.Variant104e054b120aafefd6b1e5e46c2cb2926365a4ca3281c2b4e3ca04cd6bdafbcf

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "389ae66c48a5bec083534f3fc1b8899ec11df97d",
  "lexical_observation_count": 19,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/NaturalTransformation/Variant104e054b120aafefd6b1e5e46c2cb2926365a4ca3281c2b4e3ca04cd6bdafbcf.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/NaturalTransformation/Variant104e054b120aafefd6b1e5e46c2cb2926365a4ca3281c2b4e3ca04cd6bdafbcf.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/NaturalTransformation/Variant104e054b120aafefd6b1e5e46c2cb2926365a4ca3281c2b4e3ca04cd6bdafbcf.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `389ae66c48a5bec083534f3fc1b8899ec11df97d`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/NaturalTransformation/Variant104e054b120aafefd6b1e5e46c2cb2926365a4ca3281c2b4e3ca04cd6bdafbcf.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/NaturalTransformation/Variant104e054b120aafefd6b1e5e46c2cb2926365a4ca3281c2b4e3ca04cd6bdafbcf.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.Monoidal.Functor` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.FullSubcategory` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [MonoidalNatTrans](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/NaturalTransformation/Variant104e054b120aafefd6b1e5e46c2cb2926365a4ca3281c2b4e3ca04cd6bdafbcf.lean/declarations/monoidalnattrans--58668f4285ad8fc5ed2e4669.md) | 42 | `declaration-track:58668f4285ad8fc5ed2e4669431ea8d8153b614d058d29056d49fb911db630cb` |
| 2 | `def` | [id](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/NaturalTransformation/Variant104e054b120aafefd6b1e5e46c2cb2926365a4ca3281c2b4e3ca04cd6bdafbcf.lean/declarations/id--8fc4e145d9943d66ba9d8c51.md) | 66 | `declaration-track:8fc4e145d9943d66ba9d8c514cd84470f12de648df93f473e53fb43c1be062f2` |
| 3 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/NaturalTransformation/Variant104e054b120aafefd6b1e5e46c2cb2926365a4ca3281c2b4e3ca04cd6bdafbcf.lean/declarations/instance--6d143c1c4a36ade5e778710f.md) | 70 | `declaration-track:6d143c1c4a36ade5e778710fc68e889aaa8b053a12ff890566b209f3c354effc` |
| 4 | `def` | [vcomp](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/NaturalTransformation/Variant104e054b120aafefd6b1e5e46c2cb2926365a4ca3281c2b4e3ca04cd6bdafbcf.lean/declarations/vcomp--edf664f7e2915d214914e03e.md) | 75 | `declaration-track:edf664f7e2915d214914e03ef131083c881aff2895a2e8dbda53bb0bf83e64ea` |
| 5 | `instance` | [categoryLaxMonoidalFunctor](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/NaturalTransformation/Variant104e054b120aafefd6b1e5e46c2cb2926365a4ca3281c2b4e3ca04cd6bdafbcf.lean/declarations/categorylaxmonoidalfunctor--fdfbb22e10d3f547bbcc6e83.md) | 80 | `declaration-track:fdfbb22e10d3f547bbcc6e8392c4a1be7606cfe8a24daddb7dbb4b34758d806f` |
| 6 | `theorem` | [comp_toNatTrans_lax](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/NaturalTransformation/Variant104e054b120aafefd6b1e5e46c2cb2926365a4ca3281c2b4e3ca04cd6bdafbcf.lean/declarations/comp-tonattrans-lax--d62de7382e7bbd622f867977.md) | 87 | `result-track:d62de7382e7bbd622f8679777320b169d4125f2282b20276fecb8b982d273bcd` |
| 7 | `instance` | [categoryMonoidalFunctor](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/NaturalTransformation/Variant104e054b120aafefd6b1e5e46c2cb2926365a4ca3281c2b4e3ca04cd6bdafbcf.lean/declarations/categorymonoidalfunctor--f5e317da8dfa21ca11ef8bd6.md) | 92 | `declaration-track:f5e317da8dfa21ca11ef8bd6bccdfd646b99bd695abc38c5f5578c8ee40c54b8` |
| 8 | `lemma` | [ext'](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/NaturalTransformation/Variant104e054b120aafefd6b1e5e46c2cb2926365a4ca3281c2b4e3ca04cd6bdafbcf.lean/declarations/ext--bfd5498e43157639f8b53d2c.md) | 98 | `result-track:bfd5498e43157639f8b53d2c21f7a1c50778a988247d16a28bd240592cd7df15` |
| 9 | `theorem` | [comp_toNatTrans](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/NaturalTransformation/Variant104e054b120aafefd6b1e5e46c2cb2926365a4ca3281c2b4e3ca04cd6bdafbcf.lean/declarations/comp-tonattrans--4913544beec1911bd98c433b.md) | 102 | `result-track:4913544beec1911bd98c433b50b59ac4627fb0ef2c73ab2a65f4c7aad1f14cd4` |
| 10 | `def` | [hcomp](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/NaturalTransformation/Variant104e054b120aafefd6b1e5e46c2cb2926365a4ca3281c2b4e3ca04cd6bdafbcf.lean/declarations/hcomp--0e39e0ec8460d39d9e2e9c34.md) | 111 | `declaration-track:0e39e0ec8460d39d9e2e9c343cd35025207f2dbd3fc2fcf1e580d168a0bae39e` |
| 11 | `def` | [prod](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/NaturalTransformation/Variant104e054b120aafefd6b1e5e46c2cb2926365a4ca3281c2b4e3ca04cd6bdafbcf.lean/declarations/prod--44fd5563763a88a5e668a995.md) | 128 | `declaration-track:44fd5563763a88a5e668a995e88da00424a2995d056a0bc17d2584cae9c781eb` |
| 12 | `def` | [ofComponents](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/NaturalTransformation/Variant104e054b120aafefd6b1e5e46c2cb2926365a4ca3281c2b4e3ca04cd6bdafbcf.lean/declarations/ofcomponents--157bc894ad9337394e3abf07.md) | 143 | `declaration-track:157bc894ad9337394e3abf0718eff60273a4e7948725968dc5611ab1c41160b6` |
| 13 | `theorem` | [ofComponents.hom_app](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/NaturalTransformation/Variant104e054b120aafefd6b1e5e46c2cb2926365a4ca3281c2b4e3ca04cd6bdafbcf.lean/declarations/ofcomponents-hom-app--4e6f986f38e214555c2a4b40.md) | 162 | `result-track:4e6f986f38e214555c2a4b40d339f060bb4488c14d3a141334446dff1cd24ceb` |
| 14 | `theorem` | [ofComponents.inv_app](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/NaturalTransformation/Variant104e054b120aafefd6b1e5e46c2cb2926365a4ca3281c2b4e3ca04cd6bdafbcf.lean/declarations/ofcomponents-inv-app--c3f87563f74aa74cc7a33f62.md) | 168 | `result-track:c3f87563f74aa74cc7a33f627c48363d4f9f1a9c82dda45a4b0be7dbb38a6822` |
| 15 | `instance` | [isIso_of_isIso_app](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/NaturalTransformation/Variant104e054b120aafefd6b1e5e46c2cb2926365a4ca3281c2b4e3ca04cd6bdafbcf.lean/declarations/isiso-of-isiso-app--76cbb11ce0ba17eece7f4553.md) | 172 | `declaration-track:76cbb11ce0ba17eece7f4553d28c9dffc38603364530dd7a46d9a3749523da08` |
| 16 | `def` | [monoidalUnit](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/NaturalTransformation/Variant104e054b120aafefd6b1e5e46c2cb2926365a4ca3281c2b4e3ca04cd6bdafbcf.lean/declarations/monoidalunit--2eacd3436240f893ef945526.md) | 184 | `declaration-track:2eacd3436240f893ef9455261617fd784ffaf6581e63629cb605a8345af87ad1` |
| 17 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/NaturalTransformation/Variant104e054b120aafefd6b1e5e46c2cb2926365a4ca3281c2b4e3ca04cd6bdafbcf.lean/declarations/instance--8bc8290c6a5056e6759449ba.md) | 207 | `declaration-track:8bc8290c6a5056e6759449ba10f830f898308df040dcd68cb2b92a027a3c65e8` |
| 18 | `def` | [monoidalCounit](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/NaturalTransformation/Variant104e054b120aafefd6b1e5e46c2cb2926365a4ca3281c2b4e3ca04cd6bdafbcf.lean/declarations/monoidalcounit--94347816c9189e7f599559a2.md) | 214 | `declaration-track:94347816c9189e7f599559a2a4d212c22c344b36838d18ec622004ada81f21bf` |
| 19 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/NaturalTransformation/Variant104e054b120aafefd6b1e5e46c2cb2926365a4ca3281c2b4e3ca04cd6bdafbcf.lean/declarations/instance--4be76348bd6dec2ab25bbcdc.md) | 240 | `declaration-track:4be76348bd6dec2ab25bbcdc9a1e1123f88d248fa4a46bd45c35bfd76edece6b` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
