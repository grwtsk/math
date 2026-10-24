# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.GammaSpecAdjunction.Variant9c6e960196ae25401e9bbc34674d255fbd4ec9ca90fc3772507d908aa68acbfc

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "908077ae0972c2673a4aa99d92b073bf48a23785",
  "lexical_observation_count": 46,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/GammaSpecAdjunction/Variant9c6e960196ae25401e9bbc34674d255fbd4ec9ca90fc3772507d908aa68acbfc.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/GammaSpecAdjunction/Variant9c6e960196ae25401e9bbc34674d255fbd4ec9ca90fc3772507d908aa68acbfc.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/GammaSpecAdjunction/Variant9c6e960196ae25401e9bbc34674d255fbd4ec9ca90fc3772507d908aa68acbfc.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `908077ae0972c2673a4aa99d92b073bf48a23785`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/GammaSpecAdjunction/Variant9c6e960196ae25401e9bbc34674d255fbd4ec9ca90fc3772507d908aa68acbfc.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/GammaSpecAdjunction/Variant9c6e960196ae25401e9bbc34674d255fbd4ec9ca90fc3772507d908aa68acbfc.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.AlgebraicGeometry.Scheme` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Adjunction.Limits` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Adjunction.Reflective` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [ΓToStalk](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/GammaSpecAdjunction/Variant9c6e960196ae25401e9bbc34674d255fbd4ec9ca90fc3772507d908aa68acbfc.lean/declarations/tostalk--858d308325eafa0885928efd.md) | 66 | `declaration-track:858d308325eafa0885928efdfcc72bc94fdc23f1f880230ee3046cebc1caa00f` |
| 2 | `def` | [toΓSpecFun](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/GammaSpecAdjunction/Variant9c6e960196ae25401e9bbc34674d255fbd4ec9ca90fc3772507d908aa68acbfc.lean/declarations/to-specfun--6addf7a2fca1cc25be974e32.md) | 71 | `declaration-track:6addf7a2fca1cc25be974e326e5d56dfd9a4943768da0aded966debae3329c45` |
| 3 | `theorem` | [not_mem_prime_iff_unit_in_stalk](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/GammaSpecAdjunction/Variant9c6e960196ae25401e9bbc34674d255fbd4ec9ca90fc3772507d908aa68acbfc.lean/declarations/not-mem-prime-iff-unit-in-stalk--140990736f7b94f79fcc2d7e.md) | 75 | `result-track:140990736f7b94f79fcc2d7e70ef58ad547e81df3f3646f0d114012978eb39ad` |
| 4 | `theorem` | [toΓSpec_preim_basicOpen_eq](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/GammaSpecAdjunction/Variant9c6e960196ae25401e9bbc34674d255fbd4ec9ca90fc3772507d908aa68acbfc.lean/declarations/to-spec-preim-basicopen-eq--9f5eba7064413f0df7c50454.md) | 82 | `result-track:9f5eba7064413f0df7c5045490de43c627f2652703792319303a68c52f97dfe1` |
| 5 | `theorem` | [toΓSpec_continuous](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/GammaSpecAdjunction/Variant9c6e960196ae25401e9bbc34674d255fbd4ec9ca90fc3772507d908aa68acbfc.lean/declarations/to-spec-continuous--57fedb79c6be2e118a69439c.md) | 89 | `result-track:57fedb79c6be2e118a69439cc4e3b51438b26f5ed2db55f73af2ab02fc943722` |
| 6 | `def` | [toΓSpecBase](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/GammaSpecAdjunction/Variant9c6e960196ae25401e9bbc34674d255fbd4ec9ca90fc3772507d908aa68acbfc.lean/declarations/to-specbase--178ca1fe7b4a353c23de4486.md) | 99 | `declaration-track:178ca1fe7b4a353c23de4486f096967d98962826509ecbcdcbfc301dc4bcc49d` |
| 7 | `abbrev` | [toΓSpecMapBasicOpen](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/GammaSpecAdjunction/Variant9c6e960196ae25401e9bbc34674d255fbd4ec9ca90fc3772507d908aa68acbfc.lean/declarations/to-specmapbasicopen--d87714f0fde5c0f6645c513b.md) | 107 | `declaration-track:d87714f0fde5c0f6645c513b78986e15d156a1031058a6df8a5e82795761a3da` |
| 8 | `theorem` | [toΓSpecMapBasicOpen_eq](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/GammaSpecAdjunction/Variant9c6e960196ae25401e9bbc34674d255fbd4ec9ca90fc3772507d908aa68acbfc.lean/declarations/to-specmapbasicopen-eq--dd5f29ca624afd843cb12570.md) | 112 | `result-track:dd5f29ca624afd843cb12570db6f338b63f2d5ceabde7335e4a4ca0b9e732f22` |
| 9 | `abbrev` | [toToΓSpecMapBasicOpen](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/GammaSpecAdjunction/Variant9c6e960196ae25401e9bbc34674d255fbd4ec9ca90fc3772507d908aa68acbfc.lean/declarations/toto-specmapbasicopen--8b4aa721802466994f14d564.md) | 117 | `declaration-track:8b4aa721802466994f14d5646583cb5a47f2c6c14ba02ab459efc3d9d12df23a` |
| 10 | `theorem` | [isUnit_res_toΓSpecMapBasicOpen](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/GammaSpecAdjunction/Variant9c6e960196ae25401e9bbc34674d255fbd4ec9ca90fc3772507d908aa68acbfc.lean/declarations/isunit-res-to-specmapbasicopen--8e7348e24229c4c9be5593a9.md) | 123 | `result-track:8e7348e24229c4c9be5593a966cb5f06b9687edc9a6b6fb0431acc4eb37a4d17` |
| 11 | `def` | [toΓSpecCApp](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/GammaSpecAdjunction/Variant9c6e960196ae25401e9bbc34674d255fbd4ec9ca90fc3772507d908aa68acbfc.lean/declarations/to-speccapp--f3499472d8bcd337afd25d96.md) | 133 | `declaration-track:f3499472d8bcd337afd25d9699cd5d84a703752fd948fb5cd0dd885c5be9d345` |
| 12 | `theorem` | [toΓSpecCApp_iff](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/GammaSpecAdjunction/Variant9c6e960196ae25401e9bbc34674d255fbd4ec9ca90fc3772507d908aa68acbfc.lean/declarations/to-speccapp-iff--ed5308449ae968778cfdf9b6.md) | 141 | `result-track:ed5308449ae968778cfdf9b69dae4e102be81d88c4e11eef68193b3936d57cc6` |
| 13 | `theorem` | [toΓSpecCApp_spec](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/GammaSpecAdjunction/Variant9c6e960196ae25401e9bbc34674d255fbd4ec9ca90fc3772507d908aa68acbfc.lean/declarations/to-speccapp-spec--41038a999c17fbf5fb136efb.md) | 161 | `result-track:41038a999c17fbf5fb136efb1f397c15c42977dbc91ad73bf97da9ab4e0e2b9e` |
| 14 | `def` | [toΓSpecCBasicOpens](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/GammaSpecAdjunction/Variant9c6e960196ae25401e9bbc34674d255fbd4ec9ca90fc3772507d908aa68acbfc.lean/declarations/to-speccbasicopens--06b6b20d365034786f012376.md) | 167 | `declaration-track:06b6b20d365034786f0123764d065226cc9202bc77a00351b6ba00aea3f81331` |
| 15 | `def` | [toΓSpecSheafedSpace](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/GammaSpecAdjunction/Variant9c6e960196ae25401e9bbc34674d255fbd4ec9ca90fc3772507d908aa68acbfc.lean/declarations/to-specsheafedspace--2f6a28b95aace6a186425c83.md) | 182 | `declaration-track:2f6a28b95aace6a186425c83999840f361910c48c2ac7082dfc409981ebc77cb` |
| 16 | `theorem` | [toΓSpecSheafedSpace_app_eq](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/GammaSpecAdjunction/Variant9c6e960196ae25401e9bbc34674d255fbd4ec9ca90fc3772507d908aa68acbfc.lean/declarations/to-specsheafedspace-app-eq--6e814b71a8a9104b9dc18786.md) | 191 | `result-track:6e814b71a8a9104b9dc18786fe6c6b0067f8811b5f4ceccf9678d43c0447a8cf` |
| 17 | `theorem` | [toΓSpecSheafedSpace_app_spec](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/GammaSpecAdjunction/Variant9c6e960196ae25401e9bbc34674d255fbd4ec9ca90fc3772507d908aa68acbfc.lean/declarations/to-specsheafedspace-app-spec--5e99637d4d58bfdcc721dd70.md) | 205 | `result-track:5e99637d4d58bfdcc721dd707786c69e920bb3e6fedb13a52c634d7a760cbb41` |
| 18 | `theorem` | [toStalk_stalkMap_toΓSpec](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/GammaSpecAdjunction/Variant9c6e960196ae25401e9bbc34674d255fbd4ec9ca90fc3772507d908aa68acbfc.lean/declarations/tostalk-stalkmap-to-spec--2ba24258932b278a505a41d0.md) | 213 | `result-track:2ba24258932b278a505a41d02aa2305c882b084d2921a9b9a3bc321f218ef8e2` |
| 19 | `def` | [toΓSpec](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/GammaSpecAdjunction/Variant9c6e960196ae25401e9bbc34674d255fbd4ec9ca90fc3772507d908aa68acbfc.lean/declarations/to-spec--e4d42dd93ff9e7ea498d09b0.md) | 231 | `declaration-track:e4d42dd93ff9e7ea498d09b0c7f4da0c83f7ab3661790e51e731330dd8a7b39e` |
| 20 | `theorem` | [comp_ring_hom_ext](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/GammaSpecAdjunction/Variant9c6e960196ae25401e9bbc34674d255fbd4ec9ca90fc3772507d908aa68acbfc.lean/declarations/comp-ring-hom-ext--a11f2d8d7c92cf345685a4a1.md) | 258 | `result-track:a11f2d8d7c92cf345685a4a18ecde4f4e7427eb6b7fca3c0a0032975b0be49da` |
| 21 | `theorem` | [Γ_Spec_left_triangle](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/GammaSpecAdjunction/Variant9c6e960196ae25401e9bbc34674d255fbd4ec9ca90fc3772507d908aa68acbfc.lean/declarations/spec-left-triangle--c388db448906b036f23e4fe0.md) | 280 | `result-track:c388db448906b036f23e4fe0c43cfc9447957ab0d8b6e7fb3e7bba057015d673` |
| 22 | `def` | [identityToΓSpec](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/GammaSpecAdjunction/Variant9c6e960196ae25401e9bbc34674d255fbd4ec9ca90fc3772507d908aa68acbfc.lean/declarations/identityto-spec--34f533168b7aa8a022b8bcfc.md) | 292 | `declaration-track:34f533168b7aa8a022b8bcfc4acdc11fe43b8aefc06b0c3dbc7a93bdf9b4c4fe` |
| 23 | `theorem` | [left_triangle](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/GammaSpecAdjunction/Variant9c6e960196ae25401e9bbc34674d255fbd4ec9ca90fc3772507d908aa68acbfc.lean/declarations/left-triangle--233718cbf8dd2d94f07d4dc7.md) | 316 | `result-track:233718cbf8dd2d94f07d4dc727e2760f51cc2e2325bd38b568231fa67140e793` |
| 24 | `theorem` | [right_triangle](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/GammaSpecAdjunction/Variant9c6e960196ae25401e9bbc34674d255fbd4ec9ca90fc3772507d908aa68acbfc.lean/declarations/right-triangle--670adb08067f46d6cf4f037e.md) | 322 | `result-track:670adb08067f46d6cf4f037e67a7a2640112aac36c5162e65e9b8bdffdb7e002` |
| 25 | `def` | [locallyRingedSpaceAdjunction](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/GammaSpecAdjunction/Variant9c6e960196ae25401e9bbc34674d255fbd4ec9ca90fc3772507d908aa68acbfc.lean/declarations/locallyringedspaceadjunction--78769e36683546e2a6ea3b45.md) | 349 | `declaration-track:78769e36683546e2a6ea3b45b06133f65e65a11593daad31f31ce6441a2712a1` |
| 26 | `lemma` | [locallyRingedSpaceAdjunction_unit](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/GammaSpecAdjunction/Variant9c6e960196ae25401e9bbc34674d255fbd4ec9ca90fc3772507d908aa68acbfc.lean/declarations/locallyringedspaceadjunction-unit--a84b4a2eef42203022c2aebd.md) | 367 | `result-track:a84b4a2eef42203022c2aebdf87e1523f73bc3c3fc2e80dbc3186b2037f40664` |
| 27 | `lemma` | [locallyRingedSpaceAdjunction_counit](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/GammaSpecAdjunction/Variant9c6e960196ae25401e9bbc34674d255fbd4ec9ca90fc3772507d908aa68acbfc.lean/declarations/locallyringedspaceadjunction-counit--999e222fcc961ec2dde13f2b.md) | 371 | `result-track:999e222fcc961ec2dde13f2bb11d33669e7dda8c5072d4a5d599c4ded7df375c` |
| 28 | `def` | [adjunction](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/GammaSpecAdjunction/Variant9c6e960196ae25401e9bbc34674d255fbd4ec9ca90fc3772507d908aa68acbfc.lean/declarations/adjunction--0bff423af08ae78d98c4dbe1.md) | 379 | `declaration-track:0bff423af08ae78d98c4dbe1068fa216168f877ae9903b00495b93d74d5281f7` |
| 29 | `theorem` | [adjunction_homEquiv_apply](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/GammaSpecAdjunction/Variant9c6e960196ae25401e9bbc34674d255fbd4ec9ca90fc3772507d908aa68acbfc.lean/declarations/adjunction-homequiv-apply--c1aa056c744a08af9c58278b.md) | 385 | `result-track:c1aa056c744a08af9c58278bf7d2c96c12c91779d173a4c433e0ad53cd12cf90` |
| 30 | `theorem` | [adjunction_homEquiv](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/GammaSpecAdjunction/Variant9c6e960196ae25401e9bbc34674d255fbd4ec9ca90fc3772507d908aa68acbfc.lean/declarations/adjunction-homequiv--7d65548bc3f4041c5ae7cfea.md) | 393 | `result-track:7d65548bc3f4041c5ae7cfeacb622f6c3303ffe0ba877e04cd028bebe5ab5fcd` |
| 31 | `theorem` | [adjunction_homEquiv_symm_apply](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/GammaSpecAdjunction/Variant9c6e960196ae25401e9bbc34674d255fbd4ec9ca90fc3772507d908aa68acbfc.lean/declarations/adjunction-homequiv-symm-apply--6fbd906c38cee7da5430a040.md) | 398 | `result-track:6fbd906c38cee7da5430a0404f76a1316abba96356b4cb9e5dd5207ae8e307c2` |
| 32 | `theorem` | [adjunction_counit_app](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/GammaSpecAdjunction/Variant9c6e960196ae25401e9bbc34674d255fbd4ec9ca90fc3772507d908aa68acbfc.lean/declarations/adjunction-counit-app--afc62d8031a0beae9681e7d7.md) | 405 | `result-track:afc62d8031a0beae9681e7d7f67d7eff43997ca7ffab564b27c2a1d8d5f934b5` |
| 33 | `theorem` | [adjunction_unit_app](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/GammaSpecAdjunction/Variant9c6e960196ae25401e9bbc34674d255fbd4ec9ca90fc3772507d908aa68acbfc.lean/declarations/adjunction-unit-app--a11c3a8ed7cfd2fe31e36de5.md) | 413 | `result-track:a11c3a8ed7cfd2fe31e36de5dda917b5d519e7bd4af9735ff1930aba2572fc38` |
| 34 | `instance` | [isIso_locallyRingedSpaceAdjunction_counit](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/GammaSpecAdjunction/Variant9c6e960196ae25401e9bbc34674d255fbd4ec9ca90fc3772507d908aa68acbfc.lean/declarations/isiso-locallyringedspaceadjunction-counit--d66d45ded255d1c9abd800d1.md) | 421 | `declaration-track:d66d45ded255d1c9abd800d17544f3757dd859560d15b48585f1354d910df910` |
| 35 | `instance` | [isIso_adjunction_counit](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/GammaSpecAdjunction/Variant9c6e960196ae25401e9bbc34674d255fbd4ec9ca90fc3772507d908aa68acbfc.lean/declarations/isiso-adjunction-counit--3afa15f5700613284b2a66f9.md) | 427 | `declaration-track:3afa15f5700613284b2a66f9ce52d1ad8493a73de351f05eeda200eedb457eec` |
| 36 | `theorem` | [adjunction_unit_app_app_top](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/GammaSpecAdjunction/Variant9c6e960196ae25401e9bbc34674d255fbd4ec9ca90fc3772507d908aa68acbfc.lean/declarations/adjunction-unit-app-app-top--4e3ff599a4f0e7e2b13ae5b6.md) | 434 | `result-track:4e3ff599a4f0e7e2b13ae5b6b610822ee0e7492c9dd3227a2607cac5fea9d296` |
| 37 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/GammaSpecAdjunction/Variant9c6e960196ae25401e9bbc34674d255fbd4ec9ca90fc3772507d908aa68acbfc.lean/declarations/instance--0e50ea7cca7aad3d54362174.md) | 462 | `declaration-track:0e50ea7cca7aad3d5436217489e43a4477c51f70d00373109a94a3feb5cd159d` |
| 38 | `instance` | [Spec.preservesLimits](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/GammaSpecAdjunction/Variant9c6e960196ae25401e9bbc34674d255fbd4ec9ca90fc3772507d908aa68acbfc.lean/declarations/spec-preserveslimits--8107fd5971f62b1bdddaf906.md) | 465 | `declaration-track:8107fd5971f62b1bdddaf90693efe695be3cf2e5792f5c7e6c3de3ee386ec548` |
| 39 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/GammaSpecAdjunction/Variant9c6e960196ae25401e9bbc34674d255fbd4ec9ca90fc3772507d908aa68acbfc.lean/declarations/instance--98af8171d3cef36e9c374877.md) | 470 | `declaration-track:98af8171d3cef36e9c3748773fcd1b5e7e8c849dd1357e374243000c533632c3` |
| 40 | `instance` | [Spec.full](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/GammaSpecAdjunction/Variant9c6e960196ae25401e9bbc34674d255fbd4ec9ca90fc3772507d908aa68acbfc.lean/declarations/spec-full--91e754ccfc518e32a46e5550.md) | 473 | `declaration-track:91e754ccfc518e32a46e5550a6f64368cd72cf384e2e5264b6ee2362bc461785` |
| 41 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/GammaSpecAdjunction/Variant9c6e960196ae25401e9bbc34674d255fbd4ec9ca90fc3772507d908aa68acbfc.lean/declarations/instance--9ed815c5621a285108dbd17b.md) | 478 | `declaration-track:9ed815c5621a285108dbd17b4c712594637ca75f247b2195d1afcccbce52c697` |
| 42 | `instance` | [Spec.faithful](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/GammaSpecAdjunction/Variant9c6e960196ae25401e9bbc34674d255fbd4ec9ca90fc3772507d908aa68acbfc.lean/declarations/spec-faithful--0dc661b59e6cdda629a32aac.md) | 481 | `declaration-track:0dc661b59e6cdda629a32aaceecf94e189a38e15cdec33bc7d21612e9986879b` |
| 43 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/GammaSpecAdjunction/Variant9c6e960196ae25401e9bbc34674d255fbd4ec9ca90fc3772507d908aa68acbfc.lean/declarations/instance--4f8bd98cf3593def6ea203a6.md) | 485 | `declaration-track:4f8bd98cf3593def6ea203a6341fc500096ea5fe74e4831943cbf7c524b372e9` |
| 44 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/GammaSpecAdjunction/Variant9c6e960196ae25401e9bbc34674d255fbd4ec9ca90fc3772507d908aa68acbfc.lean/declarations/instance--e38ebbaade969b756319f25e.md) | 488 | `declaration-track:e38ebbaade969b756319f25e296be306721a1c52419041a5932398e9b95e3cf9` |
| 45 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/GammaSpecAdjunction/Variant9c6e960196ae25401e9bbc34674d255fbd4ec9ca90fc3772507d908aa68acbfc.lean/declarations/instance--0cb11dc22add31b84fbdf719.md) | 491 | `declaration-track:0cb11dc22add31b84fbdf719fe25315bf01e309c3cac69ae4fec6b69592b06ba` |
| 46 | `instance` | [Spec.reflective](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/GammaSpecAdjunction/Variant9c6e960196ae25401e9bbc34674d255fbd4ec9ca90fc3772507d908aa68acbfc.lean/declarations/spec-reflective--94159bb19af6ac8991b85fcd.md) | 494 | `declaration-track:94159bb19af6ac8991b85fcdd53fe231f756537a7dff954ab38a30709883ed7e` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
