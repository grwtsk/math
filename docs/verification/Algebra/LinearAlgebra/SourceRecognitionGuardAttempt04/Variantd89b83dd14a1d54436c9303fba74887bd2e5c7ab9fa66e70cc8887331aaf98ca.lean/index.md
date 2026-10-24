# Verification target: GRWTSK.Algebra.LinearAlgebra.SourceRecognitionGuardAttempt04.Variantd89b83dd14a1d54436c9303fba74887bd2e5c7ab9fa66e70cc8887331aaf98ca

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "b8f67d710f0d4950b6cd7bc2269839a8f1ab4f63",
  "lexical_observation_count": 27,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/SourceRecognitionGuardAttempt04/Variantd89b83dd14a1d54436c9303fba74887bd2e5c7ab9fa66e70cc8887331aaf98ca.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/SourceRecognitionGuardAttempt04/Variantd89b83dd14a1d54436c9303fba74887bd2e5c7ab9fa66e70cc8887331aaf98ca.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/SourceRecognitionGuardAttempt04/Variantd89b83dd14a1d54436c9303fba74887bd2e5c7ab9fa66e70cc8887331aaf98ca.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `b8f67d710f0d4950b6cd7bc2269839a8f1ab4f63`.

Source path: `GRWTSK/Algebra/LinearAlgebra/SourceRecognitionGuardAttempt04/Variantd89b83dd14a1d54436c9303fba74887bd2e5c7ab9fa66e70cc8887331aaf98ca.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/SourceRecognitionGuardAttempt04/Variantd89b83dd14a1d54436c9303fba74887bd2e5c7ab9fa66e70cc8887331aaf98ca.lean.json)

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
| 1 | `theorem` | [symmetric_charpoly_zero_real](../../../../../mathematics/Algebra/LinearAlgebra/SourceRecognitionGuardAttempt04/Variantd89b83dd14a1d54436c9303fba74887bd2e5c7ab9fa66e70cc8887331aaf98ca.lean/declarations/symmetric-charpoly-zero-real--5607f544c76f9b1f30ae5cc5.md) | 21 | `result-track:5607f544c76f9b1f30ae5cc540920a79115ba7737e2c94469031dcc5ab380325` |
| 2 | `theorem` | [hermitian_charpoly_zero_real](../../../../../mathematics/Algebra/LinearAlgebra/SourceRecognitionGuardAttempt04/Variantd89b83dd14a1d54436c9303fba74887bd2e5c7ab9fa66e70cc8887331aaf98ca.lean/declarations/hermitian-charpoly-zero-real--8233ae17a1c328096d48ebe4.md) | 30 | `result-track:8233ae17a1c328096d48ebe4abaf9eaff8985672276e16ff195731c8d9cb541f` |
| 3 | `def` | [ZeroTransport](../../../../../mathematics/Algebra/LinearAlgebra/SourceRecognitionGuardAttempt04/Variantd89b83dd14a1d54436c9303fba74887bd2e5c7ab9fa66e70cc8887331aaf98ca.lean/declarations/zerotransport--bc0b21f5074a353e2737dec2.md) | 40 | `declaration-track:bc0b21f5074a353e2737dec28e9a822f9a1ad8bc3073d69c9891419508be4a62` |
| 4 | `def` | [RealAxisReflection](../../../../../mathematics/Algebra/LinearAlgebra/SourceRecognitionGuardAttempt04/Variantd89b83dd14a1d54436c9303fba74887bd2e5c7ab9fa66e70cc8887331aaf98ca.lean/declarations/realaxisreflection--4b770a81dc73d64f7586d094.md) | 44 | `declaration-track:4b770a81dc73d64f7586d094f83e96f1f014ad5f7a6dc98e307d583eb9d88235` |
| 5 | `structure` | [Recognition](../../../../../mathematics/Algebra/LinearAlgebra/SourceRecognitionGuardAttempt04/Variantd89b83dd14a1d54436c9303fba74887bd2e5c7ab9fa66e70cc8887331aaf98ca.lean/declarations/recognition--7cfafe418d712e647d5621df.md) | 48 | `declaration-track:7cfafe418d712e647d5621df23893c32fb31a0580f92ef1f30be761882141f8f` |
| 6 | `theorem` | [recognition_transfers_real_zeros](../../../../../mathematics/Algebra/LinearAlgebra/SourceRecognitionGuardAttempt04/Variantd89b83dd14a1d54436c9303fba74887bd2e5c7ab9fa66e70cc8887331aaf98ca.lean/declarations/recognition-transfers-real-zeros--2c82bc92e17fbc6a2ccfc341.md) | 53 | `result-track:2c82bc92e17fbc6a2ccfc34171f1525e93a6e049eb46572eb95e9093af4f8b41` |
| 7 | `theorem` | [exact_comparison_zero_transport](../../../../../mathematics/Algebra/LinearAlgebra/SourceRecognitionGuardAttempt04/Variantd89b83dd14a1d54436c9303fba74887bd2e5c7ab9fa66e70cc8887331aaf98ca.lean/declarations/exact-comparison-zero-transport--2d62b172f89d9285983bce9c.md) | 61 | `result-track:2d62b172f89d9285983bce9c2647f3856221d2a57406728900be6320ce75804b` |
| 8 | `theorem` | [recognition_of_exact_comparison](../../../../../mathematics/Algebra/LinearAlgebra/SourceRecognitionGuardAttempt04/Variantd89b83dd14a1d54436c9303fba74887bd2e5c7ab9fa66e70cc8887331aaf98ca.lean/declarations/recognition-of-exact-comparison--4f03363fc58ccf25fb322efb.md) | 70 | `result-track:4f03363fc58ccf25fb322efbe19d14d9dc68b4d10243b0c8bd044789a261d352` |
| 9 | `theorem` | [real_affine_reflection](../../../../../mathematics/Algebra/LinearAlgebra/SourceRecognitionGuardAttempt04/Variantd89b83dd14a1d54436c9303fba74887bd2e5c7ab9fa66e70cc8887331aaf98ca.lean/declarations/real-affine-reflection--124c3d35022052719bc626f0.md) | 77 | `result-track:124c3d35022052719bc626f0991f4b27353bab7c7963485ccd7a3c17001f1cf1` |
| 10 | `theorem` | [same_point_comparison_real_zeros](../../../../../mathematics/Algebra/LinearAlgebra/SourceRecognitionGuardAttempt04/Variantd89b83dd14a1d54436c9303fba74887bd2e5c7ab9fa66e70cc8887331aaf98ca.lean/declarations/same-point-comparison-real-zeros--aff88500089d83a65615350d.md) | 84 | `result-track:aff88500089d83a65615350d8b26ebbae43a952ba222e7b7ae885d8639c4338c` |
| 11 | `def` | [zeroMatrix](../../../../../mathematics/Algebra/LinearAlgebra/SourceRecognitionGuardAttempt04/Variantd89b83dd14a1d54436c9303fba74887bd2e5c7ab9fa66e70cc8887331aaf98ca.lean/declarations/zeromatrix--a355a0aabb8b360679101862.md) | 93 | `declaration-track:a355a0aabb8b36067910186295ecb8063826b97c6dad00cb1dde31b8c43e450c` |
| 12 | `def` | [hostileSource](../../../../../mathematics/Algebra/LinearAlgebra/SourceRecognitionGuardAttempt04/Variantd89b83dd14a1d54436c9303fba74887bd2e5c7ab9fa66e70cc8887331aaf98ca.lean/declarations/hostilesource--bf0f92a44c64364424135f3b.md) | 95 | `declaration-track:bf0f92a44c64364424135f3b272426c15741219d690f50b18bf738a16e784a81` |
| 13 | `theorem` | [zeroMatrix_hermitian](../../../../../mathematics/Algebra/LinearAlgebra/SourceRecognitionGuardAttempt04/Variantd89b83dd14a1d54436c9303fba74887bd2e5c7ab9fa66e70cc8887331aaf98ca.lean/declarations/zeromatrix-hermitian--1261a94570b7f085c214a7cf.md) | 97 | `result-track:1261a94570b7f085c214a7cfa70787bac859c088e821f6ddb681d5a28291c9a4` |
| 14 | `theorem` | [zeroMatrix_charpoly](../../../../../mathematics/Algebra/LinearAlgebra/SourceRecognitionGuardAttempt04/Variantd89b83dd14a1d54436c9303fba74887bd2e5c7ab9fa66e70cc8887331aaf98ca.lean/declarations/zeromatrix-charpoly--fa65a364bb5c1f326f7320f8.md) | 100 | `result-track:fa65a364bb5c1f326f7320f8c0284de828d09ec70301bc4977770611b6c14dde` |
| 15 | `theorem` | [zeroMatrix_charpoly_zeros_real](../../../../../mathematics/Algebra/LinearAlgebra/SourceRecognitionGuardAttempt04/Variantd89b83dd14a1d54436c9303fba74887bd2e5c7ab9fa66e70cc8887331aaf98ca.lean/declarations/zeromatrix-charpoly-zeros-real--93461886a5e4befce53f35da.md) | 103 | `result-track:93461886a5e4befce53f35da734c56a2ebe95a17cdc2268db6640f7f520b5fe5` |
| 16 | `theorem` | [hostileSource_nonreal_zero](../../../../../mathematics/Algebra/LinearAlgebra/SourceRecognitionGuardAttempt04/Variantd89b83dd14a1d54436c9303fba74887bd2e5c7ab9fa66e70cc8887331aaf98ca.lean/declarations/hostilesource-nonreal-zero--51d01c910d10afd3d19d48d4.md) | 109 | `result-track:51d01c910d10afd3d19d48d4c467677d312ecdc5930cd7e23aae5b7e8bcb0f24` |
| 17 | `theorem` | [finite_boundary_reality_does_not_identify_source](../../../../../mathematics/Algebra/LinearAlgebra/SourceRecognitionGuardAttempt04/Variantd89b83dd14a1d54436c9303fba74887bd2e5c7ab9fa66e70cc8887331aaf98ca.lean/declarations/finite-boundary-reality-does-not-identify-source--76bbf55e64256adcb7d280bc.md) | 114 | `result-track:76bbf55e64256adcb7d280bc243d371af8bca537c3dca08e5c9106be0a0c472a` |
| 18 | `def` | [shiftedBoundary](../../../../../mathematics/Algebra/LinearAlgebra/SourceRecognitionGuardAttempt04/Variantd89b83dd14a1d54436c9303fba74887bd2e5c7ab9fa66e70cc8887331aaf98ca.lean/declarations/shiftedboundary--dd09809df55e602b09a3c6aa.md) | 123 | `declaration-track:dd09809df55e602b09a3c6aacf8c37c0111c2cee64d041bcd69ebb18b4a30e7d` |
| 19 | `def` | [squareMap](../../../../../mathematics/Algebra/LinearAlgebra/SourceRecognitionGuardAttempt04/Variantd89b83dd14a1d54436c9303fba74887bd2e5c7ab9fa66e70cc8887331aaf98ca.lean/declarations/squaremap--e73eaa8853cc94536c16d8f5.md) | 125 | `declaration-track:e73eaa8853cc94536c16d8f55bf87c3419a81dbd1506e2c5ecc5cd3d62b45b5b` |
| 20 | `def` | [negativeUnitMatrix](../../../../../mathematics/Algebra/LinearAlgebra/SourceRecognitionGuardAttempt04/Variantd89b83dd14a1d54436c9303fba74887bd2e5c7ab9fa66e70cc8887331aaf98ca.lean/declarations/negativeunitmatrix--7f627868ff975025f6787536.md) | 127 | `declaration-track:7f627868ff975025f6787536cef85549e947727ac2eeb779436af87fb86bc219` |
| 21 | `theorem` | [negativeUnitMatrix_hermitian](../../../../../mathematics/Algebra/LinearAlgebra/SourceRecognitionGuardAttempt04/Variantd89b83dd14a1d54436c9303fba74887bd2e5c7ab9fa66e70cc8887331aaf98ca.lean/declarations/negativeunitmatrix-hermitian--f835881f468b92c5bc9f7a11.md) | 129 | `result-track:f835881f468b92c5bc9f7a11eba52d348479e2ea830dcbcfe7a8cd20fe481b29` |
| 22 | `theorem` | [negativeUnitMatrix_charpoly](../../../../../mathematics/Algebra/LinearAlgebra/SourceRecognitionGuardAttempt04/Variantd89b83dd14a1d54436c9303fba74887bd2e5c7ab9fa66e70cc8887331aaf98ca.lean/declarations/negativeunitmatrix-charpoly--2d699d579e5781a3d6c64afb.md) | 132 | `result-track:2d699d579e5781a3d6c64afbcec28fc7e130e5e519653cdeddaf52d081fc0c72` |
| 23 | `theorem` | [negativeUnitMatrix_characteristic_function](../../../../../mathematics/Algebra/LinearAlgebra/SourceRecognitionGuardAttempt04/Variantd89b83dd14a1d54436c9303fba74887bd2e5c7ab9fa66e70cc8887331aaf98ca.lean/declarations/negativeunitmatrix-characteristic-function--903f0ecae1b16ea8bed5dcbb.md) | 140 | `result-track:903f0ecae1b16ea8bed5dcbbe635fcdcc0cb0ad64ee08912fde86d602e0cc1df` |
| 24 | `theorem` | [shiftedBoundary_real_zeros](../../../../../mathematics/Algebra/LinearAlgebra/SourceRecognitionGuardAttempt04/Variantd89b83dd14a1d54436c9303fba74887bd2e5c7ab9fa66e70cc8887331aaf98ca.lean/declarations/shiftedboundary-real-zeros--e5f30d0ccd8cc6c0f8b94338.md) | 145 | `result-track:e5f30d0ccd8cc6c0f8b94338ba0fc3f33a56e05a439763d2f833d9626080dc2b` |
| 25 | `theorem` | [square_comparison_exact](../../../../../mathematics/Algebra/LinearAlgebra/SourceRecognitionGuardAttempt04/Variantd89b83dd14a1d54436c9303fba74887bd2e5c7ab9fa66e70cc8887331aaf98ca.lean/declarations/square-comparison-exact--fffc580c153bdf62dad51ca2.md) | 150 | `result-track:fffc580c153bdf62dad51ca2cf4377fd5f25ac3001c12334e57a5ac668652bd3` |
| 26 | `theorem` | [square_zero_transport](../../../../../mathematics/Algebra/LinearAlgebra/SourceRecognitionGuardAttempt04/Variantd89b83dd14a1d54436c9303fba74887bd2e5c7ab9fa66e70cc8887331aaf98ca.lean/declarations/square-zero-transport--3ab92ba6d1c8736e9b59e1e5.md) | 155 | `result-track:3ab92ba6d1c8736e9b59e1e59a498ccc5e1fbffa4e55ae9e964280799a42d7ec` |
| 27 | `theorem` | [square_map_not_real_axis_reflecting](../../../../../mathematics/Algebra/LinearAlgebra/SourceRecognitionGuardAttempt04/Variantd89b83dd14a1d54436c9303fba74887bd2e5c7ab9fa66e70cc8887331aaf98ca.lean/declarations/square-map-not-real-axis-reflecting--c5729138a70f1109920e2691.md) | 159 | `result-track:c5729138a70f1109920e26916df46a9105b874e84285024828885fdf4e2b4844` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
