# Verification target: GRWTSK.Algebra.LinearAlgebra.PivotFixtures.Varianteaba1226d813a2e77bac0a6c33bd0ff4fd35c94e9203d5e2f8e818a6807193d6

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "2efaeddeaa10dc86e2c90164a6b46d613f03e8eb",
  "lexical_observation_count": 15,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/PivotFixtures/Varianteaba1226d813a2e77bac0a6c33bd0ff4fd35c94e9203d5e2f8e818a6807193d6.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/PivotFixtures/Varianteaba1226d813a2e77bac0a6c33bd0ff4fd35c94e9203d5e2f8e818a6807193d6.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/PivotFixtures/Varianteaba1226d813a2e77bac0a6c33bd0ff4fd35c94e9203d5e2f8e818a6807193d6.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `2efaeddeaa10dc86e2c90164a6b46d613f03e8eb`.

Source path: `GRWTSK/Algebra/LinearAlgebra/PivotFixtures/Varianteaba1226d813a2e77bac0a6c33bd0ff4fd35c94e9203d5e2f8e818a6807193d6.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/PivotFixtures/Varianteaba1226d813a2e77bac0a6c33bd0ff4fd35c94e9203d5e2f8e818a6807193d6.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.PositiveAtlas.Grassmannian.PivotNormalization` — import line 1; external provider; requires a separately pinned dependency.
- `FormalResearch.PositiveAtlas.Grassmannian.Plucker24` — import line 2; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.NormNum` — import line 3; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [pivotSubmatrix_eq_one](../../../../../mathematics/Algebra/LinearAlgebra/PivotFixtures/Varianteaba1226d813a2e77bac0a6c33bd0ff4fd35c94e9203d5e2f8e818a6807193d6.lean/declarations/pivotsubmatrix-eq-one--36e1630b3eff60f54f429038.md) | 22 | `result-track:36e1630b3eff60f54f4290389ae0c9ac8af40c96151a29c328707afff393e139` |
| 2 | `theorem` | [matrix_injective](../../../../../mathematics/Algebra/LinearAlgebra/PivotFixtures/Varianteaba1226d813a2e77bac0a6c33bd0ff4fd35c94e9203d5e2f8e818a6807193d6.lean/declarations/matrix-injective--ff98ac85be2d6adf11c1331a.md) | 28 | `result-track:ff98ac85be2d6adf11c1331a0a6a5c5744df7a00ff42f097616decbc811b4575` |
| 3 | `theorem` | [matrix_rank](../../../../../mathematics/Algebra/LinearAlgebra/PivotFixtures/Varianteaba1226d813a2e77bac0a6c33bd0ff4fd35c94e9203d5e2f8e818a6807193d6.lean/declarations/matrix-rank--dc9d1d6767468c131e6d1ca1.md) | 34 | `result-track:dc9d1d6767468c131e6d1ca1b57a16434c5d661bab3bff62778fdb8d03b1b758` |
| 4 | `theorem` | [rowSpace_injective](../../../../../mathematics/Algebra/LinearAlgebra/PivotFixtures/Varianteaba1226d813a2e77bac0a6c33bd0ff4fd35c94e9203d5e2f8e818a6807193d6.lean/declarations/rowspace-injective--9444bafc920f2fbb16fd992c.md) | 40 | `result-track:9444bafc920f2fbb16fd992c419977d62b23e4f32a118c6160bae588816fd15b` |
| 5 | `def` | [toSubspace](../../../../../mathematics/Algebra/LinearAlgebra/PivotFixtures/Varianteaba1226d813a2e77bac0a6c33bd0ff4fd35c94e9203d5e2f8e818a6807193d6.lean/declarations/tosubspace--f5f21e70050e4082a66f8d87.md) | 47 | `declaration-track:f5f21e70050e4082a66f8d87a030e57e971060c63040a734a0bb74d272e8d4cb` |
| 6 | `theorem` | [toSubspace_injective](../../../../../mathematics/Algebra/LinearAlgebra/PivotFixtures/Varianteaba1226d813a2e77bac0a6c33bd0ff4fd35c94e9203d5e2f8e818a6807193d6.lean/declarations/tosubspace-injective--5832e299e657334107d9041f.md) | 53 | `result-track:5832e299e657334107d9041f481c650e83c8bf54764923d614c9eecb57c83de7` |
| 7 | `def` | [boundaryPivotFamily](../../../../../mathematics/Algebra/LinearAlgebra/PivotFixtures/Varianteaba1226d813a2e77bac0a6c33bd0ff4fd35c94e9203d5e2f8e818a6807193d6.lean/declarations/boundarypivotfamily--4be67eca2025226cebf06f33.md) | 60 | `declaration-track:4be67eca2025226cebf06f3398ebba401ee73d0a24b202ca9eb6f1f21ef050fe` |
| 8 | `theorem` | [boundaryPivotFamily_coordinates](../../../../../mathematics/Algebra/LinearAlgebra/PivotFixtures/Varianteaba1226d813a2e77bac0a6c33bd0ff4fd35c94e9203d5e2f8e818a6807193d6.lean/declarations/boundarypivotfamily-coordinates--3f012aa0f968933e4101882c.md) | 64 | `result-track:3f012aa0f968933e4101882cf49165e64e596365691d1257e574396324bd6a81` |
| 9 | `theorem` | [boundaryPivotFamily_firstPivot](../../../../../mathematics/Algebra/LinearAlgebra/PivotFixtures/Varianteaba1226d813a2e77bac0a6c33bd0ff4fd35c94e9203d5e2f8e818a6807193d6.lean/declarations/boundarypivotfamily-firstpivot--c5b663b0ad44fe646bfe6739.md) | 71 | `result-track:c5b663b0ad44fe646bfe67394f10867e62ce310fbc534fba802fa49fe56529c1` |
| 10 | `theorem` | [boundaryPivotFamily_secondPivot](../../../../../mathematics/Algebra/LinearAlgebra/PivotFixtures/Varianteaba1226d813a2e77bac0a6c33bd0ff4fd35c94e9203d5e2f8e818a6807193d6.lean/declarations/boundarypivotfamily-secondpivot--4e32b623f599acccb19d32e5.md) | 77 | `result-track:4e32b623f599acccb19d32e5436b7bfd716481464effba3c8c36dc065951cf03` |
| 11 | `theorem` | [boundaryPivotFamily_rank](../../../../../mathematics/Algebra/LinearAlgebra/PivotFixtures/Varianteaba1226d813a2e77bac0a6c33bd0ff4fd35c94e9203d5e2f8e818a6807193d6.lean/declarations/boundarypivotfamily-rank--30fe04a9fa3a416e47320c00.md) | 83 | `result-track:30fe04a9fa3a416e47320c00f69aeb60851712c2f01fc47ba9110f7f9b533afa` |
| 12 | `theorem` | [boundaryPivotFamily_nonnegative](../../../../../mathematics/Algebra/LinearAlgebra/PivotFixtures/Varianteaba1226d813a2e77bac0a6c33bd0ff4fd35c94e9203d5e2f8e818a6807193d6.lean/declarations/boundarypivotfamily-nonnegative--1178a62f3e5dd7b278f05c0f.md) | 89 | `result-track:1178a62f3e5dd7b278f05c0f243d8d1349798a5cce3b77cb7a7c258dbad0e1dc` |
| 13 | `theorem` | [boundaryPivotFamily_zero_witness](../../../../../mathematics/Algebra/LinearAlgebra/PivotFixtures/Varianteaba1226d813a2e77bac0a6c33bd0ff4fd35c94e9203d5e2f8e818a6807193d6.lean/declarations/boundarypivotfamily-zero-witness--2ce04dd7c7f2e0906709572a.md) | 96 | `result-track:2ce04dd7c7f2e0906709572a6c85802c578811945e8cf6e6ef9d35982775fc1e` |
| 14 | `theorem` | [boundaryPivotFamily_firstChart_entry](../../../../../mathematics/Algebra/LinearAlgebra/PivotFixtures/Varianteaba1226d813a2e77bac0a6c33bd0ff4fd35c94e9203d5e2f8e818a6807193d6.lean/declarations/boundarypivotfamily-firstchart-entry--9fcc1d9f772ae6cd8b03fd9c.md) | 105 | `result-track:9fcc1d9f772ae6cd8b03fd9c7dc440874d2c2d2692533720ab3b14afbecd7253` |
| 15 | `theorem` | [boundaryPivotFamily_secondChart](../../../../../mathematics/Algebra/LinearAlgebra/PivotFixtures/Varianteaba1226d813a2e77bac0a6c33bd0ff4fd35c94e9203d5e2f8e818a6807193d6.lean/declarations/boundarypivotfamily-secondchart--e449e54092887a5cb7c06681.md) | 119 | `result-track:e449e54092887a5cb7c06681d99cbd5d66b7abe81273ceb0929d46c846e1172d` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
