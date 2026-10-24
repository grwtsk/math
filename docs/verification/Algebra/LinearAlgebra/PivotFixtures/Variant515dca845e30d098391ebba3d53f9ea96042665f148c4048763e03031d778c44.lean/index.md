# Verification target: GRWTSK.Algebra.LinearAlgebra.PivotFixtures.Variant515dca845e30d098391ebba3d53f9ea96042665f148c4048763e03031d778c44

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "9c3002364feef6402d5a789849187b964197dc07",
  "lexical_observation_count": 15,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/PivotFixtures/Variant515dca845e30d098391ebba3d53f9ea96042665f148c4048763e03031d778c44.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/PivotFixtures/Variant515dca845e30d098391ebba3d53f9ea96042665f148c4048763e03031d778c44.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/PivotFixtures/Variant515dca845e30d098391ebba3d53f9ea96042665f148c4048763e03031d778c44.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `9c3002364feef6402d5a789849187b964197dc07`.

Source path: `GRWTSK/Algebra/LinearAlgebra/PivotFixtures/Variant515dca845e30d098391ebba3d53f9ea96042665f148c4048763e03031d778c44.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/PivotFixtures/Variant515dca845e30d098391ebba3d53f9ea96042665f148c4048763e03031d778c44.lean.json)

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
| 1 | `theorem` | [pivotSubmatrix_eq_one](../../../../../mathematics/Algebra/LinearAlgebra/PivotFixtures/Variant515dca845e30d098391ebba3d53f9ea96042665f148c4048763e03031d778c44.lean/declarations/pivotsubmatrix-eq-one--3f9c1579321e33fd29f02ecb.md) | 30 | `result-track:3f9c1579321e33fd29f02ecb806055b4b94aaba3fe2dbedafd9fb99cf2eed354` |
| 2 | `theorem` | [matrix_injective](../../../../../mathematics/Algebra/LinearAlgebra/PivotFixtures/Variant515dca845e30d098391ebba3d53f9ea96042665f148c4048763e03031d778c44.lean/declarations/matrix-injective--400e35edbabbf092dcbf5cc6.md) | 36 | `result-track:400e35edbabbf092dcbf5cc67b5350492791f6c0cce3fbd9ef37b12454a182ba` |
| 3 | `theorem` | [matrix_rank](../../../../../mathematics/Algebra/LinearAlgebra/PivotFixtures/Variant515dca845e30d098391ebba3d53f9ea96042665f148c4048763e03031d778c44.lean/declarations/matrix-rank--5d401de9baf87c642bfe1642.md) | 42 | `result-track:5d401de9baf87c642bfe164269f41df588f355f8f9c52afb12196d96c395b41a` |
| 4 | `theorem` | [rowSpace_injective](../../../../../mathematics/Algebra/LinearAlgebra/PivotFixtures/Variant515dca845e30d098391ebba3d53f9ea96042665f148c4048763e03031d778c44.lean/declarations/rowspace-injective--421435e59bba4999ba4e7991.md) | 48 | `result-track:421435e59bba4999ba4e799157518ef9a7531d3a6094ce90f59f2c48b1f70c02` |
| 5 | `def` | [toSubspace](../../../../../mathematics/Algebra/LinearAlgebra/PivotFixtures/Variant515dca845e30d098391ebba3d53f9ea96042665f148c4048763e03031d778c44.lean/declarations/tosubspace--7c9aed5f7b6808b920bf4060.md) | 55 | `declaration-track:7c9aed5f7b6808b920bf4060b45e0e05fdc4a0babd88f43245feb00514a87622` |
| 6 | `theorem` | [toSubspace_injective](../../../../../mathematics/Algebra/LinearAlgebra/PivotFixtures/Variant515dca845e30d098391ebba3d53f9ea96042665f148c4048763e03031d778c44.lean/declarations/tosubspace-injective--ec33ee2d1af708c979f24612.md) | 61 | `result-track:ec33ee2d1af708c979f2461204986bc95f9afffdf21cbd311df199668defd9b8` |
| 7 | `def` | [boundaryPivotFamily](../../../../../mathematics/Algebra/LinearAlgebra/PivotFixtures/Variant515dca845e30d098391ebba3d53f9ea96042665f148c4048763e03031d778c44.lean/declarations/boundarypivotfamily--34cebfb1dcc3ce6d1c853c36.md) | 68 | `declaration-track:34cebfb1dcc3ce6d1c853c360eed09fc112eb0a4d4ff8ac19a631fe9f261bc63` |
| 8 | `theorem` | [boundaryPivotFamily_coordinates](../../../../../mathematics/Algebra/LinearAlgebra/PivotFixtures/Variant515dca845e30d098391ebba3d53f9ea96042665f148c4048763e03031d778c44.lean/declarations/boundarypivotfamily-coordinates--62fcbd1672491da5d506a327.md) | 72 | `result-track:62fcbd1672491da5d506a327528bf8a57fb1c22bd346b8fa317ddf369563f9da` |
| 9 | `theorem` | [boundaryPivotFamily_firstPivot](../../../../../mathematics/Algebra/LinearAlgebra/PivotFixtures/Variant515dca845e30d098391ebba3d53f9ea96042665f148c4048763e03031d778c44.lean/declarations/boundarypivotfamily-firstpivot--017c68546c411abf540c052e.md) | 79 | `result-track:017c68546c411abf540c052e12302b6ea97faa42406b0b47e2f557894d74e53f` |
| 10 | `theorem` | [boundaryPivotFamily_secondPivot](../../../../../mathematics/Algebra/LinearAlgebra/PivotFixtures/Variant515dca845e30d098391ebba3d53f9ea96042665f148c4048763e03031d778c44.lean/declarations/boundarypivotfamily-secondpivot--e31a503b80ce4aeb31947ec0.md) | 85 | `result-track:e31a503b80ce4aeb31947ec0fd2516e0ecabc90610e5465e8c37eb9a889c1389` |
| 11 | `theorem` | [boundaryPivotFamily_rank](../../../../../mathematics/Algebra/LinearAlgebra/PivotFixtures/Variant515dca845e30d098391ebba3d53f9ea96042665f148c4048763e03031d778c44.lean/declarations/boundarypivotfamily-rank--e8c3c855201ede843da1c7fb.md) | 91 | `result-track:e8c3c855201ede843da1c7fb645fc4fe236b23da0d4a7c200eeb6b2f8367550a` |
| 12 | `theorem` | [boundaryPivotFamily_nonnegative](../../../../../mathematics/Algebra/LinearAlgebra/PivotFixtures/Variant515dca845e30d098391ebba3d53f9ea96042665f148c4048763e03031d778c44.lean/declarations/boundarypivotfamily-nonnegative--8e8206ad60ba61f96f5c83d6.md) | 97 | `result-track:8e8206ad60ba61f96f5c83d6db84bc8d4fce5acbc5c01d06dacea972386043a0` |
| 13 | `theorem` | [boundaryPivotFamily_zero_witness](../../../../../mathematics/Algebra/LinearAlgebra/PivotFixtures/Variant515dca845e30d098391ebba3d53f9ea96042665f148c4048763e03031d778c44.lean/declarations/boundarypivotfamily-zero-witness--196546b2508b2b43b6542541.md) | 104 | `result-track:196546b2508b2b43b654254139d7a5417bcfc99eea639de4d19d1b13e24604cc` |
| 14 | `theorem` | [boundaryPivotFamily_firstChart_entry](../../../../../mathematics/Algebra/LinearAlgebra/PivotFixtures/Variant515dca845e30d098391ebba3d53f9ea96042665f148c4048763e03031d778c44.lean/declarations/boundarypivotfamily-firstchart-entry--d0d3dd95ad953e1396e7d43b.md) | 113 | `result-track:d0d3dd95ad953e1396e7d43b550d7b47023706ba873c3fb846cf95907b31154c` |
| 15 | `theorem` | [boundaryPivotFamily_secondChart](../../../../../mathematics/Algebra/LinearAlgebra/PivotFixtures/Variant515dca845e30d098391ebba3d53f9ea96042665f148c4048763e03031d778c44.lean/declarations/boundarypivotfamily-secondchart--a389ddef4da6a7d0ae5d0b4a.md) | 127 | `result-track:a389ddef4da6a7d0ae5d0b4a8546222f02d18078ae982f7597b6eb4c1a6820f6` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
