# Verification target: GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.SourcePNTAdapter.Variant8b803b1e629170edae5450b8213648b4d11a4ace51b9e3d6bf8a2a78d30fc426

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "f50d7221c777730623b7739d2cf51701ac27f8e5",
  "lexical_observation_count": 9,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourcePNTAdapter/Variant8b803b1e629170edae5450b8213648b4d11a4ace51b9e3d6bf8a2a78d30fc426.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourcePNTAdapter/Variant8b803b1e629170edae5450b8213648b4d11a4ace51b9e3d6bf8a2a78d30fc426.lean/index.md) · [Full source](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourcePNTAdapter/Variant8b803b1e629170edae5450b8213648b4d11a4ace51b9e3d6bf8a2a78d30fc426.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `f50d7221c777730623b7739d2cf51701ac27f8e5`.

Source path: `GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourcePNTAdapter/Variant8b803b1e629170edae5450b8213648b4d11a4ace51b9e3d6bf8a2a78d30fc426.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourcePNTAdapter/Variant8b803b1e629170edae5450b8213648b4d11a4ace51b9e3d6bf8a2a78d30fc426.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.RiemannHypothesis.SourcePairing` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.NumberTheory.Chebyshev` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Asymptotics.Defs` — import line 8; external provider; requires a separately pinned dependency.
- `Zeta23.FromPNTPlus.MediumPNT` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [chebyshevPrimePower_eq_psi](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourcePNTAdapter/Variant8b803b1e629170edae5450b8213648b4d11a4ace51b9e3d6bf8a2a78d30fc426.lean/declarations/chebyshevprimepower-eq-psi--2f53bdf98adcd2741aca32d4.md) | 23 | `result-track:2f53bdf98adcd2741aca32d45a58694cd6c63b7fc42084f996e6b45de03b0299` |
| 2 | `theorem` | [chebyshevError_eq_psi_sub](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourcePNTAdapter/Variant8b803b1e629170edae5450b8213648b4d11a4ace51b9e3d6bf8a2a78d30fc426.lean/declarations/chebysheverror-eq-psi-sub--e101b22d5bfa449c75b6658b.md) | 36 | `result-track:e101b22d5bfa449c75b6658bf8eff8710387c81895023406c4af929d4678dd7b` |
| 3 | `theorem` | [chebyshevError_eq_fun](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourcePNTAdapter/Variant8b803b1e629170edae5450b8213648b4d11a4ace51b9e3d6bf8a2a78d30fc426.lean/declarations/chebysheverror-eq-fun--935ad4bee7c60d5ff77a3a10.md) | 40 | `result-track:935ad4bee7c60d5ff77a3a10d20f62595adcf06774f949656ca8fb03f9377a1b` |
| 4 | `theorem` | [chebyshevError_abs_le](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourcePNTAdapter/Variant8b803b1e629170edae5450b8213648b4d11a4ace51b9e3d6bf8a2a78d30fc426.lean/declarations/chebysheverror-abs-le--38b45226920bd59cf95dbdf1.md) | 45 | `result-track:38b45226920bd59cf95dbdf1ad970a3ca6d3482965e87795327be71eafc0ddaa` |
| 5 | `theorem` | [errorProfile_abs_le](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourcePNTAdapter/Variant8b803b1e629170edae5450b8213648b4d11a4ace51b9e3d6bf8a2a78d30fc426.lean/declarations/errorprofile-abs-le--8647e647425195603079e311.md) | 57 | `result-track:8647e647425195603079e311a28339f350e59c3ebb6e38ef7b475565559667af` |
| 6 | `theorem` | [errorProfile_eventual_of_pnt](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourcePNTAdapter/Variant8b803b1e629170edae5450b8213648b4d11a4ace51b9e3d6bf8a2a78d30fc426.lean/declarations/errorprofile-eventual-of-pnt--7870852b88cd9cbcbf3d49bc.md) | 61 | `result-track:7870852b88cd9cbcbf3d49bc7a69be5c969dd9785e98bc533a0817e48ccfb0c3` |
| 7 | `theorem` | [errorProfile_tail_of_pnt](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourcePNTAdapter/Variant8b803b1e629170edae5450b8213648b4d11a4ace51b9e3d6bf8a2a78d30fc426.lean/declarations/errorprofile-tail-of-pnt--e374764e7be9214e3599900c.md) | 76 | `result-track:e374764e7be9214e3599900cf86aef56818f864fccd3c74530d9dd2414fd6b4d` |
| 8 | `theorem` | [source_quantitative_pnt](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourcePNTAdapter/Variant8b803b1e629170edae5450b8213648b4d11a4ace51b9e3d6bf8a2a78d30fc426.lean/declarations/source-quantitative-pnt--0a9170afe11c6019774a5051.md) | 92 | `result-track:0a9170afe11c6019774a5051a866919c04807bceb6bb61370dab0efe3b0e61ad` |
| 9 | `theorem` | [errorProfile_quantitative_tail](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourcePNTAdapter/Variant8b803b1e629170edae5450b8213648b4d11a4ace51b9e3d6bf8a2a78d30fc426.lean/declarations/errorprofile-quantitative-tail--e9c5d015ce078645c5c9025b.md) | 99 | `result-track:e9c5d015ce078645c5c9025b5c6472f65b61bbb110325174233bea571aedd003` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
