# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Additive.Variantfa80dde7abafcb97840bf93b7f06af7f6dfd3767735268874866031fbc6f7a34

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "160014be99f8035cd26283af20cc445ba772c4f3",
  "lexical_observation_count": 16,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Additive/Variantfa80dde7abafcb97840bf93b7f06af7f6dfd3767735268874866031fbc6f7a34.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Additive/Variantfa80dde7abafcb97840bf93b7f06af7f6dfd3767735268874866031fbc6f7a34.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Additive/Variantfa80dde7abafcb97840bf93b7f06af7f6dfd3767735268874866031fbc6f7a34.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `160014be99f8035cd26283af20cc445ba772c4f3`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Additive/Variantfa80dde7abafcb97840bf93b7f06af7f6dfd3767735268874866031fbc6f7a34.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Additive/Variantfa80dde7abafcb97840bf93b7f06af7f6dfd3767735268874866031fbc6f7a34.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.Preadditive.Yoneda.Basic` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `lemma` | [right_adjoint_additive](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Additive/Variantfa80dde7abafcb97840bf93b7f06af7f6dfd3767735268874866031fbc6f7a34.lean/declarations/right-adjoint-additive--8e225f04a5b2f54852c3caa6.md) | 41 | `result-track:8e225f04a5b2f54852c3caa616ad169488441d671609438d8d861a8e56222302` |
| 2 | `lemma` | [left_adjoint_additive](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Additive/Variantfa80dde7abafcb97840bf93b7f06af7f6dfd3767735268874866031fbc6f7a34.lean/declarations/left-adjoint-additive--919e6f3b59cb6bc6c04feca3.md) | 44 | `result-track:919e6f3b59cb6bc6c04feca3e69f28e58194ea101d1f1338e32c32d5641789e2` |
| 3 | `def` | [homAddEquiv](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Additive/Variantfa80dde7abafcb97840bf93b7f06af7f6dfd3767735268874866031fbc6f7a34.lean/declarations/homaddequiv--d74b6f4d1b2e42b61c2a76e2.md) | 54 | `declaration-track:d74b6f4d1b2e42b61c2a76e29e39aed1c5069bae3d5a461039e7410932dc3b01` |
| 4 | `lemma` | [homAddEquiv_apply](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Additive/Variantfa80dde7abafcb97840bf93b7f06af7f6dfd3767735268874866031fbc6f7a34.lean/declarations/homaddequiv-apply--ea39783d4b590f30bb195851.md) | 61 | `result-track:ea39783d4b590f30bb195851529761cd17a67ca747f26c79022b388dc0c2e44f` |
| 5 | `lemma` | [homAddEquiv_symm_apply](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Additive/Variantfa80dde7abafcb97840bf93b7f06af7f6dfd3767735268874866031fbc6f7a34.lean/declarations/homaddequiv-symm-apply--7d32c25c523f26e34bdfa463.md) | 65 | `result-track:7d32c25c523f26e34bdfa463b6096fb95cb82ccbd2a804782cf0442a179c96cf` |
| 6 | `lemma` | [homAddEquiv_zero](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Additive/Variantfa80dde7abafcb97840bf93b7f06af7f6dfd3767735268874866031fbc6f7a34.lean/declarations/homaddequiv-zero--8f485032ebd1fbc7686417ca.md) | 69 | `result-track:8f485032ebd1fbc7686417ca53ab234eb8bca060d9155b51a50c46365b29cbef` |
| 7 | `lemma` | [homAddEquiv_add](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Additive/Variantfa80dde7abafcb97840bf93b7f06af7f6dfd3767735268874866031fbc6f7a34.lean/declarations/homaddequiv-add--33ef64833f7dd2bca2bee454.md) | 72 | `result-track:33ef64833f7dd2bca2bee4542c6ee271eaa0ab2f106f41cccb9dc05fe2cb03e8` |
| 8 | `lemma` | [homAddEquiv_sub](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Additive/Variantfa80dde7abafcb97840bf93b7f06af7f6dfd3767735268874866031fbc6f7a34.lean/declarations/homaddequiv-sub--37081a855bc30380d556a7fe.md) | 77 | `result-track:37081a855bc30380d556a7fe7ff44b3a2f570d5b5726098776b5e3d7ff201cd1` |
| 9 | `lemma` | [homAddEquiv_neg](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Additive/Variantfa80dde7abafcb97840bf93b7f06af7f6dfd3767735268874866031fbc6f7a34.lean/declarations/homaddequiv-neg--511611643f6870179f6697c5.md) | 82 | `result-track:511611643f6870179f6697c55fe49680f7e79750663a741a2a5115eb946dae9f` |
| 10 | `lemma` | [homAddEquiv_symm_zero](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Additive/Variantfa80dde7abafcb97840bf93b7f06af7f6dfd3767735268874866031fbc6f7a34.lean/declarations/homaddequiv-symm-zero--9059ed3ed6dc4b44455ca261.md) | 86 | `result-track:9059ed3ed6dc4b44455ca2611deb76cce0e2468c951943405f8effc36a6999bb` |
| 11 | `lemma` | [homAddEquiv_symm_add](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Additive/Variantfa80dde7abafcb97840bf93b7f06af7f6dfd3767735268874866031fbc6f7a34.lean/declarations/homaddequiv-symm-add--0ac824df3b65725121eef791.md) | 90 | `result-track:0ac824df3b65725121eef791b9688c9b5b507ecb5df5f394dd3b87bda292de2c` |
| 12 | `lemma` | [homAddEquiv_symm_sub](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Additive/Variantfa80dde7abafcb97840bf93b7f06af7f6dfd3767735268874866031fbc6f7a34.lean/declarations/homaddequiv-symm-sub--53104933928e1dbdf6f83245.md) | 95 | `result-track:53104933928e1dbdf6f83245694aa487b3f66390461c2427c6376b4f858cfd77` |
| 13 | `lemma` | [homAddEquiv_symm_neg](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Additive/Variantfa80dde7abafcb97840bf93b7f06af7f6dfd3767735268874866031fbc6f7a34.lean/declarations/homaddequiv-symm-neg--2fa5d33b9ba0249364b37370.md) | 100 | `result-track:2fa5d33b9ba0249364b373702a05adf64f81b25ed49fb9f3b0134317aaaefe7a` |
| 14 | `def` | [compPreadditiveYonedaIso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Additive/Variantfa80dde7abafcb97840bf93b7f06af7f6dfd3767735268874866031fbc6f7a34.lean/declarations/comppreadditiveyonedaiso--5917a79555593b6fb1f1f299.md) | 112 | `declaration-track:5917a79555593b6fb1f1f299fd5b8539e7d4a3a8b42c90b9569f7af68f122e6e` |
| 15 | `lemma` | [compPreadditiveYonedaIso_hom_app_app_apply](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Additive/Variantfa80dde7abafcb97840bf93b7f06af7f6dfd3767735268874866031fbc6f7a34.lean/declarations/comppreadditiveyonedaiso-hom-app-app-apply--1b5e7692e4554fdc94ba4c99.md) | 127 | `result-track:1b5e7692e4554fdc94ba4c99e554fc922682a795ce9b54203f7c084c1930e227` |
| 16 | `lemma` | [compPreadditiveYonedaIso_inv_app_app_apply](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Additive/Variantfa80dde7abafcb97840bf93b7f06af7f6dfd3767735268874866031fbc6f7a34.lean/declarations/comppreadditiveyonedaiso-inv-app-app-apply--8534b6f3bcd5fc28f1cfe06a.md) | 132 | `result-track:8534b6f3bcd5fc28f1cfe06a69eb53cd0a63195bfbb3237b1c22057e50158ba5` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
