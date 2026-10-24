# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Connected.Variante73605bb7d320ed4a2c848ef0b021d498617693ec4b59b1aeab3c6179bc2cd8b

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "29d88f3e587bbbe9a625b733d56bd259b4e36718",
  "lexical_observation_count": 20,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Connected/Variante73605bb7d320ed4a2c848ef0b021d498617693ec4b59b1aeab3c6179bc2cd8b.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Connected/Variante73605bb7d320ed4a2c848ef0b021d498617693ec4b59b1aeab3c6179bc2cd8b.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Connected/Variante73605bb7d320ed4a2c848ef0b021d498617693ec4b59b1aeab3c6179bc2cd8b.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `29d88f3e587bbbe9a625b733d56bd259b4e36718`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Connected/Variante73605bb7d320ed4a2c848ef0b021d498617693ec4b59b1aeab3c6179bc2cd8b.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Connected/Variante73605bb7d320ed4a2c848ef0b021d498617693ec4b59b1aeab3c6179bc2cd8b.lean.json)

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
| 1 | `def` | [constCone](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Connected/Variante73605bb7d320ed4a2c848ef0b021d498617693ec4b59b1aeab3c6179bc2cd8b.lean/declarations/constcone--e9b9b76d5ea9e0aebc527015.md) | 52 | `declaration-track:e9b9b76d5ea9e0aebc5270156f4606e0bb86c63e23d735331e925e50d0e889ca` |
| 2 | `def` | [constCocone](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Connected/Variante73605bb7d320ed4a2c848ef0b021d498617693ec4b59b1aeab3c6179bc2cd8b.lean/declarations/constcocone--6ce4eeaba7d76497a92ed77c.md) | 58 | `declaration-track:6ce4eeaba7d76497a92ed77c18f73fd07b79ae6313be146c95c09e1fc3c139f9` |
| 3 | `def` | [isLimitConstCone](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Connected/Variante73605bb7d320ed4a2c848ef0b021d498617693ec4b59b1aeab3c6179bc2cd8b.lean/declarations/islimitconstcone--e1bed6030277c28bcb9d8e8f.md) | 68 | `declaration-track:e1bed6030277c28bcb9d8e8fafe3f6fb6febce5c8088917a1dd69431881192fd` |
| 4 | `def` | [isColimitConstCocone](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Connected/Variante73605bb7d320ed4a2c848ef0b021d498617693ec4b59b1aeab3c6179bc2cd8b.lean/declarations/iscolimitconstcocone--59f45171cea37e5d1745cfae.md) | 81 | `declaration-track:59f45171cea37e5d1745cfae9f54674b1d95d9cf7c110bf67d7ea5e53e7e3223` |
| 5 | `instance` | [hasLimit_const_of_isConnected](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Connected/Variante73605bb7d320ed4a2c848ef0b021d498617693ec4b59b1aeab3c6179bc2cd8b.lean/declarations/haslimit-const-of-isconnected--5840c626a8846ee2af20324d.md) | 90 | `declaration-track:5840c626a8846ee2af20324db5dc8a501e4783a25f310b3cb588ffc82e494d4a` |
| 6 | `instance` | [hasColimit_const_of_isConnected](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Connected/Variante73605bb7d320ed4a2c848ef0b021d498617693ec4b59b1aeab3c6179bc2cd8b.lean/declarations/hascolimit-const-of-isconnected--df98a7307bd3548d4b0813b0.md) | 93 | `declaration-track:df98a7307bd3548d4b0813b08c97064a083ad19ec10c1f64fe4ede8b5203e956` |
| 7 | `def` | [Cone.isLimitOfIsIsoLimMapπ](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Connected/Variante73605bb7d320ed4a2c848ef0b021d498617693ec4b59b1aeab3c6179bc2cd8b.lean/declarations/cone-islimitofisisolimmap--1353c433d5960881dd45d9b1.md) | 106 | `declaration-track:1353c433d5960881dd45d9b145d6659bb050b3d834e1bdc7e3649fcc1d911fbb` |
| 8 | `theorem` | [IsLimit.isIso_limMap_π](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Connected/Variante73605bb7d320ed4a2c848ef0b021d498617693ec4b59b1aeab3c6179bc2cd8b.lean/declarations/islimit-isiso-limmap--f5dcc1ee60115c5744f8c616.md) | 117 | `result-track:f5dcc1ee60115c5744f8c61688e1d84741bcb2dfc1b6e6cb9f66efd267ab031a` |
| 9 | `theorem` | [Cone.isLimit_iff_isIso_limMap_π](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Connected/Variante73605bb7d320ed4a2c848ef0b021d498617693ec4b59b1aeab3c6179bc2cd8b.lean/declarations/cone-islimit-iff-isiso-limmap--a1e89125cb4bb788c98bf552.md) | 128 | `result-track:a1e89125cb4bb788c98bf552edc1427b8eaa69df915ab45e5239a09598b252b6` |
| 10 | `def` | [Cocone.isColimitOfIsIsoColimMapι](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Connected/Variante73605bb7d320ed4a2c848ef0b021d498617693ec4b59b1aeab3c6179bc2cd8b.lean/declarations/cocone-iscolimitofisisocolimmap--f4728979265169212045f352.md) | 136 | `declaration-track:f4728979265169212045f352535f02031c6cd5cf328ef3fbd6fbde78fb07035f` |
| 11 | `theorem` | [IsColimit.isIso_colimMap_ι](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Connected/Variante73605bb7d320ed4a2c848ef0b021d498617693ec4b59b1aeab3c6179bc2cd8b.lean/declarations/iscolimit-isiso-colimmap--4973c92b31f5989cd00c1332.md) | 142 | `result-track:4973c92b31f5989cd00c1332480ded7ffae1da8e6cf319eab8c4429f0a7ac690` |
| 12 | `theorem` | [Cocone.isColimit_iff_isIso_colimMap_ι](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Connected/Variante73605bb7d320ed4a2c848ef0b021d498617693ec4b59b1aeab3c6179bc2cd8b.lean/declarations/cocone-iscolimit-iff-isiso-colimmap--53a1c48b7995ba9206be4c06.md) | 153 | `result-track:53a1c48b7995ba9206be4c06af7daf48ed4d9d917bfa3a3fb56304c765b22b65` |
| 13 | `instance` | [widePullbackShape_connected](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Connected/Variante73605bb7d320ed4a2c848ef0b021d498617693ec4b59b1aeab3c6179bc2cd8b.lean/declarations/widepullbackshape-connected--ef98d6b09bf4dae4defb7860.md) | 165 | `declaration-track:ef98d6b09bf4dae4defb78603b9ac799b1e686652ae2d99b0d9040d8fe55a43e` |
| 14 | `instance` | [widePushoutShape_connected](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Connected/Variante73605bb7d320ed4a2c848ef0b021d498617693ec4b59b1aeab3c6179bc2cd8b.lean/declarations/widepushoutshape-connected--fcf0ef0da33eee8b0a4531d7.md) | 172 | `declaration-track:fcf0ef0da33eee8b0a4531d7a67748b2da7d89eac7ad9b176f0b2c59a57b011c` |
| 15 | `instance` | [parallelPairInhabited](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Connected/Variante73605bb7d320ed4a2c848ef0b021d498617693ec4b59b1aeab3c6179bc2cd8b.lean/declarations/parallelpairinhabited--94306cd548b2cb5799cffced.md) | 179 | `declaration-track:94306cd548b2cb5799cffced39e236832b1d2e7c5b99fd060740cb7959f02969` |
| 16 | `instance` | [parallel_pair_connected](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Connected/Variante73605bb7d320ed4a2c848ef0b021d498617693ec4b59b1aeab3c6179bc2cd8b.lean/declarations/parallel-pair-connected--020ff0d586c288581b8a14ff.md) | 182 | `declaration-track:020ff0d586c288581b8a14ff9264147fcfd2ad44fa75b6eafdc04c85765e3ebf` |
| 17 | `def` | [γ₂](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Connected/Variante73605bb7d320ed4a2c848ef0b021d498617693ec4b59b1aeab3c6179bc2cd8b.lean/declarations/anonymous--db67b9ec996ccc8457583406.md) | 200 | `declaration-track:db67b9ec996ccc845758340687c8b27ea883c74577909fbd366808822b2ac746` |
| 18 | `def` | [γ₁](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Connected/Variante73605bb7d320ed4a2c848ef0b021d498617693ec4b59b1aeab3c6179bc2cd8b.lean/declarations/anonymous--66aaa861464c7d386df72d58.md) | 205 | `declaration-track:66aaa861464c7d386df72d58a9ba843d12dfeda12e9a55c7658a450ad1a8755a` |
| 19 | `def` | [forgetCone](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Connected/Variante73605bb7d320ed4a2c848ef0b021d498617693ec4b59b1aeab3c6179bc2cd8b.lean/declarations/forgetcone--d9ccd4004425ad24d0583b53.md) | 211 | `declaration-track:d9ccd4004425ad24d0583b539f86fef43595e1fe61c70ca0679c43ce4ca92ae3` |
| 20 | `lemma` | [prod_preservesConnectedLimits](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Connected/Variante73605bb7d320ed4a2c848ef0b021d498617693ec4b59b1aeab3c6179bc2cd8b.lean/declarations/prod-preservesconnectedlimits--320be6ca851440ac8c4547c0.md) | 225 | `result-track:320be6ca851440ac8c4547c0539b5e4387d6028f041feb04924b88396abc12b4` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
