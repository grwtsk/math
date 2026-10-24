# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Sheafification.Variantf0f479b1dbce93e3c8d8030f860c1d40b3db24c021d6bf9d1d1c536659edc366

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "e05b9740654162b1a8f5c4c2317bc3f04b9f9fcf",
  "lexical_observation_count": 16,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Sheafification/Variantf0f479b1dbce93e3c8d8030f860c1d40b3db24c021d6bf9d1d1c536659edc366.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Sheafification/Variantf0f479b1dbce93e3c8d8030f860c1d40b3db24c021d6bf9d1d1c536659edc366.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Sheafification/Variantf0f479b1dbce93e3c8d8030f860c1d40b3db24c021d6bf9d1d1c536659edc366.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `e05b9740654162b1a8f5c4c2317bc3f04b9f9fcf`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Sheafification/Variantf0f479b1dbce93e3c8d8030f860c1d40b3db24c021d6bf9d1d1c536659edc366.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Sheafification/Variantf0f479b1dbce93e3c8d8030f860c1d40b3db24c021d6bf9d1d1c536659edc366.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Category.ModuleCat.Presheaf.Abelian` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Category.ModuleCat.Presheaf.Sheafify` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Category.ModuleCat.Presheaf.Limits` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Category.ModuleCat.Sheaf.Limits` — import line 14; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Sites.LocallyBijective` — import line 15; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Sites.Sheafification` — import line 16; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Functor.ReflectsIso.Balanced` — import line 17; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [sheafification](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Sheafification/Variantf0f479b1dbce93e3c8d8030f860c1d40b3db24c021d6bf9d1d1c536659edc366.lean/declarations/sheafification--e82bf0fd67eddfcd00a5ac2c.md) | 53 | `declaration-track:e82bf0fd67eddfcd00a5ac2ca0a0ad096be10254606c788887773ff201afdb19` |
| 2 | `def` | [sheafificationCompToSheaf](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Sheafification/Variantf0f479b1dbce93e3c8d8030f860c1d40b3db24c021d6bf9d1d1c536659edc366.lean/declarations/sheafificationcomptosheaf--490dacd4ebaf21dad1e82efb.md) | 71 | `declaration-track:490dacd4ebaf21dad1e82efb08dc55c35fe6bf3f74c40d6d48afb903f1fd77d8` |
| 3 | `def` | [sheafificationCompForgetCompToPresheaf](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Sheafification/Variantf0f479b1dbce93e3c8d8030f860c1d40b3db24c021d6bf9d1d1c536659edc366.lean/declarations/sheafificationcompforgetcomptopresheaf--42737efdbb6f6861495e74ab.md) | 78 | `declaration-track:42737efdbb6f6861495e74aba5ea4daeb084896b2ff4e9633f172a453ff522c6` |
| 4 | `def` | [sheafificationHomEquiv](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Sheafification/Variantf0f479b1dbce93e3c8d8030f860c1d40b3db24c021d6bf9d1d1c536659edc366.lean/declarations/sheafificationhomequiv--e93b4db6fd0c19381497ad57.md) | 85 | `declaration-track:e93b4db6fd0c19381497ad578dcbe0c90a23659c0b2bb4f02b0f8181f3216ca1` |
| 5 | `lemma` | [toPresheaf_map_sheafificationHomEquiv_def](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Sheafification/Variantf0f479b1dbce93e3c8d8030f860c1d40b3db24c021d6bf9d1d1c536659edc366.lean/declarations/topresheaf-map-sheafificationhomequiv-def--325592d132ff0566a49abfe4.md) | 91 | `result-track:325592d132ff0566a49abfe4b07a3e51ad217f56c67602c7b27558a6723c2c94` |
| 6 | `lemma` | [toPresheaf_map_sheafificationHomEquiv](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Sheafification/Variantf0f479b1dbce93e3c8d8030f860c1d40b3db24c021d6bf9d1d1c536659edc366.lean/declarations/topresheaf-map-sheafificationhomequiv--8830a599de5fee43c68b6481.md) | 97 | `result-track:8830a599de5fee43c68b648189c1a88f5d19d06ba1e900649c2979e77969c731` |
| 7 | `lemma` | [toSheaf_map_sheafificationHomEquiv_symm](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Sheafification/Variantf0f479b1dbce93e3c8d8030f860c1d40b3db24c021d6bf9d1d1c536659edc366.lean/declarations/tosheaf-map-sheafificationhomequiv-symm--57bcc889cc14d261ad8038aa.md) | 106 | `result-track:57bcc889cc14d261ad8038aa4d61d21fe62c10b39c5220d646404a7d5a30bbdb` |
| 8 | `def` | [sheafificationAdjunction](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Sheafification/Variantf0f479b1dbce93e3c8d8030f860c1d40b3db24c021d6bf9d1d1c536659edc366.lean/declarations/sheafificationadjunction--d1e804dd33857ea894c20560.md) | 120 | `declaration-track:d1e804dd33857ea894c20560803fe1d961cd09d159f2511074f70f53f9de39ef` |
| 9 | `lemma` | [sheafificationAdjunction_homEquiv_apply](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Sheafification/Variantf0f479b1dbce93e3c8d8030f860c1d40b3db24c021d6bf9d1d1c536659edc366.lean/declarations/sheafificationadjunction-homequiv-apply--e7580ee772493e3c2c2bbf5d.md) | 136 | `result-track:e7580ee772493e3c2c2bbf5d36b7e7e4938fb980c2d764e123178bda577b10de` |
| 10 | `lemma` | [toPresheaf_map_sheafificationAdjunction_unit_app](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Sheafification/Variantf0f479b1dbce93e3c8d8030f860c1d40b3db24c021d6bf9d1d1c536659edc366.lean/declarations/topresheaf-map-sheafificationadjunction-unit-app--78acfdd306e84ded1ffbbfaa.md) | 141 | `result-track:78acfdd306e84ded1ffbbfaa57250350ff3342013bbfb4107cf05911b24a4c7d` |
| 11 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Sheafification/Variantf0f479b1dbce93e3c8d8030f860c1d40b3db24c021d6bf9d1d1c536659edc366.lean/declarations/instance--b3eed8536b1c8f0164a15700.md) | 145 | `declaration-track:b3eed8536b1c8f0164a157006157e89460f95c43d9e392db4a341b34376a227a` |
| 12 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Sheafification/Variantf0f479b1dbce93e3c8d8030f860c1d40b3db24c021d6bf9d1d1c536659edc366.lean/declarations/instance--43185961e8f4858f766f827e.md) | 154 | `declaration-track:43185961e8f4858f766f827ebe043ecfb7e7431d76d73e803e0ac1d1c3456ca5` |
| 13 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Sheafification/Variantf0f479b1dbce93e3c8d8030f860c1d40b3db24c021d6bf9d1d1c536659edc366.lean/declarations/instance--3a7c0d701552eb1ee687c1c0.md) | 158 | `declaration-track:3a7c0d701552eb1ee687c1c0548106238e3dd550a60cf982e93d868d5ecd92e8` |
| 14 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Sheafification/Variantf0f479b1dbce93e3c8d8030f860c1d40b3db24c021d6bf9d1d1c536659edc366.lean/declarations/instance--311bfef8197caa7ab31d78e6.md) | 161 | `declaration-track:311bfef8197caa7ab31d78e638cdf0bd6e9335642e9649473fdf9586ad69afb1` |
| 15 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Sheafification/Variantf0f479b1dbce93e3c8d8030f860c1d40b3db24c021d6bf9d1d1c536659edc366.lean/declarations/instance--664cea03b57fbdc40f8fc21f.md) | 164 | `declaration-track:664cea03b57fbdc40f8fc21f632a976470f524f4145d4ae8a0a797e2b5472c4b` |
| 16 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Sheafification/Variantf0f479b1dbce93e3c8d8030f860c1d40b3db24c021d6bf9d1d1c536659edc366.lean/declarations/instance--42a1bb5894a71019963d072f.md) | 167 | `declaration-track:42a1bb5894a71019963d072f5fe2c97a5d73c6abfc2945cb0707adefeaa75962` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
