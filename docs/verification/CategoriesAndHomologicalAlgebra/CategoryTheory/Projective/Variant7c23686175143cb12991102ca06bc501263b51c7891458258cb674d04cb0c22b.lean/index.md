# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Projective.Variant7c23686175143cb12991102ca06bc501263b51c7891458258cb674d04cb0c22b

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "590ad87dde755ae335bda07388b0a88a5aa102c9",
  "lexical_observation_count": 9,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Projective/Variant7c23686175143cb12991102ca06bc501263b51c7891458258cb674d04cb0c22b.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Projective/Variant7c23686175143cb12991102ca06bc501263b51c7891458258cb674d04cb0c22b.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Projective/Variant7c23686175143cb12991102ca06bc501263b51c7891458258cb674d04cb0c22b.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `590ad87dde755ae335bda07388b0a88a5aa102c9`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Projective/Variant7c23686175143cb12991102ca06bc501263b51c7891458258cb674d04cb0c22b.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Projective/Variant7c23686175143cb12991102ca06bc501263b51c7891458258cb674d04cb0c22b.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Homology.QuasiIso` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Preadditive.ProjectiveResolution` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Preadditive.Yoneda.Limits` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Preadditive.Yoneda.Projective` — import line 14; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [exact_d_f](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Projective/Variant7c23686175143cb12991102ca06bc501263b51c7891458258cb674d04cb0c22b.lean/declarations/exact-d-f--715fdf846332bdbab363f9ea.md) | 43 | `result-track:715fdf846332bdbab363f9ea9852a17cef0ab0091685adf9cba2acfe3e0e25da` |
| 2 | `def` | [preservesFiniteColimitsPreadditiveCoyonedaObjOfProjective](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Projective/Variant7c23686175143cb12991102ca06bc501263b51c7891458258cb674d04cb0c22b.lean/declarations/preservesfinitecolimitspreadditivecoyonedaobjofprojective--1b1b1ace017b1389f0053526.md) | 49 | `declaration-track:1b1b1ace017b1389f0053526ae63de4d7caccc65915a3d684218b8d19169b8a2` |
| 3 | `theorem` | [projective_of_preservesFiniteColimits_preadditiveCoyonedaObj](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Projective/Variant7c23686175143cb12991102ca06bc501263b51c7891458258cb674d04cb0c22b.lean/declarations/projective-of-preservesfinitecolimits-preadditivecoyonedaobj--1f60cc92790d33001800a856.md) | 58 | `result-track:1f60cc92790d33001800a8561bede32d075e4749ff69403cdcf6f329a86d2b4c` |
| 4 | `def` | [ofComplex](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Projective/Variant7c23686175143cb12991102ca06bc501263b51c7891458258cb674d04cb0c22b.lean/declarations/ofcomplex--44dc7c4240c1b6fbe66a4721.md) | 84 | `declaration-track:44dc7c4240c1b6fbe66a4721095a60d1b06ee28d8e5dbfe16c4a6a2238044279` |
| 5 | `theorem` | [ofComplex_sq_10_comm](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Projective/Variant7c23686175143cb12991102ca06bc501263b51c7891458258cb674d04cb0c22b.lean/declarations/ofcomplex-sq-10-comm--22550ce018131599fe439718.md) | 120 | `result-track:22550ce018131599fe439718bb2e4819d512695c2b1cf08276c0e81bc781ca80` |
| 6 | `theorem` | [exact_ofComplex](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Projective/Variant7c23686175143cb12991102ca06bc501263b51c7891458258cb674d04cb0c22b.lean/declarations/exact-ofcomplex--9b9f22aab08d82d9b5ea56ee.md) | 130 | `result-track:9b9f22aab08d82d9b5ea56ee5eb62705ffe9fb68967098b7fb9a04277cf7741e` |
| 7 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Projective/Variant7c23686175143cb12991102ca06bc501263b51c7891458258cb674d04cb0c22b.lean/declarations/instance--b7c5ececab412a8ccb9eb8af.md) | 160 | `declaration-track:b7c5ececab412a8ccb9eb8af8fc46f330274c4eeb637dbfffdc752680ab0a371` |
| 8 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Projective/Variant7c23686175143cb12991102ca06bc501263b51c7891458258cb674d04cb0c22b.lean/declarations/instance--5bf1f099cf616f47d629f98f.md) | 162 | `declaration-track:5bf1f099cf616f47d629f98f922ec7b2b63c9cdd1b0620e9cc28b5c961d2daa5` |
| 9 | `def` | [toSingle₀ProjectiveResolution](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Projective/Variant7c23686175143cb12991102ca06bc501263b51c7891458258cb674d04cb0c22b.lean/declarations/tosingle-projectiveresolution--7ecc2a17097888b2743e3da5.md) | 174 | `declaration-track:7ecc2a17097888b2743e3da5739cee293179a0c8d6de134571926819dd78a0cc` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
