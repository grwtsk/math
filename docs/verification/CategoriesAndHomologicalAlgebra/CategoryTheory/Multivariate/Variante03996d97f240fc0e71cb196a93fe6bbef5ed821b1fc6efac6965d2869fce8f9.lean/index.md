# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Multivariate.Variante03996d97f240fc0e71cb196a93fe6bbef5ed821b1fc6efac6965d2869fce8f9

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "fa2f478dfd3d066a67a30083a788a20274a58bc4",
  "lexical_observation_count": 21,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Multivariate/Variante03996d97f240fc0e71cb196a93fe6bbef5ed821b1fc6efac6965d2869fce8f9.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Multivariate/Variante03996d97f240fc0e71cb196a93fe6bbef5ed821b1fc6efac6965d2869fce8f9.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Multivariate/Variante03996d97f240fc0e71cb196a93fe6bbef5ed821b1fc6efac6965d2869fce8f9.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `fa2f478dfd3d066a67a30083a788a20274a58bc4`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Multivariate/Variante03996d97f240fc0e71cb196a93fe6bbef5ed821b1fc6efac6965d2869fce8f9.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Multivariate/Variante03996d97f240fc0e71cb196a93fe6bbef5ed821b1fc6efac6965d2869fce8f9.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Fin.Fin2` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Data.TypeVec` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Logic.Equiv.Defs` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `class` | [MvFunctor](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Multivariate/Variante03996d97f240fc0e71cb196a93fe6bbef5ed821b1fc6efac6965d2869fce8f9.lean/declarations/mvfunctor--68e7d89711c055e19fefa48d.md) | 36 | `declaration-track:68e7d89711c055e19fefa48d813a041f65d96710870166a1d01c91ea6a4620ec` |
| 2 | `def` | [LiftP](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Multivariate/Variante03996d97f240fc0e71cb196a93fe6bbef5ed821b1fc6efac6965d2869fce8f9.lean/declarations/liftp--42809738e014edc5a50ff2a3.md) | 50 | `declaration-track:42809738e014edc5a50ff2a314cf63bdc58812d59e2f2a76e89e33d91c9f6b07` |
| 3 | `def` | [LiftR](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Multivariate/Variante03996d97f240fc0e71cb196a93fe6bbef5ed821b1fc6efac6965d2869fce8f9.lean/declarations/liftr--0dbc803f2ed55baa67342b8e.md) | 54 | `declaration-track:0dbc803f2ed55baa67342b8e80124f2d7c34232d63c713acd0ed753cef249953` |
| 4 | `def` | [supp](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Multivariate/Variante03996d97f240fc0e71cb196a93fe6bbef5ed821b1fc6efac6965d2869fce8f9.lean/declarations/supp--d114e5e56f684227c94eecfc.md) | 61 | `declaration-track:d114e5e56f684227c94eecfc95b0a2a254e946dff5ce02a5f1c48fe17acfce70` |
| 5 | `theorem` | [of_mem_supp](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Multivariate/Variante03996d97f240fc0e71cb196a93fe6bbef5ed821b1fc6efac6965d2869fce8f9.lean/declarations/of-mem-supp--68c697e5ed587b99227ebd9d.md) | 64 | `result-track:68c697e5ed587b99227ebd9d801cac26cd00afe06aaa6d54e3cdb473cb013df4` |
| 6 | `class` | [LawfulMvFunctor](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Multivariate/Variante03996d97f240fc0e71cb196a93fe6bbef5ed821b1fc6efac6965d2869fce8f9.lean/declarations/lawfulmvfunctor--4f8861672efa23e5833c8f19.md) | 72 | `declaration-track:4f8861672efa23e5833c8f197b9c3600af7c4c3dbb9c5532e082b5807eec759f` |
| 7 | `def` | [LiftP'](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Multivariate/Variante03996d97f240fc0e71cb196a93fe6bbef5ed821b1fc6efac6965d2869fce8f9.lean/declarations/liftp--1a554664f9079f1f4372a5c6.md) | 92 | `declaration-track:1a554664f9079f1f4372a5c626fe730ceb07e2eb924dd8283683e6345cb313a1` |
| 8 | `def` | [LiftR'](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Multivariate/Variante03996d97f240fc0e71cb196a93fe6bbef5ed821b1fc6efac6965d2869fce8f9.lean/declarations/liftr--1ff84e30f0c5bc2dce69e3e6.md) | 97 | `declaration-track:1ff84e30f0c5bc2dce69e3e65a76302e6d9dffeb2e432f26d6a9d7cc6725bf71` |
| 9 | `theorem` | [id_map](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Multivariate/Variante03996d97f240fc0e71cb196a93fe6bbef5ed821b1fc6efac6965d2869fce8f9.lean/declarations/id-map--c1a6b1e35fd1b9aa90977825.md) | 103 | `result-track:c1a6b1e35fd1b9aa909778252c94de148e32a0deeefabd4413442af9071dfe64` |
| 10 | `theorem` | [id_map'](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Multivariate/Variante03996d97f240fc0e71cb196a93fe6bbef5ed821b1fc6efac6965d2869fce8f9.lean/declarations/id-map--ec0ead389b28f25204c0eb8d.md) | 107 | `result-track:ec0ead389b28f25204c0eb8d12f37b37a400b83513c7af2ef5cf19a3b527f618` |
| 11 | `theorem` | [map_map](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Multivariate/Variante03996d97f240fc0e71cb196a93fe6bbef5ed821b1fc6efac6965d2869fce8f9.lean/declarations/map-map--57448aafd640682c7c473d4d.md) | 110 | `result-track:57448aafd640682c7c473d4d0e62e9b96abf91cb5fd735b26062c4d4a301a3e6` |
| 12 | `theorem` | [exists_iff_exists_of_mono](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Multivariate/Variante03996d97f240fc0e71cb196a93fe6bbef5ed821b1fc6efac6965d2869fce8f9.lean/declarations/exists-iff-exists-of-mono--a7210c8cf451dd0bd4050b99.md) | 116 | `result-track:a7210c8cf451dd0bd4050b998b019a2be7b6713bfc3a562f572538a64c0425ff` |
| 13 | `theorem` | [LiftP_def](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Multivariate/Variante03996d97f240fc0e71cb196a93fe6bbef5ed821b1fc6efac6965d2869fce8f9.lean/declarations/liftp-def--93251224256c8cb4703cca72.md) | 128 | `result-track:93251224256c8cb4703cca72aa0b46b4a6229638605e6c401431c25b1c833a5e` |
| 14 | `theorem` | [LiftR_def](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Multivariate/Variante03996d97f240fc0e71cb196a93fe6bbef5ed821b1fc6efac6965d2869fce8f9.lean/declarations/liftr-def--100182be1bcf5470d82eb32e.md) | 131 | `result-track:100182be1bcf5470d82eb32e82baf143eebfac725ac54693f01c667d019d287b` |
| 15 | `def` | [f](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Multivariate/Variante03996d97f240fc0e71cb196a93fe6bbef5ed821b1fc6efac6965d2869fce8f9.lean/declarations/f--9e3e57a1bfe0f5fbfa04eb44.md) | 159 | `declaration-track:9e3e57a1bfe0f5fbfa04eb44b8aed1220b1d40bc73cb4ed6ad5914731e66530d` |
| 16 | `def` | [g](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Multivariate/Variante03996d97f240fc0e71cb196a93fe6bbef5ed821b1fc6efac6965d2869fce8f9.lean/declarations/g--def977b60ea21b3b9974d92c.md) | 167 | `declaration-track:def977b60ea21b3b9974d92c03bb6cc3f7afa05b3795235b46d33a81c93328ce` |
| 17 | `theorem` | [LiftP_PredLast_iff](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Multivariate/Variante03996d97f240fc0e71cb196a93fe6bbef5ed821b1fc6efac6965d2869fce8f9.lean/declarations/liftp-predlast-iff--bf3b2fd233780d423437c6f4.md) | 175 | `result-track:bf3b2fd233780d423437c6f46ee667808cfc48b756c990cd70a60c841d0d8c64` |
| 18 | `def` | [f'](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Multivariate/Variante03996d97f240fc0e71cb196a93fe6bbef5ed821b1fc6efac6965d2869fce8f9.lean/declarations/f--e76090b239154a4d70467160.md) | 192 | `declaration-track:e76090b239154a4d704671600850294176229ed3292501917e848e4d15c8c24c` |
| 19 | `def` | [g'](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Multivariate/Variante03996d97f240fc0e71cb196a93fe6bbef5ed821b1fc6efac6965d2869fce8f9.lean/declarations/g--fabee8cd04fe2cb9bffc54ea.md) | 201 | `declaration-track:fabee8cd04fe2cb9bffc54ea7f3ad408559d460ffcc7fbbc8ec3f1463338ccbc` |
| 20 | `theorem` | [LiftR_RelLast_iff](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Multivariate/Variante03996d97f240fc0e71cb196a93fe6bbef5ed821b1fc6efac6965d2869fce8f9.lean/declarations/liftr-rellast-iff--fa0fc49cf79ca08bf2e3bea9.md) | 210 | `result-track:fa0fc49cf79ca08bf2e3bea9ea4a300f2a28b7e6d48227b31ededa2617d3b777` |
| 21 | `def` | [ofEquiv](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Multivariate/Variante03996d97f240fc0e71cb196a93fe6bbef5ed821b1fc6efac6965d2869fce8f9.lean/declarations/ofequiv--658232ddf7f9208c2e06df99.md) | 229 | `declaration-track:658232ddf7f9208c2e06df999a847bdf55551509ff294e774e26bbb56d03e081` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
