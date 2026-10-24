# Verification target: GRWTSK.Analysis.MeasureTheory.ConvergenceInMeasure.Variant22c1393ccf01ef4cfcfbf7186c09589d83769b60cc639fc236086df8d20ac7e3

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "12d6cdd1316f09ae6c0327146288c272e3421f3c",
  "lexical_observation_count": 28,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/MeasureTheory/ConvergenceInMeasure/Variant22c1393ccf01ef4cfcfbf7186c09589d83769b60cc639fc236086df8d20ac7e3.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/MeasureTheory/ConvergenceInMeasure/Variant22c1393ccf01ef4cfcfbf7186c09589d83769b60cc639fc236086df8d20ac7e3.lean/index.md) · [Full source](../../../../../mathematics/Analysis/MeasureTheory/ConvergenceInMeasure/Variant22c1393ccf01ef4cfcfbf7186c09589d83769b60cc639fc236086df8d20ac7e3.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `12d6cdd1316f09ae6c0327146288c272e3421f3c`.

Source path: `GRWTSK/Analysis/MeasureTheory/ConvergenceInMeasure/Variant22c1393ccf01ef4cfcfbf7186c09589d83769b60cc639fc236086df8d20ac7e3.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/MeasureTheory/ConvergenceInMeasure/Variant22c1393ccf01ef4cfcfbf7186c09589d83769b60cc639fc236086df8d20ac7e3.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.MeasureTheory.Function.Egorov` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Function.LpSpace.Complete` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [TendstoInMeasure](../../../../../mathematics/Analysis/MeasureTheory/ConvergenceInMeasure/Variant22c1393ccf01ef4cfcfbf7186c09589d83769b60cc639fc236086df8d20ac7e3.lean/declarations/tendstoinmeasure--f5f9db3a517261236a0a0bce.md) | 53 | `declaration-track:f5f9db3a517261236a0a0bce5bbd98c328c8c16dbbbf6501059a3993de8e1228` |
| 2 | `theorem` | [tendstoInMeasure_iff_norm](../../../../../mathematics/Analysis/MeasureTheory/ConvergenceInMeasure/Variant22c1393ccf01ef4cfcfbf7186c09589d83769b60cc639fc236086df8d20ac7e3.lean/declarations/tendstoinmeasure-iff-norm--44076e9e1264f1ab27a64f81.md) | 57 | `result-track:44076e9e1264f1ab27a64f815a5de576e24745bc7570b5365db7a38d76138769` |
| 3 | `theorem` | [tendstoInMeasure_iff_tendsto_toNNReal](../../../../../mathematics/Analysis/MeasureTheory/ConvergenceInMeasure/Variant22c1393ccf01ef4cfcfbf7186c09589d83769b60cc639fc236086df8d20ac7e3.lean/declarations/tendstoinmeasure-iff-tendsto-tonnreal--4b9cc4ab935c11d277d77a3c.md) | 63 | `result-track:4b9cc4ab935c11d277d77a3c90d2ad972333ea723cb42de2d0004e58f59a44ad` |
| 4 | `lemma` | [TendstoInMeasure.mono](../../../../../mathematics/Analysis/MeasureTheory/ConvergenceInMeasure/Variant22c1393ccf01ef4cfcfbf7186c09589d83769b60cc639fc236086df8d20ac7e3.lean/declarations/tendstoinmeasure-mono--e5e750b6b54c04ca77dd45fb.md) | 77 | `result-track:e5e750b6b54c04ca77dd45fba32c8770f35728f1dbd97d477221d80c09414528` |
| 5 | `lemma` | [TendstoInMeasure.comp](../../../../../mathematics/Analysis/MeasureTheory/ConvergenceInMeasure/Variant22c1393ccf01ef4cfcfbf7186c09589d83769b60cc639fc236086df8d20ac7e3.lean/declarations/tendstoinmeasure-comp--deab9186ddfda407581fe901.md) | 81 | `result-track:deab9186ddfda407581fe901df544b15f3a21b3df1916e2c23ea29d67cdcca5b` |
| 6 | `theorem` | [congr'](../../../../../mathematics/Analysis/MeasureTheory/ConvergenceInMeasure/Variant22c1393ccf01ef4cfcfbf7186c09589d83769b60cc639fc236086df8d20ac7e3.lean/declarations/congr--50bc1fae2e6bb34b9aa569b6.md) | 89 | `result-track:50bc1fae2e6bb34b9aa569b6d2224732daa19359e7a9fff89c9ef35da2830a4a` |
| 7 | `theorem` | [congr](../../../../../mathematics/Analysis/MeasureTheory/ConvergenceInMeasure/Variant22c1393ccf01ef4cfcfbf7186c09589d83769b60cc639fc236086df8d20ac7e3.lean/declarations/congr--80c83a4c6ee1a145e211f4ab.md) | 103 | `result-track:80c83a4c6ee1a145e211f4abc654876c9bc8fa329379f7f8c33c6920ca73f670` |
| 8 | `theorem` | [congr_left](../../../../../mathematics/Analysis/MeasureTheory/ConvergenceInMeasure/Variant22c1393ccf01ef4cfcfbf7186c09589d83769b60cc639fc236086df8d20ac7e3.lean/declarations/congr-left--23047bbd337ec946419398b8.md) | 107 | `result-track:23047bbd337ec946419398b8f817e73acadf4131ca24e0a771d44c68f7679eb3` |
| 9 | `theorem` | [congr_right](../../../../../mathematics/Analysis/MeasureTheory/ConvergenceInMeasure/Variant22c1393ccf01ef4cfcfbf7186c09589d83769b60cc639fc236086df8d20ac7e3.lean/declarations/congr-right--4c731db65fa047a4812a1e15.md) | 111 | `result-track:4c731db65fa047a4812a1e15532f175dc1d56f77f8fd13b6547e92b1d3adc314` |
| 10 | `theorem` | [tendstoInMeasure_of_tendsto_ae_of_stronglyMeasurable](../../../../../mathematics/Analysis/MeasureTheory/ConvergenceInMeasure/Variant22c1393ccf01ef4cfcfbf7186c09589d83769b60cc639fc236086df8d20ac7e3.lean/declarations/tendstoinmeasure-of-tendsto-ae-of-stronglymeasurable--f655022a6b5cd8d7a15be18a.md) | 123 | `result-track:f655022a6b5cd8d7a15be18a95987864c48ddc88d50864acd343705c71fdb430` |
| 11 | `theorem` | [tendstoInMeasure_of_tendsto_ae](../../../../../mathematics/Analysis/MeasureTheory/ConvergenceInMeasure/Variant22c1393ccf01ef4cfcfbf7186c09589d83769b60cc639fc236086df8d20ac7e3.lean/declarations/tendstoinmeasure-of-tendsto-ae--ea70b593aaa7922ecdcd580a.md) | 143 | `result-track:ea70b593aaa7922ecdcd580a4b4618a9ee92152b523d930337afc1a514f82f46` |
| 12 | `theorem` | [exists_nat_measure_lt_two_inv](../../../../../mathematics/Analysis/MeasureTheory/ConvergenceInMeasure/Variant22c1393ccf01ef4cfcfbf7186c09589d83769b60cc639fc236086df8d20ac7e3.lean/declarations/exists-nat-measure-lt-two-inv--0b82a814de5192731c90c813.md) | 157 | `result-track:0b82a814de5192731c90c81391ab9dd20f4f5398e63a9a2ca4e7c71c103c500b` |
| 13 | `def` | [seqTendstoAeSeqAux](../../../../../mathematics/Analysis/MeasureTheory/ConvergenceInMeasure/Variant22c1393ccf01ef4cfcfbf7186c09589d83769b60cc639fc236086df8d20ac7e3.lean/declarations/seqtendstoaeseqaux--9af1a5b75fb945642fdc55e7.md) | 166 | `declaration-track:9af1a5b75fb945642fdc55e70bb8515c4580e6ff08e798908d2b130284618cae` |
| 14 | `def` | [seqTendstoAeSeq](../../../../../mathematics/Analysis/MeasureTheory/ConvergenceInMeasure/Variant22c1393ccf01ef4cfcfbf7186c09589d83769b60cc639fc236086df8d20ac7e3.lean/declarations/seqtendstoaeseq--da5de8ef5384d3b162b96da6.md) | 170 | `declaration-track:da5de8ef5384d3b162b96da606dd8068d465c9fedc66eddd471d53d5f9f8dca7` |
| 15 | `theorem` | [seqTendstoAeSeq_succ](../../../../../mathematics/Analysis/MeasureTheory/ConvergenceInMeasure/Variant22c1393ccf01ef4cfcfbf7186c09589d83769b60cc639fc236086df8d20ac7e3.lean/declarations/seqtendstoaeseq-succ--46ce9bce9c858a6e5b9d9f1e.md) | 174 | `result-track:46ce9bce9c858a6e5b9d9f1ede20b7daf01d7d769bff5a1c5675238acb400ff2` |
| 16 | `theorem` | [seqTendstoAeSeq_spec](../../../../../mathematics/Analysis/MeasureTheory/ConvergenceInMeasure/Variant22c1393ccf01ef4cfcfbf7186c09589d83769b60cc639fc236086df8d20ac7e3.lean/declarations/seqtendstoaeseq-spec--00f6f76cbe436249487c94e3.md) | 179 | `result-track:00f6f76cbe436249487c94e319da1c67bdabba2550cdfcf75abb581491a285e5` |
| 17 | `theorem` | [seqTendstoAeSeq_strictMono](../../../../../mathematics/Analysis/MeasureTheory/ConvergenceInMeasure/Variant22c1393ccf01ef4cfcfbf7186c09589d83769b60cc639fc236086df8d20ac7e3.lean/declarations/seqtendstoaeseq-strictmono--a8811563610e758e00da3cf8.md) | 187 | `result-track:a8811563610e758e00da3cf8955b0910f8415fc22f29943373fecc401a902182` |
| 18 | `theorem` | [TendstoInMeasure.exists_seq_tendsto_ae](../../../../../mathematics/Analysis/MeasureTheory/ConvergenceInMeasure/Variant22c1393ccf01ef4cfcfbf7186c09589d83769b60cc639fc236086df8d20ac7e3.lean/declarations/tendstoinmeasure-exists-seq-tendsto-ae--f1e3f5eec00d9c5942690a8c.md) | 197 | `result-track:f1e3f5eec00d9c5942690a8c42986469992b28d23ae7e8edea5f657e4410af72` |
| 19 | `theorem` | [TendstoInMeasure.exists_seq_tendstoInMeasure_atTop](../../../../../mathematics/Analysis/MeasureTheory/ConvergenceInMeasure/Variant22c1393ccf01ef4cfcfbf7186c09589d83769b60cc639fc236086df8d20ac7e3.lean/declarations/tendstoinmeasure-exists-seq-tendstoinmeasure-attop--e496b3d0106504e1028fa53f.md) | 245 | `result-track:e496b3d0106504e1028fa53f28f0e3e14600f115531e592bc65e0a798b80547d` |
| 20 | `theorem` | [TendstoInMeasure.exists_seq_tendsto_ae'](../../../../../mathematics/Analysis/MeasureTheory/ConvergenceInMeasure/Variant22c1393ccf01ef4cfcfbf7186c09589d83769b60cc639fc236086df8d20ac7e3.lean/declarations/tendstoinmeasure-exists-seq-tendsto-ae--e30f3b2871b0157ae2e230dd.md) | 251 | `result-track:e30f3b2871b0157ae2e230dd00273eba85f7381c60c59855804a2120475b1159` |
| 21 | `theorem` | [exists_seq_tendstoInMeasure_atTop_iff](../../../../../mathematics/Analysis/MeasureTheory/ConvergenceInMeasure/Variant22c1393ccf01ef4cfcfbf7186c09589d83769b60cc639fc236086df8d20ac7e3.lean/declarations/exists-seq-tendstoinmeasure-attop-iff--03dd425c01c3e4b7b8bb5d96.md) | 260 | `result-track:03dd425c01c3e4b7b8bb5d961cfbb76b608aed099227cf3d7d633ccbdbcc2ba0` |
| 22 | `theorem` | [tendstoInMeasure_ae_unique](../../../../../mathematics/Analysis/MeasureTheory/ConvergenceInMeasure/Variant22c1393ccf01ef4cfcfbf7186c09589d83769b60cc639fc236086df8d20ac7e3.lean/declarations/tendstoinmeasure-ae-unique--a1a3d21f440088a1492c2a8d.md) | 287 | `result-track:a1a3d21f440088a1492c2a8d5fe60412faadcdc0210c5e3040ed779773499569` |
| 23 | `theorem` | [TendstoInMeasure.aemeasurable](../../../../../mathematics/Analysis/MeasureTheory/ConvergenceInMeasure/Variant22c1393ccf01ef4cfcfbf7186c09589d83769b60cc639fc236086df8d20ac7e3.lean/declarations/tendstoinmeasure-aemeasurable--283d1f6b07bde2428b10782d.md) | 301 | `result-track:283d1f6b07bde2428b10782d5a87eab4a046ec7a53fb46304281db39abdef734` |
| 24 | `theorem` | [tendstoInMeasure_of_tendsto_eLpNorm_of_stronglyMeasurable](../../../../../mathematics/Analysis/MeasureTheory/ConvergenceInMeasure/Variant22c1393ccf01ef4cfcfbf7186c09589d83769b60cc639fc236086df8d20ac7e3.lean/declarations/tendstoinmeasure-of-tendsto-elpnorm-of-stronglymeasurable--724835988afc1b31942b4aa5.md) | 316 | `result-track:724835988afc1b31942b4aa5b66a31e8c1d1421a87e3a3ae9f5e42b058958cce` |
| 25 | `theorem` | [tendstoInMeasure_of_tendsto_eLpNorm_of_ne_top](../../../../../mathematics/Analysis/MeasureTheory/ConvergenceInMeasure/Variant22c1393ccf01ef4cfcfbf7186c09589d83769b60cc639fc236086df8d20ac7e3.lean/declarations/tendstoinmeasure-of-tendsto-elpnorm-of-ne-top--15d395f95e08b3859a6e5b86.md) | 341 | `result-track:15d395f95e08b3859a6e5b8611284d1d589013e68ce5183606e1ec1b65ab4c5c` |
| 26 | `theorem` | [tendstoInMeasure_of_tendsto_eLpNorm_top](../../../../../mathematics/Analysis/MeasureTheory/ConvergenceInMeasure/Variant22c1393ccf01ef4cfcfbf7186c09589d83769b60cc639fc236086df8d20ac7e3.lean/declarations/tendstoinmeasure-of-tendsto-elpnorm-top--8020226fe834989308289375.md) | 354 | `result-track:8020226fe834989308289375e268bd916e6f2a9ef99285d424c40c9de15f86e0` |
| 27 | `theorem` | [tendstoInMeasure_of_tendsto_eLpNorm](../../../../../mathematics/Analysis/MeasureTheory/ConvergenceInMeasure/Variant22c1393ccf01ef4cfcfbf7186c09589d83769b60cc639fc236086df8d20ac7e3.lean/declarations/tendstoinmeasure-of-tendsto-elpnorm--9f745820d17bfc3725f8e906.md) | 376 | `result-track:9f745820d17bfc3725f8e9064a8224d3bceeae72842475fd3107875da699c3aa` |
| 28 | `theorem` | [tendstoInMeasure_of_tendsto_Lp](../../../../../mathematics/Analysis/MeasureTheory/ConvergenceInMeasure/Variant22c1393ccf01ef4cfcfbf7186c09589d83769b60cc639fc236086df8d20ac7e3.lean/declarations/tendstoinmeasure-of-tendsto-lp--cbc5570db1192f702679508f.md) | 385 | `result-track:cbc5570db1192f702679508f81f147ca53c04643da1563763ecf252e4d31b551` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
