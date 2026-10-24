# Verification target: GRWTSK.Analysis.RealAnalysis.Integration.CircleAverage.Variant9f287a55a916ab0a7168c10c76763d17762bf8fa786bcde44dc931759fd57b48

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "2f806d41a5e345319cc074b73c9945fdc806cd02",
  "lexical_observation_count": 13,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/CircleAverage/Variant9f287a55a916ab0a7168c10c76763d17762bf8fa786bcde44dc931759fd57b48.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/Integration/CircleAverage/Variant9f287a55a916ab0a7168c10c76763d17762bf8fa786bcde44dc931759fd57b48.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/Integration/CircleAverage/Variant9f287a55a916ab0a7168c10c76763d17762bf8fa786bcde44dc931759fd57b48.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `2f806d41a5e345319cc074b73c9945fdc806cd02`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/CircleAverage/Variant9f287a55a916ab0a7168c10c76763d17762bf8fa786bcde44dc931759fd57b48.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/CircleAverage/Variant9f287a55a916ab0a7168c10c76763d17762bf8fa786bcde44dc931759fd57b48.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.MeasureTheory.Integral.CircleIntegral` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Integral.IntervalAverage` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Integral.IntervalIntegral.Periodic` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [circleAverage](../../../../../../mathematics/Analysis/RealAnalysis/Integration/CircleAverage/Variant9f287a55a916ab0a7168c10c76763d17762bf8fa786bcde44dc931759fd57b48.lean/declarations/circleaverage--c0332dcab1dc1e3a29971e2a.md) | 57 | `declaration-track:c0332dcab1dc1e3a29971e2a13ef08c72adc1ad072f606f9a08f9f3fca2c59a4` |
| 2 | `lemma` | [circleAverage_def](../../../../../../mathematics/Analysis/RealAnalysis/Integration/CircleAverage/Variant9f287a55a916ab0a7168c10c76763d17762bf8fa786bcde44dc931759fd57b48.lean/declarations/circleaverage-def--fc3f69fef455da9e41fd59f8.md) | 60 | `result-track:fc3f69fef455da9e41fd59f85d0e0e54ce1e8d98c1de05c623f9a37b23d3390f` |
| 3 | `lemma` | [circleAverage_eq_intervalAverage](../../../../../../mathematics/Analysis/RealAnalysis/Integration/CircleAverage/Variant9f287a55a916ab0a7168c10c76763d17762bf8fa786bcde44dc931759fd57b48.lean/declarations/circleaverage-eq-intervalaverage--11db369ea3c016aab3702396.md) | 64 | `result-track:11db369ea3c016aab3702396031e9ac34a4d6f7d741f4b36a389bf9785b35909` |
| 4 | `lemma` | [circleAverage_zero](../../../../../../mathematics/Analysis/RealAnalysis/Integration/CircleAverage/Variant9f287a55a916ab0a7168c10c76763d17762bf8fa786bcde44dc931759fd57b48.lean/declarations/circleaverage-zero--df49eb0627e7481a5ec23e22.md) | 69 | `result-track:df49eb0627e7481a5ec23e22e7f9bc3ff3ebff9cd1e6d07b821b43effa3d09b0` |
| 5 | `lemma` | [circleAverage_fun_add](../../../../../../mathematics/Analysis/RealAnalysis/Integration/CircleAverage/Variant9f287a55a916ab0a7168c10c76763d17762bf8fa786bcde44dc931759fd57b48.lean/declarations/circleaverage-fun-add--4ee732af08e48d98a9255bed.md) | 80 | `result-track:4ee732af08e48d98a9255bed325eab1fb0a6a411c75156c73a4c34d3a5385633` |
| 6 | `lemma` | [circleAverage_eq_integral_add](../../../../../../mathematics/Analysis/RealAnalysis/Integration/CircleAverage/Variant9f287a55a916ab0a7168c10c76763d17762bf8fa786bcde44dc931759fd57b48.lean/declarations/circleaverage-eq-integral-add--ef8d5db5c7835df7e8ef6850.md) | 94 | `result-track:ef8d5db5c7835df7e8ef685056686483eec7b9046608e21744baa422eca8103c` |
| 7 | `theorem` | [circleAverage_neg_radius](../../../../../../mathematics/Analysis/RealAnalysis/Integration/CircleAverage/Variant9f287a55a916ab0a7168c10c76763d17762bf8fa786bcde44dc931759fd57b48.lean/declarations/circleaverage-neg-radius--03ac5bf4fad22a89fb79534c.md) | 106 | `result-track:03ac5bf4fad22a89fb79534ce388a6e2545f6061313c937706a712299cbb686a` |
| 8 | `theorem` | [circleAverage_abs_radius](../../../../../../mathematics/Analysis/RealAnalysis/Integration/CircleAverage/Variant9f287a55a916ab0a7168c10c76763d17762bf8fa786bcde44dc931759fd57b48.lean/declarations/circleaverage-abs-radius--ea845462c6e49a7723ef1e3b.md) | 112 | `result-track:ea845462c6e49a7723ef1e3b2e15e77b738a5c48a80b963591771923c055dcc2` |
| 9 | `theorem` | [circleAverage_congr_codiscreteWithin](../../../../../../mathematics/Analysis/RealAnalysis/Integration/CircleAverage/Variant9f287a55a916ab0a7168c10c76763d17762bf8fa786bcde44dc931759fd57b48.lean/declarations/circleaverage-congr-codiscretewithin--a4dea3787ef723ef72c0a440.md) | 119 | `result-track:a4dea3787ef723ef72c0a4407b46fcbeef372e9d5cb1f9f32998ecc1d34b5520` |
| 10 | `theorem` | [circleAverage_smul](../../../../../../mathematics/Analysis/RealAnalysis/Integration/CircleAverage/Variant9f287a55a916ab0a7168c10c76763d17762bf8fa786bcde44dc931759fd57b48.lean/declarations/circleaverage-smul--61dd0a6d35d0763370fdbd03.md) | 133 | `result-track:61dd0a6d35d0763370fdbd0312543b435c72754ad74a8d24b8760a658af80bdd` |
| 11 | `theorem` | [circleAverage_fun_smul](../../../../../../mathematics/Analysis/RealAnalysis/Integration/CircleAverage/Variant9f287a55a916ab0a7168c10c76763d17762bf8fa786bcde44dc931759fd57b48.lean/declarations/circleaverage-fun-smul--494de5621b02a40e6372793a.md) | 141 | `result-track:494de5621b02a40e6372793a5809502a1b5fe12de0d3ba7ab182c6a099c37f7c` |
| 12 | `theorem` | [circleAverage_add](../../../../../../mathematics/Analysis/RealAnalysis/Integration/CircleAverage/Variant9f287a55a916ab0a7168c10c76763d17762bf8fa786bcde44dc931759fd57b48.lean/declarations/circleaverage-add--69932e3c88e3aee2ab2973fe.md) | 146 | `result-track:69932e3c88e3aee2ab2973fe4193cbf1dda1dcb5dc5f4f0c6a3715dfdd05df71` |
| 13 | `theorem` | [circleAverage_sum](../../../../../../mathematics/Analysis/RealAnalysis/Integration/CircleAverage/Variant9f287a55a916ab0a7168c10c76763d17762bf8fa786bcde44dc931759fd57b48.lean/declarations/circleaverage-sum--eef0c98cb20e104f9499d1cf.md) | 153 | `result-track:eef0c98cb20e104f9499d1cf8f0a87cdad21506075e2869683ba4fb96ad67652` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
