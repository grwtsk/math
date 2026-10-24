# Verification target: GRWTSK.Algebra.LinearAlgebra.PivotFixtures.Variantacf9a505fb70fce58344cf1aaf9e4962e4e6f31a5936fa72255614b440d82a5e

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "e0017abf6ab8f869a94f88536adaa70553428dcb",
  "lexical_observation_count": 15,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/PivotFixtures/Variantacf9a505fb70fce58344cf1aaf9e4962e4e6f31a5936fa72255614b440d82a5e.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/PivotFixtures/Variantacf9a505fb70fce58344cf1aaf9e4962e4e6f31a5936fa72255614b440d82a5e.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/PivotFixtures/Variantacf9a505fb70fce58344cf1aaf9e4962e4e6f31a5936fa72255614b440d82a5e.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `e0017abf6ab8f869a94f88536adaa70553428dcb`.

Source path: `GRWTSK/Algebra/LinearAlgebra/PivotFixtures/Variantacf9a505fb70fce58344cf1aaf9e4962e4e6f31a5936fa72255614b440d82a5e.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/PivotFixtures/Variantacf9a505fb70fce58344cf1aaf9e4962e4e6f31a5936fa72255614b440d82a5e.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.PositiveAtlas.Grassmannian.PivotNormalization` — import line 6; external provider; requires a separately pinned dependency.
- `FormalResearch.PositiveAtlas.Grassmannian.Plucker24` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.NormNum` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [pivotSubmatrix_eq_one](../../../../../mathematics/Algebra/LinearAlgebra/PivotFixtures/Variantacf9a505fb70fce58344cf1aaf9e4962e4e6f31a5936fa72255614b440d82a5e.lean/declarations/pivotsubmatrix-eq-one--9c6ef04b989474b63f1aa795.md) | 30 | `result-track:9c6ef04b989474b63f1aa795def88b41c345915f7259cbdc1a9fec5cfbfbc769` |
| 2 | `theorem` | [matrix_injective](../../../../../mathematics/Algebra/LinearAlgebra/PivotFixtures/Variantacf9a505fb70fce58344cf1aaf9e4962e4e6f31a5936fa72255614b440d82a5e.lean/declarations/matrix-injective--07f72a94e3c4f760ed64f88e.md) | 36 | `result-track:07f72a94e3c4f760ed64f88ec1c7a45598a3dbc1d71191880a4ca86d9035600e` |
| 3 | `theorem` | [matrix_rank](../../../../../mathematics/Algebra/LinearAlgebra/PivotFixtures/Variantacf9a505fb70fce58344cf1aaf9e4962e4e6f31a5936fa72255614b440d82a5e.lean/declarations/matrix-rank--c4c34fb9acd055b616ec3176.md) | 42 | `result-track:c4c34fb9acd055b616ec31767548f19863ce7045b0d18ead6dd717ba70d8a4cc` |
| 4 | `theorem` | [rowSpace_injective](../../../../../mathematics/Algebra/LinearAlgebra/PivotFixtures/Variantacf9a505fb70fce58344cf1aaf9e4962e4e6f31a5936fa72255614b440d82a5e.lean/declarations/rowspace-injective--973622b471f1cced0cd8a783.md) | 48 | `result-track:973622b471f1cced0cd8a7837e2a8667f3b47d264311ba890eb33bfa880fad97` |
| 5 | `def` | [toSubspace](../../../../../mathematics/Algebra/LinearAlgebra/PivotFixtures/Variantacf9a505fb70fce58344cf1aaf9e4962e4e6f31a5936fa72255614b440d82a5e.lean/declarations/tosubspace--9d77c3eaf1572751b7040edc.md) | 55 | `declaration-track:9d77c3eaf1572751b7040edc2641f2673c521795bbf1df1438a214a3c5e7cc3d` |
| 6 | `theorem` | [toSubspace_injective](../../../../../mathematics/Algebra/LinearAlgebra/PivotFixtures/Variantacf9a505fb70fce58344cf1aaf9e4962e4e6f31a5936fa72255614b440d82a5e.lean/declarations/tosubspace-injective--a3de40d523b3e217ff3d46c2.md) | 61 | `result-track:a3de40d523b3e217ff3d46c2d686582674569a0077228036fd7653caccee80ae` |
| 7 | `def` | [boundaryPivotFamily](../../../../../mathematics/Algebra/LinearAlgebra/PivotFixtures/Variantacf9a505fb70fce58344cf1aaf9e4962e4e6f31a5936fa72255614b440d82a5e.lean/declarations/boundarypivotfamily--90568b633a90135633d906d1.md) | 68 | `declaration-track:90568b633a90135633d906d160f7b85774381c08a98f0fcc09b3778710513505` |
| 8 | `theorem` | [boundaryPivotFamily_coordinates](../../../../../mathematics/Algebra/LinearAlgebra/PivotFixtures/Variantacf9a505fb70fce58344cf1aaf9e4962e4e6f31a5936fa72255614b440d82a5e.lean/declarations/boundarypivotfamily-coordinates--025783e65035ae0505f2d650.md) | 72 | `result-track:025783e65035ae0505f2d65059b2097da106cec87e694443b70a9c5c6f5b94d0` |
| 9 | `theorem` | [boundaryPivotFamily_firstPivot](../../../../../mathematics/Algebra/LinearAlgebra/PivotFixtures/Variantacf9a505fb70fce58344cf1aaf9e4962e4e6f31a5936fa72255614b440d82a5e.lean/declarations/boundarypivotfamily-firstpivot--d2a7394e65e4a6cc2ee5712d.md) | 79 | `result-track:d2a7394e65e4a6cc2ee5712d3bfb46cbf87bc79d854fd736357f818b8273b18d` |
| 10 | `theorem` | [boundaryPivotFamily_secondPivot](../../../../../mathematics/Algebra/LinearAlgebra/PivotFixtures/Variantacf9a505fb70fce58344cf1aaf9e4962e4e6f31a5936fa72255614b440d82a5e.lean/declarations/boundarypivotfamily-secondpivot--050c240c3e366db5bbcf56ae.md) | 85 | `result-track:050c240c3e366db5bbcf56aeb19fb86dc6882f91f5dd664f4d4e47de2014bc5a` |
| 11 | `theorem` | [boundaryPivotFamily_rank](../../../../../mathematics/Algebra/LinearAlgebra/PivotFixtures/Variantacf9a505fb70fce58344cf1aaf9e4962e4e6f31a5936fa72255614b440d82a5e.lean/declarations/boundarypivotfamily-rank--d492b480c1cec33a8230b268.md) | 91 | `result-track:d492b480c1cec33a8230b268bfc0dd6c07e71a708664a632d7a8cf88b8906b7d` |
| 12 | `theorem` | [boundaryPivotFamily_nonnegative](../../../../../mathematics/Algebra/LinearAlgebra/PivotFixtures/Variantacf9a505fb70fce58344cf1aaf9e4962e4e6f31a5936fa72255614b440d82a5e.lean/declarations/boundarypivotfamily-nonnegative--2b4839e4dd962ab8215fac48.md) | 97 | `result-track:2b4839e4dd962ab8215fac480e4b82839a956c2dfe7c92109a4dfe02407e261c` |
| 13 | `theorem` | [boundaryPivotFamily_zero_witness](../../../../../mathematics/Algebra/LinearAlgebra/PivotFixtures/Variantacf9a505fb70fce58344cf1aaf9e4962e4e6f31a5936fa72255614b440d82a5e.lean/declarations/boundarypivotfamily-zero-witness--62d5c44e312c47e678d1718f.md) | 104 | `result-track:62d5c44e312c47e678d1718f5f64eb5f2697639a15c23e5b842b96a1b0e8ed59` |
| 14 | `theorem` | [boundaryPivotFamily_firstChart_entry](../../../../../mathematics/Algebra/LinearAlgebra/PivotFixtures/Variantacf9a505fb70fce58344cf1aaf9e4962e4e6f31a5936fa72255614b440d82a5e.lean/declarations/boundarypivotfamily-firstchart-entry--790c5f82c47f261e84a35265.md) | 113 | `result-track:790c5f82c47f261e84a352652f84bda3c8cda3efed5c732f1e351aae34aa3a41` |
| 15 | `theorem` | [boundaryPivotFamily_secondChart](../../../../../mathematics/Algebra/LinearAlgebra/PivotFixtures/Variantacf9a505fb70fce58344cf1aaf9e4962e4e6f31a5936fa72255614b440d82a5e.lean/declarations/boundarypivotfamily-secondchart--e5dcc15723de31ab20ad91a3.md) | 127 | `result-track:e5dcc15723de31ab20ad91a3c1f365efe4634bead865f5e26406760c306b73af` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
