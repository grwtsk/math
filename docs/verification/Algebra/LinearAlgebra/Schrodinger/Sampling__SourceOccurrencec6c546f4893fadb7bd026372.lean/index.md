# Verification target: GRWTSK.Algebra.LinearAlgebra.Schrodinger.Sampling

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "faf1e1b5e12355f5e20fd4f3f894293704f9d4cf",
  "lexical_observation_count": 6,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/Schrodinger/Sampling.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/Schrodinger/Sampling__SourceOccurrencec6c546f4893fadb7bd026372.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/Schrodinger/Sampling__SourceOccurrencec6c546f4893fadb7bd026372.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `faf1e1b5e12355f5e20fd4f3f894293704f9d4cf`.

Source path: `GRWTSK/Algebra/LinearAlgebra/Schrodinger/Sampling.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/Schrodinger/Sampling.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.Algebra.LinearAlgebra.Schrodinger.SampledPotential`](../../../../../mathematics/Algebra/LinearAlgebra/Schrodinger/SampledPotential__SourceOccurrencea628ae17c4d6668c923dfe27.lean/index.md) — import line 4; pinned internal source present.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `inductive` | [PotentialFamily](../../../../../mathematics/Algebra/LinearAlgebra/Schrodinger/Sampling__SourceOccurrencec6c546f4893fadb7bd026372.lean/declarations/potentialfamily--984eeb97ea3c3866549c5bda.md) | 10 | `declaration-track:984eeb97ea3c3866549c5bda01668dff1b4efc59e19120ae5214be2735cf8b69` |
| 2 | `def` | [SameSampledPotential](../../../../../mathematics/Algebra/LinearAlgebra/Schrodinger/Sampling__SourceOccurrencec6c546f4893fadb7bd026372.lean/declarations/samesampledpotential--f5640839132057b036634051.md) | 14 | `declaration-track:f5640839132057b03663405137c35d51b2257ae66207be5046f4314172a9bb62` |
| 3 | `def` | [discreteAction](../../../../../mathematics/Algebra/LinearAlgebra/Schrodinger/Sampling__SourceOccurrencec6c546f4893fadb7bd026372.lean/declarations/discreteaction--4ed4ea97f0fd096356f0d3f7.md) | 17 | `declaration-track:4ed4ea97f0fd096356f0d3f7c78f4177452a6b24dcc055106a362df26f9b7b96` |
| 4 | `theorem` | [equal_samples_equal_action](../../../../../mathematics/Algebra/LinearAlgebra/Schrodinger/Sampling__SourceOccurrencec6c546f4893fadb7bd026372.lean/declarations/equal-samples-equal-action--dc0fd083222fb337e77d719a.md) | 20 | `result-track:dc0fd083222fb337e77d719a66845660a2e6e4a0edb0a351da82994f3a20a2da` |
| 5 | `theorem` | [sampled_alias](../../../../../mathematics/Algebra/LinearAlgebra/Schrodinger/Sampling__SourceOccurrencec6c546f4893fadb7bd026372.lean/declarations/sampled-alias--1f5d67cc42ec799c4d9df259.md) | 27 | `result-track:1f5d67cc42ec799c4d9df259ebfa14f24133eb85fee5cfe3c14149c5de7646f4` |
| 6 | `theorem` | [waveform_equality_implies_samples](../../../../../mathematics/Algebra/LinearAlgebra/Schrodinger/Sampling__SourceOccurrencec6c546f4893fadb7bd026372.lean/declarations/waveform-equality-implies-samples--b06b65b51eb13a3566a7d71a.md) | 37 | `result-track:b06b65b51eb13a3566a7d71af9fab897c7dcd6f8d80e0fc409375b4c59a4169e` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
