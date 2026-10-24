# Verification target: GRWTSK.Algebra.LinearAlgebra.HadamardMatrix.Variant001105bd02afd500cb94e5460fd81605f8bcac7594355c103cce267035c18af1

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "96d28597998ad54c95d1f75c4a57946c4cfcfaff",
  "lexical_observation_count": 20,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/HadamardMatrix/Variant001105bd02afd500cb94e5460fd81605f8bcac7594355c103cce267035c18af1.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/HadamardMatrix/Variant001105bd02afd500cb94e5460fd81605f8bcac7594355c103cce267035c18af1.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/HadamardMatrix/Variant001105bd02afd500cb94e5460fd81605f8bcac7594355c103cce267035c18af1.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `96d28597998ad54c95d1f75c4a57946c4cfcfaff`.

Source path: `GRWTSK/Algebra/LinearAlgebra/HadamardMatrix/Variant001105bd02afd500cb94e5460fd81605f8bcac7594355c103cce267035c18af1.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/HadamardMatrix/Variant001105bd02afd500cb94e5460fd81605f8bcac7594355c103cce267035c18af1.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [IsHadamard](../../../../../mathematics/Algebra/LinearAlgebra/HadamardMatrix/Variant001105bd02afd500cb94e5460fd81605f8bcac7594355c103cce267035c18af1.lean/declarations/ishadamard--2011ba044a4efce8b951593b.md) | 59 | `declaration-track:2011ba044a4efce8b951593bba4ee11a88fc069c1bc1d9f76631b5bf53ccea3d` |
| 2 | `theorem` | [IsHadamard.isStarNormal](../../../../../mathematics/Algebra/LinearAlgebra/HadamardMatrix/Variant001105bd02afd500cb94e5460fd81605f8bcac7594355c103cce267035c18af1.lean/declarations/ishadamard-isstarnormal--08080633673f40cfe466f9c1.md) | 66 | `result-track:08080633673f40cfe466f9c1b52c50909113da347fe6c5b9fede3f0dcb743ed1` |
| 3 | `theorem` | [IsHadamard.conjTranspose](../../../../../mathematics/Algebra/LinearAlgebra/HadamardMatrix/Variant001105bd02afd500cb94e5460fd81605f8bcac7594355c103cce267035c18af1.lean/declarations/ishadamard-conjtranspose--52253556a468f83c90bfc80a.md) | 71 | `result-track:52253556a468f83c90bfc80a4d367207d1d7b32c7a1f09d80e65bc73c1545f02` |
| 4 | `theorem` | [isHadamard_conjTranspose_iff](../../../../../mathematics/Algebra/LinearAlgebra/HadamardMatrix/Variant001105bd02afd500cb94e5460fd81605f8bcac7594355c103cce267035c18af1.lean/declarations/ishadamard-conjtranspose-iff--25c7f6308db9b9292bda2b8f.md) | 77 | `result-track:25c7f6308db9b9292bda2b8fd48aac05576abb11e8ce14bf975bbf50865594fb` |
| 5 | `theorem` | [IsHadamard.reindex](../../../../../mathematics/Algebra/LinearAlgebra/HadamardMatrix/Variant001105bd02afd500cb94e5460fd81605f8bcac7594355c103cce267035c18af1.lean/declarations/ishadamard-reindex--dffd0643f725c078c23da981.md) | 81 | `result-track:dffd0643f725c078c23da98174be36fc3bba1dd4aee7284031667416d29d45f5` |
| 6 | `theorem` | [isHadamard_submatrix_equiv_iff](../../../../../mathematics/Algebra/LinearAlgebra/HadamardMatrix/Variant001105bd02afd500cb94e5460fd81605f8bcac7594355c103cce267035c18af1.lean/declarations/ishadamard-submatrix-equiv-iff--1efc10fd0a4c8a0f986bd9eb.md) | 88 | `result-track:1efc10fd0a4c8a0f986bd9ebbd530f6f77543ca6973773592512dfac9ac4da78` |
| 7 | `theorem` | [IsHadamard.kronecker](../../../../../mathematics/Algebra/LinearAlgebra/HadamardMatrix/Variant001105bd02afd500cb94e5460fd81605f8bcac7594355c103cce267035c18af1.lean/declarations/ishadamard-kronecker--2d5d2ec6e30a13ec7bdb5c36.md) | 94 | `result-track:2d5d2ec6e30a13ec7bdb5c366d9d64620b1c755b6f08ad290be8d7393bbd0834` |
| 8 | `theorem` | [IsHadamard.card_eq_mul_star_of_const_col_sum](../../../../../mathematics/Algebra/LinearAlgebra/HadamardMatrix/Variant001105bd02afd500cb94e5460fd81605f8bcac7594355c103cce267035c18af1.lean/declarations/ishadamard-card-eq-mul-star-of-const-col-sum--be7720e1efea1e7463fb9351.md) | 124 | `result-track:be7720e1efea1e7463fb9351e9cd94a680e98a95056cde7848b628dd7809b576` |
| 9 | `theorem` | [IsHadamard.card_eq_star_mul_of_const_row_sum](../../../../../mathematics/Algebra/LinearAlgebra/HadamardMatrix/Variant001105bd02afd500cb94e5460fd81605f8bcac7594355c103cce267035c18af1.lean/declarations/ishadamard-card-eq-star-mul-of-const-row-sum--4c05136ec9873f07c14b95d7.md) | 145 | `result-track:4c05136ec9873f07c14b95d7818f1ac75cc41b527cd69ba3a18d384fdb3cb99c` |
| 10 | `theorem` | [IsHadamard.transpose](../../../../../mathematics/Algebra/LinearAlgebra/HadamardMatrix/Variant001105bd02afd500cb94e5460fd81605f8bcac7594355c103cce267035c18af1.lean/declarations/ishadamard-transpose--afd9c76476519ba9f4c8d09b.md) | 161 | `result-track:afd9c76476519ba9f4c8d09be4357b1c05a93adcc4b66bd7dab426c41b67010e` |
| 11 | `theorem` | [isHadamard_transpose_iff](../../../../../mathematics/Algebra/LinearAlgebra/HadamardMatrix/Variant001105bd02afd500cb94e5460fd81605f8bcac7594355c103cce267035c18af1.lean/declarations/ishadamard-transpose-iff--447d142c328ead73e0a625cd.md) | 171 | `result-track:447d142c328ead73e0a625cd17036b5e3c078a9b317e616f4a9fd7880bb7a242` |
| 12 | `theorem` | [IsHadamard.neg](../../../../../mathematics/Algebra/LinearAlgebra/HadamardMatrix/Variant001105bd02afd500cb94e5460fd81605f8bcac7594355c103cce267035c18af1.lean/declarations/ishadamard-neg--ae456f290771b505101326eb.md) | 180 | `result-track:ae456f290771b505101326eba2aded512a8d5d77433bcbe3c944f5ef7c5701e1` |
| 13 | `theorem` | [IsHadamard.neg_iff](../../../../../mathematics/Algebra/LinearAlgebra/HadamardMatrix/Variant001105bd02afd500cb94e5460fd81605f8bcac7594355c103cce267035c18af1.lean/declarations/ishadamard-neg-iff--679fef6592b5bed2ca7f0848.md) | 185 | `result-track:679fef6592b5bed2ca7f084800b709a99575e261538eddb41e131f8f77020a68` |
| 14 | `theorem` | [IsHadamard.det_mul_star_det](../../../../../mathematics/Algebra/LinearAlgebra/HadamardMatrix/Variant001105bd02afd500cb94e5460fd81605f8bcac7594355c103cce267035c18af1.lean/declarations/ishadamard-det-mul-star-det--a8c95a249cc8d7e3d28afe09.md) | 194 | `result-track:a8c95a249cc8d7e3d28afe09532df0e67fc460407e0ec4418c23ff500ef67fe2` |
| 15 | `theorem` | [IsHadamard.star_det_mul_det](../../../../../mathematics/Algebra/LinearAlgebra/HadamardMatrix/Variant001105bd02afd500cb94e5460fd81605f8bcac7594355c103cce267035c18af1.lean/declarations/ishadamard-star-det-mul-det--7d117d31433052bc38730adb.md) | 200 | `result-track:7d117d31433052bc38730adb33f27c1056a61be951036120bc0570e6b5da9302` |
| 16 | `theorem` | [IsHadamard.det_ne_zero](../../../../../mathematics/Algebra/LinearAlgebra/HadamardMatrix/Variant001105bd02afd500cb94e5460fd81605f8bcac7594355c103cce267035c18af1.lean/declarations/ishadamard-det-ne-zero--10fb19551fd5a76f73afde0f.md) | 206 | `result-track:10fb19551fd5a76f73afde0f51fabc010e7cc0d85c64188aa6bd966fcf65e227` |
| 17 | `theorem` | [IsHadamard.isRegular_det](../../../../../mathematics/Algebra/LinearAlgebra/HadamardMatrix/Variant001105bd02afd500cb94e5460fd81605f8bcac7594355c103cce267035c18af1.lean/declarations/ishadamard-isregular-det--58fe79f72923b609967542f8.md) | 211 | `result-track:58fe79f72923b609967542f83edbdc1b8a58e47d60b68fffcc10330b37820df9` |
| 18 | `theorem` | [IsHadamard.of_mul_conjTranspose](../../../../../mathematics/Algebra/LinearAlgebra/HadamardMatrix/Variant001105bd02afd500cb94e5460fd81605f8bcac7594355c103cce267035c18af1.lean/declarations/ishadamard-of-mul-conjtranspose--688caafa556b631a154f5a5d.md) | 222 | `result-track:688caafa556b631a154f5a5d7852a78e7c511e34bbbb4c5b99e0b928b1ad24d4` |
| 19 | `theorem` | [isHadamard_iff_mul_conjTranspose](../../../../../mathematics/Algebra/LinearAlgebra/HadamardMatrix/Variant001105bd02afd500cb94e5460fd81605f8bcac7594355c103cce267035c18af1.lean/declarations/ishadamard-iff-mul-conjtranspose--2a846d78e895a6790dc9dcef.md) | 237 | `result-track:2a846d78e895a6790dc9dcefb4e1522d2fb094099c7f882f6c75a99c60de9e9c` |
| 20 | `theorem` | [IsHadamard.four_dvd_card](../../../../../mathematics/Algebra/LinearAlgebra/HadamardMatrix/Variant001105bd02afd500cb94e5460fd81605f8bcac7594355c103cce267035c18af1.lean/declarations/ishadamard-four-dvd-card--1da0a6eb482262bde0004cf0.md) | 250 | `result-track:1da0a6eb482262bde0004cf06fadc1942198bd559a6f7d1587a2742607c9f45e` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
