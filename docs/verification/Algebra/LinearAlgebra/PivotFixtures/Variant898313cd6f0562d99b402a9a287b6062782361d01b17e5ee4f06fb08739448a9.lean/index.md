# Verification target: GRWTSK.Algebra.LinearAlgebra.PivotFixtures.Variant898313cd6f0562d99b402a9a287b6062782361d01b17e5ee4f06fb08739448a9

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "ae809fd0969c05dbc954f4ab36f76878c53e2bbb",
  "lexical_observation_count": 15,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/PivotFixtures/Variant898313cd6f0562d99b402a9a287b6062782361d01b17e5ee4f06fb08739448a9.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/PivotFixtures/Variant898313cd6f0562d99b402a9a287b6062782361d01b17e5ee4f06fb08739448a9.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/PivotFixtures/Variant898313cd6f0562d99b402a9a287b6062782361d01b17e5ee4f06fb08739448a9.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `ae809fd0969c05dbc954f4ab36f76878c53e2bbb`.

Source path: `GRWTSK/Algebra/LinearAlgebra/PivotFixtures/Variant898313cd6f0562d99b402a9a287b6062782361d01b17e5ee4f06fb08739448a9.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/PivotFixtures/Variant898313cd6f0562d99b402a9a287b6062782361d01b17e5ee4f06fb08739448a9.lean.json)

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
| 1 | `theorem` | [pivotSubmatrix_eq_one](../../../../../mathematics/Algebra/LinearAlgebra/PivotFixtures/Variant898313cd6f0562d99b402a9a287b6062782361d01b17e5ee4f06fb08739448a9.lean/declarations/pivotsubmatrix-eq-one--5071de6498f5e887f525b179.md) | 22 | `result-track:5071de6498f5e887f525b1795dc832a4c8ef6659960fd2f6bcc1004ee2d83b53` |
| 2 | `theorem` | [matrix_injective](../../../../../mathematics/Algebra/LinearAlgebra/PivotFixtures/Variant898313cd6f0562d99b402a9a287b6062782361d01b17e5ee4f06fb08739448a9.lean/declarations/matrix-injective--0274ce7925c1e405998a9172.md) | 28 | `result-track:0274ce7925c1e405998a91727cd2e37226a9f7ebd345c78fa33fbd4e0be64248` |
| 3 | `theorem` | [matrix_rank](../../../../../mathematics/Algebra/LinearAlgebra/PivotFixtures/Variant898313cd6f0562d99b402a9a287b6062782361d01b17e5ee4f06fb08739448a9.lean/declarations/matrix-rank--6dae7c16df1b3e677f259930.md) | 34 | `result-track:6dae7c16df1b3e677f2599303d1ff8ee8cb2fd042db86cc546cedc549f574219` |
| 4 | `theorem` | [rowSpace_injective](../../../../../mathematics/Algebra/LinearAlgebra/PivotFixtures/Variant898313cd6f0562d99b402a9a287b6062782361d01b17e5ee4f06fb08739448a9.lean/declarations/rowspace-injective--5776dc3455363c0ef4effb87.md) | 40 | `result-track:5776dc3455363c0ef4effb87c9c5ddefa9f32cfc509b2bb8a261e08fd28ebab5` |
| 5 | `def` | [toSubspace](../../../../../mathematics/Algebra/LinearAlgebra/PivotFixtures/Variant898313cd6f0562d99b402a9a287b6062782361d01b17e5ee4f06fb08739448a9.lean/declarations/tosubspace--6ca47d93f4971bae0e46421b.md) | 47 | `declaration-track:6ca47d93f4971bae0e46421bb3306acd968cef1e3565adc526ab11a1fa73071e` |
| 6 | `theorem` | [toSubspace_injective](../../../../../mathematics/Algebra/LinearAlgebra/PivotFixtures/Variant898313cd6f0562d99b402a9a287b6062782361d01b17e5ee4f06fb08739448a9.lean/declarations/tosubspace-injective--179d5b270f4ef211f97e467f.md) | 53 | `result-track:179d5b270f4ef211f97e467fe03e28e52d6e6f6053f08048cbc57a45602edf30` |
| 7 | `def` | [boundaryPivotFamily](../../../../../mathematics/Algebra/LinearAlgebra/PivotFixtures/Variant898313cd6f0562d99b402a9a287b6062782361d01b17e5ee4f06fb08739448a9.lean/declarations/boundarypivotfamily--97cc1a027186e41b67f97bf9.md) | 60 | `declaration-track:97cc1a027186e41b67f97bf96baec920e6a0633f221dad11edb6600e09692586` |
| 8 | `theorem` | [boundaryPivotFamily_coordinates](../../../../../mathematics/Algebra/LinearAlgebra/PivotFixtures/Variant898313cd6f0562d99b402a9a287b6062782361d01b17e5ee4f06fb08739448a9.lean/declarations/boundarypivotfamily-coordinates--f9f3f88b7e35c79a0e9c4059.md) | 64 | `result-track:f9f3f88b7e35c79a0e9c4059a8c63b072f473f45408da61386977ed2af470607` |
| 9 | `theorem` | [boundaryPivotFamily_firstPivot](../../../../../mathematics/Algebra/LinearAlgebra/PivotFixtures/Variant898313cd6f0562d99b402a9a287b6062782361d01b17e5ee4f06fb08739448a9.lean/declarations/boundarypivotfamily-firstpivot--5057c7b8ec4c62dbd575a58a.md) | 71 | `result-track:5057c7b8ec4c62dbd575a58a3781c1017c924da7c051df7edefa09ed4990bbb6` |
| 10 | `theorem` | [boundaryPivotFamily_secondPivot](../../../../../mathematics/Algebra/LinearAlgebra/PivotFixtures/Variant898313cd6f0562d99b402a9a287b6062782361d01b17e5ee4f06fb08739448a9.lean/declarations/boundarypivotfamily-secondpivot--e2886cedb644f6501de7e31f.md) | 77 | `result-track:e2886cedb644f6501de7e31f5567157b6966d437349dd4ffd044b386dc6be7bc` |
| 11 | `theorem` | [boundaryPivotFamily_rank](../../../../../mathematics/Algebra/LinearAlgebra/PivotFixtures/Variant898313cd6f0562d99b402a9a287b6062782361d01b17e5ee4f06fb08739448a9.lean/declarations/boundarypivotfamily-rank--f9b0a2e7c06d5a7df1a4f64a.md) | 83 | `result-track:f9b0a2e7c06d5a7df1a4f64aa89f964abb3e870f99761c91362e75e549206133` |
| 12 | `theorem` | [boundaryPivotFamily_nonnegative](../../../../../mathematics/Algebra/LinearAlgebra/PivotFixtures/Variant898313cd6f0562d99b402a9a287b6062782361d01b17e5ee4f06fb08739448a9.lean/declarations/boundarypivotfamily-nonnegative--5ed8fe4e844c40d38858266c.md) | 89 | `result-track:5ed8fe4e844c40d38858266c8e6cedec8162cfec6f62e306e112b3556950726c` |
| 13 | `theorem` | [boundaryPivotFamily_zero_witness](../../../../../mathematics/Algebra/LinearAlgebra/PivotFixtures/Variant898313cd6f0562d99b402a9a287b6062782361d01b17e5ee4f06fb08739448a9.lean/declarations/boundarypivotfamily-zero-witness--0ca66f8ac49237d00eb78759.md) | 96 | `result-track:0ca66f8ac49237d00eb787598aa9e00bb0a7a8a55b3ffd79ae493d9099902710` |
| 14 | `theorem` | [boundaryPivotFamily_firstChart_entry](../../../../../mathematics/Algebra/LinearAlgebra/PivotFixtures/Variant898313cd6f0562d99b402a9a287b6062782361d01b17e5ee4f06fb08739448a9.lean/declarations/boundarypivotfamily-firstchart-entry--a5f918c46d3577383a2a4e9e.md) | 105 | `result-track:a5f918c46d3577383a2a4e9e76956c88ede9dff474271c4eea2b75d03d5805e5` |
| 15 | `theorem` | [boundaryPivotFamily_secondChart](../../../../../mathematics/Algebra/LinearAlgebra/PivotFixtures/Variant898313cd6f0562d99b402a9a287b6062782361d01b17e5ee4f06fb08739448a9.lean/declarations/boundarypivotfamily-secondchart--e6ce3ff4a826fca94c2c95ed.md) | 119 | `result-track:e6ce3ff4a826fca94c2c95ed643f65fdfe4bef49b9613f6e9b6c0b926c9c9127` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
