# Verification target: GRWTSK.Analysis.RealAnalysis.Integration.IntervalAverage.Variant6900318536a5f4c21713fecf6d9f528821a5a99dbb274170418a1415cbca0d95

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "f409d0c4ae4538ec5f0c7873c9294c607467f36d",
  "lexical_observation_count": 4,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/IntervalAverage/Variant6900318536a5f4c21713fecf6d9f528821a5a99dbb274170418a1415cbca0d95.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/Integration/IntervalAverage/Variant6900318536a5f4c21713fecf6d9f528821a5a99dbb274170418a1415cbca0d95.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/Integration/IntervalAverage/Variant6900318536a5f4c21713fecf6d9f528821a5a99dbb274170418a1415cbca0d95.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `f409d0c4ae4538ec5f0c7873c9294c607467f36d`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/IntervalAverage/Variant6900318536a5f4c21713fecf6d9f528821a5a99dbb274170418a1415cbca0d95.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/IntervalAverage/Variant6900318536a5f4c21713fecf6d9f528821a5a99dbb274170418a1415cbca0d95.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.MeasureTheory.Integral.IntervalIntegral.Basic` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Integral.Average` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [interval_average_symm](../../../../../../mathematics/Analysis/RealAnalysis/Integration/IntervalAverage/Variant6900318536a5f4c21713fecf6d9f528821a5a99dbb274170418a1415cbca0d95.lean/declarations/interval-average-symm--86fc56141581cc1a4077859b.md) | 46 | `result-track:86fc56141581cc1a4077859befe9ea81b004bbef6ca7b18cefdbdd7cc3b141d1` |
| 2 | `theorem` | [interval_average_eq](../../../../../../mathematics/Analysis/RealAnalysis/Integration/IntervalAverage/Variant6900318536a5f4c21713fecf6d9f528821a5a99dbb274170418a1415cbca0d95.lean/declarations/interval-average-eq--d986d44b5214448702b62e36.md) | 49 | `result-track:d986d44b5214448702b62e3688f5e0c4043e00dce352a31169ed7ab98308a3a4` |
| 3 | `theorem` | [interval_average_eq_div](../../../../../../mathematics/Analysis/RealAnalysis/Integration/IntervalAverage/Variant6900318536a5f4c21713fecf6d9f528821a5a99dbb274170418a1415cbca0d95.lean/declarations/interval-average-eq-div--a743a22d116dc3954d53acef.md) | 57 | `result-track:a743a22d116dc3954d53acefd296b324ffc6f124815e366968900385401671af` |
| 4 | `theorem` | [intervalAverage_congr_codiscreteWithin](../../../../../../mathematics/Analysis/RealAnalysis/Integration/IntervalAverage/Variant6900318536a5f4c21713fecf6d9f528821a5a99dbb274170418a1415cbca0d95.lean/declarations/intervalaverage-congr-codiscretewithin--3409a1dcbbd3f33259ab1274.md) | 62 | `result-track:3409a1dcbbd3f33259ab1274496bdf10b0b204d6e9546e3cba5e117a8645e847` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
