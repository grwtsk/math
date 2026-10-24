# Verification target: GRWTSK.Algebra.LinearAlgebra.JacobiTransfer

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "8390b8781c489e6258c91c64ce4d235f8ae72639",
  "lexical_observation_count": 26,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/JacobiTransfer.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/LinearAlgebra/JacobiTransfer__SourceOccurrenced604f0d07e070ebd05fe8d03.lean/index.md) · [Full source](../../../../mathematics/Algebra/LinearAlgebra/JacobiTransfer__SourceOccurrenced604f0d07e070ebd05fe8d03.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `8390b8781c489e6258c91c64ce4d235f8ae72639`.

Source path: `GRWTSK/Algebra/LinearAlgebra/JacobiTransfer.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/JacobiTransfer.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.LinearAlgebra.Matrix.SpecialLinearGroup` — import line 5; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.Matrix.Notation` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.Matrix.Trace` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.FinCases` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.FieldSimp` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Ring` — import line 10; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.NormNum` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.LinearCombination` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.IntervalCases` — import line 13; external provider; requires a separately pinned dependency.
- [`GRWTSK.Algebra.LinearAlgebra.SchrodingerTransfer`](../../../../mathematics/Algebra/LinearAlgebra/SchrodingerTransfer__SourceOccurrencec32d911d310462fbb398b4c4.lean/index.md) — import line 14; pinned internal source present.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [rawJacobiTransfer](../../../../mathematics/Algebra/LinearAlgebra/JacobiTransfer__SourceOccurrenced604f0d07e070ebd05fe8d03.lean/declarations/rawjacobitransfer--27ff51cb65e88582633a3e81.md) | 42 | `declaration-track:27ff51cb65e88582633a3e8124021dd9011502b194128083be87c63a5146a7f9` |
| 2 | `def` | [jacobiRecurrence](../../../../mathematics/Algebra/LinearAlgebra/JacobiTransfer__SourceOccurrenced604f0d07e070ebd05fe8d03.lean/declarations/jacobirecurrence--cb61f465f78a15c32a515f64.md) | 49 | `declaration-track:cb61f465f78a15c32a515f6444751f8142729692fa4f4ef83010cdc843cf7977` |
| 3 | `theorem` | [jacobi_recurrence_iff_solved](../../../../mathematics/Algebra/LinearAlgebra/JacobiTransfer__SourceOccurrenced604f0d07e070ebd05fe8d03.lean/declarations/jacobi-recurrence-iff-solved--32808b734685daa3b71063c1.md) | 56 | `result-track:32808b734685daa3b71063c1c16a6c8a1335ffefbe6c10ba1d433a3116dd3d0e` |
| 4 | `theorem` | [jacobi_recurrence_iff_raw_transfer](../../../../mathematics/Algebra/LinearAlgebra/JacobiTransfer__SourceOccurrenced604f0d07e070ebd05fe8d03.lean/declarations/jacobi-recurrence-iff-raw-transfer--2dbad736486c0bdf17eec2ec.md) | 75 | `result-track:2dbad736486c0bdf17eec2ec93f0563bb4e4341b906be56cab787bb375dcc431` |
| 5 | `theorem` | [det_rawJacobiTransfer](../../../../mathematics/Algebra/LinearAlgebra/JacobiTransfer__SourceOccurrenced604f0d07e070ebd05fe8d03.lean/declarations/det-rawjacobitransfer--bab5f1437ce47369cdc51c62.md) | 99 | `result-track:bab5f1437ce47369cdc51c62abbd8100f51d8cc3ecff9742e722447e153e4de0` |
| 6 | `def` | [weightedState](../../../../mathematics/Algebra/LinearAlgebra/JacobiTransfer__SourceOccurrenced604f0d07e070ebd05fe8d03.lean/declarations/weightedstate--77c0a68e6a75e049179f4b66.md) | 106 | `declaration-track:77c0a68e6a75e049179f4b66698f16b291abcf8488951e8d1bbae2523201185d` |
| 7 | `def` | [weightedJacobiTransfer](../../../../mathematics/Algebra/LinearAlgebra/JacobiTransfer__SourceOccurrenced604f0d07e070ebd05fe8d03.lean/declarations/weightedjacobitransfer--44a97222003ba83faf4581db.md) | 112 | `declaration-track:44a97222003ba83faf4581db8bc632c587a3321809e6cf81dfc20a8124e0f278` |
| 8 | `theorem` | [jacobi_recurrence_iff_weighted_transfer](../../../../mathematics/Algebra/LinearAlgebra/JacobiTransfer__SourceOccurrenced604f0d07e070ebd05fe8d03.lean/declarations/jacobi-recurrence-iff-weighted-transfer--6f115a3160f390279703b894.md) | 119 | `result-track:6f115a3160f390279703b89490d7d4d4896a4707680fecbfbdf2dcaaa79b48f7` |
| 9 | `theorem` | [det_weightedJacobiTransfer](../../../../mathematics/Algebra/LinearAlgebra/JacobiTransfer__SourceOccurrenced604f0d07e070ebd05fe8d03.lean/declarations/det-weightedjacobitransfer--83ace9ebc6d357d6ae86a5b6.md) | 144 | `result-track:83ace9ebc6d357d6ae86a5b62a43a5dc6aceacaaedb97860345b4d27d1096a87` |
| 10 | `def` | [weightedJacobiSL](../../../../mathematics/Algebra/LinearAlgebra/JacobiTransfer__SourceOccurrenced604f0d07e070ebd05fe8d03.lean/declarations/weightedjacobisl--23d90aa4b741aa7147f85351.md) | 152 | `declaration-track:23d90aa4b741aa7147f8535100fc7bf86dacd8ef1fc35ccd19b2fbb42681a179` |
| 11 | `theorem` | [weightedJacobiTransfer_schrodinger](../../../../mathematics/Algebra/LinearAlgebra/JacobiTransfer__SourceOccurrenced604f0d07e070ebd05fe8d03.lean/declarations/weightedjacobitransfer-schrodinger--32ab1418025176d17b3b04ac.md) | 159 | `result-track:32ab1418025176d17b3b04acc6ada8d6f9892766e873bbcb40b3c950faf3187f` |
| 12 | `theorem` | [rawJacobiTransfer_schrodinger](../../../../mathematics/Algebra/LinearAlgebra/JacobiTransfer__SourceOccurrenced604f0d07e070ebd05fe8d03.lean/declarations/rawjacobitransfer-schrodinger--fcda663f6f772e19f9dbf044.md) | 166 | `result-track:fcda663f6f772e19f9dbf044dae1f81d1e1df60e98ff85ef87230ac92e14c9f2` |
| 13 | `def` | [stateWeightingMatrix](../../../../mathematics/Algebra/LinearAlgebra/JacobiTransfer__SourceOccurrenced604f0d07e070ebd05fe8d03.lean/declarations/stateweightingmatrix--0fc3d024644cab42f858c098.md) | 173 | `declaration-track:0fc3d024644cab42f858c0981fbe7add8bca4e9f8a27fc9eedd995dc86dc6fbd` |
| 14 | `theorem` | [stateWeightingMatrix_mulVec](../../../../mathematics/Algebra/LinearAlgebra/JacobiTransfer__SourceOccurrenced604f0d07e070ebd05fe8d03.lean/declarations/stateweightingmatrix-mulvec--c06561fc6dcd82055fae2492.md) | 179 | `result-track:c06561fc6dcd82055fae2492551f6050e7f1f7da906a09d6237fe5e6685f4d83` |
| 15 | `theorem` | [weighted_raw_intertwining](../../../../mathematics/Algebra/LinearAlgebra/JacobiTransfer__SourceOccurrenced604f0d07e070ebd05fe8d03.lean/declarations/weighted-raw-intertwining--e241283c6dc4bee182e5851e.md) | 190 | `result-track:e241283c6dc4bee182e5851ea71fc92100a93d6bc7f24306a7038da4cb1d6602` |
| 16 | `def` | [rawSequenceState](../../../../mathematics/Algebra/LinearAlgebra/JacobiTransfer__SourceOccurrenced604f0d07e070ebd05fe8d03.lean/declarations/rawsequencestate--34bd1d9e538dcc0243f8c393.md) | 203 | `declaration-track:34bd1d9e538dcc0243f8c3933b25dd83dc912da37c4d81c4bd2e488df5424b5e` |
| 17 | `def` | [weightedSequenceState](../../../../mathematics/Algebra/LinearAlgebra/JacobiTransfer__SourceOccurrenced604f0d07e070ebd05fe8d03.lean/declarations/weightedsequencestate--49eb9347e85f58d3e25c6a3d.md) | 209 | `declaration-track:49eb9347e85f58d3e25c6a3d8da2adf84d007fd789e0ddae582f771f23dac464` |
| 18 | `theorem` | [schrodinger_sequence_iff_transfer](../../../../mathematics/Algebra/LinearAlgebra/JacobiTransfer__SourceOccurrenced604f0d07e070ebd05fe8d03.lean/declarations/schrodinger-sequence-iff-transfer--e11f9c7ff23244e7be8416b8.md) | 215 | `result-track:e11f9c7ff23244e7be8416b88b5d368ea1d210e98f1c5692040071122d22327f` |
| 19 | `theorem` | [jacobi_sequence_iff_raw_transfer](../../../../mathematics/Algebra/LinearAlgebra/JacobiTransfer__SourceOccurrenced604f0d07e070ebd05fe8d03.lean/declarations/jacobi-sequence-iff-raw-transfer--7e5b95e581a355d647ad9cbc.md) | 226 | `result-track:7e5b95e581a355d647ad9cbc98f3d22f7fa36036b754d9f58c1202b5533291fc` |
| 20 | `theorem` | [jacobi_sequence_iff_weighted_transfer](../../../../mathematics/Algebra/LinearAlgebra/JacobiTransfer__SourceOccurrenced604f0d07e070ebd05fe8d03.lean/declarations/jacobi-sequence-iff-weighted-transfer--ee2a1cd0b2682f6f40bd0599.md) | 239 | `result-track:ee2a1cd0b2682f6f40bd0599f14c5964356cd919fd940fa87f711240df13c6f6` |
| 21 | `theorem` | [rawJacobiTransfer_not_det_one](../../../../mathematics/Algebra/LinearAlgebra/JacobiTransfer__SourceOccurrenced604f0d07e070ebd05fe8d03.lean/declarations/rawjacobitransfer-not-det-one--363a7ab43a3b225b73cb52d2.md) | 251 | `result-track:363a7ab43a3b225b73cb52d2a355a30f0aba828a8b9764d30c3baaa75c3454d9` |
| 22 | `def` | [twoSiteJacobi](../../../../mathematics/Algebra/LinearAlgebra/JacobiTransfer__SourceOccurrenced604f0d07e070ebd05fe8d03.lean/declarations/twositejacobi--759940f48ea8b64e8262b69a.md) | 259 | `declaration-track:759940f48ea8b64e8262b69a0d2fce9fa50127bc3e89bb779e625d4f8cefde8f` |
| 23 | `theorem` | [twoSiteJacobi_cyclic](../../../../mathematics/Algebra/LinearAlgebra/JacobiTransfer__SourceOccurrenced604f0d07e070ebd05fe8d03.lean/declarations/twositejacobi-cyclic--17eaffcb7e24da6124fa0901.md) | 264 | `result-track:17eaffcb7e24da6124fa0901ddbac4a24b76633043dc3db87e9bb429cf23600f` |
| 24 | `theorem` | [cyclic_coefficient_zero_without_zero_eigenvector](../../../../mathematics/Algebra/LinearAlgebra/JacobiTransfer__SourceOccurrenced604f0d07e070ebd05fe8d03.lean/declarations/cyclic-coefficient-zero-without-zero-eigenvector--5f9df6c929d564a89933fefd.md) | 273 | `result-track:5f9df6c929d564a89933fefd22842c829d66e95d0619b60374ade0128d558e7d` |
| 25 | `theorem` | [twoSiteJacobi_first_three_moments_match](../../../../mathematics/Algebra/LinearAlgebra/JacobiTransfer__SourceOccurrenced604f0d07e070ebd05fe8d03.lean/declarations/twositejacobi-first-three-moments-match--98c6ff04950f256e599b5d86.md) | 291 | `result-track:98c6ff04950f256e599b5d8661e15e431748df90220993d78d497c703efac5ce` |
| 26 | `theorem` | [twoSiteJacobi_not_conjugate](../../../../mathematics/Algebra/LinearAlgebra/JacobiTransfer__SourceOccurrenced604f0d07e070ebd05fe8d03.lean/declarations/twositejacobi-not-conjugate--2a00c7e40bfae899c0d3d0c3.md) | 302 | `result-track:2a00c7e40bfae899c0d3d0c38508b9d87f9f89fa6af7f324c6d0409099197c54` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
