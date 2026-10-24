# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Preadditive.Variantc065c57ced0223c2361271c4219fb77b11a97a3008ac082d8d00e67754c0f696

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "aea605e2a1146eea8a2c0df0f87a6ba6feeb88db",
  "lexical_observation_count": 16,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Preadditive/Variantc065c57ced0223c2361271c4219fb77b11a97a3008ac082d8d00e67754c0f696.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Preadditive/Variantc065c57ced0223c2361271c4219fb77b11a97a3008ac082d8d00e67754c0f696.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Preadditive/Variantc065c57ced0223c2361271c4219fb77b11a97a3008ac082d8d00e67754c0f696.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `aea605e2a1146eea8a2c0df0f87a6ba6feeb88db`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Preadditive/Variantc065c57ced0223c2361271c4219fb77b11a97a3008ac082d8d00e67754c0f696.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Preadditive/Variantc065c57ced0223c2361271c4219fb77b11a97a3008ac082d8d00e67754c0f696.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Category.Grp.Basic` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Preadditive.Basic` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Preadditive/Variantc065c57ced0223c2361271c4219fb77b11a97a3008ac082d8d00e67754c0f696.lean/declarations/instance--bb5136bf79d720f87e71e8ba.md) | 23 | `declaration-track:bb5136bf79d720f87e71e8ba2e1bb78724b0931f1441da2f01dc179ab4bbb457` |
| 2 | `lemma` | [hom_add](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Preadditive/Variantc065c57ced0223c2361271c4219fb77b11a97a3008ac082d8d00e67754c0f696.lean/declarations/hom-add--701b9c181e40ed773885494d.md) | 26 | `result-track:701b9c181e40ed773885494d1f7ec3bdda8786df9e70c5b72dae0d618a4f9b40` |
| 3 | `lemma` | [hom_add_apply](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Preadditive/Variantc065c57ced0223c2361271c4219fb77b11a97a3008ac082d8d00e67754c0f696.lean/declarations/hom-add-apply--86d80e905beb9d76d195c829.md) | 28 | `result-track:86d80e905beb9d76d195c829520650aa6431126792055501c2a2a73f06ea1f2a` |
| 4 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Preadditive/Variantc065c57ced0223c2361271c4219fb77b11a97a3008ac082d8d00e67754c0f696.lean/declarations/instance--0f8ccf001780f8e8d91aecee.md) | 30 | `declaration-track:0f8ccf001780f8e8d91aeceec2564b0911c3a9daae5216f0f97cc59f765066c6` |
| 5 | `lemma` | [hom_zero](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Preadditive/Variantc065c57ced0223c2361271c4219fb77b11a97a3008ac082d8d00e67754c0f696.lean/declarations/hom-zero--14d4e0ea32f95a7f23151aba.md) | 33 | `result-track:14d4e0ea32f95a7f23151abacd1dd8d4231ce7bc67cf8e555a827874aaa77586` |
| 6 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Preadditive/Variantc065c57ced0223c2361271c4219fb77b11a97a3008ac082d8d00e67754c0f696.lean/declarations/instance--9343115bbbd3e183579d9e1c.md) | 35 | `declaration-track:9343115bbbd3e183579d9e1c3aaf800b2e346c4e69d74bebb43a4d0487f1caeb` |
| 7 | `lemma` | [hom_nsmul](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Preadditive/Variantc065c57ced0223c2361271c4219fb77b11a97a3008ac082d8d00e67754c0f696.lean/declarations/hom-nsmul--1f9925eceb23388ce875ad64.md) | 38 | `result-track:1f9925eceb23388ce875ad6421f923d9c2305742bc9be34c5ac0c1c92f09ca1e` |
| 8 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Preadditive/Variantc065c57ced0223c2361271c4219fb77b11a97a3008ac082d8d00e67754c0f696.lean/declarations/instance--75a8beb15ffa369b123fd5ee.md) | 40 | `declaration-track:75a8beb15ffa369b123fd5ee453fa7f240f3e37295212aae8174fc8a2399b09e` |
| 9 | `lemma` | [hom_neg](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Preadditive/Variantc065c57ced0223c2361271c4219fb77b11a97a3008ac082d8d00e67754c0f696.lean/declarations/hom-neg--71721a2ebc580a55f12d66ec.md) | 43 | `result-track:71721a2ebc580a55f12d66ec9d2da87dfcf9e293f6ddef5892036b6f8424a05f` |
| 10 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Preadditive/Variantc065c57ced0223c2361271c4219fb77b11a97a3008ac082d8d00e67754c0f696.lean/declarations/instance--9bdd9f3e22c8839f6e25fe9b.md) | 45 | `declaration-track:9bdd9f3e22c8839f6e25fe9b194e015da99f1e235eab77c3dcd5e42f71c83037` |
| 11 | `lemma` | [hom_sub](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Preadditive/Variantc065c57ced0223c2361271c4219fb77b11a97a3008ac082d8d00e67754c0f696.lean/declarations/hom-sub--255d5f7a9b3dfa9973dced56.md) | 48 | `result-track:255d5f7a9b3dfa9973dced566a491002af19112abb176fa0a69e7d4499f974e8` |
| 12 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Preadditive/Variantc065c57ced0223c2361271c4219fb77b11a97a3008ac082d8d00e67754c0f696.lean/declarations/instance--2d0fcbf7d2268b5fb20bc7e4.md) | 50 | `declaration-track:2d0fcbf7d2268b5fb20bc7e4b9bcae43d4712e31f1125d140ec94ef3c0cbc479` |
| 13 | `lemma` | [hom_zsmul](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Preadditive/Variantc065c57ced0223c2361271c4219fb77b11a97a3008ac082d8d00e67754c0f696.lean/declarations/hom-zsmul--267d0026b8d93ab4cb6908ff.md) | 53 | `result-track:267d0026b8d93ab4cb6908ffdb1382a44c0cc9adcb7e6bed0a7b5c10cd2b1aab` |
| 14 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Preadditive/Variantc065c57ced0223c2361271c4219fb77b11a97a3008ac082d8d00e67754c0f696.lean/declarations/instance--34a054db4f488824a72f928e.md) | 55 | `declaration-track:34a054db4f488824a72f928e0afef2ccf024422fe49195a2a7629d5a9d694c06` |
| 15 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Preadditive/Variantc065c57ced0223c2361271c4219fb77b11a97a3008ac082d8d00e67754c0f696.lean/declarations/instance--ccfbc0326865bba78a4d2edd.md) | 59 | `declaration-track:ccfbc0326865bba78a4d2edd0affcb31ea272095ae139872b6ae635b997befaa` |
| 16 | `def` | [homAddEquiv](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Preadditive/Variantc065c57ced0223c2361271c4219fb77b11a97a3008ac082d8d00e67754c0f696.lean/declarations/homaddequiv--26a4330126163e3f2c8da1e4.md) | 63 | `declaration-track:26a4330126163e3f2c8da1e474013363a790cdbb08beabf8068bde6848586a6a` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
