# Verification target: GRWTSK.Algebra.LinearAlgebra.SourceRecognitionGuardAttempt03.Variant390e3d648ee0f65e9e8515998e09dfcd17dd9dcbd48dd631a7bb11eac5336893

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "a6c0da11a946c99828c4ad3cbbc23002a01a2240",
  "lexical_observation_count": 27,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/SourceRecognitionGuardAttempt03/Variant390e3d648ee0f65e9e8515998e09dfcd17dd9dcbd48dd631a7bb11eac5336893.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/SourceRecognitionGuardAttempt03/Variant390e3d648ee0f65e9e8515998e09dfcd17dd9dcbd48dd631a7bb11eac5336893.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/SourceRecognitionGuardAttempt03/Variant390e3d648ee0f65e9e8515998e09dfcd17dd9dcbd48dd631a7bb11eac5336893.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `a6c0da11a946c99828c4ad3cbbc23002a01a2240`.

Source path: `GRWTSK/Algebra/LinearAlgebra/SourceRecognitionGuardAttempt03/Variant390e3d648ee0f65e9e8515998e09dfcd17dd9dcbd48dd631a7bb11eac5336893.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/SourceRecognitionGuardAttempt03/Variant390e3d648ee0f65e9e8515998e09dfcd17dd9dcbd48dd631a7bb11eac5336893.lean.json)

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
| 1 | `theorem` | [symmetric_charpoly_zero_real](../../../../../mathematics/Algebra/LinearAlgebra/SourceRecognitionGuardAttempt03/Variant390e3d648ee0f65e9e8515998e09dfcd17dd9dcbd48dd631a7bb11eac5336893.lean/declarations/symmetric-charpoly-zero-real--934cac6307b31c23fbe8384d.md) | 21 | `result-track:934cac6307b31c23fbe8384d7b8668f8e5e898358e4517c31fd373b972719995` |
| 2 | `theorem` | [hermitian_charpoly_zero_real](../../../../../mathematics/Algebra/LinearAlgebra/SourceRecognitionGuardAttempt03/Variant390e3d648ee0f65e9e8515998e09dfcd17dd9dcbd48dd631a7bb11eac5336893.lean/declarations/hermitian-charpoly-zero-real--a12d33ca7b7ee0efa2ab2d30.md) | 30 | `result-track:a12d33ca7b7ee0efa2ab2d30689ae2f282b2381bd436ff6b9759babac02a8982` |
| 3 | `def` | [ZeroTransport](../../../../../mathematics/Algebra/LinearAlgebra/SourceRecognitionGuardAttempt03/Variant390e3d648ee0f65e9e8515998e09dfcd17dd9dcbd48dd631a7bb11eac5336893.lean/declarations/zerotransport--24bc66c445080b62ef355263.md) | 40 | `declaration-track:24bc66c445080b62ef355263049346d240c2184d36a506e2c9448053af2b6db3` |
| 4 | `def` | [RealAxisReflection](../../../../../mathematics/Algebra/LinearAlgebra/SourceRecognitionGuardAttempt03/Variant390e3d648ee0f65e9e8515998e09dfcd17dd9dcbd48dd631a7bb11eac5336893.lean/declarations/realaxisreflection--8f4c40c41488c0fe1d83c0e5.md) | 44 | `declaration-track:8f4c40c41488c0fe1d83c0e52c6062c1f67578d8aa7e4eafee75fa96314a46be` |
| 5 | `structure` | [Recognition](../../../../../mathematics/Algebra/LinearAlgebra/SourceRecognitionGuardAttempt03/Variant390e3d648ee0f65e9e8515998e09dfcd17dd9dcbd48dd631a7bb11eac5336893.lean/declarations/recognition--8c6c134d0fc664abc804dd70.md) | 48 | `declaration-track:8c6c134d0fc664abc804dd70caa20ea1a06b85a9eabc905af23ba00782f042aa` |
| 6 | `theorem` | [recognition_transfers_real_zeros](../../../../../mathematics/Algebra/LinearAlgebra/SourceRecognitionGuardAttempt03/Variant390e3d648ee0f65e9e8515998e09dfcd17dd9dcbd48dd631a7bb11eac5336893.lean/declarations/recognition-transfers-real-zeros--450da502464c444325255e41.md) | 53 | `result-track:450da502464c444325255e41b9c84f9a2b6b93404c10ef52159c49ab07244b51` |
| 7 | `theorem` | [exact_comparison_zero_transport](../../../../../mathematics/Algebra/LinearAlgebra/SourceRecognitionGuardAttempt03/Variant390e3d648ee0f65e9e8515998e09dfcd17dd9dcbd48dd631a7bb11eac5336893.lean/declarations/exact-comparison-zero-transport--43cc957406caca02ed889936.md) | 61 | `result-track:43cc957406caca02ed8899366251ae9de5ebfb6b1fcc3b71413878b251290e08` |
| 8 | `theorem` | [recognition_of_exact_comparison](../../../../../mathematics/Algebra/LinearAlgebra/SourceRecognitionGuardAttempt03/Variant390e3d648ee0f65e9e8515998e09dfcd17dd9dcbd48dd631a7bb11eac5336893.lean/declarations/recognition-of-exact-comparison--18e0a261b23756687e8a1bc8.md) | 70 | `result-track:18e0a261b23756687e8a1bc89cf314b12179d47ac5de045249d1912ad70c4838` |
| 9 | `theorem` | [real_affine_reflection](../../../../../mathematics/Algebra/LinearAlgebra/SourceRecognitionGuardAttempt03/Variant390e3d648ee0f65e9e8515998e09dfcd17dd9dcbd48dd631a7bb11eac5336893.lean/declarations/real-affine-reflection--a431cf7f9210be46e8483236.md) | 77 | `result-track:a431cf7f9210be46e8483236b927e1deb2511f2860b17ab3093db27ae76bb54d` |
| 10 | `theorem` | [same_point_comparison_real_zeros](../../../../../mathematics/Algebra/LinearAlgebra/SourceRecognitionGuardAttempt03/Variant390e3d648ee0f65e9e8515998e09dfcd17dd9dcbd48dd631a7bb11eac5336893.lean/declarations/same-point-comparison-real-zeros--259b01f79887233049bc332f.md) | 84 | `result-track:259b01f79887233049bc332fcaaf6ec093b87549a2d382e2d2625eef5f2d15a9` |
| 11 | `def` | [zeroMatrix](../../../../../mathematics/Algebra/LinearAlgebra/SourceRecognitionGuardAttempt03/Variant390e3d648ee0f65e9e8515998e09dfcd17dd9dcbd48dd631a7bb11eac5336893.lean/declarations/zeromatrix--e83434286e74d3592a424d23.md) | 93 | `declaration-track:e83434286e74d3592a424d23ca465740c8c27c275ee2ebb98f02e7df957a7f89` |
| 12 | `def` | [hostileSource](../../../../../mathematics/Algebra/LinearAlgebra/SourceRecognitionGuardAttempt03/Variant390e3d648ee0f65e9e8515998e09dfcd17dd9dcbd48dd631a7bb11eac5336893.lean/declarations/hostilesource--26e481e45b47763047f57909.md) | 95 | `declaration-track:26e481e45b47763047f57909b52410b274426055a71d7beb9ff1397e6349d634` |
| 13 | `theorem` | [zeroMatrix_hermitian](../../../../../mathematics/Algebra/LinearAlgebra/SourceRecognitionGuardAttempt03/Variant390e3d648ee0f65e9e8515998e09dfcd17dd9dcbd48dd631a7bb11eac5336893.lean/declarations/zeromatrix-hermitian--d242ba78b19a19e98f0181d1.md) | 97 | `result-track:d242ba78b19a19e98f0181d19c92fe9bb97bb7cf23a7e8ee2dd029e6a9548f65` |
| 14 | `theorem` | [zeroMatrix_charpoly](../../../../../mathematics/Algebra/LinearAlgebra/SourceRecognitionGuardAttempt03/Variant390e3d648ee0f65e9e8515998e09dfcd17dd9dcbd48dd631a7bb11eac5336893.lean/declarations/zeromatrix-charpoly--3df93d412bfd7fdf37cdbe1e.md) | 100 | `result-track:3df93d412bfd7fdf37cdbe1ee1886602911ba3aebcfec62170dd1dd9e90b4775` |
| 15 | `theorem` | [zeroMatrix_charpoly_zeros_real](../../../../../mathematics/Algebra/LinearAlgebra/SourceRecognitionGuardAttempt03/Variant390e3d648ee0f65e9e8515998e09dfcd17dd9dcbd48dd631a7bb11eac5336893.lean/declarations/zeromatrix-charpoly-zeros-real--594bc784b4d14b04f3c95f90.md) | 103 | `result-track:594bc784b4d14b04f3c95f905d02041fae5d9b7c94ea9d96d55f849a683c79ba` |
| 16 | `theorem` | [hostileSource_nonreal_zero](../../../../../mathematics/Algebra/LinearAlgebra/SourceRecognitionGuardAttempt03/Variant390e3d648ee0f65e9e8515998e09dfcd17dd9dcbd48dd631a7bb11eac5336893.lean/declarations/hostilesource-nonreal-zero--4a9c8aa409e5cc0e223a2707.md) | 109 | `result-track:4a9c8aa409e5cc0e223a2707db91f840baefe60d5d31c8f3a4d09f010a6e3862` |
| 17 | `theorem` | [finite_boundary_reality_does_not_identify_source](../../../../../mathematics/Algebra/LinearAlgebra/SourceRecognitionGuardAttempt03/Variant390e3d648ee0f65e9e8515998e09dfcd17dd9dcbd48dd631a7bb11eac5336893.lean/declarations/finite-boundary-reality-does-not-identify-source--ec71b8a90896978c882dc892.md) | 114 | `result-track:ec71b8a90896978c882dc8929003ccfb6560b1ec8d135f1dfe702a24cec54332` |
| 18 | `def` | [shiftedBoundary](../../../../../mathematics/Algebra/LinearAlgebra/SourceRecognitionGuardAttempt03/Variant390e3d648ee0f65e9e8515998e09dfcd17dd9dcbd48dd631a7bb11eac5336893.lean/declarations/shiftedboundary--28b7eff841a805c93fbea83d.md) | 123 | `declaration-track:28b7eff841a805c93fbea83d788c2715d5d301c1e0a4b8b92454327247559179` |
| 19 | `def` | [squareMap](../../../../../mathematics/Algebra/LinearAlgebra/SourceRecognitionGuardAttempt03/Variant390e3d648ee0f65e9e8515998e09dfcd17dd9dcbd48dd631a7bb11eac5336893.lean/declarations/squaremap--012e1821e4f7498315469131.md) | 125 | `declaration-track:012e1821e4f749831546913180913924168c91a983ba99300a4f45e73be8928c` |
| 20 | `def` | [negativeUnitMatrix](../../../../../mathematics/Algebra/LinearAlgebra/SourceRecognitionGuardAttempt03/Variant390e3d648ee0f65e9e8515998e09dfcd17dd9dcbd48dd631a7bb11eac5336893.lean/declarations/negativeunitmatrix--61c0495cebcd49e837d2e90a.md) | 127 | `declaration-track:61c0495cebcd49e837d2e90adcb98e88314aacf464e2eca97816e0172b55f0c5` |
| 21 | `theorem` | [negativeUnitMatrix_hermitian](../../../../../mathematics/Algebra/LinearAlgebra/SourceRecognitionGuardAttempt03/Variant390e3d648ee0f65e9e8515998e09dfcd17dd9dcbd48dd631a7bb11eac5336893.lean/declarations/negativeunitmatrix-hermitian--7212c140d9d8f7329db8746e.md) | 129 | `result-track:7212c140d9d8f7329db8746e5b7284cb311ca9725448caf35f1af01fb687ae35` |
| 22 | `theorem` | [negativeUnitMatrix_charpoly](../../../../../mathematics/Algebra/LinearAlgebra/SourceRecognitionGuardAttempt03/Variant390e3d648ee0f65e9e8515998e09dfcd17dd9dcbd48dd631a7bb11eac5336893.lean/declarations/negativeunitmatrix-charpoly--516a9da025be86212144b5ae.md) | 132 | `result-track:516a9da025be86212144b5ae67e35a94d83ced8a6f410264649f9dad0048cc82` |
| 23 | `theorem` | [negativeUnitMatrix_characteristic_function](../../../../../mathematics/Algebra/LinearAlgebra/SourceRecognitionGuardAttempt03/Variant390e3d648ee0f65e9e8515998e09dfcd17dd9dcbd48dd631a7bb11eac5336893.lean/declarations/negativeunitmatrix-characteristic-function--b6f9525f03d4ed1048f11a66.md) | 139 | `result-track:b6f9525f03d4ed1048f11a66db65162f6611c97205d2c555d017d0a9a1babb53` |
| 24 | `theorem` | [shiftedBoundary_real_zeros](../../../../../mathematics/Algebra/LinearAlgebra/SourceRecognitionGuardAttempt03/Variant390e3d648ee0f65e9e8515998e09dfcd17dd9dcbd48dd631a7bb11eac5336893.lean/declarations/shiftedboundary-real-zeros--8e1c8bf2539aac3c76fb3b62.md) | 144 | `result-track:8e1c8bf2539aac3c76fb3b628e29f4734b9392f4374d1f138871f33a4b981d55` |
| 25 | `theorem` | [square_comparison_exact](../../../../../mathematics/Algebra/LinearAlgebra/SourceRecognitionGuardAttempt03/Variant390e3d648ee0f65e9e8515998e09dfcd17dd9dcbd48dd631a7bb11eac5336893.lean/declarations/square-comparison-exact--1503f91407863ceb4872a2b5.md) | 149 | `result-track:1503f91407863ceb4872a2b55efb00d09f190d3ec337a1f29fe0aad0eefc19ec` |
| 26 | `theorem` | [square_zero_transport](../../../../../mathematics/Algebra/LinearAlgebra/SourceRecognitionGuardAttempt03/Variant390e3d648ee0f65e9e8515998e09dfcd17dd9dcbd48dd631a7bb11eac5336893.lean/declarations/square-zero-transport--48dbca6132c0f3f2e73294bc.md) | 154 | `result-track:48dbca6132c0f3f2e73294bcc16633f03e6c15f1f67d46efba62970a63e6e3fb` |
| 27 | `theorem` | [square_map_not_real_axis_reflecting](../../../../../mathematics/Algebra/LinearAlgebra/SourceRecognitionGuardAttempt03/Variant390e3d648ee0f65e9e8515998e09dfcd17dd9dcbd48dd631a7bb11eac5336893.lean/declarations/square-map-not-real-axis-reflecting--57386c18cb4b93f3e1588ec9.md) | 158 | `result-track:57386c18cb4b93f3e1588ec9e260851e510d6f92a23c0ed69eb134e03cd447c5` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
