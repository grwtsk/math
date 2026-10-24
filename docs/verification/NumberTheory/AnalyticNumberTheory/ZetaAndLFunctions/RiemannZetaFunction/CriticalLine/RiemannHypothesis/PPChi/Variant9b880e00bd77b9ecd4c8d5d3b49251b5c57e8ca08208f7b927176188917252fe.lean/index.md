# Verification target: GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.PPChi.Variant9b880e00bd77b9ecd4c8d5d3b49251b5c57e8ca08208f7b927176188917252fe

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "3f951dc0e8825b99c9f30a71911a84172574dac8",
  "lexical_observation_count": 22,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/PPChi/Variant9b880e00bd77b9ecd4c8d5d3b49251b5c57e8ca08208f7b927176188917252fe.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/PPChi/Variant9b880e00bd77b9ecd4c8d5d3b49251b5c57e8ca08208f7b927176188917252fe.lean/index.md) · [Full source](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/PPChi/Variant9b880e00bd77b9ecd4c8d5d3b49251b5c57e8ca08208f7b927176188917252fe.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `3f951dc0e8825b99c9f30a71911a84172574dac8`.

Source path: `GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/PPChi/Variant9b880e00bd77b9ecd4c8d5d3b49251b5c57e8ca08208f7b927176188917252fe.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/PPChi/Variant9b880e00bd77b9ecd4c8d5d3b49251b5c57e8ca08208f7b927176188917252fe.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Zeta23.PrimeSideB.PPKernel` — import line 15; external provider; requires a separately pinned dependency.
- `Zeta23.PrimeSideB.PP` — import line 16; external provider; requires a separately pinned dependency.
- `Zeta23.ThmE.Hypotheses` — import line 17; external provider; requires a separately pinned dependency.
- `Zeta23.ThmE.PrimeSideChi` — import line 18; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [sumA2gCoprime](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/PPChi/Variant9b880e00bd77b9ecd4c8d5d3b49251b5c57e8ca08208f7b927176188917252fe.lean/declarations/suma2gcoprime--fea43ce0338556aab7d746f7.md) | 60 | `declaration-track:fea43ce0338556aab7d746f714589790c9e770c7f40728810a8db211f7738b07` |
| 2 | `lemma` | [sum_w_eq_sumA2gCoprime](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/PPChi/Variant9b880e00bd77b9ecd4c8d5d3b49251b5c57e8ca08208f7b927176188917252fe.lean/declarations/sum-w-eq-suma2gcoprime--909872b674931a5bf33d96f7.md) | 65 | `result-track:909872b674931a5bf33d96f7fcb9236257c2fd518f5bda4407594553a88e71c7` |
| 3 | `def` | [AminusPh](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/PPChi/Variant9b880e00bd77b9ecd4c8d5d3b49251b5c57e8ca08208f7b927176188917252fe.lean/declarations/aminusph--a5f825bfdc87130e8290e23b.md) | 81 | `declaration-track:a5f825bfdc87130e8290e23bafb635e3019ca3d81408d8861ebee80639973b43` |
| 4 | `def` | [AplusPh](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/PPChi/Variant9b880e00bd77b9ecd4c8d5d3b49251b5c57e8ca08208f7b927176188917252fe.lean/declarations/aplusph--105b7f9d241c16be5737e0f0.md) | 86 | `declaration-track:105b7f9d241c16be5737e0f0c5004bae0728bdd171686978d64a0051cd4f8ca1` |
| 5 | `lemma` | [AminusPh_self](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/PPChi/Variant9b880e00bd77b9ecd4c8d5d3b49251b5c57e8ca08208f7b927176188917252fe.lean/declarations/aminusph-self--9575ee0a88c935166d30edd2.md) | 91 | `result-track:9575ee0a88c935166d30edd2d701dce17f197ad81f64492825852bea9f336644` |
| 6 | `lemma` | [continuous_Jker_offset_ph](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/PPChi/Variant9b880e00bd77b9ecd4c8d5d3b49251b5c57e8ca08208f7b927176188917252fe.lean/declarations/continuous-jker-offset-ph--7f9780a543cf8f82ef536a9d.md) | 96 | `result-track:7f9780a543cf8f82ef536a9d24e75b4b111d4761dacd56a9dfa0d5a27fff2265` |
| 7 | `lemma` | [inner_cos_cos_ph](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/PPChi/Variant9b880e00bd77b9ecd4c8d5d3b49251b5c57e8ca08208f7b927176188917252fe.lean/declarations/inner-cos-cos-ph--defd6f84416e33b1ff4bf731.md) | 104 | `result-track:defd6f84416e33b1ff4bf731ebeacf221ec4ade9035d4d2b02ae66b81f094f26` |
| 8 | `lemma` | [Mform_cos_cos_ph](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/PPChi/Variant9b880e00bd77b9ecd4c8d5d3b49251b5c57e8ca08208f7b927176188917252fe.lean/declarations/mform-cos-cos-ph--2988c93fca1c7101209aadc6.md) | 129 | `result-track:2988c93fca1c7101209aadc67f65f62a309c3d791e044d05607a29b6ac635654` |
| 9 | `lemma` | [abs_AplusPh_le](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/PPChi/Variant9b880e00bd77b9ecd4c8d5d3b49251b5c57e8ca08208f7b927176188917252fe.lean/declarations/abs-aplusph-le--3581ed4aa7130ffb8ed78921.md) | 155 | `result-track:3581ed4aa7130ffb8ed789211eb953eecb593becca75735a47148178989c8308` |
| 10 | `lemma` | [sub_mul_AminusPh_eq](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/PPChi/Variant9b880e00bd77b9ecd4c8d5d3b49251b5c57e8ca08208f7b927176188917252fe.lean/declarations/sub-mul-aminusph-eq--93c81c6a4e8cde43419ad243.md) | 189 | `result-track:93c81c6a4e8cde43419ad243baab65577dfa02c2bd04702d61f233b2f9c57535` |
| 11 | `lemma` | [cpow_neg_half_sub_I_mul](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/PPChi/Variant9b880e00bd77b9ecd4c8d5d3b49251b5c57e8ca08208f7b927176188917252fe.lean/declarations/cpow-neg-half-sub-i-mul--847a710aa02ee4e60d1d1094.md) | 251 | `result-track:847a710aa02ee4e60d1d10940995a478a546a00f1ff33002649eac083d8b7b56` |
| 12 | `lemma` | [PXc_eq_sum](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/PPChi/Variant9b880e00bd77b9ecd4c8d5d3b49251b5c57e8ca08208f7b927176188917252fe.lean/declarations/pxc-eq-sum--3fb162a56201446a13a16956.md) | 277 | `result-track:3fb162a56201446a13a16956960e643c5ea25c59ad2dc4f68e738bc8a57c9606` |
| 13 | `lemma` | [MV_real_ph](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/PPChi/Variant9b880e00bd77b9ecd4c8d5d3b49251b5c57e8ca08208f7b927176188917252fe.lean/declarations/mv-real-ph--995887fcaf91188023cc388e.md) | 319 | `result-track:995887fcaf91188023cc388ed1bf703f3f63ce7a1b526da7fc73467210b18acb` |
| 14 | `lemma` | [MV_size_le₂](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/PPChi/Variant9b880e00bd77b9ecd4c8d5d3b49251b5c57e8ca08208f7b927176188917252fe.lean/declarations/mv-size-le--bd237498c2a19488e7d8bb2c.md) | 385 | `result-track:bd237498c2a19488e7d8bb2c4cdb8db14e0aaf3f253d35d2560b6391cc406b40` |
| 15 | `lemma` | [Mform_PXc_PXc](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/PPChi/Variant9b880e00bd77b9ecd4c8d5d3b49251b5c57e8ca08208f7b927176188917252fe.lean/declarations/mform-pxc-pxc--f1e90d0a5ee5b78ea7808901.md) | 441 | `result-track:f1e90d0a5ee5b78ea7808901f7fefe23a4731c9882ba1feec36910c3f687a4e0` |
| 16 | `lemma` | [diag_estimate_chi](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/PPChi/Variant9b880e00bd77b9ecd4c8d5d3b49251b5c57e8ca08208f7b927176188917252fe.lean/declarations/diag-estimate-chi--4bac80fe3cc4fc9a914dcb66.md) | 528 | `result-track:4bac80fe3cc4fc9a914dcb66c236da584ef34b16bcd3d96e1202c7d3fb4075f9` |
| 17 | `lemma` | [O2_estimate_chi](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/PPChi/Variant9b880e00bd77b9ecd4c8d5d3b49251b5c57e8ca08208f7b927176188917252fe.lean/declarations/o2-estimate-chi--5e9dac338aadf7b0d5e2cf0a.md) | 569 | `result-track:5e9dac338aadf7b0d5e2cf0a7d6e6ad53ee8b532d083d213f890b0f14946303c` |
| 18 | `theorem` | [O1_bound_chi](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/PPChi/Variant9b880e00bd77b9ecd4c8d5d3b49251b5c57e8ca08208f7b927176188917252fe.lean/declarations/o1-bound-chi--1d426dd0ee9eb77699265769.md) | 623 | `result-track:1d426dd0ee9eb776992657697e7882de49b2134e59bdc9d9220a8676d4014545` |
| 19 | `theorem` | [sumA2gCoprime_upper](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/PPChi/Variant9b880e00bd77b9ecd4c8d5d3b49251b5c57e8ca08208f7b927176188917252fe.lean/declarations/suma2gcoprime-upper--ad6a53efbb24b7d28b839978.md) | 787 | `result-track:ad6a53efbb24b7d28b8399788c89149fa670b74cf9622b05916fa9bfc571246e` |
| 20 | `theorem` | [sumA2gCoprime_lower](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/PPChi/Variant9b880e00bd77b9ecd4c8d5d3b49251b5c57e8ca08208f7b927176188917252fe.lean/declarations/suma2gcoprime-lower--946efee05aa72ee317cde0ec.md) | 812 | `result-track:946efee05aa72ee317cde0ec22a5d431ffe1f618bf3752d21707f7943805a470` |
| 21 | `theorem` | [prop_PP_chi_uniform](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/PPChi/Variant9b880e00bd77b9ecd4c8d5d3b49251b5c57e8ca08208f7b927176188917252fe.lean/declarations/prop-pp-chi-uniform--bcdf1cbfddcfaa2ff549817c.md) | 868 | `result-track:bcdf1cbfddcfaa2ff549817c06b9e82b5ce3a48080667c056461247fc7c2970b` |
| 22 | `theorem` | [prop_PP_chi](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/PPChi/Variant9b880e00bd77b9ecd4c8d5d3b49251b5c57e8ca08208f7b927176188917252fe.lean/declarations/prop-pp-chi--20c371083124946c473ecf41.md) | 1004 | `result-track:20c371083124946c473ecf41f136f89ea2940e070c3c68fa49839b3b4e05b107` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
