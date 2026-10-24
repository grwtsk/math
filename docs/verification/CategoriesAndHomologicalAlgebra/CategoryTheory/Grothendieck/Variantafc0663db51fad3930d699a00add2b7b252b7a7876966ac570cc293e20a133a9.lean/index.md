# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Grothendieck.Variantafc0663db51fad3930d699a00add2b7b252b7a7876966ac570cc293e20a133a9

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "06aac56f15140744f3cd3a5a1ba3c222d0dc5a05",
  "lexical_observation_count": 13,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Grothendieck/Variantafc0663db51fad3930d699a00add2b7b252b7a7876966ac570cc293e20a133a9.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Grothendieck/Variantafc0663db51fad3930d699a00add2b7b252b7a7876966ac570cc293e20a133a9.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Grothendieck/Variantafc0663db51fad3930d699a00add2b7b252b7a7876966ac570cc293e20a133a9.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `06aac56f15140744f3cd3a5a1ba3c222d0dc5a05`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Grothendieck/Variantafc0663db51fad3930d699a00add2b7b252b7a7876966ac570cc293e20a133a9.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Grothendieck/Variantafc0663db51fad3930d699a00add2b7b252b7a7876966ac570cc293e20a133a9.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.Category.Cat` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Elements` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [Grothendieck](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Grothendieck/Variantafc0663db51fad3930d699a00add2b7b252b7a7876966ac570cc293e20a133a9.lean/declarations/grothendieck--bda04b3c6aede4c776ea9a26.md) | 57 | `declaration-track:bda04b3c6aede4c776ea9a268758f04d73ffba70b322047946f7c60aeb2dfd7d` |
| 2 | `structure` | [Hom](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Grothendieck/Variantafc0663db51fad3930d699a00add2b7b252b7a7876966ac570cc293e20a133a9.lean/declarations/hom--cca2c02d7f1c7d78d9e9263a.md) | 71 | `declaration-track:cca2c02d7f1c7d78d9e9263afc837938667612bd9ce3bcd43f6aa43971c82226` |
| 3 | `theorem` | [ext](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Grothendieck/Variantafc0663db51fad3930d699a00add2b7b252b7a7876966ac570cc293e20a133a9.lean/declarations/ext--153a1dff2e68b6d7e9c8b704.md) | 79 | `result-track:153a1dff2e68b6d7e9c8b70497fddd1e21fa42cce4eeb2dd44dad3964d9b8083` |
| 4 | `def` | [id](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Grothendieck/Variantafc0663db51fad3930d699a00add2b7b252b7a7876966ac570cc293e20a133a9.lean/declarations/id--3aeefef69536c28b0f67ce09.md) | 90 | `declaration-track:3aeefef69536c28b0f67ce09d589f86315ef01f8c886034094d0b6e97cdd96fc` |
| 5 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Grothendieck/Variantafc0663db51fad3930d699a00add2b7b252b7a7876966ac570cc293e20a133a9.lean/declarations/instance--f3b35820b21c8c924198a0c4.md) | 95 | `declaration-track:f3b35820b21c8c924198a0c478337bb610b97914198f6a79c793e22144aa780c` |
| 6 | `def` | [comp](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Grothendieck/Variantafc0663db51fad3930d699a00add2b7b252b7a7876966ac570cc293e20a133a9.lean/declarations/comp--5edbf697f46e51e16fb88e87.md) | 101 | `declaration-track:5edbf697f46e51e16fb88e87d4d10975ba1c1aa0dc3ac851ecad3a5942e9a197` |
| 7 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Grothendieck/Variantafc0663db51fad3930d699a00add2b7b252b7a7876966ac570cc293e20a133a9.lean/declarations/instance--b75b05ea1b83b05fbe1982f3.md) | 109 | `declaration-track:b75b05ea1b83b05fbe1982f38ed1a45924a1412c87421a3500368e9067f01e0b` |
| 8 | `theorem` | [id_fiber'](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Grothendieck/Variantafc0663db51fad3930d699a00add2b7b252b7a7876966ac570cc293e20a133a9.lean/declarations/id-fiber--381c2c1bfa6ef2e18de92bde.md) | 128 | `result-track:381c2c1bfa6ef2e18de92bdefd43b722e8ef1f7a240870aa513fe56ef5b86280` |
| 9 | `theorem` | [congr](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Grothendieck/Variantafc0663db51fad3930d699a00add2b7b252b7a7876966ac570cc293e20a133a9.lean/declarations/congr--ae11a65400a8dda98eba2764.md) | 133 | `result-track:ae11a65400a8dda98eba276489b6c2dfb4e65b33364839f7ad11028f7d2239e4` |
| 10 | `def` | [forget](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Grothendieck/Variantafc0663db51fad3930d699a00add2b7b252b7a7876966ac570cc293e20a133a9.lean/declarations/forget--e18646c10206cfcb3d74e005.md) | 146 | `declaration-track:e18646c10206cfcb3d74e005d4a9a8915e07973f575a42099f4f22b39f1f0697` |
| 11 | `def` | [grothendieckTypeToCatFunctor](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Grothendieck/Variantafc0663db51fad3930d699a00add2b7b252b7a7876966ac570cc293e20a133a9.lean/declarations/grothendiecktypetocatfunctor--0ed241e10f6469348f9c0def.md) | 159 | `declaration-track:0ed241e10f6469348f9c0def829c83d34ccdb4797aafff4dcc7b7255ad95b838` |
| 12 | `def` | [grothendieckTypeToCatInverse](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Grothendieck/Variantafc0663db51fad3930d699a00add2b7b252b7a7876966ac570cc293e20a133a9.lean/declarations/grothendiecktypetocatinverse--bfac05bd50b4834e0c49e441.md) | 171 | `declaration-track:bfac05bd50b4834e0c49e44109e190636839975fdac24f4b5cf4f581a9db8120` |
| 13 | `def` | [grothendieckTypeToCat](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Grothendieck/Variantafc0663db51fad3930d699a00add2b7b252b7a7876966ac570cc293e20a133a9.lean/declarations/grothendiecktypetocat--17c71d52acc664f280a96ab6.md) | 187 | `declaration-track:17c71d52acc664f280a96ab6dbc1226a92e0c900ab5c29be840e6d1e91744803` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
