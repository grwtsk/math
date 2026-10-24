# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.LeftDerived.Variantd33ca0e224e135fa2429250bffee9abcbb6f07e526eca3c0c9c0bd536171e165

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "13ab4b0cf0519f33e582ae116437a98143081d47",
  "lexical_observation_count": 33,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/LeftDerived/Variantd33ca0e224e135fa2429250bffee9abcbb6f07e526eca3c0c9c0bd536171e165.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/LeftDerived/Variantd33ca0e224e135fa2429250bffee9abcbb6f07e526eca3c0c9c0bd536171e165.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/LeftDerived/Variantd33ca0e224e135fa2429250bffee9abcbb6f07e526eca3c0c9c0bd536171e165.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `13ab4b0cf0519f33e582ae116437a98143081d47`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/LeftDerived/Variantd33ca0e224e135fa2429250bffee9abcbb6f07e526eca3c0c9c0bd536171e165.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/LeftDerived/Variantd33ca0e224e135fa2429250bffee9abcbb6f07e526eca3c0c9c0bd536171e165.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Homology.Additive` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Abelian.Projective.Resolution` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [Functor.leftDerivedToHomotopyCategory](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/LeftDerived/Variantd33ca0e224e135fa2429250bffee9abcbb6f07e526eca3c0c9c0bd536171e165.lean/declarations/functor-leftderivedtohomotopycategory--63a7519ca3a87ba6563b06ec.md) | 69 | `declaration-track:63a7519ca3a87ba6563b06eca919c2796fc242b5b1d81573d002e4a18a28f774` |
| 2 | `def` | [ProjectiveResolution.isoLeftDerivedToHomotopyCategoryObj](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/LeftDerived/Variantd33ca0e224e135fa2429250bffee9abcbb6f07e526eca3c0c9c0bd536171e165.lean/declarations/projectiveresolution-isoleftderivedtohomotopycategoryobj--b06ffcde76b206482090f3bc.md) | 76 | `declaration-track:b06ffcde76b206482090f3bc07d86fff25d0679a5131b1953499ae1a12b31350` |
| 3 | `lemma` | [ProjectiveResolution.isoLeftDerivedToHomotopyCategoryObj_inv_naturality](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/LeftDerived/Variantd33ca0e224e135fa2429250bffee9abcbb6f07e526eca3c0c9c0bd536171e165.lean/declarations/projectiveresolution-isoleftderivedtohomotopycategoryobj-inv-naturality--3db8f6a1ba29e9d3b44a885f.md) | 84 | `result-track:3db8f6a1ba29e9d3b44a885f3204a923018025f3891a5371518111bc3c15d09f` |
| 4 | `lemma` | [ProjectiveResolution.isoLeftDerivedToHomotopyCategoryObj_hom_naturality](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/LeftDerived/Variantd33ca0e224e135fa2429250bffee9abcbb6f07e526eca3c0c9c0bd536171e165.lean/declarations/projectiveresolution-isoleftderivedtohomotopycategoryobj-hom-naturality--4e2e663376a9f23eb28d91b0.md) | 97 | `result-track:4e2e663376a9f23eb28d91b0c89e2831dd2d600a65ebf2a3f446da84d85b6d01` |
| 5 | `def` | [Functor.leftDerived](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/LeftDerived/Variantd33ca0e224e135fa2429250bffee9abcbb6f07e526eca3c0c9c0bd536171e165.lean/declarations/functor-leftderived--7c347c92661a314dc688cab2.md) | 110 | `declaration-track:7c347c92661a314dc688cab2441c2849bd630f6775dd37115b6973ef43f37a58` |
| 6 | `def` | [ProjectiveResolution.isoLeftDerivedObj](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/LeftDerived/Variantd33ca0e224e135fa2429250bffee9abcbb6f07e526eca3c0c9c0bd536171e165.lean/declarations/projectiveresolution-isoleftderivedobj--f6639c600be1d0ea46e09f3d.md) | 114 | `declaration-track:f6639c600be1d0ea46e09f3d4497df178a5984eab393aab0877517f92bd45cf0` |
| 7 | `lemma` | [ProjectiveResolution.isoLeftDerivedObj_hom_naturality](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/LeftDerived/Variantd33ca0e224e135fa2429250bffee9abcbb6f07e526eca3c0c9c0bd536171e165.lean/declarations/projectiveresolution-isoleftderivedobj-hom-naturality--a9fd7c9883ee6f3b70b9cca4.md) | 124 | `result-track:a9fd7c9883ee6f3b70b9cca49124c313bfcfc90b4f33ee93aed092b6fdbb54ba` |
| 8 | `lemma` | [ProjectiveResolution.isoLeftDerivedObj_inv_naturality](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/LeftDerived/Variantd33ca0e224e135fa2429250bffee9abcbb6f07e526eca3c0c9c0bd536171e165.lean/declarations/projectiveresolution-isoleftderivedobj-inv-naturality--30163a779fe82a18b561fca6.md) | 139 | `result-track:30163a779fe82a18b561fca6b8b40872d75b12262df51ee1b36a7b88ac2108ca` |
| 9 | `lemma` | [Functor.isZero_leftDerived_obj_projective_succ](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/LeftDerived/Variantd33ca0e224e135fa2429250bffee9abcbb6f07e526eca3c0c9c0bd536171e165.lean/declarations/functor-iszero-leftderived-obj-projective-succ--6c4e20515a52ffe61dba2226.md) | 151 | `result-track:6c4e20515a52ffe61dba2226aacff216e383523b7a370a2d210f5da55aed0092` |
| 10 | `theorem` | [Functor.leftDerived_map_eq](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/LeftDerived/Variantd33ca0e224e135fa2429250bffee9abcbb6f07e526eca3c0c9c0bd536171e165.lean/declarations/functor-leftderived-map-eq--7697821cb9d587e1d7f4d4f0.md) | 161 | `result-track:7697821cb9d587e1d7f4d4f0ecb95a9aa7343f619165e85f68287211a8c8ed25` |
| 11 | `def` | [NatTrans.leftDerivedToHomotopyCategory](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/LeftDerived/Variantd33ca0e224e135fa2429250bffee9abcbb6f07e526eca3c0c9c0bd536171e165.lean/declarations/nattrans-leftderivedtohomotopycategory--bcdb204cdc7a5ba660c9eec8.md) | 177 | `declaration-track:bcdb204cdc7a5ba660c9eec81fd56ec379207fb185135734f765127dbcdae6de` |
| 12 | `lemma` | [ProjectiveResolution.leftDerivedToHomotopyCategory_app_eq](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/LeftDerived/Variantd33ca0e224e135fa2429250bffee9abcbb6f07e526eca3c0c9c0bd536171e165.lean/declarations/projectiveresolution-leftderivedtohomotopycategory-app-eq--01f8e6653b69a1ce5ab31d94.md) | 182 | `result-track:01f8e6653b69a1ce5ab31d94fd38e8164f9dac39db1cbd60ab40d74d5d24559f` |
| 13 | `lemma` | [NatTrans.leftDerivedToHomotopyCategory_id](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/LeftDerived/Variantd33ca0e224e135fa2429250bffee9abcbb6f07e526eca3c0c9c0bd536171e165.lean/declarations/nattrans-leftderivedtohomotopycategory-id--f44ef6b79b0f75b2f84bf423.md) | 202 | `result-track:f44ef6b79b0f75b2f84bf423f7e329a7385084301c8d1f84ec3f416b0c8c4698` |
| 14 | `lemma` | [NatTrans.leftDerivedToHomotopyCategory_comp](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/LeftDerived/Variantd33ca0e224e135fa2429250bffee9abcbb6f07e526eca3c0c9c0bd536171e165.lean/declarations/nattrans-leftderivedtohomotopycategory-comp--73a50be93c798ce8ab5365f3.md) | 206 | `result-track:73a50be93c798ce8ab5365f3a6ccc76d3596a36e665f75428f2370fdcb187436` |
| 15 | `def` | [NatTrans.leftDerived](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/LeftDerived/Variantd33ca0e224e135fa2429250bffee9abcbb6f07e526eca3c0c9c0bd536171e165.lean/declarations/nattrans-leftderived--c30447bbbefec1c85e9ab279.md) | 213 | `declaration-track:c30447bbbefec1c85e9ab279fd38d988b9d10162f11e8f1b99d42e7bb8d02914` |
| 16 | `theorem` | [NatTrans.leftDerived_id](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/LeftDerived/Variantd33ca0e224e135fa2429250bffee9abcbb6f07e526eca3c0c9c0bd536171e165.lean/declarations/nattrans-leftderived-id--818d2e824dd62828488747d8.md) | 219 | `result-track:818d2e824dd62828488747d8b3578b9302ce30484bc936f74b9fb5eab0cb722f` |
| 17 | `theorem` | [NatTrans.leftDerived_comp](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/LeftDerived/Variantd33ca0e224e135fa2429250bffee9abcbb6f07e526eca3c0c9c0bd536171e165.lean/declarations/nattrans-leftderived-comp--4d64ab20e01c932204d62850.md) | 226 | `result-track:4d64ab20e01c932204d628508552b7c8bf5411485104e82c36e5f05cec369d66` |
| 18 | `lemma` | [leftDerived_app_eq](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/LeftDerived/Variantd33ca0e224e135fa2429250bffee9abcbb6f07e526eca3c0c9c0bd536171e165.lean/declarations/leftderived-app-eq--2c89e217d161e2a2fb9db53c.md) | 235 | `result-track:2c89e217d161e2a2fb9db53c1fbdbf606f0aafe9b2b98ca357cc0132aa8653cf` |
| 19 | `def` | [fromLeftDerivedZero'](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/LeftDerived/Variantd33ca0e224e135fa2429250bffee9abcbb6f07e526eca3c0c9c0bd536171e165.lean/declarations/fromleftderivedzero--cf6f63d1fedd21c5b56b8dec.md) | 252 | `declaration-track:cf6f63d1fedd21c5b56b8dec7181738bff01a9f8e6f24b926eb167c549b223c2` |
| 20 | `lemma` | [pOpcycles_comp_fromLeftDerivedZero'](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/LeftDerived/Variantd33ca0e224e135fa2429250bffee9abcbb6f07e526eca3c0c9c0bd536171e165.lean/declarations/popcycles-comp-fromleftderivedzero--a5c70a53f8e9e2c334f62718.md) | 260 | `result-track:a5c70a53f8e9e2c334f62718f17af02b72699659c45d5cb43ba078c883a08f7a` |
| 21 | `lemma` | [fromLeftDerivedZero'_naturality](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/LeftDerived/Variantd33ca0e224e135fa2429250bffee9abcbb6f07e526eca3c0c9c0bd536171e165.lean/declarations/fromleftderivedzero-naturality--63a6b476a2404336c8b8cfde.md) | 266 | `result-track:63a6b476a2404336c8b8cfdef8fbffdd2e9aef753f90876fe4ecad675b7756d4` |
| 22 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/LeftDerived/Variantd33ca0e224e135fa2429250bffee9abcbb6f07e526eca3c0c9c0bd536171e165.lean/declarations/instance--5e9712c4ea5d54203d9eebc2.md) | 276 | `declaration-track:5e9712c4ea5d54203d9eebc2cc62bdc3b3a64023ee364b40141132c8aec158d5` |
| 23 | `def` | [Functor.fromLeftDerivedZero](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/LeftDerived/Variantd33ca0e224e135fa2429250bffee9abcbb6f07e526eca3c0c9c0bd536171e165.lean/declarations/functor-fromleftderivedzero--41e6d2b1add7b88b79a21c54.md) | 289 | `declaration-track:41e6d2b1add7b88b79a21c544244e079e9dadf5287b49febb914126eb93ddf41` |
| 24 | `lemma` | [ProjectiveResolution.fromLeftDerivedZero_eq](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/LeftDerived/Variantd33ca0e224e135fa2429250bffee9abcbb6f07e526eca3c0c9c0bd536171e165.lean/declarations/projectiveresolution-fromleftderivedzero-eq--3795951eddbb25b2d8c8a046.md) | 302 | `result-track:3795951eddbb25b2d8c8a046f83f292eb1dc44ebb1b5e488ad7a2546f9f0db01` |
| 25 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/LeftDerived/Variantd33ca0e224e135fa2429250bffee9abcbb6f07e526eca3c0c9c0bd536171e165.lean/declarations/instance--9bd5b47f3e0ff0eb3ca01788.md) | 321 | `declaration-track:9bd5b47f3e0ff0eb3ca0178806bc93756c9a208649fd37c2352225bb6adc9b8e` |
| 26 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/LeftDerived/Variantd33ca0e224e135fa2429250bffee9abcbb6f07e526eca3c0c9c0bd536171e165.lean/declarations/instance--0f02b3998fbb8f491a0a135e.md) | 330 | `declaration-track:0f02b3998fbb8f491a0a135e58b173dc6b652eaf2bfc9831146c2403fe070321` |
| 27 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/LeftDerived/Variantd33ca0e224e135fa2429250bffee9abcbb6f07e526eca3c0c9c0bd536171e165.lean/declarations/instance--17f3f67e1828be1db69cb079.md) | 336 | `declaration-track:17f3f67e1828be1db69cb07955d1a7fdeb013ae7d339d6f3227ed2bc118140e1` |
| 28 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/LeftDerived/Variantd33ca0e224e135fa2429250bffee9abcbb6f07e526eca3c0c9c0bd536171e165.lean/declarations/instance--27f0912b94d2225a8e4281a6.md) | 340 | `declaration-track:27f0912b94d2225a8e4281a6a725045c0fc562b7b39d3433842cb533c389b408` |
| 29 | `def` | [leftDerivedZeroIsoSelf](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/LeftDerived/Variantd33ca0e224e135fa2429250bffee9abcbb6f07e526eca3c0c9c0bd536171e165.lean/declarations/leftderivedzeroisoself--e4e424bdf90461c26c4b6dcf.md) | 348 | `declaration-track:e4e424bdf90461c26c4b6dcfea5adfcd34b9cfd0674adbc163432d4ed7ad59ca` |
| 30 | `lemma` | [leftDerivedZeroIsoSelf_hom_inv_id](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/LeftDerived/Variantd33ca0e224e135fa2429250bffee9abcbb6f07e526eca3c0c9c0bd536171e165.lean/declarations/leftderivedzeroisoself-hom-inv-id--e86451cb7b501926761cb418.md) | 352 | `result-track:e86451cb7b501926761cb4187644f708cf3d761b28f10a72b34280d07a3b62a4` |
| 31 | `lemma` | [leftDerivedZeroIsoSelf_inv_hom_id](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/LeftDerived/Variantd33ca0e224e135fa2429250bffee9abcbb6f07e526eca3c0c9c0bd536171e165.lean/declarations/leftderivedzeroisoself-inv-hom-id--1d90bee16ad03d2cf6c8d0b7.md) | 357 | `result-track:1d90bee16ad03d2cf6c8d0b79368d5c4251aa5504913df5466c3d3df130297a3` |
| 32 | `lemma` | [leftDerivedZeroIsoSelf_hom_inv_id_app](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/LeftDerived/Variantd33ca0e224e135fa2429250bffee9abcbb6f07e526eca3c0c9c0bd536171e165.lean/declarations/leftderivedzeroisoself-hom-inv-id-app--606dcea148685f05e17323d4.md) | 362 | `result-track:606dcea148685f05e17323d495add6a633e2e6b1d82171a3c1f70e09393673c0` |
| 33 | `lemma` | [leftDerivedZeroIsoSelf_inv_hom_id_app](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/LeftDerived/Variantd33ca0e224e135fa2429250bffee9abcbb6f07e526eca3c0c9c0bd536171e165.lean/declarations/leftderivedzeroisoself-inv-hom-id-app--de73a86a2e6f66a2bbc97ce3.md) | 367 | `result-track:de73a86a2e6f66a2bbc97ce36d6b741e8366b99954c3e361bb596470cf0de84d` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
