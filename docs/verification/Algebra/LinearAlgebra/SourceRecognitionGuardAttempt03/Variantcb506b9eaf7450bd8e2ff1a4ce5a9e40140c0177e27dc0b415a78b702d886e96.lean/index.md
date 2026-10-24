# Verification target: GRWTSK.Algebra.LinearAlgebra.SourceRecognitionGuardAttempt03.Variantcb506b9eaf7450bd8e2ff1a4ce5a9e40140c0177e27dc0b415a78b702d886e96

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "73706f8bff7b49ec8a97e889604669a5f5577171",
  "lexical_observation_count": 27,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/SourceRecognitionGuardAttempt03/Variantcb506b9eaf7450bd8e2ff1a4ce5a9e40140c0177e27dc0b415a78b702d886e96.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/SourceRecognitionGuardAttempt03/Variantcb506b9eaf7450bd8e2ff1a4ce5a9e40140c0177e27dc0b415a78b702d886e96.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/SourceRecognitionGuardAttempt03/Variantcb506b9eaf7450bd8e2ff1a4ce5a9e40140c0177e27dc0b415a78b702d886e96.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `73706f8bff7b49ec8a97e889604669a5f5577171`.

Source path: `GRWTSK/Algebra/LinearAlgebra/SourceRecognitionGuardAttempt03/Variantcb506b9eaf7450bd8e2ff1a4ce5a9e40140c0177e27dc0b415a78b702d886e96.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/SourceRecognitionGuardAttempt03/Variantcb506b9eaf7450bd8e2ff1a4ce5a9e40140c0177e27dc0b415a78b702d886e96.lean.json)

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
| 1 | `theorem` | [symmetric_charpoly_zero_real](../../../../../mathematics/Algebra/LinearAlgebra/SourceRecognitionGuardAttempt03/Variantcb506b9eaf7450bd8e2ff1a4ce5a9e40140c0177e27dc0b415a78b702d886e96.lean/declarations/symmetric-charpoly-zero-real--9b9aeb0b2972bffe4eeba031.md) | 13 | `result-track:9b9aeb0b2972bffe4eeba031896583f740d515fbc53b4ca2b9ba91b17261f2fb` |
| 2 | `theorem` | [hermitian_charpoly_zero_real](../../../../../mathematics/Algebra/LinearAlgebra/SourceRecognitionGuardAttempt03/Variantcb506b9eaf7450bd8e2ff1a4ce5a9e40140c0177e27dc0b415a78b702d886e96.lean/declarations/hermitian-charpoly-zero-real--a25515deef81682628a345b7.md) | 22 | `result-track:a25515deef81682628a345b7dcb8a70e77329cb12451a1686592f93f02514f31` |
| 3 | `def` | [ZeroTransport](../../../../../mathematics/Algebra/LinearAlgebra/SourceRecognitionGuardAttempt03/Variantcb506b9eaf7450bd8e2ff1a4ce5a9e40140c0177e27dc0b415a78b702d886e96.lean/declarations/zerotransport--11beb15cb759a8ecb998bc84.md) | 32 | `declaration-track:11beb15cb759a8ecb998bc84c58b3057647aa017674333075462f2e64acde943` |
| 4 | `def` | [RealAxisReflection](../../../../../mathematics/Algebra/LinearAlgebra/SourceRecognitionGuardAttempt03/Variantcb506b9eaf7450bd8e2ff1a4ce5a9e40140c0177e27dc0b415a78b702d886e96.lean/declarations/realaxisreflection--45c3e5d5f3e3b8bcbfbcdfcb.md) | 36 | `declaration-track:45c3e5d5f3e3b8bcbfbcdfcb82e28e01a02284cd6bcb1b2a9c8073e546a4bc96` |
| 5 | `structure` | [Recognition](../../../../../mathematics/Algebra/LinearAlgebra/SourceRecognitionGuardAttempt03/Variantcb506b9eaf7450bd8e2ff1a4ce5a9e40140c0177e27dc0b415a78b702d886e96.lean/declarations/recognition--081fbc31fcc4b657ebd86313.md) | 40 | `declaration-track:081fbc31fcc4b657ebd86313f7dd9bf3f38f225b38eddbac885c5d36817530df` |
| 6 | `theorem` | [recognition_transfers_real_zeros](../../../../../mathematics/Algebra/LinearAlgebra/SourceRecognitionGuardAttempt03/Variantcb506b9eaf7450bd8e2ff1a4ce5a9e40140c0177e27dc0b415a78b702d886e96.lean/declarations/recognition-transfers-real-zeros--c4fced3f4461a42b6ce841ab.md) | 45 | `result-track:c4fced3f4461a42b6ce841ab6d8e0312c8d1bc84dcc54cced71cab42a7ac78c4` |
| 7 | `theorem` | [exact_comparison_zero_transport](../../../../../mathematics/Algebra/LinearAlgebra/SourceRecognitionGuardAttempt03/Variantcb506b9eaf7450bd8e2ff1a4ce5a9e40140c0177e27dc0b415a78b702d886e96.lean/declarations/exact-comparison-zero-transport--d633382d7f8cd61496d26938.md) | 53 | `result-track:d633382d7f8cd61496d26938e6502b2b74a57932afe250d61eb995e9af2f3243` |
| 8 | `theorem` | [recognition_of_exact_comparison](../../../../../mathematics/Algebra/LinearAlgebra/SourceRecognitionGuardAttempt03/Variantcb506b9eaf7450bd8e2ff1a4ce5a9e40140c0177e27dc0b415a78b702d886e96.lean/declarations/recognition-of-exact-comparison--8a6a10fa45f936d6abb1c108.md) | 62 | `result-track:8a6a10fa45f936d6abb1c108ed58ec55ff39bc52cf14223aa517f19b2276a256` |
| 9 | `theorem` | [real_affine_reflection](../../../../../mathematics/Algebra/LinearAlgebra/SourceRecognitionGuardAttempt03/Variantcb506b9eaf7450bd8e2ff1a4ce5a9e40140c0177e27dc0b415a78b702d886e96.lean/declarations/real-affine-reflection--4085c8ede5c386b7203dbf09.md) | 69 | `result-track:4085c8ede5c386b7203dbf0943c9c008581e1b77250c572514c09e20a3f3c410` |
| 10 | `theorem` | [same_point_comparison_real_zeros](../../../../../mathematics/Algebra/LinearAlgebra/SourceRecognitionGuardAttempt03/Variantcb506b9eaf7450bd8e2ff1a4ce5a9e40140c0177e27dc0b415a78b702d886e96.lean/declarations/same-point-comparison-real-zeros--23842384f081922b39b77266.md) | 76 | `result-track:23842384f081922b39b772666aca742f8241a42e39b070e6be7f18f8476ba530` |
| 11 | `def` | [zeroMatrix](../../../../../mathematics/Algebra/LinearAlgebra/SourceRecognitionGuardAttempt03/Variantcb506b9eaf7450bd8e2ff1a4ce5a9e40140c0177e27dc0b415a78b702d886e96.lean/declarations/zeromatrix--cd14b6c9ffe8b5abdc16c549.md) | 85 | `declaration-track:cd14b6c9ffe8b5abdc16c54999ce531fb74d0cab23196ab8c473b430526f7539` |
| 12 | `def` | [hostileSource](../../../../../mathematics/Algebra/LinearAlgebra/SourceRecognitionGuardAttempt03/Variantcb506b9eaf7450bd8e2ff1a4ce5a9e40140c0177e27dc0b415a78b702d886e96.lean/declarations/hostilesource--0e14c1877ab5aa2d9025af9a.md) | 87 | `declaration-track:0e14c1877ab5aa2d9025af9a816a776b382f94e89f97753fdba6fcc4ef423f5f` |
| 13 | `theorem` | [zeroMatrix_hermitian](../../../../../mathematics/Algebra/LinearAlgebra/SourceRecognitionGuardAttempt03/Variantcb506b9eaf7450bd8e2ff1a4ce5a9e40140c0177e27dc0b415a78b702d886e96.lean/declarations/zeromatrix-hermitian--d53dead299dce07e4ae2ae5a.md) | 89 | `result-track:d53dead299dce07e4ae2ae5a1d938d3b2986031906d9b73e6d9713202d3d9cf1` |
| 14 | `theorem` | [zeroMatrix_charpoly](../../../../../mathematics/Algebra/LinearAlgebra/SourceRecognitionGuardAttempt03/Variantcb506b9eaf7450bd8e2ff1a4ce5a9e40140c0177e27dc0b415a78b702d886e96.lean/declarations/zeromatrix-charpoly--acc75f7edf83c7d58f58475a.md) | 92 | `result-track:acc75f7edf83c7d58f58475ae25a1eca48d9a556860982beb3ae09f8de6e5594` |
| 15 | `theorem` | [zeroMatrix_charpoly_zeros_real](../../../../../mathematics/Algebra/LinearAlgebra/SourceRecognitionGuardAttempt03/Variantcb506b9eaf7450bd8e2ff1a4ce5a9e40140c0177e27dc0b415a78b702d886e96.lean/declarations/zeromatrix-charpoly-zeros-real--7f29e59e4aa761ff54f255ab.md) | 95 | `result-track:7f29e59e4aa761ff54f255ab6ab1dba14ebb862b924490ad57f1688fef66d7d6` |
| 16 | `theorem` | [hostileSource_nonreal_zero](../../../../../mathematics/Algebra/LinearAlgebra/SourceRecognitionGuardAttempt03/Variantcb506b9eaf7450bd8e2ff1a4ce5a9e40140c0177e27dc0b415a78b702d886e96.lean/declarations/hostilesource-nonreal-zero--64635c99c66bc38623102915.md) | 101 | `result-track:64635c99c66bc38623102915e816e25d021e5db5bcd4450a7c300a5ef12273d7` |
| 17 | `theorem` | [finite_boundary_reality_does_not_identify_source](../../../../../mathematics/Algebra/LinearAlgebra/SourceRecognitionGuardAttempt03/Variantcb506b9eaf7450bd8e2ff1a4ce5a9e40140c0177e27dc0b415a78b702d886e96.lean/declarations/finite-boundary-reality-does-not-identify-source--a6b54f1bf1b9e374f74a3cae.md) | 106 | `result-track:a6b54f1bf1b9e374f74a3cae9ddc89bcc9bca0f2e7dcd3e03d732679726d0794` |
| 18 | `def` | [shiftedBoundary](../../../../../mathematics/Algebra/LinearAlgebra/SourceRecognitionGuardAttempt03/Variantcb506b9eaf7450bd8e2ff1a4ce5a9e40140c0177e27dc0b415a78b702d886e96.lean/declarations/shiftedboundary--ad82120811398f18d0553401.md) | 115 | `declaration-track:ad82120811398f18d0553401faf783177064adf8b75a5f10b3628a8f31666d57` |
| 19 | `def` | [squareMap](../../../../../mathematics/Algebra/LinearAlgebra/SourceRecognitionGuardAttempt03/Variantcb506b9eaf7450bd8e2ff1a4ce5a9e40140c0177e27dc0b415a78b702d886e96.lean/declarations/squaremap--413bbb0528c5307555cc9bdc.md) | 117 | `declaration-track:413bbb0528c5307555cc9bdc780836173369f2de37ba404c2000ed822b43cc62` |
| 20 | `def` | [negativeUnitMatrix](../../../../../mathematics/Algebra/LinearAlgebra/SourceRecognitionGuardAttempt03/Variantcb506b9eaf7450bd8e2ff1a4ce5a9e40140c0177e27dc0b415a78b702d886e96.lean/declarations/negativeunitmatrix--b94581c422e9a8670bc7b1db.md) | 119 | `declaration-track:b94581c422e9a8670bc7b1dbe458b6435069e04ae02a034124c5399647979945` |
| 21 | `theorem` | [negativeUnitMatrix_hermitian](../../../../../mathematics/Algebra/LinearAlgebra/SourceRecognitionGuardAttempt03/Variantcb506b9eaf7450bd8e2ff1a4ce5a9e40140c0177e27dc0b415a78b702d886e96.lean/declarations/negativeunitmatrix-hermitian--53997af7e6d0d29eee6fa951.md) | 121 | `result-track:53997af7e6d0d29eee6fa951ffa20de1c3c3895117e44a5af2909381180743c7` |
| 22 | `theorem` | [negativeUnitMatrix_charpoly](../../../../../mathematics/Algebra/LinearAlgebra/SourceRecognitionGuardAttempt03/Variantcb506b9eaf7450bd8e2ff1a4ce5a9e40140c0177e27dc0b415a78b702d886e96.lean/declarations/negativeunitmatrix-charpoly--c38c11f211f11d34c992d1bd.md) | 124 | `result-track:c38c11f211f11d34c992d1bd968938fb0c7ddc3a516d2a20d8392018dd3372bb` |
| 23 | `theorem` | [negativeUnitMatrix_characteristic_function](../../../../../mathematics/Algebra/LinearAlgebra/SourceRecognitionGuardAttempt03/Variantcb506b9eaf7450bd8e2ff1a4ce5a9e40140c0177e27dc0b415a78b702d886e96.lean/declarations/negativeunitmatrix-characteristic-function--96ca210c18b3cf59a5a41bc9.md) | 131 | `result-track:96ca210c18b3cf59a5a41bc98f8eb393a38b3d74c2de79e215c15e803fa6c55b` |
| 24 | `theorem` | [shiftedBoundary_real_zeros](../../../../../mathematics/Algebra/LinearAlgebra/SourceRecognitionGuardAttempt03/Variantcb506b9eaf7450bd8e2ff1a4ce5a9e40140c0177e27dc0b415a78b702d886e96.lean/declarations/shiftedboundary-real-zeros--5cd2fa86b56ec2050f99a45c.md) | 136 | `result-track:5cd2fa86b56ec2050f99a45c31033fd2c0d3620f4c2333324ad5a71a82793a4b` |
| 25 | `theorem` | [square_comparison_exact](../../../../../mathematics/Algebra/LinearAlgebra/SourceRecognitionGuardAttempt03/Variantcb506b9eaf7450bd8e2ff1a4ce5a9e40140c0177e27dc0b415a78b702d886e96.lean/declarations/square-comparison-exact--49ed55d4faf50bb0eb6850cf.md) | 141 | `result-track:49ed55d4faf50bb0eb6850cf769d4d8df56224d18ffb060e1ebdba0e24b6dea9` |
| 26 | `theorem` | [square_zero_transport](../../../../../mathematics/Algebra/LinearAlgebra/SourceRecognitionGuardAttempt03/Variantcb506b9eaf7450bd8e2ff1a4ce5a9e40140c0177e27dc0b415a78b702d886e96.lean/declarations/square-zero-transport--70277c5be04eab53073b611d.md) | 146 | `result-track:70277c5be04eab53073b611d964025c1df0cb1a0f3e3397660e77c04c229baba` |
| 27 | `theorem` | [square_map_not_real_axis_reflecting](../../../../../mathematics/Algebra/LinearAlgebra/SourceRecognitionGuardAttempt03/Variantcb506b9eaf7450bd8e2ff1a4ce5a9e40140c0177e27dc0b415a78b702d886e96.lean/declarations/square-map-not-real-axis-reflecting--722c8add340494b38b13cb14.md) | 150 | `result-track:722c8add340494b38b13cb144b0e2a291e0245eed060606d913a8b3f88c1aac3` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
