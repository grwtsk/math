# Verification target: GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.NonzeroFirstMomentSampling.Variant3af71a267019cf523b3e9cb339b76d53aa9dd5f80e071cc50ce1deac2cd7bc72

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "ab9d1e99aabdd9923037d53ea11a54fe15af7191",
  "lexical_observation_count": 4,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/NonzeroFirstMomentSampling/Variant3af71a267019cf523b3e9cb339b76d53aa9dd5f80e071cc50ce1deac2cd7bc72.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/NonzeroFirstMomentSampling/Variant3af71a267019cf523b3e9cb339b76d53aa9dd5f80e071cc50ce1deac2cd7bc72.lean/index.md) · [Full source](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/NonzeroFirstMomentSampling/Variant3af71a267019cf523b3e9cb339b76d53aa9dd5f80e071cc50ce1deac2cd7bc72.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `ab9d1e99aabdd9923037d53ea11a54fe15af7191`.

Source path: `GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/NonzeroFirstMomentSampling/Variant3af71a267019cf523b3e9cb339b76d53aa9dd5f80e071cc50ce1deac2cd7bc72.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/NonzeroFirstMomentSampling/Variant3af71a267019cf523b3e9cb339b76d53aa9dd5f80e071cc50ce1deac2cd7bc72.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.RiemannHypothesis.SourceComparison.TwoMomentSampling` — import line 1; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [half_moment_transport_with_firstMoment](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/NonzeroFirstMomentSampling/Variant3af71a267019cf523b3e9cb339b76d53aa9dd5f80e071cc50ce1deac2cd7bc72.lean/declarations/half-moment-transport-with-firstmoment--2f7ea5427915d3188f537169.md) | 17 | `result-track:2f7ea5427915d3188f53716913b7049325daf29b0fee1a4d76c6018959a29087` |
| 2 | `theorem` | [sampling_integral_sub_firstMoment](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/NonzeroFirstMomentSampling/Variant3af71a267019cf523b3e9cb339b76d53aa9dd5f80e071cc50ce1deac2cd7bc72.lean/declarations/sampling-integral-sub-firstmoment--bc391040ed4dcbcbcdcb28fe.md) | 43 | `result-track:bc391040ed4dcbcbcdcb28fe4f7bfcd68ddb553f0e1e4390dd7edd33e9ff5a02` |
| 3 | `theorem` | [sampling_integral_sub_firstMoment_abs_le](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/NonzeroFirstMomentSampling/Variant3af71a267019cf523b3e9cb339b76d53aa9dd5f80e071cc50ce1deac2cd7bc72.lean/declarations/sampling-integral-sub-firstmoment-abs-le--48f493429247faccb60fae65.md) | 66 | `result-track:48f493429247faccb60fae654a4d4d0d632be6b2e525dc946e2c03d61b5ec9a1` |
| 4 | `theorem` | [sampling_sum_sub_firstMoment_abs_le](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/NonzeroFirstMomentSampling/Variant3af71a267019cf523b3e9cb339b76d53aa9dd5f80e071cc50ce1deac2cd7bc72.lean/declarations/sampling-sum-sub-firstmoment-abs-le--6c226195f80773f685980a05.md) | 79 | `result-track:6c226195f80773f685980a05b9b5793857b774277b2a69cc157ff3377022a379` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
