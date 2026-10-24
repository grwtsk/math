# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.HomologicalAlgebra.Basic.Variant00cab6588170b476db97e04e9608ea820561ffac65f9f3b4ac0426c7b6c2862f

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "c8d5c7512d66bbe0d50e18fc1f2fbb00dd0c212f",
  "lexical_observation_count": 7,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/Basic/Variant00cab6588170b476db97e04e9608ea820561ffac65f9f3b4ac0426c7b6c2862f.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/Basic/Variant00cab6588170b476db97e04e9608ea820561ffac65f9f3b4ac0426c7b6c2862f.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/Basic/Variant00cab6588170b476db97e04e9608ea820561ffac65f9f3b4ac0426c7b6c2862f.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `c8d5c7512d66bbe0d50e18fc1f2fbb00dd0c212f`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/Basic/Variant00cab6588170b476db97e04e9608ea820561ffac65f9f3b4ac0426c7b6c2862f.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/Basic/Variant00cab6588170b476db97e04e9608ea820561ffac65f9f3b4ac0426c7b6c2862f.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Homology.AlternatingConst` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.AlgebraicTopology.SingularSet` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [SSet.singularChainComplexFunctor](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/Basic/Variant00cab6588170b476db97e04e9608ea820561ffac65f9f3b4ac0426c7b6c2862f.lean/declarations/sset-singularchaincomplexfunctor--9aac0c8f07bb650da6e87ab3.md) | 40 | `declaration-track:9aac0c8f07bb650da6e87ab3da3870c3f7ed331d40e2134969e27a046a5da4ec` |
| 2 | `def` | [singularChainComplexFunctor](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/Basic/Variant00cab6588170b476db97e04e9608ea820561ffac65f9f3b4ac0426c7b6c2862f.lean/declarations/singularchaincomplexfunctor--3c8d3bed98c3dc7faaf8ecc8.md) | 46 | `declaration-track:3c8d3bed98c3dc7faaf8ecc860dbafdbb74b2f76faa94add88103f16efef6870` |
| 3 | `def` | [singularHomologyFunctor](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/Basic/Variant00cab6588170b476db97e04e9608ea820561ffac65f9f3b4ac0426c7b6c2862f.lean/declarations/singularhomologyfunctor--8801872ea820727df052dcbc.md) | 51 | `declaration-track:8801872ea820727df052dcbc8ca49338bd77db12a441fc2cabe4207cfe2730ad` |
| 4 | `def` | [singularChainComplexFunctorIsoOfTotallyDisconnectedSpace](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/Basic/Variant00cab6588170b476db97e04e9608ea820561ffac65f9f3b4ac0426c7b6c2862f.lean/declarations/singularchaincomplexfunctorisooftotallydisconnectedspace--8a27f21b3767c72566ffe0f4.md) | 63 | `declaration-track:8a27f21b3767c72566ffe0f4b94d2bedf6aa884d196b3079ed3f019ce25f81d9` |
| 5 | `lemma` | [singularChainComplexFunctor_exactAt_of_totallyDisconnectedSpace](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/Basic/Variant00cab6588170b476db97e04e9608ea820561ffac65f9f3b4ac0426c7b6c2862f.lean/declarations/singularchaincomplexfunctor-exactat-of-totallydisconnectedspace--1034875b1281966346abca2e.md) | 72 | `result-track:1034875b1281966346abca2eb334c027bc88f6bd89a897e58d2d179d3989df05` |
| 6 | `lemma` | [isZero_singularHomologyFunctor_of_totallyDisconnectedSpace](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/Basic/Variant00cab6588170b476db97e04e9608ea820561ffac65f9f3b4ac0426c7b6c2862f.lean/declarations/iszero-singularhomologyfunctor-of-totallydisconnectedspace--a1db78451962af4d748b76fb.md) | 78 | `result-track:a1db78451962af4d748b76fbf0669307a6080e26c5916aa221f1bbf9f15b22e2` |
| 7 | `def` | [singularHomologyFunctorZeroOfTotallyDisconnectedSpace](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/Basic/Variant00cab6588170b476db97e04e9608ea820561ffac65f9f3b4ac0426c7b6c2862f.lean/declarations/singularhomologyfunctorzerooftotallydisconnectedspace--ae82840b85b9bad64dcf98d8.md) | 86 | `declaration-track:ae82840b85b9bad64dcf98d8e160ab7ee7ab42d9c77b2cc3644d95ea66bb3d26` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
