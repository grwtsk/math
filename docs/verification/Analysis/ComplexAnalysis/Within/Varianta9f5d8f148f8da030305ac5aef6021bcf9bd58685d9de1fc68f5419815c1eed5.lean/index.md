# Verification target: GRWTSK.Analysis.ComplexAnalysis.Within.Varianta9f5d8f148f8da030305ac5aef6021bcf9bd58685d9de1fc68f5419815c1eed5

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "93e118cb5c6ccf34007d09b324d2b1a45ed573ca",
  "lexical_observation_count": 8,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/ComplexAnalysis/Within/Varianta9f5d8f148f8da030305ac5aef6021bcf9bd58685d9de1fc68f5419815c1eed5.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/ComplexAnalysis/Within/Varianta9f5d8f148f8da030305ac5aef6021bcf9bd58685d9de1fc68f5419815c1eed5.lean/index.md) · [Full source](../../../../../mathematics/Analysis/ComplexAnalysis/Within/Varianta9f5d8f148f8da030305ac5aef6021bcf9bd58685d9de1fc68f5419815c1eed5.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `93e118cb5c6ccf34007d09b324d2b1a45ed573ca`.

Source path: `GRWTSK/Analysis/ComplexAnalysis/Within/Varianta9f5d8f148f8da030305ac5aef6021bcf9bd58685d9de1fc68f5419815c1eed5.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/ComplexAnalysis/Within/Varianta9f5d8f148f8da030305ac5aef6021bcf9bd58685d9de1fc68f5419815c1eed5.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.Analytic.Constructions` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Analytic.ChangeOrigin` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `lemma` | [analyticWithinAt_of_singleton_mem](../../../../../mathematics/Analysis/ComplexAnalysis/Within/Varianta9f5d8f148f8da030305ac5aef6021bcf9bd58685d9de1fc68f5419815c1eed5.lean/declarations/analyticwithinat-of-singleton-mem--82365b7bfccf5e8c36fabcb7.md) | 48 | `result-track:82365b7bfccf5e8c36fabcb71c2f2cbbc4910387d9f267eda28033548a6130e2` |
| 2 | `lemma` | [analyticOn_of_locally_analyticOn](../../../../../mathematics/Analysis/ComplexAnalysis/Within/Varianta9f5d8f148f8da030305ac5aef6021bcf9bd58685d9de1fc68f5419815c1eed5.lean/declarations/analyticon-of-locally-analyticon--8b7015350241db2270c0937b.md) | 68 | `result-track:8b7015350241db2270c0937b9751763e7ab6bf4e16ffaee62182f394b0bbe644` |
| 3 | `lemma` | [IsOpen.analyticOn_iff_analyticOnNhd](../../../../../mathematics/Analysis/ComplexAnalysis/Within/Varianta9f5d8f148f8da030305ac5aef6021bcf9bd58685d9de1fc68f5419815c1eed5.lean/declarations/isopen-analyticon-iff-analyticonnhd--686c69365f2fa5ec5c70fc00.md) | 91 | `result-track:686c69365f2fa5ec5c70fc000eb97867b5e323a43e35e46da3625ac3e91bb2ed` |
| 4 | `lemma` | [hasFPowerSeriesWithinOnBall_iff_exists_hasFPowerSeriesOnBall](../../../../../mathematics/Analysis/ComplexAnalysis/Within/Varianta9f5d8f148f8da030305ac5aef6021bcf9bd58685d9de1fc68f5419815c1eed5.lean/declarations/hasfpowerserieswithinonball-iff-exists-hasfpowerseriesonball--9ab7d15436cba74a08848cf1.md) | 119 | `result-track:9ab7d15436cba74a08848cf15b6b007b8cb308c2d50c03307099f72d04a6fd83` |
| 5 | `lemma` | [hasFPowerSeriesWithinAt_iff_exists_hasFPowerSeriesAt](../../../../../mathematics/Analysis/ComplexAnalysis/Within/Varianta9f5d8f148f8da030305ac5aef6021bcf9bd58685d9de1fc68f5419815c1eed5.lean/declarations/hasfpowerserieswithinat-iff-exists-hasfpowerseriesat--5fa9c990f44149179649c8e3.md) | 152 | `result-track:5fa9c990f44149179649c8e32076950667aeae7663d83a668277bf96f79397e2` |
| 6 | `lemma` | [analyticWithinAt_iff_exists_analyticAt](../../../../../mathematics/Analysis/ComplexAnalysis/Within/Varianta9f5d8f148f8da030305ac5aef6021bcf9bd58685d9de1fc68f5419815c1eed5.lean/declarations/analyticwithinat-iff-exists-analyticat--ef87db50fea656e8d753e407.md) | 174 | `result-track:ef87db50fea656e8d753e407cc8e00a0c2edaf8edc08e4bddc788dcacf2326c8` |
| 7 | `lemma` | [analyticWithinAt_iff_exists_analyticAt'](../../../../../mathematics/Analysis/ComplexAnalysis/Within/Varianta9f5d8f148f8da030305ac5aef6021bcf9bd58685d9de1fc68f5419815c1eed5.lean/declarations/analyticwithinat-iff-exists-analyticat--05706f71dfa1fb376082a9be.md) | 182 | `result-track:05706f71dfa1fb376082a9be0430ce828aa36e40bb5591866b66fc37d6e2d148` |
| 8 | `lemma` | [AnalyticWithinAt.exists_mem_nhdsWithin_analyticOn](../../../../../mathematics/Analysis/ComplexAnalysis/Within/Varianta9f5d8f148f8da030305ac5aef6021bcf9bd58685d9de1fc68f5419815c1eed5.lean/declarations/analyticwithinat-exists-mem-nhdswithin-analyticon--697046025caa36f5c2116bf4.md) | 206 | `result-track:697046025caa36f5c2116bf46d3abdf3596ec54eeb16da78f7e67c24c8adaea3` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
