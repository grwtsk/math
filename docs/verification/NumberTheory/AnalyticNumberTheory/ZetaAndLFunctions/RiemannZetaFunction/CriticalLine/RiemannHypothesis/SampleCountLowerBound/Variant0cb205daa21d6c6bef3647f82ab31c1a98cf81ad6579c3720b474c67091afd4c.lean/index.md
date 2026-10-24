# Verification target: GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.SampleCountLowerBound.Variant0cb205daa21d6c6bef3647f82ab31c1a98cf81ad6579c3720b474c67091afd4c

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "feb2979a42dd5bba0b05466d33e4e829731a98d7",
  "lexical_observation_count": 4,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SampleCountLowerBound/Variant0cb205daa21d6c6bef3647f82ab31c1a98cf81ad6579c3720b474c67091afd4c.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SampleCountLowerBound/Variant0cb205daa21d6c6bef3647f82ab31c1a98cf81ad6579c3720b474c67091afd4c.lean/index.md) · [Full source](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SampleCountLowerBound/Variant0cb205daa21d6c6bef3647f82ab31c1a98cf81ad6579c3720b474c67091afd4c.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `feb2979a42dd5bba0b05466d33e4e829731a98d7`.

Source path: `GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SampleCountLowerBound/Variant0cb205daa21d6c6bef3647f82ab31c1a98cf81ad6579c3720b474c67091afd4c.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SampleCountLowerBound/Variant0cb205daa21d6c6bef3647f82ab31c1a98cf81ad6579c3720b474c67091afd4c.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.RiemannHypothesis.Conversation.LipschitzSampleEnvelope` — import line 1; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [finite_cover_length](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SampleCountLowerBound/Variant0cb205daa21d6c6bef3647f82ab31c1a98cf81ad6579c3720b474c67091afd4c.lean/declarations/finite-cover-length--c35a7c515a7ccd93e2da9dca.md) | 26 | `result-track:c35a7c515a7ccd93e2da9dcac533d4fb4ad7d01aa769050098fa5b2fa14b5168` |
| 2 | `theorem` | [distance_cap_implies_finite_cover](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SampleCountLowerBound/Variant0cb205daa21d6c6bef3647f82ab31c1a98cf81ad6579c3720b474c67091afd4c.lean/declarations/distance-cap-implies-finite-cover--7a09419c4a6209b3e5eea8d9.md) | 50 | `result-track:7a09419c4a6209b3e5eea8d9f1709d6f18e71570b13de7e31201f1ffcd2d0b38` |
| 3 | `theorem` | [zero_transcript_sample_count](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SampleCountLowerBound/Variant0cb205daa21d6c6bef3647f82ab31c1a98cf81ad6579c3720b474c67091afd4c.lean/declarations/zero-transcript-sample-count--a0537f693a64bbbdf6789599.md) | 62 | `result-track:a0537f693a64bbbdf6789599018c9a72df805afe3ed82b352cfa45f483bb722d` |
| 4 | `theorem` | [exponential_window_sample_count](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SampleCountLowerBound/Variant0cb205daa21d6c6bef3647f82ab31c1a98cf81ad6579c3720b474c67091afd4c.lean/declarations/exponential-window-sample-count--7bfe1ad959a283d7c57d989e.md) | 79 | `result-track:7bfe1ad959a283d7c57d989efec6e8da35f8ef1221d1d4668f8532c4ffc28509` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
