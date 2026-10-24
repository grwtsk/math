# Verification target: GRWTSK.Analysis.RealAnalysis.Integration.Normed.Variant3ca02de8446df2d48a4ef03201e1e4445ec041cb3d35e7d1935543e6260f4d83

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "4554af89c4cdc09d029ed2e1df6e7c9f3ebbeda1",
  "lexical_observation_count": 22,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/Normed/Variant3ca02de8446df2d48a4ef03201e1e4445ec041cb3d35e7d1935543e6260f4d83.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Normed/Variant3ca02de8446df2d48a4ef03201e1e4445ec041cb3d35e7d1935543e6260f4d83.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Normed/Variant3ca02de8446df2d48a4ef03201e1e4445ec041cb3d35e7d1935543e6260f4d83.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `4554af89c4cdc09d029ed2e1df6e7c9f3ebbeda1`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/Normed/Variant3ca02de8446df2d48a4ef03201e1e4445ec041cb3d35e7d1935543e6260f4d83.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/Normed/Variant3ca02de8446df2d48a4ef03201e1e4445ec041cb3d35e7d1935543e6260f4d83.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.Calculus.BumpFunction.Basic` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Integral.SetIntegral` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Measure.Lebesgue.EqHaar` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [normed](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Normed/Variant3ca02de8446df2d48a4ef03201e1e4445ec041cb3d35e7d1935543e6260f4d83.lean/declarations/normed--06d8aa917703022212ac11cb.md) | 30 | `declaration-track:06d8aa917703022212ac11cbcff60342380ca1d4ed8648f3cf6d58dff32f58ba` |
| 2 | `theorem` | [normed_def](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Normed/Variant3ca02de8446df2d48a4ef03201e1e4445ec041cb3d35e7d1935543e6260f4d83.lean/declarations/normed-def--206273f8bff37ed52ab022c7.md) | 33 | `result-track:206273f8bff37ed52ab022c7d2c5e5189888a7a96761ac358430f79ec2ff24b0` |
| 3 | `theorem` | [nonneg_normed](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Normed/Variant3ca02de8446df2d48a4ef03201e1e4445ec041cb3d35e7d1935543e6260f4d83.lean/declarations/nonneg-normed--113395dda064702dc56a8ba0.md) | 37 | `result-track:113395dda064702dc56a8ba004bd4daa604e4b350b96a33917556199591eb9d0` |
| 4 | `theorem` | [contDiff_normed](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Normed/Variant3ca02de8446df2d48a4ef03201e1e4445ec041cb3d35e7d1935543e6260f4d83.lean/declarations/contdiff-normed--7b50306d70c8790df9463e8f.md) | 41 | `result-track:7b50306d70c8790df9463e8ff7243f6f9a06c619802c26f78a472ef83365101f` |
| 5 | `theorem` | [continuous_normed](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Normed/Variant3ca02de8446df2d48a4ef03201e1e4445ec041cb3d35e7d1935543e6260f4d83.lean/declarations/continuous-normed--624471f5808e2508fecff070.md) | 45 | `result-track:624471f5808e2508fecff0708db55e236357dc7f99dd078b49c1d0d6534a3480` |
| 6 | `theorem` | [normed_sub](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Normed/Variant3ca02de8446df2d48a4ef03201e1e4445ec041cb3d35e7d1935543e6260f4d83.lean/declarations/normed-sub--e7d33786b1e4f0c179afabe8.md) | 49 | `result-track:e7d33786b1e4f0c179afabe87012ffced35c20c58cb15a0f137bbde347d1be7b` |
| 7 | `theorem` | [normed_neg](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Normed/Variant3ca02de8446df2d48a4ef03201e1e4445ec041cb3d35e7d1935543e6260f4d83.lean/declarations/normed-neg--312fce15417efb7ae9a4c150.md) | 53 | `result-track:312fce15417efb7ae9a4c150b73290caebd43ffd9f0daa56a88cdc2d135215d0` |
| 8 | `theorem` | [integrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Normed/Variant3ca02de8446df2d48a4ef03201e1e4445ec041cb3d35e7d1935543e6260f4d83.lean/declarations/integrable--32aad61dc7006a1cdc2f0382.md) | 59 | `result-track:32aad61dc7006a1cdc2f03820d66404d8447f8f482e282cc831af86e35099c0e` |
| 9 | `theorem` | [integrable_normed](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Normed/Variant3ca02de8446df2d48a4ef03201e1e4445ec041cb3d35e7d1935543e6260f4d83.lean/declarations/integrable-normed--d3f1c1822d3c603a7a916ea5.md) | 63 | `result-track:d3f1c1822d3c603a7a916ea5ab53ec56bb4005ee61f3d2057a929a0ef96050c5` |
| 10 | `theorem` | [integral_pos](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Normed/Variant3ca02de8446df2d48a4ef03201e1e4445ec041cb3d35e7d1935543e6260f4d83.lean/declarations/integral-pos--557799fae7d4038f467a7d44.md) | 69 | `result-track:557799fae7d4038f467a7d44b8878932c475f83d5a5b5f6967295ff6362492e2` |
| 11 | `theorem` | [integral_normed](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Normed/Variant3ca02de8446df2d48a4ef03201e1e4445ec041cb3d35e7d1935543e6260f4d83.lean/declarations/integral-normed--7bebeaa228b8a5711052e8c4.md) | 75 | `result-track:7bebeaa228b8a5711052e8c41140f941dd3733f49d1df67db5853d636bb6fa72` |
| 12 | `theorem` | [support_normed_eq](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Normed/Variant3ca02de8446df2d48a4ef03201e1e4445ec041cb3d35e7d1935543e6260f4d83.lean/declarations/support-normed-eq--9f4b8718bdf08c14a47cd051.md) | 80 | `result-track:9f4b8718bdf08c14a47cd051e9cee3cd92ef68c8f2a5fbb127963f23e2bfd752` |
| 13 | `theorem` | [tsupport_normed_eq](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Normed/Variant3ca02de8446df2d48a4ef03201e1e4445ec041cb3d35e7d1935543e6260f4d83.lean/declarations/tsupport-normed-eq--571cbfc3784b3a8c2a48abfb.md) | 85 | `result-track:571cbfc3784b3a8c2a48abfbbcb3fd7d355db648e99e81819d96858c191fc85e` |
| 14 | `theorem` | [hasCompactSupport_normed](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Normed/Variant3ca02de8446df2d48a4ef03201e1e4445ec041cb3d35e7d1935543e6260f4d83.lean/declarations/hascompactsupport-normed--a8abc09cb1d8ff448d77b990.md) | 89 | `result-track:a8abc09cb1d8ff448d77b99072a72bd30bc497325e2bc235dcef0387da2abf9a` |
| 15 | `theorem` | [tendsto_support_normed_smallSets](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Normed/Variant3ca02de8446df2d48a4ef03201e1e4445ec041cb3d35e7d1935543e6260f4d83.lean/declarations/tendsto-support-normed-smallsets--d46fc4ff2c94180efdfb9447.md) | 93 | `result-track:d46fc4ff2c94180efdfb9447668a506fb56193fc5a41d33d0aaf2a690b391353` |
| 16 | `theorem` | [integral_normed_smul](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Normed/Variant3ca02de8446df2d48a4ef03201e1e4445ec041cb3d35e7d1935543e6260f4d83.lean/declarations/integral-normed-smul--d9b60b755acd4fba371166a3.md) | 106 | `result-track:d9b60b755acd4fba371166a303c2c1c52d3d6340141064b9534b683bde440aaa` |
| 17 | `theorem` | [measure_closedBall_le_integral](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Normed/Variant3ca02de8446df2d48a4ef03201e1e4445ec041cb3d35e7d1935543e6260f4d83.lean/declarations/measure-closedball-le-integral--a3eefea17ff3be20141c7c35.md) | 111 | `result-track:a3eefea17ff3be20141c7c359e2f71db4c8a983820fca412f409ae84ec5c1299` |
| 18 | `theorem` | [normed_le_div_measure_closedBall_rIn](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Normed/Variant3ca02de8446df2d48a4ef03201e1e4445ec041cb3d35e7d1935543e6260f4d83.lean/declarations/normed-le-div-measure-closedball-rin--9e344dff905f5cf8320c2e41.md) | 117 | `result-track:9e344dff905f5cf8320c2e41bc8b44d5dd252cea653eb6f8b8e05b072527f930` |
| 19 | `theorem` | [integral_le_measure_closedBall](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Normed/Variant3ca02de8446df2d48a4ef03201e1e4445ec041cb3d35e7d1935543e6260f4d83.lean/declarations/integral-le-measure-closedball--f4b9e924169a3d95ecfb4f9c.md) | 125 | `result-track:f4b9e924169a3d95ecfb4f9c9feca3f892394b6d3cd13f1de3b35e2d628b7b25` |
| 20 | `macro_rules` | [(anonymous)](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Normed/Variant3ca02de8446df2d48a4ef03201e1e4445ec041cb3d35e7d1935543e6260f4d83.lean/declarations/macro-rules--054606baba6cc480b0c69762.md) | 135 | `declaration-track:054606baba6cc480b0c69762ab2b8c8d6a30bae9bb9d3c75090b4a37c2060bc0` |
| 21 | `theorem` | [measure_closedBall_div_le_integral](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Normed/Variant3ca02de8446df2d48a4ef03201e1e4445ec041cb3d35e7d1935543e6260f4d83.lean/declarations/measure-closedball-div-le-integral--e9a89677ab1c883b5d060c2c.md) | 137 | `result-track:e9a89677ab1c883b5d060c2cdf99b12581e8c952d85cf37e8680486fbfab9c32` |
| 22 | `theorem` | [normed_le_div_measure_closedBall_rOut](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Normed/Variant3ca02de8446df2d48a4ef03201e1e4445ec041cb3d35e7d1935543e6260f4d83.lean/declarations/normed-le-div-measure-closedball-rout--9080fbe3751f85c487ac69a2.md) | 150 | `result-track:9080fbe3751f85c487ac69a20fc103617965eab922580eb3ae326a92fb1c21a9` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
