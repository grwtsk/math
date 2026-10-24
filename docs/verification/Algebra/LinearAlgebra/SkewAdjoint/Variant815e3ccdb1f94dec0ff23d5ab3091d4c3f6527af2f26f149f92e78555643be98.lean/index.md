# Verification target: GRWTSK.Algebra.LinearAlgebra.SkewAdjoint.Variant815e3ccdb1f94dec0ff23d5ab3091d4c3f6527af2f26f149f92e78555643be98

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "45df81f4957206bb923db30886e655a133e5f2b0",
  "lexical_observation_count": 14,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/SkewAdjoint/Variant815e3ccdb1f94dec0ff23d5ab3091d4c3f6527af2f26f149f92e78555643be98.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/SkewAdjoint/Variant815e3ccdb1f94dec0ff23d5ab3091d4c3f6527af2f26f149f92e78555643be98.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/SkewAdjoint/Variant815e3ccdb1f94dec0ff23d5ab3091d4c3f6527af2f26f149f92e78555643be98.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `45df81f4957206bb923db30886e655a133e5f2b0`.

Source path: `GRWTSK/Algebra/LinearAlgebra/SkewAdjoint/Variant815e3ccdb1f94dec0ff23d5ab3091d4c3f6527af2f26f149f92e78555643be98.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/SkewAdjoint/Variant815e3ccdb1f94dec0ff23d5ab3091d4c3f6527af2f26f149f92e78555643be98.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Lie.Matrix` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.Matrix.SesquilinearForm` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.NoncommRing` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [LinearMap.BilinForm.isSkewAdjoint_bracket](../../../../../mathematics/Algebra/LinearAlgebra/SkewAdjoint/Variant815e3ccdb1f94dec0ff23d5ab3091d4c3f6527af2f26f149f92e78555643be98.lean/declarations/linearmap-bilinform-isskewadjoint-bracket--e2adf3dbe2697ad4b1830923.md) | 43 | `result-track:e2adf3dbe2697ad4b18309238e1ea4fc0f289289337b39dd83f74d08d1e51bdb` |
| 2 | `def` | [skewAdjointLieSubalgebra](../../../../../mathematics/Algebra/LinearAlgebra/SkewAdjoint/Variant815e3ccdb1f94dec0ff23d5ab3091d4c3f6527af2f26f149f92e78555643be98.lean/declarations/skewadjointliesubalgebra--dc7dcbcbdb1fac14beabdce0.md) | 54 | `declaration-track:dc7dcbcbdb1fac14beabdce05ba0bf87cf14ba19d7a3d507df55714d7b13d8ab` |
| 3 | `def` | [skewAdjointLieSubalgebraEquiv](../../../../../mathematics/Algebra/LinearAlgebra/SkewAdjoint/Variant815e3ccdb1f94dec0ff23d5ab3091d4c3f6527af2f26f149f92e78555643be98.lean/declarations/skewadjointliesubalgebraequiv--5270ef3664929f7c95bda39e.md) | 62 | `declaration-track:5270ef3664929f7c95bda39e684eb08661959cbf016aa6f53e71dcf979427215` |
| 4 | `theorem` | [skewAdjointLieSubalgebraEquiv_apply](../../../../../mathematics/Algebra/LinearAlgebra/SkewAdjoint/Variant815e3ccdb1f94dec0ff23d5ab3091d4c3f6527af2f26f149f92e78555643be98.lean/declarations/skewadjointliesubalgebraequiv-apply--a2364e29df13fb2c4f067275.md) | 71 | `result-track:a2364e29df13fb2c4f0672751c8de7a6dca6a2240a2918e5aec8b194f5a9d20c` |
| 5 | `theorem` | [skewAdjointLieSubalgebraEquiv_symm_apply](../../../../../mathematics/Algebra/LinearAlgebra/SkewAdjoint/Variant815e3ccdb1f94dec0ff23d5ab3091d4c3f6527af2f26f149f92e78555643be98.lean/declarations/skewadjointliesubalgebraequiv-symm-apply--267d53eb05e5105c60842133.md) | 77 | `result-track:267d53eb05e5105c60842133c05554934021c74217194896f1bd7015cd6b6d0a` |
| 6 | `theorem` | [Matrix.lie_transpose](../../../../../mathematics/Algebra/LinearAlgebra/SkewAdjoint/Variant815e3ccdb1f94dec0ff23d5ab3091d4c3f6527af2f26f149f92e78555643be98.lean/declarations/matrix-lie-transpose--b1bf914d3dc8919e66d95fa5.md) | 90 | `result-track:b1bf914d3dc8919e66d95fa5a326027cb9fd22b59984252e06ecee549e4ba13a` |
| 7 | `theorem` | [Matrix.isSkewAdjoint_bracket](../../../../../mathematics/Algebra/LinearAlgebra/SkewAdjoint/Variant815e3ccdb1f94dec0ff23d5ab3091d4c3f6527af2f26f149f92e78555643be98.lean/declarations/matrix-isskewadjoint-bracket--197b8f50b58117228850db64.md) | 93 | `result-track:197b8f50b58117228850db64b3bfc3be9599d2cec5be3e2a978d80e3bd1b2c99` |
| 8 | `def` | [skewAdjointMatricesLieSubalgebra](../../../../../mathematics/Algebra/LinearAlgebra/SkewAdjoint/Variant815e3ccdb1f94dec0ff23d5ab3091d4c3f6527af2f26f149f92e78555643be98.lean/declarations/skewadjointmatricesliesubalgebra--23c2171b155bbfb4412cc092.md) | 105 | `declaration-track:23c2171b155bbfb4412cc092654e091f931a16a8d5bc2caf065048f8b5ec1bc3` |
| 9 | `theorem` | [mem_skewAdjointMatricesLieSubalgebra](../../../../../mathematics/Algebra/LinearAlgebra/SkewAdjoint/Variant815e3ccdb1f94dec0ff23d5ab3091d4c3f6527af2f26f149f92e78555643be98.lean/declarations/mem-skewadjointmatricesliesubalgebra--2d76aa3d1c7143ac4fe651c7.md) | 110 | `result-track:2d76aa3d1c7143ac4fe651c7743fa229501e11f08b699db21f042093686b1739` |
| 10 | `def` | [skewAdjointMatricesLieSubalgebraEquiv](../../../../../mathematics/Algebra/LinearAlgebra/SkewAdjoint/Variant815e3ccdb1f94dec0ff23d5ab3091d4c3f6527af2f26f149f92e78555643be98.lean/declarations/skewadjointmatricesliesubalgebraequiv--12add0cf7e4d985913a65136.md) | 116 | `declaration-track:12add0cf7e4d985913a651360e4d8a153e109a39e8afc0c7c3045ee565cd0f0d` |
| 11 | `theorem` | [skewAdjointMatricesLieSubalgebraEquiv_apply](../../../../../mathematics/Algebra/LinearAlgebra/SkewAdjoint/Variant815e3ccdb1f94dec0ff23d5ab3091d4c3f6527af2f26f149f92e78555643be98.lean/declarations/skewadjointmatricesliesubalgebraequiv-apply--091e3acbbe14f7692f9a562d.md) | 127 | `result-track:091e3acbbe14f7692f9a562da25ba9402798e7a0e600737d78efaf2a36948c03` |
| 12 | `def` | [skewAdjointMatricesLieSubalgebraEquivTranspose](../../../../../mathematics/Algebra/LinearAlgebra/SkewAdjoint/Variant815e3ccdb1f94dec0ff23d5ab3091d4c3f6527af2f26f149f92e78555643be98.lean/declarations/skewadjointmatricesliesubalgebraequivtranspose--48725aa658c3cd6e107568f5.md) | 134 | `declaration-track:48725aa658c3cd6e107568f5aec1618f9c0e83d7aee68929e110cc21f36cbf05` |
| 13 | `theorem` | [skewAdjointMatricesLieSubalgebraEquivTranspose_apply](../../../../../mathematics/Algebra/LinearAlgebra/SkewAdjoint/Variant815e3ccdb1f94dec0ff23d5ab3091d4c3f6527af2f26f149f92e78555643be98.lean/declarations/skewadjointmatricesliesubalgebraequivtranspose-apply--74adf9aedbcf28c6b7edecb9.md) | 145 | `result-track:74adf9aedbcf28c6b7edecb984b9f5d78feffbdfae33169182c825898c55877d` |
| 14 | `theorem` | [mem_skewAdjointMatricesLieSubalgebra_unit_smul](../../../../../mathematics/Algebra/LinearAlgebra/SkewAdjoint/Variant815e3ccdb1f94dec0ff23d5ab3091d4c3f6527af2f26f149f92e78555643be98.lean/declarations/mem-skewadjointmatricesliesubalgebra-unit-smul--38927f5d5a463eb9ae62a781.md) | 151 | `result-track:38927f5d5a463eb9ae62a781303f1e8130ec9e20da393806ca18d8430573787a` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
