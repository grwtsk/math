# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.SplitSimplicialObject.Variant908b3ede32a9da191be3f806b2e098e0a0f32278f473945ca2e05335c0a3ffd1

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "7b48a3bbd4146651afd89c4e99129153aa7dfaad",
  "lexical_observation_count": 15,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/SplitSimplicialObject/Variant908b3ede32a9da191be3f806b2e098e0a0f32278f473945ca2e05335c0a3ffd1.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/SplitSimplicialObject/Variant908b3ede32a9da191be3f806b2e098e0a0f32278f473945ca2e05335c0a3ffd1.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/SplitSimplicialObject/Variant908b3ede32a9da191be3f806b2e098e0a0f32278f473945ca2e05335c0a3ffd1.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `7b48a3bbd4146651afd89c4e99129153aa7dfaad`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/SplitSimplicialObject/Variant908b3ede32a9da191be3f806b2e098e0a0f32278f473945ca2e05335c0a3ffd1.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/SplitSimplicialObject/Variant908b3ede32a9da191be3f806b2e098e0a0f32278f473945ca2e05335c0a3ffd1.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.AlgebraicTopology.SplitSimplicialObject` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.AlgebraicTopology.DoldKan.Degeneracies` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.AlgebraicTopology.DoldKan.FunctorN` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [πSummand](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/SplitSimplicialObject/Variant908b3ede32a9da191be3f806b2e098e0a0f32278f473945ca2e05335c0a3ffd1.lean/declarations/summand--539b5c675281d7be8c8b0f3f.md) | 38 | `declaration-track:539b5c675281d7be8c8b0f3f33f3e0994c6f4e2b9f1c2f637e9c5693687a7b76` |
| 2 | `theorem` | [ι_πSummand_eq_id](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/SplitSimplicialObject/Variant908b3ede32a9da191be3f806b2e098e0a0f32278f473945ca2e05335c0a3ffd1.lean/declarations/summand-eq-id--a89c8639dedddc49ede9d9f4.md) | 47 | `result-track:a89c8639dedddc49ede9d9f432b01b60ed4e6e9123a376d7075464622332317d` |
| 3 | `theorem` | [ι_πSummand_eq_zero](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/SplitSimplicialObject/Variant908b3ede32a9da191be3f806b2e098e0a0f32278f473945ca2e05335c0a3ffd1.lean/declarations/summand-eq-zero--855f1ff25e9635b90745ca33.md) | 57 | `result-track:855f1ff25e9635b90745ca33adbeeb3e2b30fae38f2fe430f4019493dbd5c14b` |
| 4 | `theorem` | [decomposition_id](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/SplitSimplicialObject/Variant908b3ede32a9da191be3f806b2e098e0a0f32278f473945ca2e05335c0a3ffd1.lean/declarations/decomposition-id--951d9e94808bec2b93cd98fb.md) | 67 | `result-track:951d9e94808bec2b93cd98fbbcf365d0251feda651b328d7176b079d75133d71` |
| 5 | `theorem` | [σ_comp_πSummand_id_eq_zero](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/SplitSimplicialObject/Variant908b3ede32a9da191be3f806b2e098e0a0f32278f473945ca2e05335c0a3ffd1.lean/declarations/comp-summand-id-eq-zero--c2eeeef4961b2b9b94bfa279.md) | 78 | `result-track:c2eeeef4961b2b9b94bfa279828cfbcd327612f6347b4d5a9bf8630727de5a35` |
| 6 | `theorem` | [ιSummand_comp_PInfty_eq_zero](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/SplitSimplicialObject/Variant908b3ede32a9da191be3f806b2e098e0a0f32278f473945ca2e05335c0a3ffd1.lean/declarations/summand-comp-pinfty-eq-zero--176228b943810dd768ea8007.md) | 95 | `result-track:176228b943810dd768ea800751fe0a768459faf8997893803ada3ebe2a1a7685` |
| 7 | `theorem` | [comp_PInfty_eq_zero_iff](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/SplitSimplicialObject/Variant908b3ede32a9da191be3f806b2e098e0a0f32278f473945ca2e05335c0a3ffd1.lean/declarations/comp-pinfty-eq-zero-iff--91a06d2504c5e912461c4fc6.md) | 103 | `result-track:91a06d2504c5e912461c4fc60e88de2ec72d29b742e9ac8a51f32f2aeadf7f4c` |
| 8 | `theorem` | [PInfty_comp_πSummand_id](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/SplitSimplicialObject/Variant908b3ede32a9da191be3f806b2e098e0a0f32278f473945ca2e05335c0a3ffd1.lean/declarations/pinfty-comp-summand-id--8cfe64fe209557585ecb3b47.md) | 131 | `result-track:8cfe64fe209557585ecb3b479db437913f5997b1ac68c7bea2e9e01da7806f72` |
| 9 | `theorem` | [πSummand_comp_ιSummand_comp_PInfty_eq_PInfty](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/SplitSimplicialObject/Variant908b3ede32a9da191be3f806b2e098e0a0f32278f473945ca2e05335c0a3ffd1.lean/declarations/summand-comp-summand-comp-pinfty-eq-pinfty--80f11b5684b29b3cef36f8c6.md) | 141 | `result-track:80f11b5684b29b3cef36f8c6291c82a2b4f61cd1c45dc5ed724dc4c5b9c7cea5` |
| 10 | `def` | [d](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/SplitSimplicialObject/Variant908b3ede32a9da191be3f806b2e098e0a0f32278f473945ca2e05335c0a3ffd1.lean/declarations/d--be1ab75ae225d6acb9db0821.md) | 155 | `declaration-track:be1ab75ae225d6acb9db08211e4c902653d97a63c579881a2ade055375604c79` |
| 11 | `theorem` | [ιSummand_comp_d_comp_πSummand_eq_zero](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/SplitSimplicialObject/Variant908b3ede32a9da191be3f806b2e098e0a0f32278f473945ca2e05335c0a3ffd1.lean/declarations/summand-comp-d-comp-summand-eq-zero--593a67cdd63e205d6003f466.md) | 159 | `result-track:593a67cdd63e205d6003f466169dc591f4bad9e68ca8522883b1aad6ae0e751e` |
| 12 | `def` | [nondegComplex](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/SplitSimplicialObject/Variant908b3ede32a9da191be3f806b2e098e0a0f32278f473945ca2e05335c0a3ffd1.lean/declarations/nondegcomplex--0ee1fa5c7a56a4c03479f2e4.md) | 170 | `declaration-track:0ee1fa5c7a56a4c03479f2e4236d3bf24c9fa9cad50aeb1d7e5d811abdb4ea42` |
| 13 | `def` | [toKaroubiNondegComplexIsoN₁](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/SplitSimplicialObject/Variant908b3ede32a9da191be3f806b2e098e0a0f32278f473945ca2e05335c0a3ffd1.lean/declarations/tokaroubinondegcomplexison--c3f0fdbd31d1b35df2ac1c50.md) | 194 | `declaration-track:c3f0fdbd31d1b35df2ac1c50ea3b06a7b254d20fbc5d944e1a94630bd4ca8955` |
| 14 | `def` | [nondegComplexFunctor](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/SplitSimplicialObject/Variant908b3ede32a9da191be3f806b2e098e0a0f32278f473945ca2e05335c0a3ffd1.lean/declarations/nondegcomplexfunctor--508bb49f6c5be7387cfceb37.md) | 243 | `declaration-track:508bb49f6c5be7387cfceb37669050b34462b9d0faaddd4825bda5d95555704c` |
| 15 | `def` | [toKaroubiNondegComplexFunctorIsoN₁](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/SplitSimplicialObject/Variant908b3ede32a9da191be3f806b2e098e0a0f32278f473945ca2e05335c0a3ffd1.lean/declarations/tokaroubinondegcomplexfunctorison--488190c5c8aba55aae8be1e0.md) | 273 | `declaration-track:488190c5c8aba55aae8be1e00b9ac70255c2cb6099101521e122670a09beb2dd` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
