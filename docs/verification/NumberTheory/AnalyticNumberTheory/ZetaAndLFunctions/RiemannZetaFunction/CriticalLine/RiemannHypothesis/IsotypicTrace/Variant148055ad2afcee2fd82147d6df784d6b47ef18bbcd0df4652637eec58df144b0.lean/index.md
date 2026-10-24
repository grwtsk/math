# Verification target: GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.IsotypicTrace.Variant148055ad2afcee2fd82147d6df784d6b47ef18bbcd0df4652637eec58df144b0

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "9da2fa5c470c5e814f40cc009ad5db118b1e7040",
  "lexical_observation_count": 9,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/IsotypicTrace/Variant148055ad2afcee2fd82147d6df784d6b47ef18bbcd0df4652637eec58df144b0.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/IsotypicTrace/Variant148055ad2afcee2fd82147d6df784d6b47ef18bbcd0df4652637eec58df144b0.lean/index.md) · [Full source](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/IsotypicTrace/Variant148055ad2afcee2fd82147d6df784d6b47ef18bbcd0df4652637eec58df144b0.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `9da2fa5c470c5e814f40cc009ad5db118b1e7040`.

Source path: `GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/IsotypicTrace/Variant148055ad2afcee2fd82147d6df784d6b47ef18bbcd0df4652637eec58df144b0.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/IsotypicTrace/Variant148055ad2afcee2fd82147d6df784d6b47ef18bbcd0df4652637eec58df144b0.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.RiemannHypothesis.Conversation.InboundChannels` — import line 1; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [orbitTrace](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/IsotypicTrace/Variant148055ad2afcee2fd82147d6df784d6b47ef18bbcd0df4652637eec58df144b0.lean/declarations/orbittrace--b9bd73219b640255f2e2bd45.md) | 22 | `declaration-track:b9bd73219b640255f2e2bd450793bc51e66e0ec08683d479b27263aa7ed8d1ba` |
| 2 | `def` | [orbitAverage](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/IsotypicTrace/Variant148055ad2afcee2fd82147d6df784d6b47ef18bbcd0df4652637eec58df144b0.lean/declarations/orbitaverage--de06304cbb71292d1e45b2e0.md) | 25 | `declaration-track:de06304cbb71292d1e45b2e055e1318b1c619aaa677aa39b63d6b6978140a4ce` |
| 3 | `theorem` | [orbit_trace_invariant](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/IsotypicTrace/Variant148055ad2afcee2fd82147d6df784d6b47ef18bbcd0df4652637eec58df144b0.lean/declarations/orbit-trace-invariant--2e3c334b4bb0c36651a5ccc1.md) | 28 | `result-track:2e3c334b4bb0c36651a5ccc17e3603b6b531e5d0a5e0e58888688ed31c183334` |
| 4 | `theorem` | [scalar_covariant_trace_zero](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/IsotypicTrace/Variant148055ad2afcee2fd82147d6df784d6b47ef18bbcd0df4652637eec58df144b0.lean/declarations/scalar-covariant-trace-zero--7395b8842b251dc57642d8d8.md) | 36 | `result-track:7395b8842b251dc57642d8d848bb1ae803ff551979bcd703b628ae00db584d94` |
| 5 | `theorem` | [nontrivial_readout_annihilates_trace](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/IsotypicTrace/Variant148055ad2afcee2fd82147d6df784d6b47ef18bbcd0df4652637eec58df144b0.lean/declarations/nontrivial-readout-annihilates-trace--dc515e90beff2c8de786b3f3.md) | 48 | `result-track:dc515e90beff2c8de786b3f32279aaca780378f0e0a48b3a0f119ba1d0634d87` |
| 6 | `theorem` | [nontrivial_readout_annihilates_average](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/IsotypicTrace/Variant148055ad2afcee2fd82147d6df784d6b47ef18bbcd0df4652637eec58df144b0.lean/declarations/nontrivial-readout-annihilates-average--84d30ca4d9d433f991c385cf.md) | 60 | `result-track:84d30ca4d9d433f991c385cfd8a25504c5c2cad5b417d4cb1d97ba69e93a2e3d` |
| 7 | `def` | [readoutResidual](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/IsotypicTrace/Variant148055ad2afcee2fd82147d6df784d6b47ef18bbcd0df4652637eec58df144b0.lean/declarations/readoutresidual--3dfaf954f5db7a035fe5eada.md) | 68 | `declaration-track:3dfaf954f5db7a035fe5eadaf732ed9d7c3f14f1433b334092563a857b56d195` |
| 8 | `theorem` | [exact_trace_residual](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/IsotypicTrace/Variant148055ad2afcee2fd82147d6df784d6b47ef18bbcd0df4652637eec58df144b0.lean/declarations/exact-trace-residual--9395312c78e0dc9da7886099.md) | 72 | `result-track:9395312c78e0dc9da78860993167f69458435b22eab0b321d86a0a14ebad7fc8` |
| 9 | `theorem` | [averaged_readout_residual_bound](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/IsotypicTrace/Variant148055ad2afcee2fd82147d6df784d6b47ef18bbcd0df4652637eec58df144b0.lean/declarations/averaged-readout-residual-bound--a1e65d8183304e74112eaa93.md) | 83 | `result-track:a1e65d8183304e74112eaa93b3f4bc19f03469b09f2f6f9200d1c17b52c0766e` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
