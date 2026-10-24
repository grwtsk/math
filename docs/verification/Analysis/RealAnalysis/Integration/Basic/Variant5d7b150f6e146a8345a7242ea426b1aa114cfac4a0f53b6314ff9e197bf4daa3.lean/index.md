# Verification target: GRWTSK.Analysis.RealAnalysis.Integration.Basic.Variant5d7b150f6e146a8345a7242ea426b1aa114cfac4a0f53b6314ff9e197bf4daa3

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "9318e4d9e7f73e2b03c734cdc3463a1f122f2e3e",
  "lexical_observation_count": 19,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/Basic/Variant5d7b150f6e146a8345a7242ea426b1aa114cfac4a0f53b6314ff9e197bf4daa3.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Basic/Variant5d7b150f6e146a8345a7242ea426b1aa114cfac4a0f53b6314ff9e197bf4daa3.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Basic/Variant5d7b150f6e146a8345a7242ea426b1aa114cfac4a0f53b6314ff9e197bf4daa3.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `9318e4d9e7f73e2b03c734cdc3463a1f122f2e3e`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/Basic/Variant5d7b150f6e146a8345a7242ea426b1aa114cfac4a0f53b6314ff9e197bf4daa3.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/Basic/Variant5d7b150f6e146a8345a7242ea426b1aa114cfac4a0f53b6314ff9e197bf4daa3.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.InformationTheory.KullbackLeibler.KLFun` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Measure.Decomposition.IntegralRNDeriv` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `lemma` | [klDiv_of_ac_of_integrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Basic/Variant5d7b150f6e146a8345a7242ea426b1aa114cfac4a0f53b6314ff9e197bf4daa3.lean/declarations/kldiv-of-ac-of-integrable--f5087bf9d55b2bfd446d73e2.md) | 66 | `result-track:f5087bf9d55b2bfd446d73e22a24b1e349f6de85cf4b0cff2870764eba7a0229` |
| 2 | `lemma` | [klDiv_of_not_ac](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Basic/Variant5d7b150f6e146a8345a7242ea426b1aa114cfac4a0f53b6314ff9e197bf4daa3.lean/declarations/kldiv-of-not-ac--e5b24fa6bbc9fb99e61efee7.md) | 72 | `result-track:e5b24fa6bbc9fb99e61efee765d589d12a030b4a927a632ead84638b155e982e` |
| 3 | `lemma` | [klDiv_of_not_integrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Basic/Variant5d7b150f6e146a8345a7242ea426b1aa114cfac4a0f53b6314ff9e197bf4daa3.lean/declarations/kldiv-of-not-integrable--7bea3a090d693eeed68fe98f.md) | 77 | `result-track:7bea3a090d693eeed68fe98f2f6b430c89256dbcd99a1c13ee9c620c4b875b6a` |
| 4 | `lemma` | [klDiv_self](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Basic/Variant5d7b150f6e146a8345a7242ea426b1aa114cfac4a0f53b6314ff9e197bf4daa3.lean/declarations/kldiv-self--fbbd5437513e5fc856858549.md) | 82 | `result-track:fbbd5437513e5fc8568585493aa215e4048e66e5a939dcff3b0356eabc64bf3d` |
| 5 | `lemma` | [klDiv_zero_left](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Basic/Variant5d7b150f6e146a8345a7242ea426b1aa114cfac4a0f53b6314ff9e197bf4daa3.lean/declarations/kldiv-zero-left--2b4cd19c6fe601573d010c0f.md) | 90 | `result-track:2b4cd19c6fe601573d010c0f4e44ed0ba24a9d67c70d9016c16cf9bc7de92681` |
| 6 | `lemma` | [klDiv_zero_right](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Basic/Variant5d7b150f6e146a8345a7242ea426b1aa114cfac4a0f53b6314ff9e197bf4daa3.lean/declarations/kldiv-zero-right--527c701578ecca01eb880b70.md) | 95 | `result-track:527c701578ecca01eb880b70631d564595685932f4800ec4271391ab72c83734` |
| 7 | `lemma` | [klDiv_eq_top_iff](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Basic/Variant5d7b150f6e146a8345a7242ea426b1aa114cfac4a0f53b6314ff9e197bf4daa3.lean/declarations/kldiv-eq-top-iff--af54805b450b872dcd1a5836.md) | 98 | `result-track:af54805b450b872dcd1a5836a5a2f4125a0b2f0692140f25f25203b66b313f23` |
| 8 | `lemma` | [klDiv_ne_top_iff](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Basic/Variant5d7b150f6e146a8345a7242ea426b1aa114cfac4a0f53b6314ff9e197bf4daa3.lean/declarations/kldiv-ne-top-iff--7a0531c709293b73dcc5cffc.md) | 104 | `result-track:7a0531c709293b73dcc5cffc9132984aa1e87e24ed5e8dcb9b5eb11db0d13633` |
| 9 | `lemma` | [klDiv_eq_integral_klFun](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Basic/Variant5d7b150f6e146a8345a7242ea426b1aa114cfac4a0f53b6314ff9e197bf4daa3.lean/declarations/kldiv-eq-integral-klfun--e5a95643a4aa8bd8c891bc75.md) | 112 | `result-track:e5a95643a4aa8bd8c891bc75dba5050ba6c6b313bcc45f5bedb540312e016311` |
| 10 | `lemma` | [klDiv_eq_lintegral_klFun](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Basic/Variant5d7b150f6e146a8345a7242ea426b1aa114cfac4a0f53b6314ff9e197bf4daa3.lean/declarations/kldiv-eq-lintegral-klfun--a7680bd748fd69cde0bee5b0.md) | 120 | `result-track:a7680bd748fd69cde0bee5b003a67a360012da1093a4e96825ab93e62343054a` |
| 11 | `lemma` | [integral_llr_add_sub_measure_univ_nonneg](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Basic/Variant5d7b150f6e146a8345a7242ea426b1aa114cfac4a0f53b6314ff9e197bf4daa3.lean/declarations/integral-llr-add-sub-measure-univ-nonneg--33603147f48991e8ee661741.md) | 149 | `result-track:33603147f48991e8ee661741710a9628c4a0f173bb90d56e514904de356172dd` |
| 12 | `lemma` | [toReal_klDiv](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Basic/Variant5d7b150f6e146a8345a7242ea426b1aa114cfac4a0f53b6314ff9e197bf4daa3.lean/declarations/toreal-kldiv--b45482663ab9aec832ef6f28.md) | 154 | `result-track:b45482663ab9aec832ef6f28f51ee60e701b9071eaf7ce6e8b14bd72d5176f2e` |
| 13 | `lemma` | [toReal_klDiv_of_measure_eq](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Basic/Variant5d7b150f6e146a8345a7242ea426b1aa114cfac4a0f53b6314ff9e197bf4daa3.lean/declarations/toreal-kldiv-of-measure-eq--a1b83dbf95f61096b00b7826.md) | 161 | `result-track:a1b83dbf95f61096b00b78267a90ad7872b016a12fb6540ba04b7f158996dc1b` |
| 14 | `lemma` | [toReal_klDiv_eq_integral_klFun](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Basic/Variant5d7b150f6e146a8345a7242ea426b1aa114cfac4a0f53b6314ff9e197bf4daa3.lean/declarations/toreal-kldiv-eq-integral-klfun--a04232a84e394cc371c07943.md) | 167 | `result-track:a04232a84e394cc371c0794322c81b89981610db8d7d91e1a25ab64280acaa60` |
| 15 | `lemma` | [integral_llr_add_mul_log_nonneg](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Basic/Variant5d7b150f6e146a8345a7242ea426b1aa114cfac4a0f53b6314ff9e197bf4daa3.lean/declarations/integral-llr-add-mul-log-nonneg--36b089984ded10d960c941b9.md) | 182 | `result-track:36b089984ded10d960c941b9b1e06f6ec953401aca148038c8765c03178efa07` |
| 16 | `lemma` | [mul_klFun_le_toReal_klDiv](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Basic/Variant5d7b150f6e146a8345a7242ea426b1aa114cfac4a0f53b6314ff9e197bf4daa3.lean/declarations/mul-klfun-le-toreal-kldiv--3f9e454d3d4bd224956882ee.md) | 201 | `result-track:3f9e454d3d4bd224956882ee70cbaffb070c50590bf5609f19f67f07c8f0b162` |
| 17 | `lemma` | [mul_log_le_toReal_klDiv](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Basic/Variant5d7b150f6e146a8345a7242ea426b1aa114cfac4a0f53b6314ff9e197bf4daa3.lean/declarations/mul-log-le-toreal-kldiv--d17131f2ddbbaa91a9032c12.md) | 209 | `result-track:d17131f2ddbbaa91a9032c124ff4811c6511fd374afe6cc30c48fd4c593d655f` |
| 18 | `lemma` | [mul_log_le_klDiv](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Basic/Variant5d7b150f6e146a8345a7242ea426b1aa114cfac4a0f53b6314ff9e197bf4daa3.lean/declarations/mul-log-le-kldiv--3d496d6d349b04014e5a4a17.md) | 223 | `result-track:3d496d6d349b04014e5a4a17daa53c33d9221923a0e702ca8cebfeb0edce4be2` |
| 19 | `lemma` | [klDiv_eq_zero_iff](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Basic/Variant5d7b150f6e146a8345a7242ea426b1aa114cfac4a0f53b6314ff9e197bf4daa3.lean/declarations/kldiv-eq-zero-iff--bb1b4add021c4a8563debdf1.md) | 240 | `result-track:bb1b4add021c4a8563debdf1d9c8f49baba94321e02580533dab9641735d1803` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
