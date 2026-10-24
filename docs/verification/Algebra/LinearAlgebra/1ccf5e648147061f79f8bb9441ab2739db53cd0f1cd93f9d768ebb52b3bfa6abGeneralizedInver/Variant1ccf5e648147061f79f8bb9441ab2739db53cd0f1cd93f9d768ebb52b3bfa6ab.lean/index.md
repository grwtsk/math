# Verification target: GRWTSK.Algebra.LinearAlgebra.1ccf5e648147061f79f8bb9441ab2739db53cd0f1cd93f9d768ebb52b3bfa6abGeneralizedInver.Variant1ccf5e648147061f79f8bb9441ab2739db53cd0f1cd93f9d768ebb52b3bfa6ab

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "a9216ff4a8c89da7dc88ff19f5718f8d0c08b8d0",
  "lexical_observation_count": 12,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/1ccf5e648147061f79f8bb9441ab2739db53cd0f1cd93f9d768ebb52b3bfa6abGeneralizedInver/Variant1ccf5e648147061f79f8bb9441ab2739db53cd0f1cd93f9d768ebb52b3bfa6ab.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/1ccf5e648147061f79f8bb9441ab2739db53cd0f1cd93f9d768ebb52b3bfa6abGeneralizedInver/Variant1ccf5e648147061f79f8bb9441ab2739db53cd0f1cd93f9d768ebb52b3bfa6ab.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/1ccf5e648147061f79f8bb9441ab2739db53cd0f1cd93f9d768ebb52b3bfa6abGeneralizedInver/Variant1ccf5e648147061f79f8bb9441ab2739db53cd0f1cd93f9d768ebb52b3bfa6ab.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `a9216ff4a8c89da7dc88ff19f5718f8d0c08b8d0`.

Source path: `GRWTSK/Algebra/LinearAlgebra/1ccf5e648147061f79f8bb9441ab2739db53cd0f1cd93f9d768ebb52b3bfa6abGeneralizedInver/Variant1ccf5e648147061f79f8bb9441ab2739db53cd0f1cd93f9d768ebb52b3bfa6ab.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/1ccf5e648147061f79f8bb9441ab2739db53cd0f1cd93f9d768ebb52b3bfa6abGeneralizedInver/Variant1ccf5e648147061f79f8bb9441ab2739db53cd0f1cd93f9d768ebb52b3bfa6ab.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.PositiveAtlas.ExplicitSchurMatrix` — import line 1; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [GeneralizedInverseBlockRealization](../../../../../mathematics/Algebra/LinearAlgebra/1ccf5e648147061f79f8bb9441ab2739db53cd0f1cd93f9d768ebb52b3bfa6abGeneralizedInver/Variant1ccf5e648147061f79f8bb9441ab2739db53cd0f1cd93f9d768ebb52b3bfa6ab.lean/declarations/generalizedinverseblockrealization--3947650ab08b037fc980b28c.md) | 38 | `declaration-track:3947650ab08b037fc980b28c4f016657b6d35ee61e43ea856b39871ab5c48761` |
| 2 | `def` | [solve](../../../../../mathematics/Algebra/LinearAlgebra/1ccf5e648147061f79f8bb9441ab2739db53cd0f1cd93f9d768ebb52b3bfa6abGeneralizedInver/Variant1ccf5e648147061f79f8bb9441ab2739db53cd0f1cd93f9d768ebb52b3bfa6ab.lean/declarations/solve--c65cd1c847898573d95ca03d.md) | 64 | `declaration-track:c65cd1c847898573d95ca03dba82ad32453f01161f0325c8b7792bd032aac191` |
| 3 | `theorem` | [solve_apply](../../../../../mathematics/Algebra/LinearAlgebra/1ccf5e648147061f79f8bb9441ab2739db53cd0f1cd93f9d768ebb52b3bfa6abGeneralizedInver/Variant1ccf5e648147061f79f8bb9441ab2739db53cd0f1cd93f9d768ebb52b3bfa6ab.lean/declarations/solve-apply--eb222b1a40a2cbf9ad53b8b1.md) | 69 | `result-track:eb222b1a40a2cbf9ad53b8b1ab3ad8503fb8cbcaac2a0e1cb2345511f56e9073` |
| 4 | `theorem` | [provenance_mulVec_solve](../../../../../mathematics/Algebra/LinearAlgebra/1ccf5e648147061f79f8bb9441ab2739db53cd0f1cd93f9d768ebb52b3bfa6abGeneralizedInver/Variant1ccf5e648147061f79f8bb9441ab2739db53cd0f1cd93f9d768ebb52b3bfa6ab.lean/declarations/provenance-mulvec-solve--d017f1e961b38fe708e8445f.md) | 74 | `result-track:d017f1e961b38fe708e8445f4e2ae35e36c7a778716fc8dcbb7212b479f4ad08` |
| 5 | `theorem` | [form_sub_right](../../../../../mathematics/Algebra/LinearAlgebra/1ccf5e648147061f79f8bb9441ab2739db53cd0f1cd93f9d768ebb52b3bfa6abGeneralizedInver/Variant1ccf5e648147061f79f8bb9441ab2739db53cd0f1cd93f9d768ebb52b3bfa6ab.lean/declarations/form-sub-right--ce9140fad3d2e751adf64c83.md) | 80 | `result-track:ce9140fad3d2e751adf64c83cf33dcabdfa607402b673a6d5b75f15495bd04ed` |
| 6 | `def` | [blockSchurSolver](../../../../../mathematics/Algebra/LinearAlgebra/1ccf5e648147061f79f8bb9441ab2739db53cd0f1cd93f9d768ebb52b3bfa6abGeneralizedInver/Variant1ccf5e648147061f79f8bb9441ab2739db53cd0f1cd93f9d768ebb52b3bfa6ab.lean/declarations/blockschursolver--41c2776012bbc1819ecfe87e.md) | 92 | `declaration-track:41c2776012bbc1819ecfe87ec2bd13b0b8b1d97059c14a33b65654a0d88376be` |
| 7 | `theorem` | [blockSchurSolver_solve](../../../../../mathematics/Algebra/LinearAlgebra/1ccf5e648147061f79f8bb9441ab2739db53cd0f1cd93f9d768ebb52b3bfa6abGeneralizedInver/Variant1ccf5e648147061f79f8bb9441ab2739db53cd0f1cd93f9d768ebb52b3bfa6ab.lean/declarations/blockschursolver-solve--4b97fe06b7182c2b90047f0e.md) | 103 | `result-track:4b97fe06b7182c2b90047f0e5752457d5eb5fe5e3c968873a51658e198566684` |
| 8 | `def` | [generalizedSchurMatrix](../../../../../mathematics/Algebra/LinearAlgebra/1ccf5e648147061f79f8bb9441ab2739db53cd0f1cd93f9d768ebb52b3bfa6abGeneralizedInver/Variant1ccf5e648147061f79f8bb9441ab2739db53cd0f1cd93f9d768ebb52b3bfa6ab.lean/declarations/generalizedschurmatrix--cb3955c2dbe42f5635ca34a0.md) | 108 | `declaration-track:cb3955c2dbe42f5635ca34a0f7cc4f729244029d2c0e4909572bd90152d4bf8d` |
| 9 | `theorem` | [generalizedSchurCorrection_pairing](../../../../../mathematics/Algebra/LinearAlgebra/1ccf5e648147061f79f8bb9441ab2739db53cd0f1cd93f9d768ebb52b3bfa6abGeneralizedInver/Variant1ccf5e648147061f79f8bb9441ab2739db53cd0f1cd93f9d768ebb52b3bfa6ab.lean/declarations/generalizedschurcorrection-pairing--261d949284a156880bd24475.md) | 115 | `result-track:261d949284a156880bd244753783becaa801847af9dcfb8b7d586e29fafdc2f2` |
| 10 | `theorem` | [schurForm_eq_generalizedSchurMatrix](../../../../../mathematics/Algebra/LinearAlgebra/1ccf5e648147061f79f8bb9441ab2739db53cd0f1cd93f9d768ebb52b3bfa6abGeneralizedInver/Variant1ccf5e648147061f79f8bb9441ab2739db53cd0f1cd93f9d768ebb52b3bfa6ab.lean/declarations/schurform-eq-generalizedschurmatrix--3c400e994d75acea58121dc4.md) | 136 | `result-track:3c400e994d75acea58121dc4a1a872772e9f2bcfc53fd75a77f9185771022a8f` |
| 11 | `theorem` | [generalizedSchurMatrix_nonnegative](../../../../../mathematics/Algebra/LinearAlgebra/1ccf5e648147061f79f8bb9441ab2739db53cd0f1cd93f9d768ebb52b3bfa6abGeneralizedInver/Variant1ccf5e648147061f79f8bb9441ab2739db53cd0f1cd93f9d768ebb52b3bfa6ab.lean/declarations/generalizedschurmatrix-nonnegative--3c4f7b165226118694a14dd0.md) | 147 | `result-track:3c4f7b165226118694a14dd0c49a23c940e7f4a9874b2440171cc16d759f51f5` |
| 12 | `theorem` | [autonomous_energy_decomposition](../../../../../mathematics/Algebra/LinearAlgebra/1ccf5e648147061f79f8bb9441ab2739db53cd0f1cd93f9d768ebb52b3bfa6abGeneralizedInver/Variant1ccf5e648147061f79f8bb9441ab2739db53cd0f1cd93f9d768ebb52b3bfa6ab.lean/declarations/autonomous-energy-decomposition--030e63a7c5591b158d4dbad5.md) | 155 | `result-track:030e63a7c5591b158d4dbad545d8235df53db557693b2b234aa99e0802db731e` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
