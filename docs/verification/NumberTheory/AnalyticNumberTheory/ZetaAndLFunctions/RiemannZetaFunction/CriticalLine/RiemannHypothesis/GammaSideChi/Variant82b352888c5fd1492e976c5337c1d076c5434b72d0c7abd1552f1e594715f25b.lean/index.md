# Verification target: GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.GammaSideChi.Variant82b352888c5fd1492e976c5337c1d076c5434b72d0c7abd1552f1e594715f25b

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "267fd268c63a7a8d9cfc7e51348d51963561b6e0",
  "lexical_observation_count": 8,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/GammaSideChi/Variant82b352888c5fd1492e976c5337c1d076c5434b72d0c7abd1552f1e594715f25b.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/GammaSideChi/Variant82b352888c5fd1492e976c5337c1d076c5434b72d0c7abd1552f1e594715f25b.lean/index.md) · [Full source](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/GammaSideChi/Variant82b352888c5fd1492e976c5337c1d076c5434b72d0c7abd1552f1e594715f25b.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `267fd268c63a7a8d9cfc7e51348d51963561b6e0`.

Source path: `GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/GammaSideChi/Variant82b352888c5fd1492e976c5337c1d076c5434b72d0c7abd1552f1e594715f25b.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/GammaSideChi/Variant82b352888c5fd1492e976c5337c1d076c5434b72d0c7abd1552f1e594715f25b.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Zeta23.ThmE.Hypotheses` — import line 20; external provider; requires a separately pinned dependency.
- `Zeta23.RvM.GammaSide` — import line 21; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Complex.CauchyIntegral` — import line 22; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecialFunctions.Gamma.Deligne` — import line 23; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [archChi](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/GammaSideChi/Variant82b352888c5fd1492e976c5337c1d076c5434b72d0c7abd1552f1e594715f25b.lean/declarations/archchi--dd3c8def2d892175d25cfbed.md) | 39 | `declaration-track:dd3c8def2d892175d25cfbed0f1bc0557a7e806ee3b082422e72d2274d168bd7` |
| 2 | `lemma` | [q_cpow_ne_zero](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/GammaSideChi/Variant82b352888c5fd1492e976c5337c1d076c5434b72d0c7abd1552f1e594715f25b.lean/declarations/q-cpow-ne-zero--df31b13f7563c857ea1a6484.md) | 41 | `result-track:df31b13f7563c857ea1a64848e2a8ba7c24afa9e522657c2458e493d140c63dd` |
| 3 | `lemma` | [archChi_differentiableOn](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/GammaSideChi/Variant82b352888c5fd1492e976c5337c1d076c5434b72d0c7abd1552f1e594715f25b.lean/declarations/archchi-differentiableon--c0d8989e890a54b4c3580cde.md) | 45 | `result-track:c0d8989e890a54b4c3580cdef48267c3b82cb4291af22c61a95e33e01f8beaad` |
| 4 | `lemma` | [archChi_ne_zero](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/GammaSideChi/Variant82b352888c5fd1492e976c5337c1d076c5434b72d0c7abd1552f1e594715f25b.lean/declarations/archchi-ne-zero--dd6411d197735a87637e8768.md) | 67 | `result-track:dd6411d197735a87637e8768cb2d6576f41681a3116b96b86c7b32f955715692` |
| 5 | `lemma` | [logDeriv_archChi_differentiableOn](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/GammaSideChi/Variant82b352888c5fd1492e976c5337c1d076c5434b72d0c7abd1552f1e594715f25b.lean/declarations/logderiv-archchi-differentiableon--d75f06e333aac31b1ab13281.md) | 75 | `result-track:d75f06e333aac31b1ab132817ad182f30985bc678ad5b5a6de4619087132c306` |
| 6 | `theorem` | [logDeriv_archChi](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/GammaSideChi/Variant82b352888c5fd1492e976c5337c1d076c5434b72d0c7abd1552f1e594715f25b.lean/declarations/logderiv-archchi--7f66f8beb4d262907c688a13.md) | 85 | `result-track:7f66f8beb4d262907c688a132b0ba8475faff3f9b0e4421e373d5807fbe2bb99` |
| 7 | `theorem` | [re_logDeriv_archChi_half](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/GammaSideChi/Variant82b352888c5fd1492e976c5337c1d076c5434b72d0c7abd1552f1e594715f25b.lean/declarations/re-logderiv-archchi-half--40ce83e9fda51cbdd90b6be0.md) | 138 | `result-track:40ce83e9fda51cbdd90b6be049046e46494808e9f555834a1fbb4b0a7b88339c` |
| 8 | `theorem` | [gammaSideChi](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/GammaSideChi/Variant82b352888c5fd1492e976c5337c1d076c5434b72d0c7abd1552f1e594715f25b.lean/declarations/gammasidechi--48729a708cc8451b126e5c55.md) | 155 | `result-track:48729a708cc8451b126e5c551cb7f2641f6154e46d195061900fe56c1b87d4fd` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
