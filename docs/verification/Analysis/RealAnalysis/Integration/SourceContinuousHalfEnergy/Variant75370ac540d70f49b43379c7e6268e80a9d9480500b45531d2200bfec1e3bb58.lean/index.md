# Verification target: GRWTSK.Analysis.RealAnalysis.Integration.SourceContinuousHalfEnergy.Variant75370ac540d70f49b43379c7e6268e80a9d9480500b45531d2200bfec1e3bb58

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "4b1f9f5aa6ac99b83f939c567dcbc130802a55a7",
  "lexical_observation_count": 21,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/SourceContinuousHalfEnergy/Variant75370ac540d70f49b43379c7e6268e80a9d9480500b45531d2200bfec1e3bb58.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceContinuousHalfEnergy/Variant75370ac540d70f49b43379c7e6268e80a9d9480500b45531d2200bfec1e3bb58.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceContinuousHalfEnergy/Variant75370ac540d70f49b43379c7e6268e80a9d9480500b45531d2200bfec1e3bb58.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `4b1f9f5aa6ac99b83f939c567dcbc130802a55a7`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/SourceContinuousHalfEnergy/Variant75370ac540d70f49b43379c7e6268e80a9d9480500b45531d2200bfec1e3bb58.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/SourceContinuousHalfEnergy/Variant75370ac540d70f49b43379c7e6268e80a9d9480500b45531d2200bfec1e3bb58.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.RiemannHypothesis.SourceMangoldtAbel` — import line 1; external provider; requires a separately pinned dependency.
- `FormalResearch.RiemannHypothesis.SourceCausalEnergy` — import line 2; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Integral.Prod` — import line 3; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [forwardHalfKernel](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceContinuousHalfEnergy/Variant75370ac540d70f49b43379c7e6268e80a9d9480500b45531d2200bfec1e3bb58.lean/declarations/forwardhalfkernel--fe73f79f8bd82d6b65ca6f40.md) | 30 | `declaration-track:fe73f79f8bd82d6b65ca6f409dc0886883f24cabc17731d831a08a56e9846565` |
| 2 | `theorem` | [forwardHalfKernel_continuous](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceContinuousHalfEnergy/Variant75370ac540d70f49b43379c7e6268e80a9d9480500b45531d2200bfec1e3bb58.lean/declarations/forwardhalfkernel-continuous--1c619596ab4da1ad8d962926.md) | 35 | `result-track:1c619596ab4da1ad8d962926fd9209ab07bdfe6b3c90e9ed7f303485b2de92f2` |
| 3 | `theorem` | [forwardHalfKernel_hasCompactSupport](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceContinuousHalfEnergy/Variant75370ac540d70f49b43379c7e6268e80a9d9480500b45531d2200bfec1e3bb58.lean/declarations/forwardhalfkernel-hascompactsupport--92d3f459849fd2f6eeb69b54.md) | 43 | `result-track:92d3f459849fd2f6eeb69b54f935e2c0c836fc420775a5752c0960fd38fae2cc` |
| 4 | `theorem` | [forwardHalfKernel_integrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceContinuousHalfEnergy/Variant75370ac540d70f49b43379c7e6268e80a9d9480500b45531d2200bfec1e3bb58.lean/declarations/forwardhalfkernel-integrable--3c748a70aa3e2f5d65bede20.md) | 65 | `result-track:3c748a70aa3e2f5d65bede209ebc7c2afbbbd9e30a90b6ca55e5b31e34e7bc19` |
| 5 | `theorem` | [sourceCorrelation_eq_plus_shift](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceContinuousHalfEnergy/Variant75370ac540d70f49b43379c7e6268e80a9d9480500b45531d2200bfec1e3bb58.lean/declarations/sourcecorrelation-eq-plus-shift--9528d76d6410930e8f16a1c6.md) | 71 | `result-track:9528d76d6410930e8f16a1c6e9f6e56151d95daccf4b2096fc5f24bf064398ab` |
| 6 | `theorem` | [negativeSmoothMoment_eq_forward_integral](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceContinuousHalfEnergy/Variant75370ac540d70f49b43379c7e6268e80a9d9480500b45531d2200bfec1e3bb58.lean/declarations/negativesmoothmoment-eq-forward-integral--66d0ec9c4c34b49a2a1fc44b.md) | 79 | `result-track:66d0ec9c4c34b49a2a1fc44b401dce70be9f8466ce0271696c2f581e72430e70` |
| 7 | `theorem` | [forwardHalfKernel_interval_eq_tail_pairing](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceContinuousHalfEnergy/Variant75370ac540d70f49b43379c7e6268e80a9d9480500b45531d2200bfec1e3bb58.lean/declarations/forwardhalfkernel-interval-eq-tail-pairing--f113ad6c9b735f62f5920e4d.md) | 91 | `result-track:f113ad6c9b735f62f5920e4d696bd516541234b624170c9521315cfa86d6be24` |
| 8 | `theorem` | [negativeSmoothMoment_eq_tail_pairing](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceContinuousHalfEnergy/Variant75370ac540d70f49b43379c7e6268e80a9d9480500b45531d2200bfec1e3bb58.lean/declarations/negativesmoothmoment-eq-tail-pairing--8b79a527052593707312b8b7.md) | 129 | `result-track:8b79a527052593707312b8b751ab98875a5d1342367e1e531bff78cdff3f1fcb` |
| 9 | `theorem` | [negativeSmoothMoment_eq_half_causal_energy](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceContinuousHalfEnergy/Variant75370ac540d70f49b43379c7e6268e80a9d9480500b45531d2200bfec1e3bb58.lean/declarations/negativesmoothmoment-eq-half-causal-energy--cf34b261ba66c7d4ae368ede.md) | 139 | `result-track:cf34b261ba66c7d4ae368ede23c2f7b10777c0b4617bfbd94d07e2bcf3ce8928` |
| 10 | `theorem` | [negativeSmoothMoment_eq_normalized_energy](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceContinuousHalfEnergy/Variant75370ac540d70f49b43379c7e6268e80a9d9480500b45531d2200bfec1e3bb58.lean/declarations/negativesmoothmoment-eq-normalized-energy--4ea004c87340553fa7e0b4d1.md) | 145 | `result-track:4ea004c87340553fa7e0b4d1c3a1c82f64ac7200fb870a06d3893bf43cdce64d` |
| 11 | `theorem` | [negativeSmoothMoment_eq_rational](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceContinuousHalfEnergy/Variant75370ac540d70f49b43379c7e6268e80a9d9480500b45531d2200bfec1e3bb58.lean/declarations/negativesmoothmoment-eq-rational--35edc9ba3a19fd05ecc9124a.md) | 153 | `result-track:35edc9ba3a19fd05ecc9124a7b72de23950a49e5ac0e6dc741919b53d598a596` |
| 12 | `theorem` | [criticalContinuousMoment_eq_neg_half_causal_energy](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceContinuousHalfEnergy/Variant75370ac540d70f49b43379c7e6268e80a9d9480500b45531d2200bfec1e3bb58.lean/declarations/criticalcontinuousmoment-eq-neg-half-causal-energy--926508c799674f3fbd848efa.md) | 162 | `result-track:926508c799674f3fbd848efa14706998936a8805167ff4d0c4c11f0fe20f2b60` |
| 13 | `theorem` | [criticalContinuousMoment_eq_rational](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceContinuousHalfEnergy/Variant75370ac540d70f49b43379c7e6268e80a9d9480500b45531d2200bfec1e3bb58.lean/declarations/criticalcontinuousmoment-eq-rational--8cb14b21bfc1298e3cdf0ce0.md) | 169 | `result-track:8cb14b21bfc1298e3cdf0ce030a65a209a0f1e36c9e091a88b7925b5fa1985bf` |
| 14 | `theorem` | [negativeSmoothMoment_pos](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceContinuousHalfEnergy/Variant75370ac540d70f49b43379c7e6268e80a9d9480500b45531d2200bfec1e3bb58.lean/declarations/negativesmoothmoment-pos--0617cc3b0920a59d0105caa7.md) | 177 | `result-track:0617cc3b0920a59d0105caa713fffa7952dfae110945e102314352fbc0252492` |
| 15 | `theorem` | [criticalContinuousMoment_lt_zero](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceContinuousHalfEnergy/Variant75370ac540d70f49b43379c7e6268e80a9d9480500b45531d2200bfec1e3bb58.lean/declarations/criticalcontinuousmoment-lt-zero--1082f492cb1fdb5dbd1222f7.md) | 183 | `result-track:1082f492cb1fdb5dbd1222f7eeeb99382acb51ada440462ecb916682ac146ae6` |
| 16 | `theorem` | [criticalContinuousMoment_ne_zero](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceContinuousHalfEnergy/Variant75370ac540d70f49b43379c7e6268e80a9d9480500b45531d2200bfec1e3bb58.lean/declarations/criticalcontinuousmoment-ne-zero--31c13544c57eb7a8bbc342e7.md) | 189 | `result-track:31c13544c57eb7a8bbc342e7b6165071fa817e80540d58c71ffdf29c4e5f60cc` |
| 17 | `theorem` | [criticalContinuousMoment_strict_bounds](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceContinuousHalfEnergy/Variant75370ac540d70f49b43379c7e6268e80a9d9480500b45531d2200bfec1e3bb58.lean/declarations/criticalcontinuousmoment-strict-bounds--a3f93efb702d5f41ba1b4dde.md) | 193 | `result-track:a3f93efb702d5f41ba1b4dded8ceaf99562d4269b3903a36739298eb22546d58` |
| 18 | `theorem` | [mertensResidual_eq_neg_causal_energy_sub_work](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceContinuousHalfEnergy/Variant75370ac540d70f49b43379c7e6268e80a9d9480500b45531d2200bfec1e3bb58.lean/declarations/mertensresidual-eq-neg-causal-energy-sub-work--6f4dafbb4f98ced1b28b420b.md) | 202 | `result-track:6f4dafbb4f98ced1b28b420bcbd8019fa958480b696846856e6494141d2c52ef` |
| 19 | `theorem` | [mertensResidual_eq_rational_sub_work](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceContinuousHalfEnergy/Variant75370ac540d70f49b43379c7e6268e80a9d9480500b45531d2200bfec1e3bb58.lean/declarations/mertensresidual-eq-rational-sub-work--5af7658da7ee7d00771b37a8.md) | 209 | `result-track:5af7658da7ee7d00771b37a8cd841c0aec6286405fffdf1764f6a935205b2b32` |
| 20 | `theorem` | [mertensResidual_lt_neg_work](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceContinuousHalfEnergy/Variant75370ac540d70f49b43379c7e6268e80a9d9480500b45531d2200bfec1e3bb58.lean/declarations/mertensresidual-lt-neg-work--47b6c1ec1dbbae2ed9147bf6.md) | 216 | `result-track:47b6c1ec1dbbae2ed9147bf6d05b5d50ede76dddbb37c01888262e2bb417a440` |
| 21 | `theorem` | [residual_tail_of_Mangoldt_work_tail](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceContinuousHalfEnergy/Variant75370ac540d70f49b43379c7e6268e80a9d9480500b45531d2200bfec1e3bb58.lean/declarations/residual-tail-of-mangoldt-work-tail--8a9a37f567f4d0eaf5a36927.md) | 223 | `result-track:8a9a37f567f4d0eaf5a36927254fbe072fd18eb4d786145cb805924522b941ab` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
