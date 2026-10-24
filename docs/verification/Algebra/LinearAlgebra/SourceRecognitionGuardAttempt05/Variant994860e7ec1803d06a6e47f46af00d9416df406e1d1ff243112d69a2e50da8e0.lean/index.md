# Verification target: GRWTSK.Algebra.LinearAlgebra.SourceRecognitionGuardAttempt05.Variant994860e7ec1803d06a6e47f46af00d9416df406e1d1ff243112d69a2e50da8e0

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "7983b1e43a379daad3950067df41bc4dcf11c171",
  "lexical_observation_count": 28,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/SourceRecognitionGuardAttempt05/Variant994860e7ec1803d06a6e47f46af00d9416df406e1d1ff243112d69a2e50da8e0.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/SourceRecognitionGuardAttempt05/Variant994860e7ec1803d06a6e47f46af00d9416df406e1d1ff243112d69a2e50da8e0.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/SourceRecognitionGuardAttempt05/Variant994860e7ec1803d06a6e47f46af00d9416df406e1d1ff243112d69a2e50da8e0.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `7983b1e43a379daad3950067df41bc4dcf11c171`.

Source path: `GRWTSK/Algebra/LinearAlgebra/SourceRecognitionGuardAttempt05/Variant994860e7ec1803d06a6e47f46af00d9416df406e1d1ff243112d69a2e50da8e0.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/SourceRecognitionGuardAttempt05/Variant994860e7ec1803d06a6e47f46af00d9416df406e1d1ff243112d69a2e50da8e0.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.Matrix.Spectrum` — import line 1; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.Eigenspace.Charpoly` — import line 2; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic` — import line 3; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [symmetric_charpoly_zero_real](../../../../../mathematics/Algebra/LinearAlgebra/SourceRecognitionGuardAttempt05/Variant994860e7ec1803d06a6e47f46af00d9416df406e1d1ff243112d69a2e50da8e0.lean/declarations/symmetric-charpoly-zero-real--b36247dd3cf9e945097ec98d.md) | 13 | `result-track:b36247dd3cf9e945097ec98d6dcd54f72e73e02e7cd7e5fe62b2de450984931c` |
| 2 | `theorem` | [hermitian_charpoly_zero_real](../../../../../mathematics/Algebra/LinearAlgebra/SourceRecognitionGuardAttempt05/Variant994860e7ec1803d06a6e47f46af00d9416df406e1d1ff243112d69a2e50da8e0.lean/declarations/hermitian-charpoly-zero-real--cc8fda63a0e122c24d41d3ea.md) | 22 | `result-track:cc8fda63a0e122c24d41d3ea0155227143189553e1f4b58d1bb7786008f72c1c` |
| 3 | `def` | [ZeroTransport](../../../../../mathematics/Algebra/LinearAlgebra/SourceRecognitionGuardAttempt05/Variant994860e7ec1803d06a6e47f46af00d9416df406e1d1ff243112d69a2e50da8e0.lean/declarations/zerotransport--9c7ce93bf52b9a382d40462a.md) | 32 | `declaration-track:9c7ce93bf52b9a382d40462adac2e7dd24650b6527a9e3307d0da587d856f8ae` |
| 4 | `def` | [RealAxisReflection](../../../../../mathematics/Algebra/LinearAlgebra/SourceRecognitionGuardAttempt05/Variant994860e7ec1803d06a6e47f46af00d9416df406e1d1ff243112d69a2e50da8e0.lean/declarations/realaxisreflection--452f1113ae45937dc5e77eac.md) | 36 | `declaration-track:452f1113ae45937dc5e77eacf0b155ef36797ada1699dfef6dc4750a699c19ed` |
| 5 | `structure` | [Recognition](../../../../../mathematics/Algebra/LinearAlgebra/SourceRecognitionGuardAttempt05/Variant994860e7ec1803d06a6e47f46af00d9416df406e1d1ff243112d69a2e50da8e0.lean/declarations/recognition--54e97c748a4b2e4ebff0060f.md) | 40 | `declaration-track:54e97c748a4b2e4ebff0060f4b00c0d3a50ad38dddbc1c4575ec7f6e95444b4d` |
| 6 | `theorem` | [recognition_transfers_real_zeros](../../../../../mathematics/Algebra/LinearAlgebra/SourceRecognitionGuardAttempt05/Variant994860e7ec1803d06a6e47f46af00d9416df406e1d1ff243112d69a2e50da8e0.lean/declarations/recognition-transfers-real-zeros--d15b798d8567932e8b921a00.md) | 45 | `result-track:d15b798d8567932e8b921a006b6b6e3843f75c10141e75bc88025c5fd522783a` |
| 7 | `theorem` | [exact_comparison_zero_transport](../../../../../mathematics/Algebra/LinearAlgebra/SourceRecognitionGuardAttempt05/Variant994860e7ec1803d06a6e47f46af00d9416df406e1d1ff243112d69a2e50da8e0.lean/declarations/exact-comparison-zero-transport--6c0189f21c22808f6f3666a0.md) | 53 | `result-track:6c0189f21c22808f6f3666a050020ee20f024afca2531e9acc1bec3b2441d895` |
| 8 | `theorem` | [recognition_of_exact_comparison](../../../../../mathematics/Algebra/LinearAlgebra/SourceRecognitionGuardAttempt05/Variant994860e7ec1803d06a6e47f46af00d9416df406e1d1ff243112d69a2e50da8e0.lean/declarations/recognition-of-exact-comparison--25dc3d80fc1bf3c1c3013407.md) | 62 | `result-track:25dc3d80fc1bf3c1c30134072108487eaeaaa5191b1eabb2d1604b88dd53febf` |
| 9 | `theorem` | [real_affine_reflection](../../../../../mathematics/Algebra/LinearAlgebra/SourceRecognitionGuardAttempt05/Variant994860e7ec1803d06a6e47f46af00d9416df406e1d1ff243112d69a2e50da8e0.lean/declarations/real-affine-reflection--3cb7fae27af16d8fb7289beb.md) | 69 | `result-track:3cb7fae27af16d8fb7289beb04acccc57ea178c6f602497e8d89f99d119460c8` |
| 10 | `theorem` | [same_point_comparison_real_zeros](../../../../../mathematics/Algebra/LinearAlgebra/SourceRecognitionGuardAttempt05/Variant994860e7ec1803d06a6e47f46af00d9416df406e1d1ff243112d69a2e50da8e0.lean/declarations/same-point-comparison-real-zeros--4fc1922cec6d37cbf3f28d43.md) | 76 | `result-track:4fc1922cec6d37cbf3f28d437b1c2de0086efb8624dfb359c70f6c16e87c0740` |
| 11 | `theorem` | [hermitian_real_affine_comparison_real_zeros](../../../../../mathematics/Algebra/LinearAlgebra/SourceRecognitionGuardAttempt05/Variant994860e7ec1803d06a6e47f46af00d9416df406e1d1ff243112d69a2e50da8e0.lean/declarations/hermitian-real-affine-comparison-real-zeros--e45cc8c20f2e9da9de489a28.md) | 85 | `result-track:e45cc8c20f2e9da9de489a281fb2961f6753b1f2d3df728497d9fa32719252a3` |
| 12 | `def` | [zeroMatrix](../../../../../mathematics/Algebra/LinearAlgebra/SourceRecognitionGuardAttempt05/Variant994860e7ec1803d06a6e47f46af00d9416df406e1d1ff243112d69a2e50da8e0.lean/declarations/zeromatrix--2a53c3e6fa93c0ac7cdd638c.md) | 95 | `declaration-track:2a53c3e6fa93c0ac7cdd638cb52bfc8aec3a98eaf1f28377d264a77ed7434b82` |
| 13 | `def` | [hostileSource](../../../../../mathematics/Algebra/LinearAlgebra/SourceRecognitionGuardAttempt05/Variant994860e7ec1803d06a6e47f46af00d9416df406e1d1ff243112d69a2e50da8e0.lean/declarations/hostilesource--1bf635fae37d0cd6d3c3abb6.md) | 97 | `declaration-track:1bf635fae37d0cd6d3c3abb66d2e284a17e663ddb5415db2ebd2f5fedd3fb1ba` |
| 14 | `theorem` | [zeroMatrix_hermitian](../../../../../mathematics/Algebra/LinearAlgebra/SourceRecognitionGuardAttempt05/Variant994860e7ec1803d06a6e47f46af00d9416df406e1d1ff243112d69a2e50da8e0.lean/declarations/zeromatrix-hermitian--f5e5718346273f2d045fe9e5.md) | 99 | `result-track:f5e5718346273f2d045fe9e520ad910c018a1bf9e8c6e1cb5276a62848b9051c` |
| 15 | `theorem` | [zeroMatrix_charpoly](../../../../../mathematics/Algebra/LinearAlgebra/SourceRecognitionGuardAttempt05/Variant994860e7ec1803d06a6e47f46af00d9416df406e1d1ff243112d69a2e50da8e0.lean/declarations/zeromatrix-charpoly--a034f80b56491d88cb5f9f58.md) | 102 | `result-track:a034f80b56491d88cb5f9f5888a0a832cbc2f92a9129247ed6372671eb9d5f9d` |
| 16 | `theorem` | [zeroMatrix_charpoly_zeros_real](../../../../../mathematics/Algebra/LinearAlgebra/SourceRecognitionGuardAttempt05/Variant994860e7ec1803d06a6e47f46af00d9416df406e1d1ff243112d69a2e50da8e0.lean/declarations/zeromatrix-charpoly-zeros-real--ffddf5f6a8203e35f6f8cd17.md) | 105 | `result-track:ffddf5f6a8203e35f6f8cd17c16b59adc7e477d14965d9243c5d5a1840fc87b4` |
| 17 | `theorem` | [hostileSource_nonreal_zero](../../../../../mathematics/Algebra/LinearAlgebra/SourceRecognitionGuardAttempt05/Variant994860e7ec1803d06a6e47f46af00d9416df406e1d1ff243112d69a2e50da8e0.lean/declarations/hostilesource-nonreal-zero--89cf9429a35bb9c0e7edb4a2.md) | 111 | `result-track:89cf9429a35bb9c0e7edb4a2792e66705fed7dc56ff2a7dce3b57faf17331ecf` |
| 18 | `theorem` | [finite_boundary_reality_does_not_identify_source](../../../../../mathematics/Algebra/LinearAlgebra/SourceRecognitionGuardAttempt05/Variant994860e7ec1803d06a6e47f46af00d9416df406e1d1ff243112d69a2e50da8e0.lean/declarations/finite-boundary-reality-does-not-identify-source--08f152feff74a70314f1a78d.md) | 116 | `result-track:08f152feff74a70314f1a78d1578ba23da21cd24075cbb033859991adc133478` |
| 19 | `def` | [shiftedBoundary](../../../../../mathematics/Algebra/LinearAlgebra/SourceRecognitionGuardAttempt05/Variant994860e7ec1803d06a6e47f46af00d9416df406e1d1ff243112d69a2e50da8e0.lean/declarations/shiftedboundary--1afa0694b505c829dc21e387.md) | 125 | `declaration-track:1afa0694b505c829dc21e3874daae175fc4b954c2a237c11f4fd5d06039edbbe` |
| 20 | `def` | [squareMap](../../../../../mathematics/Algebra/LinearAlgebra/SourceRecognitionGuardAttempt05/Variant994860e7ec1803d06a6e47f46af00d9416df406e1d1ff243112d69a2e50da8e0.lean/declarations/squaremap--d67b0ae7f43e2e9392212a39.md) | 127 | `declaration-track:d67b0ae7f43e2e9392212a39b9c05d766e77cf477290a29c5b116c75dd4206d1` |
| 21 | `def` | [negativeUnitMatrix](../../../../../mathematics/Algebra/LinearAlgebra/SourceRecognitionGuardAttempt05/Variant994860e7ec1803d06a6e47f46af00d9416df406e1d1ff243112d69a2e50da8e0.lean/declarations/negativeunitmatrix--451fb3955a10f99be8601536.md) | 129 | `declaration-track:451fb3955a10f99be86015368209b83a96cc19a5f8d0a0cb053945fe6dddc82b` |
| 22 | `theorem` | [negativeUnitMatrix_hermitian](../../../../../mathematics/Algebra/LinearAlgebra/SourceRecognitionGuardAttempt05/Variant994860e7ec1803d06a6e47f46af00d9416df406e1d1ff243112d69a2e50da8e0.lean/declarations/negativeunitmatrix-hermitian--37b2394fb120b009137bd9d8.md) | 131 | `result-track:37b2394fb120b009137bd9d84beef0d64753c4419f63f8af7b512db0b16fc5c0` |
| 23 | `theorem` | [negativeUnitMatrix_charpoly](../../../../../mathematics/Algebra/LinearAlgebra/SourceRecognitionGuardAttempt05/Variant994860e7ec1803d06a6e47f46af00d9416df406e1d1ff243112d69a2e50da8e0.lean/declarations/negativeunitmatrix-charpoly--cc8766532d111e8f7efff0fe.md) | 134 | `result-track:cc8766532d111e8f7efff0fe7cce22a3651dcea66ed923495ca2c1241959bfde` |
| 24 | `theorem` | [negativeUnitMatrix_characteristic_function](../../../../../mathematics/Algebra/LinearAlgebra/SourceRecognitionGuardAttempt05/Variant994860e7ec1803d06a6e47f46af00d9416df406e1d1ff243112d69a2e50da8e0.lean/declarations/negativeunitmatrix-characteristic-function--0bcd8472936cd226de495096.md) | 142 | `result-track:0bcd8472936cd226de4950964abbb5ebd69c1b4f10ed7af1e7e170c1ffbb60aa` |
| 25 | `theorem` | [shiftedBoundary_real_zeros](../../../../../mathematics/Algebra/LinearAlgebra/SourceRecognitionGuardAttempt05/Variant994860e7ec1803d06a6e47f46af00d9416df406e1d1ff243112d69a2e50da8e0.lean/declarations/shiftedboundary-real-zeros--ac54670c63a5340491fd812e.md) | 147 | `result-track:ac54670c63a5340491fd812e124e057f6e5f6f7e8c544f23c1ad4ca35968086d` |
| 26 | `theorem` | [square_comparison_exact](../../../../../mathematics/Algebra/LinearAlgebra/SourceRecognitionGuardAttempt05/Variant994860e7ec1803d06a6e47f46af00d9416df406e1d1ff243112d69a2e50da8e0.lean/declarations/square-comparison-exact--05118b4d0711b041f362d3da.md) | 152 | `result-track:05118b4d0711b041f362d3da82a7225e7dc73270a720399ae0c7ea051581d2b4` |
| 27 | `theorem` | [square_zero_transport](../../../../../mathematics/Algebra/LinearAlgebra/SourceRecognitionGuardAttempt05/Variant994860e7ec1803d06a6e47f46af00d9416df406e1d1ff243112d69a2e50da8e0.lean/declarations/square-zero-transport--3ab83a33fec6d08d6fcac018.md) | 157 | `result-track:3ab83a33fec6d08d6fcac0185f366fecccab1bc7b635b074d2e4f891d23ba392` |
| 28 | `theorem` | [square_map_not_real_axis_reflecting](../../../../../mathematics/Algebra/LinearAlgebra/SourceRecognitionGuardAttempt05/Variant994860e7ec1803d06a6e47f46af00d9416df406e1d1ff243112d69a2e50da8e0.lean/declarations/square-map-not-real-axis-reflecting--46eb873d7144dc4377a36a68.md) | 161 | `result-track:46eb873d7144dc4377a36a681c647720d03a85f3fecc0d5b61ca3a67c357d8c5` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
