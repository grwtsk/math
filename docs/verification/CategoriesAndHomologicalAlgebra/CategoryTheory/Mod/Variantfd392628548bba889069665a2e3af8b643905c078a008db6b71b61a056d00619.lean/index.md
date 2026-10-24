# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Mod.Variantfd392628548bba889069665a2e3af8b643905c078a008db6b71b61a056d00619

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "655602b423c2813654821603e4c94a91ff5c2d21",
  "lexical_observation_count": 19,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Mod/Variantfd392628548bba889069665a2e3af8b643905c078a008db6b71b61a056d00619.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Mod/Variantfd392628548bba889069665a2e3af8b643905c078a008db6b71b61a056d00619.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Mod/Variantfd392628548bba889069665a2e3af8b643905c078a008db6b71b61a056d00619.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `655602b423c2813654821603e4c94a91ff5c2d21`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Mod/Variantfd392628548bba889069665a2e3af8b643905c078a008db6b71b61a056d00619.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Mod/Variantfd392628548bba889069665a2e3af8b643905c078a008db6b71b61a056d00619.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.Monoidal.Mon_` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [Mod_](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Mod/Variantfd392628548bba889069665a2e3af8b643905c078a008db6b71b61a056d00619.lean/declarations/mod--eaf95e41367da5cf42eb1ad6.md) | 28 | `declaration-track:eaf95e41367da5cf42eb1ad6e495b527c37ea091206c3053d5d83251dab04e3f` |
| 2 | `theorem` | [assoc_flip](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Mod/Variantfd392628548bba889069665a2e3af8b643905c078a008db6b71b61a056d00619.lean/declarations/assoc-flip--1d5f291576c160ea1181c185.md) | 42 | `result-track:1d5f291576c160ea1181c1857049eba415cf5a7ef72af7d144f10f6e9e6abbe4` |
| 3 | `structure` | [Hom](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Mod/Variantfd392628548bba889069665a2e3af8b643905c078a008db6b71b61a056d00619.lean/declarations/hom--186ec29174a1d9b1ce8cc3c1.md) | 47 | `declaration-track:186ec29174a1d9b1ce8cc3c165706b2a151df3e96c10f94f11976838c2272a92` |
| 4 | `def` | [id](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Mod/Variantfd392628548bba889069665a2e3af8b643905c078a008db6b71b61a056d00619.lean/declarations/id--967dfc0272bfab748bbf3006.md) | 56 | `declaration-track:967dfc0272bfab748bbf3006fbed35c0a516700fb10045b69f0847717784fff1` |
| 5 | `instance` | [homInhabited](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Mod/Variantfd392628548bba889069665a2e3af8b643905c078a008db6b71b61a056d00619.lean/declarations/hominhabited--530f9808d0e22303f788cf2b.md) | 58 | `declaration-track:530f9808d0e22303f788cf2b1ddd5100e3c2dfb085305c65f23c6be1dfb693af` |
| 6 | `def` | [comp](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Mod/Variantfd392628548bba889069665a2e3af8b643905c078a008db6b71b61a056d00619.lean/declarations/comp--fe2f6f2263e2838726e2a75a.md) | 63 | `declaration-track:fe2f6f2263e2838726e2a75a6aa8179873c2a78d6354b373ebd8a4727acd4304` |
| 7 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Mod/Variantfd392628548bba889069665a2e3af8b643905c078a008db6b71b61a056d00619.lean/declarations/instance--c8fa08c6d8964feff02dcf43.md) | 65 | `declaration-track:c8fa08c6d8964feff02dcf433dd2abdfe1f716311d1178869ca44db3363116e5` |
| 8 | `lemma` | [hom_ext](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Mod/Variantfd392628548bba889069665a2e3af8b643905c078a008db6b71b61a056d00619.lean/declarations/hom-ext--11aa4114998a88b3d882fc73.md) | 71 | `result-track:11aa4114998a88b3d882fc73beccc3d29dd8fb3275a4ea39545b1fb2a7273c13` |
| 9 | `theorem` | [id_hom'](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Mod/Variantfd392628548bba889069665a2e3af8b643905c078a008db6b71b61a056d00619.lean/declarations/id-hom--a19b7447c30e0226e898b09d.md) | 75 | `result-track:a19b7447c30e0226e898b09d152dc4513bb47c1c469f364ab6cce2b7d0a8690b` |
| 10 | `theorem` | [comp_hom'](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Mod/Variantfd392628548bba889069665a2e3af8b643905c078a008db6b71b61a056d00619.lean/declarations/comp-hom--4611b18af76b1d0efb1b27f9.md) | 79 | `result-track:4611b18af76b1d0efb1b27f9d4e0b82e7eaa81fe2df320ba42a5570873b7231f` |
| 11 | `def` | [regular](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Mod/Variantfd392628548bba889069665a2e3af8b643905c078a008db6b71b61a056d00619.lean/declarations/regular--0d1bd17b5db76c662034de11.md) | 87 | `declaration-track:0d1bd17b5db76c662034de1148b5329a5acadd27bb25b6e1e45d633c87bca6cb` |
| 12 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Mod/Variantfd392628548bba889069665a2e3af8b643905c078a008db6b71b61a056d00619.lean/declarations/instance--11ffb22fab7692cadc8200e8.md) | 91 | `declaration-track:11ffb22fab7692cadc8200e833332948d9f8b45f18092dd4b8cd1f3da99d1572` |
| 13 | `def` | [forget](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Mod/Variantfd392628548bba889069665a2e3af8b643905c078a008db6b71b61a056d00619.lean/declarations/forget--2d6819b77f609a4637222821.md) | 95 | `declaration-track:2d6819b77f609a463722282166ce1a8b5cc48ecf61b7d41217acbe1e14467ca7` |
| 14 | `def` | [comap](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Mod/Variantfd392628548bba889069665a2e3af8b643905c078a008db6b71b61a056d00619.lean/declarations/comap--e23c15dda1d6be1ad067d59b.md) | 110 | `declaration-track:e23c15dda1d6be1ad067d59b1e0d6e2e1e2ba958586bf9833d046e8d42be5d42` |
| 15 | `class` | [Mod_Class](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Mod/Variantfd392628548bba889069665a2e3af8b643905c078a008db6b71b61a056d00619.lean/declarations/mod-class--8a7aaa4f51272a82dc374aef.md) | 150 | `declaration-track:8a7aaa4f51272a82dc374aef97dd2ecee4e02fb11655c893e91cb7165a14d235` |
| 16 | `theorem` | [assoc_flip](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Mod/Variantfd392628548bba889069665a2e3af8b643905c078a008db6b71b61a056d00619.lean/declarations/assoc-flip--b91355a5950efba961d45152.md) | 167 | `result-track:b91355a5950efba961d451524fadb81cb9c5fe40f72c46f23d1638f66a223cf2` |
| 17 | `abbrev` | [regular](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Mod/Variantfd392628548bba889069665a2e3af8b643905c078a008db6b71b61a056d00619.lean/declarations/regular--c52572cb5fff7acaffa01c7a.md) | 172 | `declaration-track:c52572cb5fff7acaffa01c7aa3e38b6cb55ab49add0fd3a8ab0609b7780bf718` |
| 18 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Mod/Variantfd392628548bba889069665a2e3af8b643905c078a008db6b71b61a056d00619.lean/declarations/instance--819fc9c55ed96117408c5f79.md) | 174 | `declaration-track:819fc9c55ed96117408c5f79090adc5b15c298658db72d3cb553632fe3551328` |
| 19 | `def` | [Mod_.mk'](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Mod/Variantfd392628548bba889069665a2e3af8b643905c078a008db6b71b61a056d00619.lean/declarations/mod-mk--c157e69c9965fa6a93bb0cbf.md) | 184 | `declaration-track:c157e69c9965fa6a93bb0cbffa416c45cf125107f2435fbcf23a2b52a43f5d7b` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
