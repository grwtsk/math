# Verification target: GRWTSK.Algebra.LinearAlgebra.SourceRecognitionGuardAttempt01.Variant2a428791be3b3503c030fd2ba8ad6f22b2463a5933c63e8087199c65874e3882

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "8fcf7018ca422ee59b536145e07901d103bf0339",
  "lexical_observation_count": 22,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/SourceRecognitionGuardAttempt01/Variant2a428791be3b3503c030fd2ba8ad6f22b2463a5933c63e8087199c65874e3882.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/SourceRecognitionGuardAttempt01/Variant2a428791be3b3503c030fd2ba8ad6f22b2463a5933c63e8087199c65874e3882.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/SourceRecognitionGuardAttempt01/Variant2a428791be3b3503c030fd2ba8ad6f22b2463a5933c63e8087199c65874e3882.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `8fcf7018ca422ee59b536145e07901d103bf0339`.

Source path: `GRWTSK/Algebra/LinearAlgebra/SourceRecognitionGuardAttempt01/Variant2a428791be3b3503c030fd2ba8ad6f22b2463a5933c63e8087199c65874e3882.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/SourceRecognitionGuardAttempt01/Variant2a428791be3b3503c030fd2ba8ad6f22b2463a5933c63e8087199c65874e3882.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.Matrix.Spectrum` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.Eigenspace.Charpoly` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [symmetric_charpoly_zero_real](../../../../../mathematics/Algebra/LinearAlgebra/SourceRecognitionGuardAttempt01/Variant2a428791be3b3503c030fd2ba8ad6f22b2463a5933c63e8087199c65874e3882.lean/declarations/symmetric-charpoly-zero-real--e8b4a3fbd59900a86e4115f3.md) | 21 | `result-track:e8b4a3fbd59900a86e4115f3dc327c84a69750f0210e0fcba65be5ff1a127c4a` |
| 2 | `def` | [ZeroTransport](../../../../../mathematics/Algebra/LinearAlgebra/SourceRecognitionGuardAttempt01/Variant2a428791be3b3503c030fd2ba8ad6f22b2463a5933c63e8087199c65874e3882.lean/declarations/zerotransport--aaae9ea72b9d43eea513da4f.md) | 30 | `declaration-track:aaae9ea72b9d43eea513da4f1f5d2d68f38187042b19059fb2ca2d30fc731339` |
| 3 | `def` | [RealAxisReflection](../../../../../mathematics/Algebra/LinearAlgebra/SourceRecognitionGuardAttempt01/Variant2a428791be3b3503c030fd2ba8ad6f22b2463a5933c63e8087199c65874e3882.lean/declarations/realaxisreflection--84a1c6e2cdc12639f44084b9.md) | 34 | `declaration-track:84a1c6e2cdc12639f44084b94a401880a04117f3d32f4ddc7ea959e4be328613` |
| 4 | `structure` | [Recognition](../../../../../mathematics/Algebra/LinearAlgebra/SourceRecognitionGuardAttempt01/Variant2a428791be3b3503c030fd2ba8ad6f22b2463a5933c63e8087199c65874e3882.lean/declarations/recognition--873f91b4d14256ee28d4f154.md) | 38 | `declaration-track:873f91b4d14256ee28d4f15476ba6f5fc064b54ef619bef9a8f1080bd4484a34` |
| 5 | `theorem` | [recognition_transfers_real_zeros](../../../../../mathematics/Algebra/LinearAlgebra/SourceRecognitionGuardAttempt01/Variant2a428791be3b3503c030fd2ba8ad6f22b2463a5933c63e8087199c65874e3882.lean/declarations/recognition-transfers-real-zeros--64b6ec69c83db832ecb67d6b.md) | 43 | `result-track:64b6ec69c83db832ecb67d6bff544cee18f6b148d44ba47d7501a9e5249da157` |
| 6 | `theorem` | [exact_comparison_zero_transport](../../../../../mathematics/Algebra/LinearAlgebra/SourceRecognitionGuardAttempt01/Variant2a428791be3b3503c030fd2ba8ad6f22b2463a5933c63e8087199c65874e3882.lean/declarations/exact-comparison-zero-transport--fb2aa3f8fdf30915d35474e9.md) | 51 | `result-track:fb2aa3f8fdf30915d35474e9ea6ef06a89f4c6775c3d59f4f8df052c8ff366d2` |
| 7 | `theorem` | [recognition_of_exact_comparison](../../../../../mathematics/Algebra/LinearAlgebra/SourceRecognitionGuardAttempt01/Variant2a428791be3b3503c030fd2ba8ad6f22b2463a5933c63e8087199c65874e3882.lean/declarations/recognition-of-exact-comparison--5fa6489e74e5bde8fe5a11d1.md) | 60 | `result-track:5fa6489e74e5bde8fe5a11d1a80687618474140a8a5e646fecaae56946f7e691` |
| 8 | `theorem` | [real_affine_reflection](../../../../../mathematics/Algebra/LinearAlgebra/SourceRecognitionGuardAttempt01/Variant2a428791be3b3503c030fd2ba8ad6f22b2463a5933c63e8087199c65874e3882.lean/declarations/real-affine-reflection--d29c0e1143391cb7971c7254.md) | 67 | `result-track:d29c0e1143391cb7971c72542e28cf42e39c737549c68133212b116e54965313` |
| 9 | `theorem` | [same_point_comparison_real_zeros](../../../../../mathematics/Algebra/LinearAlgebra/SourceRecognitionGuardAttempt01/Variant2a428791be3b3503c030fd2ba8ad6f22b2463a5933c63e8087199c65874e3882.lean/declarations/same-point-comparison-real-zeros--9bb3605337017db01d6106c2.md) | 74 | `result-track:9bb3605337017db01d6106c29b4d90cedc43690e12c7f13f825d0969618bad4a` |
| 10 | `def` | [zeroMatrix](../../../../../mathematics/Algebra/LinearAlgebra/SourceRecognitionGuardAttempt01/Variant2a428791be3b3503c030fd2ba8ad6f22b2463a5933c63e8087199c65874e3882.lean/declarations/zeromatrix--c15b9a05c5a165fe104e4b92.md) | 83 | `declaration-track:c15b9a05c5a165fe104e4b925785e4abc9faba3df42165ef7d04d5196a93112c` |
| 11 | `def` | [hostileSource](../../../../../mathematics/Algebra/LinearAlgebra/SourceRecognitionGuardAttempt01/Variant2a428791be3b3503c030fd2ba8ad6f22b2463a5933c63e8087199c65874e3882.lean/declarations/hostilesource--ed281d4d15556add3e3e352a.md) | 85 | `declaration-track:ed281d4d15556add3e3e352a3ef195d5f86697e763a3ed60e94d3f029af42130` |
| 12 | `theorem` | [zeroMatrix_hermitian](../../../../../mathematics/Algebra/LinearAlgebra/SourceRecognitionGuardAttempt01/Variant2a428791be3b3503c030fd2ba8ad6f22b2463a5933c63e8087199c65874e3882.lean/declarations/zeromatrix-hermitian--a6f633da3c2cb616dd6f646b.md) | 87 | `result-track:a6f633da3c2cb616dd6f646b5eb5ad360e63d04783dea114f065481bf28075e6` |
| 13 | `theorem` | [zeroMatrix_charpoly](../../../../../mathematics/Algebra/LinearAlgebra/SourceRecognitionGuardAttempt01/Variant2a428791be3b3503c030fd2ba8ad6f22b2463a5933c63e8087199c65874e3882.lean/declarations/zeromatrix-charpoly--7f43facfd3cdfb4499682de6.md) | 90 | `result-track:7f43facfd3cdfb4499682de6888181375a87cc312beed093e73e499589d62508` |
| 14 | `theorem` | [zeroMatrix_charpoly_zeros_real](../../../../../mathematics/Algebra/LinearAlgebra/SourceRecognitionGuardAttempt01/Variant2a428791be3b3503c030fd2ba8ad6f22b2463a5933c63e8087199c65874e3882.lean/declarations/zeromatrix-charpoly-zeros-real--11dacfb0d3f301552fffc63f.md) | 93 | `result-track:11dacfb0d3f301552fffc63ff5bef35f75e7255cefdd0074d0e87639f8aa68f6` |
| 15 | `theorem` | [hostileSource_nonreal_zero](../../../../../mathematics/Algebra/LinearAlgebra/SourceRecognitionGuardAttempt01/Variant2a428791be3b3503c030fd2ba8ad6f22b2463a5933c63e8087199c65874e3882.lean/declarations/hostilesource-nonreal-zero--56256df500db3940f4f29080.md) | 99 | `result-track:56256df500db3940f4f2908052bc356e7e296fd5622f6cf70dbffe6c7fc54b55` |
| 16 | `theorem` | [finite_boundary_reality_does_not_identify_source](../../../../../mathematics/Algebra/LinearAlgebra/SourceRecognitionGuardAttempt01/Variant2a428791be3b3503c030fd2ba8ad6f22b2463a5933c63e8087199c65874e3882.lean/declarations/finite-boundary-reality-does-not-identify-source--804113ad2c4534f90ee9c52d.md) | 104 | `result-track:804113ad2c4534f90ee9c52dc56eda49b36ac3bc66b7cede567c03b0820a7ee7` |
| 17 | `def` | [shiftedBoundary](../../../../../mathematics/Algebra/LinearAlgebra/SourceRecognitionGuardAttempt01/Variant2a428791be3b3503c030fd2ba8ad6f22b2463a5933c63e8087199c65874e3882.lean/declarations/shiftedboundary--9635a53506cd95ae21ac4c23.md) | 113 | `declaration-track:9635a53506cd95ae21ac4c235e8ac1df4df32738551714a04e5624a4a9816461` |
| 18 | `def` | [squareMap](../../../../../mathematics/Algebra/LinearAlgebra/SourceRecognitionGuardAttempt01/Variant2a428791be3b3503c030fd2ba8ad6f22b2463a5933c63e8087199c65874e3882.lean/declarations/squaremap--1194b8b75da23e0f3040ecac.md) | 115 | `declaration-track:1194b8b75da23e0f3040ecac86ae5b218f3606ba849cc270ce9f5e6a1caf7407` |
| 19 | `theorem` | [shiftedBoundary_real_zeros](../../../../../mathematics/Algebra/LinearAlgebra/SourceRecognitionGuardAttempt01/Variant2a428791be3b3503c030fd2ba8ad6f22b2463a5933c63e8087199c65874e3882.lean/declarations/shiftedboundary-real-zeros--64ac0699d6b3d7a341b27e4f.md) | 117 | `result-track:64ac0699d6b3d7a341b27e4fa8305d5610ce7947904e9f451c40feaa550838ff` |
| 20 | `theorem` | [square_comparison_exact](../../../../../mathematics/Algebra/LinearAlgebra/SourceRecognitionGuardAttempt01/Variant2a428791be3b3503c030fd2ba8ad6f22b2463a5933c63e8087199c65874e3882.lean/declarations/square-comparison-exact--7a72ae9bae930a80c4ac6f06.md) | 122 | `result-track:7a72ae9bae930a80c4ac6f068d5f3b404f11f91d2adb215b8ee57bb0ca0708a6` |
| 21 | `theorem` | [square_zero_transport](../../../../../mathematics/Algebra/LinearAlgebra/SourceRecognitionGuardAttempt01/Variant2a428791be3b3503c030fd2ba8ad6f22b2463a5933c63e8087199c65874e3882.lean/declarations/square-zero-transport--1f493b72140f0d208048a7ba.md) | 127 | `result-track:1f493b72140f0d208048a7ba1e1180e435fbc45ef41fbcf0fb0d523c98d3a3d7` |
| 22 | `theorem` | [square_map_not_real_axis_reflecting](../../../../../mathematics/Algebra/LinearAlgebra/SourceRecognitionGuardAttempt01/Variant2a428791be3b3503c030fd2ba8ad6f22b2463a5933c63e8087199c65874e3882.lean/declarations/square-map-not-real-axis-reflecting--0dae5f3c32996aba14db474e.md) | 131 | `result-track:0dae5f3c32996aba14db474e9a3b691ed5c6e76c22fa8b55379d9370e34a5b44` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
