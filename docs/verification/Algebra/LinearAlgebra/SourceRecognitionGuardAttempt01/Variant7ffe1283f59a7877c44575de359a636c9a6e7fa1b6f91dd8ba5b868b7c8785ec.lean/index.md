# Verification target: GRWTSK.Algebra.LinearAlgebra.SourceRecognitionGuardAttempt01.Variant7ffe1283f59a7877c44575de359a636c9a6e7fa1b6f91dd8ba5b868b7c8785ec

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "807292142623a383963b71c231053183b340787a",
  "lexical_observation_count": 22,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/SourceRecognitionGuardAttempt01/Variant7ffe1283f59a7877c44575de359a636c9a6e7fa1b6f91dd8ba5b868b7c8785ec.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/SourceRecognitionGuardAttempt01/Variant7ffe1283f59a7877c44575de359a636c9a6e7fa1b6f91dd8ba5b868b7c8785ec.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/SourceRecognitionGuardAttempt01/Variant7ffe1283f59a7877c44575de359a636c9a6e7fa1b6f91dd8ba5b868b7c8785ec.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `807292142623a383963b71c231053183b340787a`.

Source path: `GRWTSK/Algebra/LinearAlgebra/SourceRecognitionGuardAttempt01/Variant7ffe1283f59a7877c44575de359a636c9a6e7fa1b6f91dd8ba5b868b7c8785ec.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/SourceRecognitionGuardAttempt01/Variant7ffe1283f59a7877c44575de359a636c9a6e7fa1b6f91dd8ba5b868b7c8785ec.lean.json)

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
| 1 | `theorem` | [symmetric_charpoly_zero_real](../../../../../mathematics/Algebra/LinearAlgebra/SourceRecognitionGuardAttempt01/Variant7ffe1283f59a7877c44575de359a636c9a6e7fa1b6f91dd8ba5b868b7c8785ec.lean/declarations/symmetric-charpoly-zero-real--7e427fefe3009da4f6802185.md) | 13 | `result-track:7e427fefe3009da4f68021857c979a9999879c1a3b7dda82e28c3222d29e9cb8` |
| 2 | `def` | [ZeroTransport](../../../../../mathematics/Algebra/LinearAlgebra/SourceRecognitionGuardAttempt01/Variant7ffe1283f59a7877c44575de359a636c9a6e7fa1b6f91dd8ba5b868b7c8785ec.lean/declarations/zerotransport--e97e290e960e991a5fc5b584.md) | 22 | `declaration-track:e97e290e960e991a5fc5b584254525aef1e0cf1bb7ae05370d84a7f9fd33e855` |
| 3 | `def` | [RealAxisReflection](../../../../../mathematics/Algebra/LinearAlgebra/SourceRecognitionGuardAttempt01/Variant7ffe1283f59a7877c44575de359a636c9a6e7fa1b6f91dd8ba5b868b7c8785ec.lean/declarations/realaxisreflection--eb209cf25c39ea2534c1f164.md) | 26 | `declaration-track:eb209cf25c39ea2534c1f1648dc25d20aed8162d041a101bc7625bc2c3d50868` |
| 4 | `structure` | [Recognition](../../../../../mathematics/Algebra/LinearAlgebra/SourceRecognitionGuardAttempt01/Variant7ffe1283f59a7877c44575de359a636c9a6e7fa1b6f91dd8ba5b868b7c8785ec.lean/declarations/recognition--1622576568aad026534576f4.md) | 30 | `declaration-track:1622576568aad026534576f45d0ba8833b7a0b50bc548e46b82e28632494ed74` |
| 5 | `theorem` | [recognition_transfers_real_zeros](../../../../../mathematics/Algebra/LinearAlgebra/SourceRecognitionGuardAttempt01/Variant7ffe1283f59a7877c44575de359a636c9a6e7fa1b6f91dd8ba5b868b7c8785ec.lean/declarations/recognition-transfers-real-zeros--ed4c51e321e5d46ea77ac10e.md) | 35 | `result-track:ed4c51e321e5d46ea77ac10e33d1cca0e0190e433d6f209a84e889c934145559` |
| 6 | `theorem` | [exact_comparison_zero_transport](../../../../../mathematics/Algebra/LinearAlgebra/SourceRecognitionGuardAttempt01/Variant7ffe1283f59a7877c44575de359a636c9a6e7fa1b6f91dd8ba5b868b7c8785ec.lean/declarations/exact-comparison-zero-transport--8ea190db8f7e2fe59a8d8aa5.md) | 43 | `result-track:8ea190db8f7e2fe59a8d8aa58989aadc8cc365335a57ef182bbbd67ba346adea` |
| 7 | `theorem` | [recognition_of_exact_comparison](../../../../../mathematics/Algebra/LinearAlgebra/SourceRecognitionGuardAttempt01/Variant7ffe1283f59a7877c44575de359a636c9a6e7fa1b6f91dd8ba5b868b7c8785ec.lean/declarations/recognition-of-exact-comparison--d21c562d434398e440ec0d4d.md) | 52 | `result-track:d21c562d434398e440ec0d4d82cb3a512d7009bac87013f49140767a2fae79f1` |
| 8 | `theorem` | [real_affine_reflection](../../../../../mathematics/Algebra/LinearAlgebra/SourceRecognitionGuardAttempt01/Variant7ffe1283f59a7877c44575de359a636c9a6e7fa1b6f91dd8ba5b868b7c8785ec.lean/declarations/real-affine-reflection--aafb50b619d6c20d2e4adb0f.md) | 59 | `result-track:aafb50b619d6c20d2e4adb0ffad309d1fb87b7e720202c49327d9ff6a4ba8e24` |
| 9 | `theorem` | [same_point_comparison_real_zeros](../../../../../mathematics/Algebra/LinearAlgebra/SourceRecognitionGuardAttempt01/Variant7ffe1283f59a7877c44575de359a636c9a6e7fa1b6f91dd8ba5b868b7c8785ec.lean/declarations/same-point-comparison-real-zeros--ad41e292e9e1b778c0618f04.md) | 66 | `result-track:ad41e292e9e1b778c0618f04072d1f7cf36fbfb65edb951544d280571276031c` |
| 10 | `def` | [zeroMatrix](../../../../../mathematics/Algebra/LinearAlgebra/SourceRecognitionGuardAttempt01/Variant7ffe1283f59a7877c44575de359a636c9a6e7fa1b6f91dd8ba5b868b7c8785ec.lean/declarations/zeromatrix--06ba81f120ba3f7b1302f361.md) | 75 | `declaration-track:06ba81f120ba3f7b1302f3612ebfe95a3dc023038c8c8b6d3e84a900829ddf76` |
| 11 | `def` | [hostileSource](../../../../../mathematics/Algebra/LinearAlgebra/SourceRecognitionGuardAttempt01/Variant7ffe1283f59a7877c44575de359a636c9a6e7fa1b6f91dd8ba5b868b7c8785ec.lean/declarations/hostilesource--26a6af4be03bc504cc952177.md) | 77 | `declaration-track:26a6af4be03bc504cc952177de905a79533ebb36d8b1a105ff972f136a6afad5` |
| 12 | `theorem` | [zeroMatrix_hermitian](../../../../../mathematics/Algebra/LinearAlgebra/SourceRecognitionGuardAttempt01/Variant7ffe1283f59a7877c44575de359a636c9a6e7fa1b6f91dd8ba5b868b7c8785ec.lean/declarations/zeromatrix-hermitian--98059ad7322ee2df504a9d69.md) | 79 | `result-track:98059ad7322ee2df504a9d69ba276a8b22ba3fd52569e6d1b6770077a4aabc02` |
| 13 | `theorem` | [zeroMatrix_charpoly](../../../../../mathematics/Algebra/LinearAlgebra/SourceRecognitionGuardAttempt01/Variant7ffe1283f59a7877c44575de359a636c9a6e7fa1b6f91dd8ba5b868b7c8785ec.lean/declarations/zeromatrix-charpoly--fbc9f1108eebabe75e3dad0c.md) | 82 | `result-track:fbc9f1108eebabe75e3dad0c3c8f1f64a0a1af79a9f8454fdc004324403e7287` |
| 14 | `theorem` | [zeroMatrix_charpoly_zeros_real](../../../../../mathematics/Algebra/LinearAlgebra/SourceRecognitionGuardAttempt01/Variant7ffe1283f59a7877c44575de359a636c9a6e7fa1b6f91dd8ba5b868b7c8785ec.lean/declarations/zeromatrix-charpoly-zeros-real--a059f14370e81a08b9536f9c.md) | 85 | `result-track:a059f14370e81a08b9536f9c631525c17d999d61642049a8085dd724908c7b3d` |
| 15 | `theorem` | [hostileSource_nonreal_zero](../../../../../mathematics/Algebra/LinearAlgebra/SourceRecognitionGuardAttempt01/Variant7ffe1283f59a7877c44575de359a636c9a6e7fa1b6f91dd8ba5b868b7c8785ec.lean/declarations/hostilesource-nonreal-zero--3d0b739520b1e4d2ad134070.md) | 91 | `result-track:3d0b739520b1e4d2ad134070cf93b7853ee3b5772cc24882e0b0d6c164747e91` |
| 16 | `theorem` | [finite_boundary_reality_does_not_identify_source](../../../../../mathematics/Algebra/LinearAlgebra/SourceRecognitionGuardAttempt01/Variant7ffe1283f59a7877c44575de359a636c9a6e7fa1b6f91dd8ba5b868b7c8785ec.lean/declarations/finite-boundary-reality-does-not-identify-source--289d3c3a8721408f6030e68a.md) | 96 | `result-track:289d3c3a8721408f6030e68a7d91127adcd25713823543a952653759fd316238` |
| 17 | `def` | [shiftedBoundary](../../../../../mathematics/Algebra/LinearAlgebra/SourceRecognitionGuardAttempt01/Variant7ffe1283f59a7877c44575de359a636c9a6e7fa1b6f91dd8ba5b868b7c8785ec.lean/declarations/shiftedboundary--f274cbc8058c2bf25d093beb.md) | 105 | `declaration-track:f274cbc8058c2bf25d093beba68e3e89f485eb0b8a1be187f8dc51c19c2882bd` |
| 18 | `def` | [squareMap](../../../../../mathematics/Algebra/LinearAlgebra/SourceRecognitionGuardAttempt01/Variant7ffe1283f59a7877c44575de359a636c9a6e7fa1b6f91dd8ba5b868b7c8785ec.lean/declarations/squaremap--73a11810fef8cbae4e6814ba.md) | 107 | `declaration-track:73a11810fef8cbae4e6814ba45f4143a357a2249654d8d05f76a5af01c8931dd` |
| 19 | `theorem` | [shiftedBoundary_real_zeros](../../../../../mathematics/Algebra/LinearAlgebra/SourceRecognitionGuardAttempt01/Variant7ffe1283f59a7877c44575de359a636c9a6e7fa1b6f91dd8ba5b868b7c8785ec.lean/declarations/shiftedboundary-real-zeros--d58056e75249144d8ff07ec9.md) | 109 | `result-track:d58056e75249144d8ff07ec925407fa226bb85d85293bd4cc121c04300da4184` |
| 20 | `theorem` | [square_comparison_exact](../../../../../mathematics/Algebra/LinearAlgebra/SourceRecognitionGuardAttempt01/Variant7ffe1283f59a7877c44575de359a636c9a6e7fa1b6f91dd8ba5b868b7c8785ec.lean/declarations/square-comparison-exact--e1d74a619327aa6f7e9345e7.md) | 114 | `result-track:e1d74a619327aa6f7e9345e7e0e8ff6ae1bb543d7e51a683f13ab04115fa8020` |
| 21 | `theorem` | [square_zero_transport](../../../../../mathematics/Algebra/LinearAlgebra/SourceRecognitionGuardAttempt01/Variant7ffe1283f59a7877c44575de359a636c9a6e7fa1b6f91dd8ba5b868b7c8785ec.lean/declarations/square-zero-transport--49b16353d4e5f24809c7ff01.md) | 119 | `result-track:49b16353d4e5f24809c7ff01ea18990f44a7ba98dcf64e1e527393067ac2eed2` |
| 22 | `theorem` | [square_map_not_real_axis_reflecting](../../../../../mathematics/Algebra/LinearAlgebra/SourceRecognitionGuardAttempt01/Variant7ffe1283f59a7877c44575de359a636c9a6e7fa1b6f91dd8ba5b868b7c8785ec.lean/declarations/square-map-not-real-axis-reflecting--0707c1ecbb1af417c3682896.md) | 123 | `result-track:0707c1ecbb1af417c36828962016b637fa8044423b230d3c2db1899faf478926` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
