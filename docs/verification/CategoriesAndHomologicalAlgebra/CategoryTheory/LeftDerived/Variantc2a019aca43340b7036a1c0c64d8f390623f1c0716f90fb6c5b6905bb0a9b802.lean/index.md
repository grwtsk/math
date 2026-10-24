# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.LeftDerived.Variantc2a019aca43340b7036a1c0c64d8f390623f1c0716f90fb6c5b6905bb0a9b802

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "6ba9646fbadb8083c9598925c69b12ff4922f173",
  "lexical_observation_count": 9,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/LeftDerived/Variantc2a019aca43340b7036a1c0c64d8f390623f1c0716f90fb6c5b6905bb0a9b802.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/LeftDerived/Variantc2a019aca43340b7036a1c0c64d8f390623f1c0716f90fb6c5b6905bb0a9b802.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/LeftDerived/Variantc2a019aca43340b7036a1c0c64d8f390623f1c0716f90fb6c5b6905bb0a9b802.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `6ba9646fbadb8083c9598925c69b12ff4922f173`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/LeftDerived/Variantc2a019aca43340b7036a1c0c64d8f390623f1c0716f90fb6c5b6905bb0a9b802.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/LeftDerived/Variantc2a019aca43340b7036a1c0c64d8f390623f1c0716f90fb6c5b6905bb0a9b802.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.Abelian.Homology` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Functor.LeftDerived` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Abelian.Projective` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Limits.Constructions.EpiMono` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [preserves_exact_of_PreservesFiniteColimits_of_epi](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/LeftDerived/Variantc2a019aca43340b7036a1c0c64d8f390623f1c0716f90fb6c5b6905bb0a9b802.lean/declarations/preserves-exact-of-preservesfinitecolimits-of-epi--bd6c8b313f177e8f9c5da0d8.md) | 49 | `result-track:bd6c8b313f177e8f9c5da0d8a5936e4ec1044853c621b7cbd1f7d200069a466f` |
| 2 | `theorem` | [exact_of_map_projectiveResolution](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/LeftDerived/Variantc2a019aca43340b7036a1c0c64d8f390623f1c0716f90fb6c5b6905bb0a9b802.lean/declarations/exact-of-map-projectiveresolution--0fec24edffdfa9ca6ef6b075.md) | 55 | `result-track:0fec24edffdfa9ca6ef6b075cc9b6584b63c3a8ddab010007fcde1fa023e85dc` |
| 3 | `def` | [leftDerivedZeroToSelfApp](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/LeftDerived/Variantc2a019aca43340b7036a1c0c64d8f390623f1c0716f90fb6c5b6905bb0a9b802.lean/declarations/leftderivedzerotoselfapp--622ed57afcba07f89b699402.md) | 69 | `declaration-track:622ed57afcba07f89b699402cfe63da737071aa6b04156ca5340c5622ab5a695` |
| 4 | `def` | [leftDerivedZeroToSelfAppInv](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/LeftDerived/Variantc2a019aca43340b7036a1c0c64d8f390623f1c0716f90fb6c5b6905bb0a9b802.lean/declarations/leftderivedzerotoselfappinv--a8d40aa71df33d8735ac78a7.md) | 82 | `declaration-track:a8d40aa71df33d8735ac78a79d10d7a399ad9ed4c4417dda3d654be1e93328c8` |
| 5 | `theorem` | [leftDerivedZeroToSelfApp_comp_inv](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/LeftDerived/Variantc2a019aca43340b7036a1c0c64d8f390623f1c0716f90fb6c5b6905bb0a9b802.lean/declarations/leftderivedzerotoselfapp-comp-inv--f98f47fdebd6bffaa9d27421.md) | 95 | `result-track:f98f47fdebd6bffaa9d2742127bb3ea6e3941c732e5b5654e42cad83ca1b8301` |
| 6 | `theorem` | [leftDerivedZeroToSelfAppInv_comp](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/LeftDerived/Variantc2a019aca43340b7036a1c0c64d8f390623f1c0716f90fb6c5b6905bb0a9b802.lean/declarations/leftderivedzerotoselfappinv-comp--500e813beb1e4442035ec633.md) | 125 | `result-track:500e813beb1e4442035ec63336f07f127606cfa2b3c84fdd9c14c9c89043a7bf` |
| 7 | `def` | [leftDerivedZeroToSelfAppIso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/LeftDerived/Variantc2a019aca43340b7036a1c0c64d8f390623f1c0716f90fb6c5b6905bb0a9b802.lean/declarations/leftderivedzerotoselfappiso--8f9480c1a715742b20ea9a70.md) | 151 | `declaration-track:8f9480c1a715742b20ea9a7047b649921f0cc4f2cb3975cce700441627560d27` |
| 8 | `theorem` | [leftDerived_zero_to_self_natural](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/LeftDerived/Variantc2a019aca43340b7036a1c0c64d8f390623f1c0716f90fb6c5b6905bb0a9b802.lean/declarations/leftderived-zero-to-self-natural--dd864c9cd38436fd2a8b42b2.md) | 161 | `result-track:dd864c9cd38436fd2a8b42b2f9ae402aea99f127c9e10ab374899191a02aa2ea` |
| 9 | `def` | [leftDerivedZeroIsoSelf](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/LeftDerived/Variantc2a019aca43340b7036a1c0c64d8f390623f1c0716f90fb6c5b6905bb0a9b802.lean/declarations/leftderivedzeroisoself--5d52654c5783b1165e491fd9.md) | 180 | `declaration-track:5d52654c5783b1165e491fd9d3d9338dc9074e2f4bdc1c6c463577e8ec763623` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
