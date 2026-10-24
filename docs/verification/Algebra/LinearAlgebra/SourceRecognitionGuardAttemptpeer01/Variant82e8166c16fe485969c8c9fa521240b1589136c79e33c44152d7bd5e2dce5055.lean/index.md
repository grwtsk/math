# Verification target: GRWTSK.Algebra.LinearAlgebra.SourceRecognitionGuardAttemptpeer01.Variant82e8166c16fe485969c8c9fa521240b1589136c79e33c44152d7bd5e2dce5055

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "cf4b193dea4cc92c8b587ef2df0eecbd8d4650c3",
  "lexical_observation_count": 28,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/SourceRecognitionGuardAttemptpeer01/Variant82e8166c16fe485969c8c9fa521240b1589136c79e33c44152d7bd5e2dce5055.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/SourceRecognitionGuardAttemptpeer01/Variant82e8166c16fe485969c8c9fa521240b1589136c79e33c44152d7bd5e2dce5055.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/SourceRecognitionGuardAttemptpeer01/Variant82e8166c16fe485969c8c9fa521240b1589136c79e33c44152d7bd5e2dce5055.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `cf4b193dea4cc92c8b587ef2df0eecbd8d4650c3`.

Source path: `GRWTSK/Algebra/LinearAlgebra/SourceRecognitionGuardAttemptpeer01/Variant82e8166c16fe485969c8c9fa521240b1589136c79e33c44152d7bd5e2dce5055.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/SourceRecognitionGuardAttemptpeer01/Variant82e8166c16fe485969c8c9fa521240b1589136c79e33c44152d7bd5e2dce5055.lean.json)

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
| 1 | `theorem` | [symmetric_charpoly_zero_real](../../../../../mathematics/Algebra/LinearAlgebra/SourceRecognitionGuardAttemptpeer01/Variant82e8166c16fe485969c8c9fa521240b1589136c79e33c44152d7bd5e2dce5055.lean/declarations/symmetric-charpoly-zero-real--4dc9833b082416c0035d1dc0.md) | 13 | `result-track:4dc9833b082416c0035d1dc0261b987183976d0feea43f687b26e0826e22d6e5` |
| 2 | `theorem` | [hermitian_charpoly_zero_real](../../../../../mathematics/Algebra/LinearAlgebra/SourceRecognitionGuardAttemptpeer01/Variant82e8166c16fe485969c8c9fa521240b1589136c79e33c44152d7bd5e2dce5055.lean/declarations/hermitian-charpoly-zero-real--e0f5d38300e8f4716721c5d4.md) | 22 | `result-track:e0f5d38300e8f4716721c5d4c318eff0204dd96f8462c425effae8fc3bbbfb58` |
| 3 | `def` | [ZeroTransport](../../../../../mathematics/Algebra/LinearAlgebra/SourceRecognitionGuardAttemptpeer01/Variant82e8166c16fe485969c8c9fa521240b1589136c79e33c44152d7bd5e2dce5055.lean/declarations/zerotransport--ac0976c4a33567ac8c7f0061.md) | 32 | `declaration-track:ac0976c4a33567ac8c7f0061cf6c7ab86c5589ac25fb2a00a35302a7db77cc35` |
| 4 | `def` | [RealAxisReflection](../../../../../mathematics/Algebra/LinearAlgebra/SourceRecognitionGuardAttemptpeer01/Variant82e8166c16fe485969c8c9fa521240b1589136c79e33c44152d7bd5e2dce5055.lean/declarations/realaxisreflection--7ee62669f1a1b9ae42e49742.md) | 36 | `declaration-track:7ee62669f1a1b9ae42e49742a805f6c771167b0c4cbd4987d28e28638bbd6391` |
| 5 | `structure` | [Recognition](../../../../../mathematics/Algebra/LinearAlgebra/SourceRecognitionGuardAttemptpeer01/Variant82e8166c16fe485969c8c9fa521240b1589136c79e33c44152d7bd5e2dce5055.lean/declarations/recognition--b1d9090558309afa8dbb5376.md) | 40 | `declaration-track:b1d9090558309afa8dbb53760e8cc41e7be3e80466cfa2cfd6b1625cb50c0c84` |
| 6 | `theorem` | [recognition_transfers_real_zeros](../../../../../mathematics/Algebra/LinearAlgebra/SourceRecognitionGuardAttemptpeer01/Variant82e8166c16fe485969c8c9fa521240b1589136c79e33c44152d7bd5e2dce5055.lean/declarations/recognition-transfers-real-zeros--a758b0ca444025ffd783ecb9.md) | 45 | `result-track:a758b0ca444025ffd783ecb9fab1d7d8929ad518e14e7d8ebacc9c31ec7d3953` |
| 7 | `theorem` | [exact_comparison_zero_transport](../../../../../mathematics/Algebra/LinearAlgebra/SourceRecognitionGuardAttemptpeer01/Variant82e8166c16fe485969c8c9fa521240b1589136c79e33c44152d7bd5e2dce5055.lean/declarations/exact-comparison-zero-transport--015a74267baf517f704d695a.md) | 53 | `result-track:015a74267baf517f704d695a65bbfe8e31f31891dc7ef9c74c7ae36a6bd9efc7` |
| 8 | `theorem` | [recognition_of_exact_comparison](../../../../../mathematics/Algebra/LinearAlgebra/SourceRecognitionGuardAttemptpeer01/Variant82e8166c16fe485969c8c9fa521240b1589136c79e33c44152d7bd5e2dce5055.lean/declarations/recognition-of-exact-comparison--101541d20693036745cfbca2.md) | 62 | `result-track:101541d20693036745cfbca22c1f32cdb7b9a47c77efab13b6ab492a83ca9229` |
| 9 | `theorem` | [real_affine_reflection](../../../../../mathematics/Algebra/LinearAlgebra/SourceRecognitionGuardAttemptpeer01/Variant82e8166c16fe485969c8c9fa521240b1589136c79e33c44152d7bd5e2dce5055.lean/declarations/real-affine-reflection--e0cfe22d842e8b90221b5aa8.md) | 69 | `result-track:e0cfe22d842e8b90221b5aa88b93aeaf417dd3138b3e3cf4d720e875753f8161` |
| 10 | `theorem` | [same_point_comparison_real_zeros](../../../../../mathematics/Algebra/LinearAlgebra/SourceRecognitionGuardAttemptpeer01/Variant82e8166c16fe485969c8c9fa521240b1589136c79e33c44152d7bd5e2dce5055.lean/declarations/same-point-comparison-real-zeros--b5b05913f7a602fac31f021a.md) | 76 | `result-track:b5b05913f7a602fac31f021af33bbcb90cf13fe237a89e1c2d0043dfd793518c` |
| 11 | `theorem` | [hermitian_real_affine_comparison_real_zeros](../../../../../mathematics/Algebra/LinearAlgebra/SourceRecognitionGuardAttemptpeer01/Variant82e8166c16fe485969c8c9fa521240b1589136c79e33c44152d7bd5e2dce5055.lean/declarations/hermitian-real-affine-comparison-real-zeros--2db3523a5a0422c9be345e32.md) | 85 | `result-track:2db3523a5a0422c9be345e32e22c19abd86aa6019743aa53306291b4f87705fa` |
| 12 | `def` | [zeroMatrix](../../../../../mathematics/Algebra/LinearAlgebra/SourceRecognitionGuardAttemptpeer01/Variant82e8166c16fe485969c8c9fa521240b1589136c79e33c44152d7bd5e2dce5055.lean/declarations/zeromatrix--ebec3147bc7cdea12838f9d7.md) | 98 | `declaration-track:ebec3147bc7cdea12838f9d76d2b65ead5c726e128d6a77c6c2da705751925eb` |
| 13 | `def` | [hostileSource](../../../../../mathematics/Algebra/LinearAlgebra/SourceRecognitionGuardAttemptpeer01/Variant82e8166c16fe485969c8c9fa521240b1589136c79e33c44152d7bd5e2dce5055.lean/declarations/hostilesource--7a80da8e9f8829e05245cd84.md) | 100 | `declaration-track:7a80da8e9f8829e05245cd84fcf15b34de719d3592c63f3a3eccea764599cb80` |
| 14 | `theorem` | [zeroMatrix_hermitian](../../../../../mathematics/Algebra/LinearAlgebra/SourceRecognitionGuardAttemptpeer01/Variant82e8166c16fe485969c8c9fa521240b1589136c79e33c44152d7bd5e2dce5055.lean/declarations/zeromatrix-hermitian--02ca31be28b8d4013f57bbcf.md) | 102 | `result-track:02ca31be28b8d4013f57bbcf15f6646026252a3ab9e9e03fd78c4f60bec5f68f` |
| 15 | `theorem` | [zeroMatrix_charpoly](../../../../../mathematics/Algebra/LinearAlgebra/SourceRecognitionGuardAttemptpeer01/Variant82e8166c16fe485969c8c9fa521240b1589136c79e33c44152d7bd5e2dce5055.lean/declarations/zeromatrix-charpoly--115f62e1c7aac0f3176fc0c3.md) | 105 | `result-track:115f62e1c7aac0f3176fc0c31a174e4c7cbc459aa46f6ac80ff7e32b9c971541` |
| 16 | `theorem` | [zeroMatrix_charpoly_zeros_real](../../../../../mathematics/Algebra/LinearAlgebra/SourceRecognitionGuardAttemptpeer01/Variant82e8166c16fe485969c8c9fa521240b1589136c79e33c44152d7bd5e2dce5055.lean/declarations/zeromatrix-charpoly-zeros-real--a750c6bc40d418b241460f56.md) | 108 | `result-track:a750c6bc40d418b241460f56bbee1599fdcb81f5773c001b7fc9e05a3b9c73cc` |
| 17 | `theorem` | [hostileSource_nonreal_zero](../../../../../mathematics/Algebra/LinearAlgebra/SourceRecognitionGuardAttemptpeer01/Variant82e8166c16fe485969c8c9fa521240b1589136c79e33c44152d7bd5e2dce5055.lean/declarations/hostilesource-nonreal-zero--be8d7b2b5d8aab22b88a2847.md) | 114 | `result-track:be8d7b2b5d8aab22b88a28475da246fbd7a91a5569a0779c15400d140af6fdce` |
| 18 | `theorem` | [finite_boundary_reality_does_not_identify_source](../../../../../mathematics/Algebra/LinearAlgebra/SourceRecognitionGuardAttemptpeer01/Variant82e8166c16fe485969c8c9fa521240b1589136c79e33c44152d7bd5e2dce5055.lean/declarations/finite-boundary-reality-does-not-identify-source--2406a0436953e97c432a6665.md) | 119 | `result-track:2406a0436953e97c432a666581f55ed1684c979714c1e4e69214258e1d027196` |
| 19 | `def` | [shiftedBoundary](../../../../../mathematics/Algebra/LinearAlgebra/SourceRecognitionGuardAttemptpeer01/Variant82e8166c16fe485969c8c9fa521240b1589136c79e33c44152d7bd5e2dce5055.lean/declarations/shiftedboundary--476465bf9560616477f5a509.md) | 128 | `declaration-track:476465bf9560616477f5a509812c35d64d69747c96758b821b254e30ef9af644` |
| 20 | `def` | [squareMap](../../../../../mathematics/Algebra/LinearAlgebra/SourceRecognitionGuardAttemptpeer01/Variant82e8166c16fe485969c8c9fa521240b1589136c79e33c44152d7bd5e2dce5055.lean/declarations/squaremap--b9dd36a4b91e21b6ee081709.md) | 130 | `declaration-track:b9dd36a4b91e21b6ee0817092aa54b6fa7e37b00dd2f2e3f4a3f6d85af3db655` |
| 21 | `def` | [negativeUnitMatrix](../../../../../mathematics/Algebra/LinearAlgebra/SourceRecognitionGuardAttemptpeer01/Variant82e8166c16fe485969c8c9fa521240b1589136c79e33c44152d7bd5e2dce5055.lean/declarations/negativeunitmatrix--0a564aa1b52e791380c3d1e3.md) | 132 | `declaration-track:0a564aa1b52e791380c3d1e3d9986cadadddf5b940e8ef73e30db6f5f149c944` |
| 22 | `theorem` | [negativeUnitMatrix_hermitian](../../../../../mathematics/Algebra/LinearAlgebra/SourceRecognitionGuardAttemptpeer01/Variant82e8166c16fe485969c8c9fa521240b1589136c79e33c44152d7bd5e2dce5055.lean/declarations/negativeunitmatrix-hermitian--371175ddf3e6276dc729dec4.md) | 134 | `result-track:371175ddf3e6276dc729dec4c506a92cdb115252c01a13840af7c3361f62cd7a` |
| 23 | `theorem` | [negativeUnitMatrix_charpoly](../../../../../mathematics/Algebra/LinearAlgebra/SourceRecognitionGuardAttemptpeer01/Variant82e8166c16fe485969c8c9fa521240b1589136c79e33c44152d7bd5e2dce5055.lean/declarations/negativeunitmatrix-charpoly--6f7bcb5834f1641347f18ac7.md) | 137 | `result-track:6f7bcb5834f1641347f18ac7138e019bd50808eb206de4381be076e8ac4b163b` |
| 24 | `theorem` | [negativeUnitMatrix_characteristic_function](../../../../../mathematics/Algebra/LinearAlgebra/SourceRecognitionGuardAttemptpeer01/Variant82e8166c16fe485969c8c9fa521240b1589136c79e33c44152d7bd5e2dce5055.lean/declarations/negativeunitmatrix-characteristic-function--ce81d91561b2ef962cd8336b.md) | 145 | `result-track:ce81d91561b2ef962cd8336b3d939ed5d4c1faa22b68378115541bb059a370f6` |
| 25 | `theorem` | [shiftedBoundary_real_zeros](../../../../../mathematics/Algebra/LinearAlgebra/SourceRecognitionGuardAttemptpeer01/Variant82e8166c16fe485969c8c9fa521240b1589136c79e33c44152d7bd5e2dce5055.lean/declarations/shiftedboundary-real-zeros--5ff0d5532f274a289de26ecd.md) | 150 | `result-track:5ff0d5532f274a289de26ecdee8fcbde6ba1ae3bd70c89a36c3ca7be4e02ff10` |
| 26 | `theorem` | [square_comparison_exact](../../../../../mathematics/Algebra/LinearAlgebra/SourceRecognitionGuardAttemptpeer01/Variant82e8166c16fe485969c8c9fa521240b1589136c79e33c44152d7bd5e2dce5055.lean/declarations/square-comparison-exact--5eebe5385a9f22bc40f2c627.md) | 155 | `result-track:5eebe5385a9f22bc40f2c627eefeea064141b41f6296493f191bb49eef09d123` |
| 27 | `theorem` | [square_zero_transport](../../../../../mathematics/Algebra/LinearAlgebra/SourceRecognitionGuardAttemptpeer01/Variant82e8166c16fe485969c8c9fa521240b1589136c79e33c44152d7bd5e2dce5055.lean/declarations/square-zero-transport--6b55d367014410041ab1ac1e.md) | 160 | `result-track:6b55d367014410041ab1ac1eee8cd399ddfdd249381f127399ae88acb5663356` |
| 28 | `theorem` | [square_map_not_real_axis_reflecting](../../../../../mathematics/Algebra/LinearAlgebra/SourceRecognitionGuardAttemptpeer01/Variant82e8166c16fe485969c8c9fa521240b1589136c79e33c44152d7bd5e2dce5055.lean/declarations/square-map-not-real-axis-reflecting--377548d0428b6ff383ade6b5.md) | 164 | `result-track:377548d0428b6ff383ade6b505313ee0befa8155a9d53a731a9da5d6b87f214f` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
