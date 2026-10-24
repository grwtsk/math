# Verification target: GRWTSK.Analysis.RealAnalysis.Integration.Interval.Varianta5a89faad7eea92d23462f1ff4f0030393b5e2596926b6732f9c91d7f2e9bb97

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "98b3800b7f14b0e280e156cdbb829c2a2de2d755",
  "lexical_observation_count": 4,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/Interval/Varianta5a89faad7eea92d23462f1ff4f0030393b5e2596926b6732f9c91d7f2e9bb97.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Interval/Varianta5a89faad7eea92d23462f1ff4f0030393b5e2596926b6732f9c91d7f2e9bb97.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Interval/Varianta5a89faad7eea92d23462f1ff4f0030393b5e2596926b6732f9c91d7f2e9bb97.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `98b3800b7f14b0e280e156cdbb829c2a2de2d755`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/Interval/Varianta5a89faad7eea92d23462f1ff4f0030393b5e2596926b6732f9c91d7f2e9bb97.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/Interval/Varianta5a89faad7eea92d23462f1ff4f0030393b5e2596926b6732f9c91d7f2e9bb97.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathematics.Polynomial.Potential` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Integral.IntervalIntegral.FundThmCalculus` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Algebra.Polynomial` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [cubicPotentialDifference](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Interval/Varianta5a89faad7eea92d23462f1ff4f0030393b5e2596926b6732f9c91d7f2e9bb97.lean/declarations/cubicpotentialdifference--36defe705d71863b45c23704.md) | 25 | `declaration-track:36defe705d71863b45c23704dffab7f4c2ff8c4d3b729783c16a7ff10bed2786` |
| 2 | `theorem` | [cubicPotentialDifference_self](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Interval/Varianta5a89faad7eea92d23462f1ff4f0030393b5e2596926b6732f9c91d7f2e9bb97.lean/declarations/cubicpotentialdifference-self--91c3b650c11d2588ed06b869.md) | 30 | `result-track:91c3b650c11d2588ed06b869589d7fdfcc4db0575b3c1b9fda841a02b6ea9cf4` |
| 3 | `theorem` | [cubicPotentialDifference_trans](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Interval/Varianta5a89faad7eea92d23462f1ff4f0030393b5e2596926b6732f9c91d7f2e9bb97.lean/declarations/cubicpotentialdifference-trans--1fd295579b234c184eba7b98.md) | 36 | `result-track:1fd295579b234c184eba7b98939f8027d5dce003ef1a0a6ad88852c0a686f1e8` |
| 4 | `theorem` | [intervalIntegral_cubic](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Interval/Varianta5a89faad7eea92d23462f1ff4f0030393b5e2596926b6732f9c91d7f2e9bb97.lean/declarations/intervalintegral-cubic--69d8218c6a336e80475d64a4.md) | 45 | `result-track:69d8218c6a336e80475d64a49db7f4c3953ce09ac195515622a4c2852c6ac4d0` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
