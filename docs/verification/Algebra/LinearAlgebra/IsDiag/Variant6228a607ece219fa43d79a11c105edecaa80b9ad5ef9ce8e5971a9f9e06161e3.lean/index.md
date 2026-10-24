# Verification target: GRWTSK.Algebra.LinearAlgebra.IsDiag.Variant6228a607ece219fa43d79a11c105edecaa80b9ad5ef9ce8e5971a9f9e06161e3

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "6d2fad2318d97bb15911b08107144b9e45ad635a",
  "lexical_observation_count": 26,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/IsDiag/Variant6228a607ece219fa43d79a11c105edecaa80b9ad5ef9ce8e5971a9f9e06161e3.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/IsDiag/Variant6228a607ece219fa43d79a11c105edecaa80b9ad5ef9ce8e5971a9f9e06161e3.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/IsDiag/Variant6228a607ece219fa43d79a11c105edecaa80b9ad5ef9ce8e5971a9f9e06161e3.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `6d2fad2318d97bb15911b08107144b9e45ad635a`.

Source path: `GRWTSK/Algebra/LinearAlgebra/IsDiag/Variant6228a607ece219fa43d79a11c105edecaa80b9ad5ef9ce8e5971a9f9e06161e3.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/IsDiag/Variant6228a607ece219fa43d79a11c105edecaa80b9ad5ef9ce8e5971a9f9e06161e3.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.LinearAlgebra.Matrix.Symmetric` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.Matrix.Orthogonal` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Matrix.Kronecker` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [IsDiag](../../../../../mathematics/Algebra/LinearAlgebra/IsDiag/Variant6228a607ece219fa43d79a11c105edecaa80b9ad5ef9ce8e5971a9f9e06161e3.lean/declarations/isdiag--3c9aa1d5bcfce63df53ae056.md) | 34 | `declaration-track:3c9aa1d5bcfce63df53ae056c2ea768dfb3e7601643db5e848643c1407f7f7d0` |
| 2 | `theorem` | [isDiag_diagonal](../../../../../mathematics/Algebra/LinearAlgebra/IsDiag/Variant6228a607ece219fa43d79a11c105edecaa80b9ad5ef9ce8e5971a9f9e06161e3.lean/declarations/isdiag-diagonal--69059665991978108727d6d1.md) | 38 | `result-track:69059665991978108727d6d15650a45480edc07e6588c36abaf4b6adf3e0e6f2` |
| 3 | `theorem` | [IsDiag.diagonal_diag](../../../../../mathematics/Algebra/LinearAlgebra/IsDiag/Variant6228a607ece219fa43d79a11c105edecaa80b9ad5ef9ce8e5971a9f9e06161e3.lean/declarations/isdiag-diagonal-diag--2376c41108c1f5ae477494da.md) | 42 | `result-track:2376c41108c1f5ae477494da71eacd9362ae96c4b12c2f1eb91db88883524f82` |
| 4 | `theorem` | [isDiag_iff_diagonal_diag](../../../../../mathematics/Algebra/LinearAlgebra/IsDiag/Variant6228a607ece219fa43d79a11c105edecaa80b9ad5ef9ce8e5971a9f9e06161e3.lean/declarations/isdiag-iff-diagonal-diag--0df2820bc78ebbff0576cc7e.md) | 50 | `result-track:0df2820bc78ebbff0576cc7e16b4d207c990deab8fb2b621cea6a4cd90004a6b` |
| 5 | `theorem` | [isDiag_of_subsingleton](../../../../../mathematics/Algebra/LinearAlgebra/IsDiag/Variant6228a607ece219fa43d79a11c105edecaa80b9ad5ef9ce8e5971a9f9e06161e3.lean/declarations/isdiag-of-subsingleton--9e1e1339a8d473c989b4b54f.md) | 55 | `result-track:9e1e1339a8d473c989b4b54f3f05a4e80fae79ed774640247d61732ea74512b1` |
| 6 | `theorem` | [isDiag_zero](../../../../../mathematics/Algebra/LinearAlgebra/IsDiag/Variant6228a607ece219fa43d79a11c105edecaa80b9ad5ef9ce8e5971a9f9e06161e3.lean/declarations/isdiag-zero--cae9a8532230b550de1380cc.md) | 60 | `result-track:cae9a8532230b550de1380cc7c5387c2986948f7981d63a6dd713690019aaece` |
| 7 | `theorem` | [isDiag_one](../../../../../mathematics/Algebra/LinearAlgebra/IsDiag/Variant6228a607ece219fa43d79a11c105edecaa80b9ad5ef9ce8e5971a9f9e06161e3.lean/declarations/isdiag-one--70a6704b0a9a9c0b79cd3fb8.md) | 64 | `result-track:70a6704b0a9a9c0b79cd3fb81b0e1b4fe7ebdf55406987ac52d98bf547e32f79` |
| 8 | `theorem` | [IsDiag.map](../../../../../mathematics/Algebra/LinearAlgebra/IsDiag/Variant6228a607ece219fa43d79a11c105edecaa80b9ad5ef9ce8e5971a9f9e06161e3.lean/declarations/isdiag-map--45d2b4f55308e48ba7858648.md) | 67 | `result-track:45d2b4f55308e48ba7858648ebc622735347f2034d49aae416eb0dd34d802f91` |
| 9 | `theorem` | [IsDiag.neg](../../../../../mathematics/Algebra/LinearAlgebra/IsDiag/Variant6228a607ece219fa43d79a11c105edecaa80b9ad5ef9ce8e5971a9f9e06161e3.lean/declarations/isdiag-neg--d7445129c7ddd60ea11e7727.md) | 72 | `result-track:d7445129c7ddd60ea11e77275120930aea5ee2b5e252580fd79c47b7d12e9c41` |
| 10 | `theorem` | [isDiag_neg_iff](../../../../../mathematics/Algebra/LinearAlgebra/IsDiag/Variant6228a607ece219fa43d79a11c105edecaa80b9ad5ef9ce8e5971a9f9e06161e3.lean/declarations/isdiag-neg-iff--9d52b819aab61957bb52c9e5.md) | 77 | `result-track:9d52b819aab61957bb52c9e53c83ea97cb60e91afd9db6e80b63c728a21bbdf8` |
| 11 | `theorem` | [IsDiag.add](../../../../../mathematics/Algebra/LinearAlgebra/IsDiag/Variant6228a607ece219fa43d79a11c105edecaa80b9ad5ef9ce8e5971a9f9e06161e3.lean/declarations/isdiag-add--ac6326c3072d1c7674eec7f5.md) | 80 | `result-track:ac6326c3072d1c7674eec7f5e8a61745db897c4f6b5f588f41698d12fea57bd5` |
| 12 | `theorem` | [IsDiag.sub](../../../../../mathematics/Algebra/LinearAlgebra/IsDiag/Variant6228a607ece219fa43d79a11c105edecaa80b9ad5ef9ce8e5971a9f9e06161e3.lean/declarations/isdiag-sub--5e4ac6a97241701997561b88.md) | 85 | `result-track:5e4ac6a97241701997561b8880a3cb6b4c5f57dcb01f5b808fd4f8b5e8903c65` |
| 13 | `theorem` | [IsDiag.smul](../../../../../mathematics/Algebra/LinearAlgebra/IsDiag/Variant6228a607ece219fa43d79a11c105edecaa80b9ad5ef9ce8e5971a9f9e06161e3.lean/declarations/isdiag-smul--f03f59fff8b750138c21974b.md) | 90 | `result-track:f03f59fff8b750138c21974b5b80761213aadc22c80ab79b66e98c3eb76ba1cf` |
| 14 | `theorem` | [isDiag_smul_one](../../../../../mathematics/Algebra/LinearAlgebra/IsDiag/Variant6228a607ece219fa43d79a11c105edecaa80b9ad5ef9ce8e5971a9f9e06161e3.lean/declarations/isdiag-smul-one--36841c66b87de7d300e6cd46.md) | 96 | `result-track:36841c66b87de7d300e6cd46de04d006cc5054ab1698211177ae5dce0cdf395d` |
| 15 | `theorem` | [IsDiag.transpose](../../../../../mathematics/Algebra/LinearAlgebra/IsDiag/Variant6228a607ece219fa43d79a11c105edecaa80b9ad5ef9ce8e5971a9f9e06161e3.lean/declarations/isdiag-transpose--57bf1ecd4a938254bb85479e.md) | 100 | `result-track:57bf1ecd4a938254bb85479e4bd83260d71c0367fb18320913190069f34e5ced` |
| 16 | `theorem` | [isDiag_transpose_iff](../../../../../mathematics/Algebra/LinearAlgebra/IsDiag/Variant6228a607ece219fa43d79a11c105edecaa80b9ad5ef9ce8e5971a9f9e06161e3.lean/declarations/isdiag-transpose-iff--7202f0cc939deb45e668422d.md) | 104 | `result-track:7202f0cc939deb45e668422d9c9b655f247acc5c637fbc19476339a0bd284121` |
| 17 | `theorem` | [IsDiag.conjTranspose](../../../../../mathematics/Algebra/LinearAlgebra/IsDiag/Variant6228a607ece219fa43d79a11c105edecaa80b9ad5ef9ce8e5971a9f9e06161e3.lean/declarations/isdiag-conjtranspose--3734d2adbaf723e7f36ea42f.md) | 107 | `result-track:3734d2adbaf723e7f36ea42f82bd686a4322e83c8cc08c8754d6f87bafd4c89d` |
| 18 | `theorem` | [isDiag_conjTranspose_iff](../../../../../mathematics/Algebra/LinearAlgebra/IsDiag/Variant6228a607ece219fa43d79a11c105edecaa80b9ad5ef9ce8e5971a9f9e06161e3.lean/declarations/isdiag-conjtranspose-iff--698583bac83e9ee71bce2bfa.md) | 112 | `result-track:698583bac83e9ee71bce2bfa5dc9ef1592d394b371528d5f8217423dacb7a201` |
| 19 | `theorem` | [IsDiag.submatrix](../../../../../mathematics/Algebra/LinearAlgebra/IsDiag/Variant6228a607ece219fa43d79a11c105edecaa80b9ad5ef9ce8e5971a9f9e06161e3.lean/declarations/isdiag-submatrix--b39b0f02d36464fd782f8212.md) | 118 | `result-track:b39b0f02d36464fd782f821293fbb63eac3d7387328266810cc0a649260f6863` |
| 20 | `theorem` | [IsDiag.kronecker](../../../../../mathematics/Algebra/LinearAlgebra/IsDiag/Variant6228a607ece219fa43d79a11c105edecaa80b9ad5ef9ce8e5971a9f9e06161e3.lean/declarations/isdiag-kronecker--36ea567d867d84d2e72e354c.md) | 122 | `result-track:36ea567d867d84d2e72e354cef5f985725726c9daef0bf292eab6840bf4cdd31` |
| 21 | `theorem` | [IsDiag.isSymm](../../../../../mathematics/Algebra/LinearAlgebra/IsDiag/Variant6228a607ece219fa43d79a11c105edecaa80b9ad5ef9ce8e5971a9f9e06161e3.lean/declarations/isdiag-issymm--208fc7bb110e5c83769549c9.md) | 130 | `result-track:208fc7bb110e5c83769549c9bb80ebdf67bf7587a2f19da4927320317002ce12` |
| 22 | `theorem` | [IsDiag.fromBlocks](../../../../../mathematics/Algebra/LinearAlgebra/IsDiag/Variant6228a607ece219fa43d79a11c105edecaa80b9ad5ef9ce8e5971a9f9e06161e3.lean/declarations/isdiag-fromblocks--338ff0b16876184d4a0b1986.md) | 136 | `result-track:338ff0b16876184d4a0b198621b1d210a1ffa2cca208d04d36142268d3a4de89` |
| 23 | `theorem` | [isDiag_fromBlocks_iff](../../../../../mathematics/Algebra/LinearAlgebra/IsDiag/Variant6228a607ece219fa43d79a11c105edecaa80b9ad5ef9ce8e5971a9f9e06161e3.lean/declarations/isdiag-fromblocks-iff--b6a0f4b845dde2afb90cd2f3.md) | 145 | `result-track:b6a0f4b845dde2afb90cd2f3ba8d1ac4ad8473f99ccc8fc66db784a0db549cc0` |
| 24 | `theorem` | [IsDiag.fromBlocks_of_isSymm](../../../../../mathematics/Algebra/LinearAlgebra/IsDiag/Variant6228a607ece219fa43d79a11c105edecaa80b9ad5ef9ce8e5971a9f9e06161e3.lean/declarations/isdiag-fromblocks-of-issymm--923aeaab347aaa61deaed128.md) | 159 | `result-track:923aeaab347aaa61deaed12821aed0b1596b5773ff61255f7046531ed934de97` |
| 25 | `theorem` | [mul_transpose_self_isDiag_iff_hasOrthogonalRows](../../../../../mathematics/Algebra/LinearAlgebra/IsDiag/Variant6228a607ece219fa43d79a11c105edecaa80b9ad5ef9ce8e5971a9f9e06161e3.lean/declarations/mul-transpose-self-isdiag-iff-hasorthogonalrows--b312939328acfab6c81370f7.md) | 165 | `result-track:b312939328acfab6c81370f781578827487d0861e15796a8d37e8e04025cbaa1` |
| 26 | `theorem` | [transpose_mul_self_isDiag_iff_hasOrthogonalCols](../../../../../mathematics/Algebra/LinearAlgebra/IsDiag/Variant6228a607ece219fa43d79a11c105edecaa80b9ad5ef9ce8e5971a9f9e06161e3.lean/declarations/transpose-mul-self-isdiag-iff-hasorthogonalcols--d84bf721d945af491f2d7048.md) | 169 | `result-track:d84bf721d945af491f2d70483d5e1d15fa923c54db134938c8f832cc974dca3f` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
