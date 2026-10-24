# Verification target: GRWTSK.Algebra.CommutativeAlgebra.ScaleRoots.Variant7df3788430be66f0f9a8e694fb0466892ff230e533a0195bbf885eb90370dad6

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "6bd3e119c7e36bd79b7662b3b6e86c586d3c9e62",
  "lexical_observation_count": 16,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/CommutativeAlgebra/ScaleRoots/Variant7df3788430be66f0f9a8e694fb0466892ff230e533a0195bbf885eb90370dad6.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/CommutativeAlgebra/ScaleRoots/Variant7df3788430be66f0f9a8e694fb0466892ff230e533a0195bbf885eb90370dad6.lean/index.md) · [Full source](../../../../../mathematics/Algebra/CommutativeAlgebra/ScaleRoots/Variant7df3788430be66f0f9a8e694fb0466892ff230e533a0195bbf885eb90370dad6.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `6bd3e119c7e36bd79b7662b3b6e86c586d3c9e62`.

Source path: `GRWTSK/Algebra/CommutativeAlgebra/ScaleRoots/Variant7df3788430be66f0f9a8e694fb0466892ff230e533a0195bbf885eb90370dad6.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/CommutativeAlgebra/ScaleRoots/Variant7df3788430be66f0f9a8e694fb0466892ff230e533a0195bbf885eb90370dad6.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.RingTheory.NonZeroDivisors` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Polynomial.AlgebraMap` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [scaleRoots](../../../../../mathematics/Algebra/CommutativeAlgebra/ScaleRoots/Variant7df3788430be66f0f9a8e694fb0466892ff230e533a0195bbf885eb90370dad6.lean/declarations/scaleroots--863934f81543c47044ac850e.md) | 38 | `declaration-track:863934f81543c47044ac850e0258966f32e856eef9615237dc1d1394beec4059` |
| 2 | `theorem` | [coeff_scaleRoots](../../../../../mathematics/Algebra/CommutativeAlgebra/ScaleRoots/Variant7df3788430be66f0f9a8e694fb0466892ff230e533a0195bbf885eb90370dad6.lean/declarations/coeff-scaleroots--4145365e34a4e09ea93392c5.md) | 43 | `result-track:4145365e34a4e09ea93392c5c56abe3db7bfaa97af1c3762d575947e10343d9c` |
| 3 | `theorem` | [coeff_scaleRoots_natDegree](../../../../../mathematics/Algebra/CommutativeAlgebra/ScaleRoots/Variant7df3788430be66f0f9a8e694fb0466892ff230e533a0195bbf885eb90370dad6.lean/declarations/coeff-scaleroots-natdegree--cbf7e1e4d860f561fb855059.md) | 48 | `result-track:cbf7e1e4d860f561fb8550596ef9c00dbc5c5056dc15612465a60ce4b3ee041c` |
| 4 | `theorem` | [zero_scaleRoots](../../../../../mathematics/Algebra/CommutativeAlgebra/ScaleRoots/Variant7df3788430be66f0f9a8e694fb0466892ff230e533a0195bbf885eb90370dad6.lean/declarations/zero-scaleroots--39da8633d69ec400e9b47ab4.md) | 54 | `result-track:39da8633d69ec400e9b47ab4ff68e83b5febee3e57f1dceeb48a50dfbcae7b25` |
| 5 | `theorem` | [scaleRoots_ne_zero](../../../../../mathematics/Algebra/CommutativeAlgebra/ScaleRoots/Variant7df3788430be66f0f9a8e694fb0466892ff230e533a0195bbf885eb90370dad6.lean/declarations/scaleroots-ne-zero--47586dfe2fa435804e47c488.md) | 59 | `result-track:47586dfe2fa435804e47c4884b01682651d0576d013ee5b7fbcba05870e83470` |
| 6 | `theorem` | [support_scaleRoots_le](../../../../../mathematics/Algebra/CommutativeAlgebra/ScaleRoots/Variant7df3788430be66f0f9a8e694fb0466892ff230e533a0195bbf885eb90370dad6.lean/declarations/support-scaleroots-le--f39cfb0807d5719129cf6de9.md) | 68 | `result-track:f39cfb0807d5719129cf6de936202b3e1cd2255a4769c1a5c7ef9845b589d2a9` |
| 7 | `theorem` | [support_scaleRoots_eq](../../../../../mathematics/Algebra/CommutativeAlgebra/ScaleRoots/Variant7df3788430be66f0f9a8e694fb0466892ff230e533a0195bbf885eb90370dad6.lean/declarations/support-scaleroots-eq--ab4b821a87cc38b842b530f7.md) | 73 | `result-track:ab4b821a87cc38b842b530f72bd30e7cc264bf39ff03bb63ca1fb16fdbc6178f` |
| 8 | `theorem` | [degree_scaleRoots](../../../../../mathematics/Algebra/CommutativeAlgebra/ScaleRoots/Variant7df3788430be66f0f9a8e694fb0466892ff230e533a0195bbf885eb90370dad6.lean/declarations/degree-scaleroots--84c858ead03bf393d4185ebc.md) | 84 | `result-track:84c858ead03bf393d4185ebc4b608cba390dc0e8175ad3468411c27474d3db8a` |
| 9 | `theorem` | [natDegree_scaleRoots](../../../../../mathematics/Algebra/CommutativeAlgebra/ScaleRoots/Variant7df3788430be66f0f9a8e694fb0466892ff230e533a0195bbf885eb90370dad6.lean/declarations/natdegree-scaleroots--f18ce5160142517aa235438e.md) | 96 | `result-track:f18ce5160142517aa235438ec5ceb2115fbab619583832a70debe508e1e74e41` |
| 10 | `theorem` | [monic_scaleRoots_iff](../../../../../mathematics/Algebra/CommutativeAlgebra/ScaleRoots/Variant7df3788430be66f0f9a8e694fb0466892ff230e533a0195bbf885eb90370dad6.lean/declarations/monic-scaleroots-iff--75b15857785b3fd83b7abd4b.md) | 100 | `result-track:75b15857785b3fd83b7abd4b3a74d41d393df085af4ef4b5ab554c4001455223` |
| 11 | `theorem` | [map_scaleRoots](../../../../../mathematics/Algebra/CommutativeAlgebra/ScaleRoots/Variant7df3788430be66f0f9a8e694fb0466892ff230e533a0195bbf885eb90370dad6.lean/declarations/map-scaleroots--aa2f33e748ac27c3ec4346c5.md) | 104 | `result-track:aa2f33e748ac27c3ec4346c5f42dc276f09d2c57c34e87edf66ec899a5bde8ce` |
| 12 | `theorem` | [scaleRoots_eval₂_mul](../../../../../mathematics/Algebra/CommutativeAlgebra/ScaleRoots/Variant7df3788430be66f0f9a8e694fb0466892ff230e533a0195bbf885eb90370dad6.lean/declarations/scaleroots-eval-mul--fb60f06a9ac2c6b1cd954f91.md) | 116 | `result-track:fb60f06a9ac2c6b1cd954f91ac7553638675800e598b227ce10dec5c3ab113f6` |
| 13 | `theorem` | [scaleRoots_eval₂_eq_zero](../../../../../mathematics/Algebra/CommutativeAlgebra/ScaleRoots/Variant7df3788430be66f0f9a8e694fb0466892ff230e533a0195bbf885eb90370dad6.lean/declarations/scaleroots-eval-eq-zero--55162e18667ac363678e0635.md) | 138 | `result-track:55162e18667ac363678e0635ff4459437a501c740972302cf5854435953fd8d9` |
| 14 | `theorem` | [scaleRoots_aeval_eq_zero](../../../../../mathematics/Algebra/CommutativeAlgebra/ScaleRoots/Variant7df3788430be66f0f9a8e694fb0466892ff230e533a0195bbf885eb90370dad6.lean/declarations/scaleroots-aeval-eq-zero--860cc690fb8ad09e44e8c74b.md) | 142 | `result-track:860cc690fb8ad09e44e8c74bc9c28932f397f949ae0b80cffa9d12d5987d034f` |
| 15 | `theorem` | [scaleRoots_eval₂_eq_zero_of_eval₂_div_eq_zero](../../../../../mathematics/Algebra/CommutativeAlgebra/ScaleRoots/Variant7df3788430be66f0f9a8e694fb0466892ff230e533a0195bbf885eb90370dad6.lean/declarations/scaleroots-eval-eq-zero-of-eval-div-eq-zero--65c8f43b229fcde63ba81154.md) | 147 | `result-track:65c8f43b229fcde63ba81154890f7d65eaefbd16f3eae30fa107f6013e903ea7` |
| 16 | `theorem` | [scaleRoots_aeval_eq_zero_of_aeval_div_eq_zero](../../../../../mathematics/Algebra/CommutativeAlgebra/ScaleRoots/Variant7df3788430be66f0f9a8e694fb0466892ff230e533a0195bbf885eb90370dad6.lean/declarations/scaleroots-aeval-eq-zero-of-aeval-div-eq-zero--acd9e6de6d7e8ccd6864fc23.md) | 156 | `result-track:acd9e6de6d7e8ccd6864fc23cd0f38b011b6c5d476050978ab8e3d132ada6c11` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
