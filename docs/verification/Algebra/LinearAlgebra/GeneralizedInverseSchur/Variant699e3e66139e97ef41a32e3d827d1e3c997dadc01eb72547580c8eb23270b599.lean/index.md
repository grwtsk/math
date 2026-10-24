# Verification target: GRWTSK.Algebra.LinearAlgebra.GeneralizedInverseSchur.Variant699e3e66139e97ef41a32e3d827d1e3c997dadc01eb72547580c8eb23270b599

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "67970fb6f7f45d955c73422f600a55b72f448b33",
  "lexical_observation_count": 12,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/GeneralizedInverseSchur/Variant699e3e66139e97ef41a32e3d827d1e3c997dadc01eb72547580c8eb23270b599.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/GeneralizedInverseSchur/Variant699e3e66139e97ef41a32e3d827d1e3c997dadc01eb72547580c8eb23270b599.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/GeneralizedInverseSchur/Variant699e3e66139e97ef41a32e3d827d1e3c997dadc01eb72547580c8eb23270b599.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `67970fb6f7f45d955c73422f600a55b72f448b33`.

Source path: `GRWTSK/Algebra/LinearAlgebra/GeneralizedInverseSchur/Variant699e3e66139e97ef41a32e3d827d1e3c997dadc01eb72547580c8eb23270b599.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/GeneralizedInverseSchur/Variant699e3e66139e97ef41a32e3d827d1e3c997dadc01eb72547580c8eb23270b599.lean.json)

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
| 1 | `structure` | [GeneralizedInverseBlockRealization](../../../../../mathematics/Algebra/LinearAlgebra/GeneralizedInverseSchur/Variant699e3e66139e97ef41a32e3d827d1e3c997dadc01eb72547580c8eb23270b599.lean/declarations/generalizedinverseblockrealization--9cdfb573ab35133d7a22f963.md) | 38 | `declaration-track:9cdfb573ab35133d7a22f9638d7aff25c62f067a2afeab74e24d691119779eef` |
| 2 | `def` | [solve](../../../../../mathematics/Algebra/LinearAlgebra/GeneralizedInverseSchur/Variant699e3e66139e97ef41a32e3d827d1e3c997dadc01eb72547580c8eb23270b599.lean/declarations/solve--a03ac226831958dcf60eb7f9.md) | 69 | `declaration-track:a03ac226831958dcf60eb7f9e7be2b348b59291c6d134926f2603bd4523710e5` |
| 3 | `theorem` | [solve_apply](../../../../../mathematics/Algebra/LinearAlgebra/GeneralizedInverseSchur/Variant699e3e66139e97ef41a32e3d827d1e3c997dadc01eb72547580c8eb23270b599.lean/declarations/solve-apply--70228b59bbcf7f1c6edee9d3.md) | 74 | `result-track:70228b59bbcf7f1c6edee9d3af6cab37c906f302c7bc30356b7dd7de4f80e79d` |
| 4 | `theorem` | [provenance_mulVec_solve](../../../../../mathematics/Algebra/LinearAlgebra/GeneralizedInverseSchur/Variant699e3e66139e97ef41a32e3d827d1e3c997dadc01eb72547580c8eb23270b599.lean/declarations/provenance-mulvec-solve--53e2480b48763703d0e3f03e.md) | 79 | `result-track:53e2480b48763703d0e3f03e29cf1f8a6106c94db3da21a933ad5912510337b0` |
| 5 | `theorem` | [form_sub_right](../../../../../mathematics/Algebra/LinearAlgebra/GeneralizedInverseSchur/Variant699e3e66139e97ef41a32e3d827d1e3c997dadc01eb72547580c8eb23270b599.lean/declarations/form-sub-right--34ff9a023ed8091d44b49358.md) | 85 | `result-track:34ff9a023ed8091d44b49358924bec2340d63e82a8d75a0b0b2e546c3b68ca4b` |
| 6 | `def` | [blockSchurSolver](../../../../../mathematics/Algebra/LinearAlgebra/GeneralizedInverseSchur/Variant699e3e66139e97ef41a32e3d827d1e3c997dadc01eb72547580c8eb23270b599.lean/declarations/blockschursolver--7893a17ee22759513c990981.md) | 97 | `declaration-track:7893a17ee22759513c990981f6f2c674aab84c50c5d4245a0dbe58bd2760046f` |
| 7 | `theorem` | [blockSchurSolver_solve](../../../../../mathematics/Algebra/LinearAlgebra/GeneralizedInverseSchur/Variant699e3e66139e97ef41a32e3d827d1e3c997dadc01eb72547580c8eb23270b599.lean/declarations/blockschursolver-solve--742d2985bd70b1b23ab84990.md) | 108 | `result-track:742d2985bd70b1b23ab84990850cb937b28682f68298cee8f3ee31d0e4fa5c91` |
| 8 | `def` | [generalizedSchurMatrix](../../../../../mathematics/Algebra/LinearAlgebra/GeneralizedInverseSchur/Variant699e3e66139e97ef41a32e3d827d1e3c997dadc01eb72547580c8eb23270b599.lean/declarations/generalizedschurmatrix--ad71f59237cb7168d7588f7d.md) | 113 | `declaration-track:ad71f59237cb7168d7588f7d64ce6e8a9d9397b05b66f2e90edb76b738fedd8b` |
| 9 | `theorem` | [generalizedSchurCorrection_pairing](../../../../../mathematics/Algebra/LinearAlgebra/GeneralizedInverseSchur/Variant699e3e66139e97ef41a32e3d827d1e3c997dadc01eb72547580c8eb23270b599.lean/declarations/generalizedschurcorrection-pairing--10f9d4e5228595e5871fe7bb.md) | 120 | `result-track:10f9d4e5228595e5871fe7bb65bebbae8f758bb8f19271adfc3bf356aea30f35` |
| 10 | `theorem` | [schurForm_eq_generalizedSchurMatrix](../../../../../mathematics/Algebra/LinearAlgebra/GeneralizedInverseSchur/Variant699e3e66139e97ef41a32e3d827d1e3c997dadc01eb72547580c8eb23270b599.lean/declarations/schurform-eq-generalizedschurmatrix--d0f71371bec7e5afe9d00a96.md) | 141 | `result-track:d0f71371bec7e5afe9d00a968c508a18c866d417def444b6481bf4796b2b8b88` |
| 11 | `theorem` | [generalizedSchurMatrix_nonnegative](../../../../../mathematics/Algebra/LinearAlgebra/GeneralizedInverseSchur/Variant699e3e66139e97ef41a32e3d827d1e3c997dadc01eb72547580c8eb23270b599.lean/declarations/generalizedschurmatrix-nonnegative--cd644a97d309609f3ed87e66.md) | 152 | `result-track:cd644a97d309609f3ed87e669a4f143db662406e7009445b9431d167ec2e2142` |
| 12 | `theorem` | [autonomous_energy_decomposition](../../../../../mathematics/Algebra/LinearAlgebra/GeneralizedInverseSchur/Variant699e3e66139e97ef41a32e3d827d1e3c997dadc01eb72547580c8eb23270b599.lean/declarations/autonomous-energy-decomposition--2a06506117b7a0244d1bfd07.md) | 160 | `result-track:2a06506117b7a0244d1bfd071292e7d1c86cf17292877b3a80cb0f339723d4bc` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
