# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.LinearFunctor.Varianted82aff18d8e9df6b954eb44e48bc1bd694935a371b52f09180e42c003eb7d23

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "d993767420e3835b843e4e44dd0b98b89d2c30a6",
  "lexical_observation_count": 15,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/LinearFunctor/Varianted82aff18d8e9df6b954eb44e48bc1bd694935a371b52f09180e42c003eb7d23.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/LinearFunctor/Varianted82aff18d8e9df6b954eb44e48bc1bd694935a371b52f09180e42c003eb7d23.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/LinearFunctor/Varianted82aff18d8e9df6b954eb44e48bc1bd694935a371b52f09180e42c003eb7d23.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `d993767420e3835b843e4e44dd0b98b89d2c30a6`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/LinearFunctor/Varianted82aff18d8e9df6b954eb44e48bc1bd694935a371b52f09180e42c003eb7d23.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/LinearFunctor/Varianted82aff18d8e9df6b954eb44e48bc1bd694935a371b52f09180e42c003eb7d23.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.Preadditive.AdditiveFunctor` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Linear.Basic` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Module.LinearMap.Rat` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `class` | [Functor.Linear](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/LinearFunctor/Varianted82aff18d8e9df6b954eb44e48bc1bd694935a371b52f09180e42c003eb7d23.lean/declarations/functor-linear--36f1cf3232354d534527331b.md) | 32 | `declaration-track:36f1cf3232354d534527331b07ddb478dfe459e3c7c65def8dc5c8c8b15a3c28` |
| 2 | `lemma` | [Functor.linear_iff](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/LinearFunctor/Varianted82aff18d8e9df6b954eb44e48bc1bd694935a371b52f09180e42c003eb7d23.lean/declarations/functor-linear-iff--e004495da8d842a743938b00.md) | 36 | `result-track:e004495da8d842a743938b00272c99b2e3c4d252f62c44f7be8fa8c39a57187b` |
| 3 | `theorem` | [map_smul](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/LinearFunctor/Varianted82aff18d8e9df6b954eb44e48bc1bd694935a371b52f09180e42c003eb7d23.lean/declarations/map-smul--e0a6152f39ed39a2ad433158.md) | 54 | `result-track:e0a6152f39ed39a2ad43315892463e5d95c4347d1d2bf2ac1e16aed58e8dd512` |
| 4 | `theorem` | [map_units_smul](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/LinearFunctor/Varianted82aff18d8e9df6b954eb44e48bc1bd694935a371b52f09180e42c003eb7d23.lean/declarations/map-units-smul--be813cf5f7c1570082fea2b1.md) | 58 | `result-track:be813cf5f7c1570082fea2b1a15ac009b92d0c9777cace74972162c5dfe46078` |
| 5 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/LinearFunctor/Varianted82aff18d8e9df6b954eb44e48bc1bd694935a371b52f09180e42c003eb7d23.lean/declarations/instance--178a5ab5d0a5afba032a8e11.md) | 61 | `declaration-track:178a5ab5d0a5afba032a8e11564193a1c4c608deaf0742efcb9dffe59a3fd2bf` |
| 6 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/LinearFunctor/Varianted82aff18d8e9df6b954eb44e48bc1bd694935a371b52f09180e42c003eb7d23.lean/declarations/instance--dc43ad113b0f9d6b9a865676.md) | 63 | `declaration-track:dc43ad113b0f9d6b9a865676890512f972c6819727569829bc0bafe129864c4b` |
| 7 | `def` | [mapLinearMap](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/LinearFunctor/Varianted82aff18d8e9df6b954eb44e48bc1bd694935a371b52f09180e42c003eb7d23.lean/declarations/maplinearmap--009f4045a302f72dc2d13b7f.md) | 70 | `declaration-track:009f4045a302f72dc2d13b7fcd760e530bae8c6b0f994f601eef7176624ca9fe` |
| 8 | `theorem` | [coe_mapLinearMap](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/LinearFunctor/Varianted82aff18d8e9df6b954eb44e48bc1bd694935a371b52f09180e42c003eb7d23.lean/declarations/coe-maplinearmap--b01d25a1cdf826bba3c39c9f.md) | 73 | `result-track:b01d25a1cdf826bba3c39c9fe3bda1066ce9095a2902171b4cd39cf220afe627` |
| 9 | `lemma` | [linear_of_iso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/LinearFunctor/Varianted82aff18d8e9df6b954eb44e48bc1bd694935a371b52f09180e42c003eb7d23.lean/declarations/linear-of-iso--f4a2763f95e984ed5a73809a.md) | 78 | `result-track:f4a2763f95e984ed5a73809af4bc1cfd131824f2734fb8e1e4d7327d111d97c1` |
| 10 | `instance` | [inducedFunctorLinear](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/LinearFunctor/Varianted82aff18d8e9df6b954eb44e48bc1bd694935a371b52f09180e42c003eb7d23.lean/declarations/inducedfunctorlinear--64b38d1ba17c0c887210a9e6.md) | 86 | `declaration-track:64b38d1ba17c0c887210a9e600f09d7165f3cce003f3a362bf2b5b7d690040cf` |
| 11 | `instance` | [fullSubcategoryInclusionLinear](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/LinearFunctor/Varianted82aff18d8e9df6b954eb44e48bc1bd694935a371b52f09180e42c003eb7d23.lean/declarations/fullsubcategoryinclusionlinear--04a0dd87b1d2354e634f9da3.md) | 90 | `declaration-track:04a0dd87b1d2354e634f9da3dbfb495a70eeeb9f8f4eb9c5152950ae0365d8ee` |
| 12 | `instance` | [natLinear](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/LinearFunctor/Varianted82aff18d8e9df6b954eb44e48bc1bd694935a371b52f09180e42c003eb7d23.lean/declarations/natlinear--bb3dbc48659812dfaf391b68.md) | 97 | `declaration-track:bb3dbc48659812dfaf391b68a9931941e0010bed51ceea5106feaab87be5ab27` |
| 13 | `instance` | [intLinear](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/LinearFunctor/Varianted82aff18d8e9df6b954eb44e48bc1bd694935a371b52f09180e42c003eb7d23.lean/declarations/intlinear--e2ed9d7015b25148d909782a.md) | 100 | `declaration-track:e2ed9d7015b25148d909782add83319a961982b403df4e31232167c66cbabb78` |
| 14 | `instance` | [ratLinear](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/LinearFunctor/Varianted82aff18d8e9df6b954eb44e48bc1bd694935a371b52f09180e42c003eb7d23.lean/declarations/ratlinear--d6da52998b4106d87da8ff22.md) | 105 | `declaration-track:d6da52998b4106d87da8ff22c7b7b70abf974f7d3c7056fb70bf4a7627fad1d4` |
| 15 | `instance` | [inverseLinear](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/LinearFunctor/Varianted82aff18d8e9df6b954eb44e48bc1bd694935a371b52f09180e42c003eb7d23.lean/declarations/inverselinear--9363bf432d7316082d6d306a.md) | 114 | `declaration-track:9363bf432d7316082d6d306a563b82a0439cae4201c118eaf9bedea6774c2327` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
