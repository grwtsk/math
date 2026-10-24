# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Sheafify.Variant081840adb6fdeebf4975090ef7644a69708616b4ae989ae0f5a3a1363163319b

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "060af8b81f87c9a911eff19cabd08a88feb3835c",
  "lexical_observation_count": 31,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Sheafify/Variant081840adb6fdeebf4975090ef7644a69708616b4ae989ae0f5a3a1363163319b.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Sheafify/Variant081840adb6fdeebf4975090ef7644a69708616b4ae989ae0f5a3a1363163319b.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Sheafify/Variant081840adb6fdeebf4975090ef7644a69708616b4ae989ae0f5a3a1363163319b.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `060af8b81f87c9a911eff19cabd08a88feb3835c`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Sheafify/Variant081840adb6fdeebf4975090ef7644a69708616b4ae989ae0f5a3a1363163319b.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Sheafify/Variant081840adb6fdeebf4975090ef7644a69708616b4ae989ae0f5a3a1363163319b.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Category.ModuleCat.Sheaf.ChangeOfRings` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Sites.LocallySurjective` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [smul](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Sheafify/Variant081840adb6fdeebf4975090ef7644a69708616b4ae989ae0f5a3a1363163319b.lean/declarations/smul--0a5cf907ff0a05e8b871894a.md) | 42 | `declaration-track:0a5cf907ff0a05e8b871894ae7daaa6fc05edd324b6cfd4c2ca8ebbcaf807a7c` |
| 2 | `lemma` | [_root_.PresheafOfModules.Sheafify.app_eq_of_isLocallyInjective](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Sheafify/Variant081840adb6fdeebf4975090ef7644a69708616b4ae989ae0f5a3a1363163319b.lean/declarations/root-presheafofmodules-sheafify-app-eq-of-islocallyinjective--c3bc226eb533eec999443294.md) | 56 | `result-track:c3bc226eb533eec99944329440aa6ab4130ba365a6d3ad344c571b124ebd07a0` |
| 3 | `lemma` | [isCompatible_map_smul_aux](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Sheafify/Variant081840adb6fdeebf4975090ef7644a69708616b4ae989ae0f5a3a1363163319b.lean/declarations/iscompatible-map-smul-aux--67da685ffa11e1cb0680ad73.md) | 72 | `result-track:67da685ffa11e1cb0680ad732ac0cbe9de2c33eb26ac1143fba3472ad3a4f920` |
| 4 | `lemma` | [isCompatible_map_smul](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Sheafify/Variant081840adb6fdeebf4975090ef7644a69708616b4ae989ae0f5a3a1363163319b.lean/declarations/iscompatible-map-smul--89a1da0307c00f1442ffc204.md) | 89 | `result-track:89a1da0307c00f1442ffc2044dbc64cbc9a2ae9daeafa531ab1bf0f450a97da7` |
| 5 | `structure` | [SMulCandidate](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Sheafify/Variant081840adb6fdeebf4975090ef7644a69708616b4ae989ae0f5a3a1363163319b.lean/declarations/smulcandidate--27ee59e7200196c88549f84a.md) | 142 | `declaration-track:27ee59e7200196c88549f84aacba4edc10687a6f20847bd0850d7549ff2590e3` |
| 6 | `def` | [SMulCandidate.mk'](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Sheafify/Variant081840adb6fdeebf4975090ef7644a69708616b4ae989ae0f5a3a1363163319b.lean/declarations/smulcandidate-mk--bf10bd8bef8f3d5e1e531677.md) | 149 | `declaration-track:bf10bd8bef8f3d5e1e531677c8c58567effdeeb690a298d5866ffb4c75906d56` |
| 7 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Sheafify/Variant081840adb6fdeebf4975090ef7644a69708616b4ae989ae0f5a3a1363163319b.lean/declarations/instance--b426737cbd1a40677448cff3.md) | 174 | `declaration-track:b426737cbd1a40677448cff35ae172b521eab0ed945d184644c7f099c05d38c5` |
| 8 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Sheafify/Variant081840adb6fdeebf4975090ef7644a69708616b4ae989ae0f5a3a1363163319b.lean/declarations/instance--cf536c9166397be2879b63a8.md) | 195 | `declaration-track:cf536c9166397be2879b63a8a68425962d973bd2ac96bae9c01f5cfc49dcbbd2` |
| 9 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Sheafify/Variant081840adb6fdeebf4975090ef7644a69708616b4ae989ae0f5a3a1363163319b.lean/declarations/instance--4dd171442dea1be99ea5eee2.md) | 207 | `declaration-track:4dd171442dea1be99ea5eee29ca6deea83a98d23e8482a4c23290f8f48e6672f` |
| 10 | `def` | [smulCandidate](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Sheafify/Variant081840adb6fdeebf4975090ef7644a69708616b4ae989ae0f5a3a1363163319b.lean/declarations/smulcandidate--a7c9128797f61c52effb126c.md) | 211 | `declaration-track:a7c9128797f61c52effb126c8be743461b0a664610ed906bef1c62f3482c963a` |
| 11 | `def` | [smul](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Sheafify/Variant081840adb6fdeebf4975090ef7644a69708616b4ae989ae0f5a3a1363163319b.lean/declarations/smul--e372fd1c067d54d7b4890adc.md) | 214 | `declaration-track:e372fd1c067d54d7b4890adc6a1e2ee85f832389feeb37d1d023499cbd40c27e` |
| 12 | `lemma` | [map_smul_eq](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Sheafify/Variant081840adb6fdeebf4975090ef7644a69708616b4ae989ae0f5a3a1363163319b.lean/declarations/map-smul-eq--97dae0d4e7b3c92e4f4c8acf.md) | 216 | `result-track:97dae0d4e7b3c92e4f4c8acff9e03098f48decd9cc951344e5cb60b021a5f66f` |
| 13 | `lemma` | [one_smul](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Sheafify/Variant081840adb6fdeebf4975090ef7644a69708616b4ae989ae0f5a3a1363163319b.lean/declarations/one-smul--581ff3d769b1ba8e046788de.md) | 221 | `result-track:581ff3d769b1ba8e046788debd72379dc765a67e6e01788faba7cc34aab96e15` |
| 14 | `lemma` | [zero_smul](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Sheafify/Variant081840adb6fdeebf4975090ef7644a69708616b4ae989ae0f5a3a1363163319b.lean/declarations/zero-smul--736ab5e2167640b843c7a884.md) | 226 | `result-track:736ab5e2167640b843c7a8849af63c648c70fdfa63a3c4caced38bb8e53d26f3` |
| 15 | `lemma` | [smul_zero](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Sheafify/Variant081840adb6fdeebf4975090ef7644a69708616b4ae989ae0f5a3a1363163319b.lean/declarations/smul-zero--a857f95f8dea59b9d720b020.md) | 232 | `result-track:a857f95f8dea59b9d720b02040e426d8ca085d926b8462d211b7aff85618238e` |
| 16 | `lemma` | [smul_add](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Sheafify/Variant081840adb6fdeebf4975090ef7644a69708616b4ae989ae0f5a3a1363163319b.lean/declarations/smul-add--8885976d60386a0e9e817075.md) | 238 | `result-track:8885976d60386a0e9e817075e8eab517d54a44c0bf055bb9354508157e648a4a` |
| 17 | `lemma` | [add_smul](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Sheafify/Variant081840adb6fdeebf4975090ef7644a69708616b4ae989ae0f5a3a1363163319b.lean/declarations/add-smul--dfe9f3bd14ffafde62e51ab2.md) | 252 | `result-track:dfe9f3bd14ffafde62e51ab2cae5d57ef1541b94416b22da06d0421fbdf49ea3` |
| 18 | `lemma` | [mul_smul](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Sheafify/Variant081840adb6fdeebf4975090ef7644a69708616b4ae989ae0f5a3a1363163319b.lean/declarations/mul-smul--4ded62c71a3e39d03d4180c5.md) | 265 | `result-track:4ded62c71a3e39d03d4180c504081b9e8efc4bf04750b9194a4bfb82b501dbc4` |
| 19 | `def` | [module](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Sheafify/Variant081840adb6fdeebf4975090ef7644a69708616b4ae989ae0f5a3a1363163319b.lean/declarations/module--3d1ccef5b1f35f4a75e71852.md) | 283 | `declaration-track:3d1ccef5b1f35f4a75e718522cc9babde6325459d49d6be7f4d1aabc66495562` |
| 20 | `lemma` | [map_smul](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Sheafify/Variant081840adb6fdeebf4975090ef7644a69708616b4ae989ae0f5a3a1363163319b.lean/declarations/map-smul--655801558d5f97ee39876964.md) | 292 | `result-track:655801558d5f97ee398769644ab35aa5defb28375af1ed053f132bb18cfa37fd` |
| 21 | `def` | [sheafify](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Sheafify/Variant081840adb6fdeebf4975090ef7644a69708616b4ae989ae0f5a3a1363163319b.lean/declarations/sheafify--72a0ccacf2f6699c628fdbcb.md) | 314 | `declaration-track:72a0ccacf2f6699c628fdbcba1a41b5da3ca4bb22f94fc05c6ff504d3ffaeaac` |
| 22 | `def` | [toSheafify](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Sheafify/Variant081840adb6fdeebf4975090ef7644a69708616b4ae989ae0f5a3a1363163319b.lean/declarations/tosheafify--5a70c0afe069c0199066dfc0.md) | 319 | `declaration-track:5a70c0afe069c0199066dfc03dbce9778e350df14b4b1df4972b8edb58406802` |
| 23 | `lemma` | [toSheafify_app_apply](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Sheafify/Variant081840adb6fdeebf4975090ef7644a69708616b4ae989ae0f5a3a1363163319b.lean/declarations/tosheafify-app-apply--c82a52371bbc1fd3de53dbba.md) | 324 | `result-track:c82a52371bbc1fd3de53dbbae1ac92ea8293eac017916ef0f82b5a639eb38c3f` |
| 24 | `lemma` | [toSheafify_app_apply'](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Sheafify/Variant081840adb6fdeebf4975090ef7644a69708616b4ae989ae0f5a3a1363163319b.lean/declarations/tosheafify-app-apply--8556572c06f9c57dba244f5a.md) | 329 | `result-track:8556572c06f9c57dba244f5a41149787a70943895253f7ae8ce20a205ad520ed` |
| 25 | `lemma` | [toPresheaf_map_toSheafify](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Sheafify/Variant081840adb6fdeebf4975090ef7644a69708616b4ae989ae0f5a3a1363163319b.lean/declarations/topresheaf-map-tosheafify--849cfeb28d4cdaa5c3c7ce65.md) | 334 | `result-track:849cfeb28d4cdaa5c3c7ce65e6b98df8c0d1a6c673b28f4dddcc6a8eef627e77` |
| 26 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Sheafify/Variant081840adb6fdeebf4975090ef7644a69708616b4ae989ae0f5a3a1363163319b.lean/declarations/instance--3652bdc24788f97650026c94.md) | 336 | `declaration-track:3652bdc24788f97650026c943c49adce490a90c286b89406f9179df8a7a54482` |
| 27 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Sheafify/Variant081840adb6fdeebf4975090ef7644a69708616b4ae989ae0f5a3a1363163319b.lean/declarations/instance--99d77bf0d01ada0f9a41624e.md) | 339 | `declaration-track:99d77bf0d01ada0f9a41624e9e28bc9b55ee34ca73519088c405e5bf2b82160d` |
| 28 | `def` | [sheafifyHomEquiv'](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Sheafify/Variant081840adb6fdeebf4975090ef7644a69708616b4ae989ae0f5a3a1363163319b.lean/declarations/sheafifyhomequiv--c025258fd18e1043b5dd37e5.md) | 347 | `declaration-track:c025258fd18e1043b5dd37e573924f02e1b92c08e5d588fea0920520086a70f2` |
| 29 | `lemma` | [comp_toPresheaf_map_sheafifyHomEquiv'_symm_hom](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Sheafify/Variant081840adb6fdeebf4975090ef7644a69708616b4ae989ae0f5a3a1363163319b.lean/declarations/comp-topresheaf-map-sheafifyhomequiv-symm-hom--c8efde93f35057242cbd7e63.md) | 354 | `result-track:c8efde93f35057242cbd7e63bdafdb98592da150f3bc08fb9cfe8de3dcf98ff5` |
| 30 | `def` | [sheafifyHomEquiv](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Sheafify/Variant081840adb6fdeebf4975090ef7644a69708616b4ae989ae0f5a3a1363163319b.lean/declarations/sheafifyhomequiv--59290c373ae257525e687ca2.md) | 363 | `declaration-track:59290c373ae257525e687ca29f2af6883e1adcd3568fc988bb1d93b5315796c1` |
| 31 | `def` | [sheafifyMap](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Sheafify/Variant081840adb6fdeebf4975090ef7644a69708616b4ae989ae0f5a3a1363163319b.lean/declarations/sheafifymap--b9f46467d5597bf914d9eace.md) | 380 | `declaration-track:b9f46467d5597bf914d9eacec790fe86f12f6f65932a18fe27048ea6f4a46245` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
