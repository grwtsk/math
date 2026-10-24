# Verification target: GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.LaplaceTransform.Varianta41fcaf5517912b7db8c5ed4ff3ee038ece42ddea458868078d9b19e4b815593

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "a8a9ab4bc74fd781cfbb3ce8374fb15fb9c44d48",
  "lexical_observation_count": 17,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/LaplaceTransform/Varianta41fcaf5517912b7db8c5ed4ff3ee038ece42ddea458868078d9b19e4b815593.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/LaplaceTransform/Varianta41fcaf5517912b7db8c5ed4ff3ee038ece42ddea458868078d9b19e4b815593.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/LaplaceTransform/Varianta41fcaf5517912b7db8c5ed4ff3ee038ece42ddea458868078d9b19e4b815593.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `a8a9ab4bc74fd781cfbb3ce8374fb15fb9c44d48`.

Source path: `GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/LaplaceTransform/Varianta41fcaf5517912b7db8c5ed4ff3ee038ece42ddea458868078d9b19e4b815593.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/DifferentialCalculus/LaplaceTransform/Varianta41fcaf5517912b7db8c5ed4ff3ee038ece42ddea458868078d9b19e4b815593.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Tactic` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [primitiveWeilLaplaceIntegrand](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/LaplaceTransform/Varianta41fcaf5517912b7db8c5ed4ff3ee038ece42ddea458868078d9b19e4b815593.lean/declarations/primitiveweillaplaceintegrand--b90a1edaba4620b4bc3afb60.md) | 33 | `declaration-track:b90a1edaba4620b4bc3afb60d2104262c4c6ce8aaf3fba8088b8ff0d57807b78` |
| 2 | `def` | [primitiveWeilLaplace](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/LaplaceTransform/Varianta41fcaf5517912b7db8c5ed4ff3ee038ece42ddea458868078d9b19e4b815593.lean/declarations/primitiveweillaplace--0a2e56958f803a6d7788e7b0.md) | 39 | `declaration-track:0a2e56958f803a6d7788e7b0ceffb5e060c44f3948681f7ffaf53afc9763a957` |
| 3 | `theorem` | [continuous_primitiveWeilLaplaceIntegrand](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/LaplaceTransform/Varianta41fcaf5517912b7db8c5ed4ff3ee038ece42ddea458868078d9b19e4b815593.lean/declarations/continuous-primitiveweillaplaceintegrand--6131a95b352d9129b622fa00.md) | 46 | `result-track:6131a95b352d9129b622fa004397b0e5632e0a544d512029ce851a5377d024de` |
| 4 | `theorem` | [support_primitiveWeilLaplaceIntegrand_subset](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/LaplaceTransform/Varianta41fcaf5517912b7db8c5ed4ff3ee038ece42ddea458868078d9b19e4b815593.lean/declarations/support-primitiveweillaplaceintegrand-subset--36b704ec9a1d8d5a0d5c2e0c.md) | 54 | `result-track:36b704ec9a1d8d5a0d5c2e0ccbb9b4af0335de5c0d893a3b7ab61a4ba2c2122d` |
| 5 | `theorem` | [hasCompactSupport_primitiveWeilLaplaceIntegrand](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/LaplaceTransform/Varianta41fcaf5517912b7db8c5ed4ff3ee038ece42ddea458868078d9b19e4b815593.lean/declarations/hascompactsupport-primitiveweillaplaceintegrand--d2e3d956460f3022eb8674d7.md) | 65 | `result-track:d2e3d956460f3022eb8674d75e50b9b9c6847303eb6961ad390ebb9484087fc7` |
| 6 | `theorem` | [integrable_primitiveWeilLaplaceIntegrand](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/LaplaceTransform/Varianta41fcaf5517912b7db8c5ed4ff3ee038ece42ddea458868078d9b19e4b815593.lean/declarations/integrable-primitiveweillaplaceintegrand--23208bd3f525ab84c062de33.md) | 72 | `result-track:23208bd3f525ab84c062de33f646b3be2804018c6b9d166742ad9f3388ae5a55` |
| 7 | `def` | [primitiveWeilLaplaceDerivativeIntegrand](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/LaplaceTransform/Varianta41fcaf5517912b7db8c5ed4ff3ee038ece42ddea458868078d9b19e4b815593.lean/declarations/primitiveweillaplacederivativeintegrand--691a18a7e35de6e67ba5c9a6.md) | 81 | `declaration-track:691a18a7e35de6e67ba5c9a649f956883dacfc83f44e243436af6b9a9d244ce6` |
| 8 | `theorem` | [hasDerivAt_primitiveWeilLaplaceIntegrand](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/LaplaceTransform/Varianta41fcaf5517912b7db8c5ed4ff3ee038ece42ddea458868078d9b19e4b815593.lean/declarations/hasderivat-primitiveweillaplaceintegrand--a88f920d09c861023fb4aeb0.md) | 85 | `result-track:a88f920d09c861023fb4aeb0c93a54ba503bf15b8a8cfe0b20a4b3444776d59b` |
| 9 | `def` | [primitiveWeilLaplaceDerivativeBound](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/LaplaceTransform/Varianta41fcaf5517912b7db8c5ed4ff3ee038ece42ddea458868078d9b19e4b815593.lean/declarations/primitiveweillaplacederivativebound--fa3f743ce1f04e535fc6a20e.md) | 96 | `declaration-track:fa3f743ce1f04e535fc6a20e8f9a6aa59bee6b40856e7e4dba73231d48f76620` |
| 10 | `theorem` | [integrable_primitiveWeilLaplaceDerivativeBound](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/LaplaceTransform/Varianta41fcaf5517912b7db8c5ed4ff3ee038ece42ddea458868078d9b19e4b815593.lean/declarations/integrable-primitiveweillaplacederivativebound--38955d14deee43e13f8f392f.md) | 101 | `result-track:38955d14deee43e13f8f392fe2f6142bf0d11a07c2e8162865dfb46ebc897833` |
| 11 | `theorem` | [primitiveWeilLaplaceDerivative_le](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/LaplaceTransform/Varianta41fcaf5517912b7db8c5ed4ff3ee038ece42ddea458868078d9b19e4b815593.lean/declarations/primitiveweillaplacederivative-le--89813a885851d31a1089163f.md) | 120 | `result-track:89813a885851d31a1089163f1a168f88a4475eb54154fd400b56253e098cd783` |
| 12 | `theorem` | [continuous_primitiveWeilLaplaceDerivativeIntegrand](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/LaplaceTransform/Varianta41fcaf5517912b7db8c5ed4ff3ee038ece42ddea458868078d9b19e4b815593.lean/declarations/continuous-primitiveweillaplacederivativeintegrand--f44b5f5a94501cc1f7982312.md) | 149 | `result-track:f44b5f5a94501cc1f798231298d0d8813d396165cb5b16fdae0893b1c50eda2f` |
| 13 | `theorem` | [hasDerivAt_primitiveWeilLaplace](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/LaplaceTransform/Varianta41fcaf5517912b7db8c5ed4ff3ee038ece42ddea458868078d9b19e4b815593.lean/declarations/hasderivat-primitiveweillaplace--b921b7f075cf84ff0360389e.md) | 159 | `result-track:b921b7f075cf84ff0360389e19090530456ccb2561fb777293f713eef083877e` |
| 14 | `theorem` | [differentiable_primitiveWeilLaplace](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/LaplaceTransform/Varianta41fcaf5517912b7db8c5ed4ff3ee038ece42ddea458868078d9b19e4b815593.lean/declarations/differentiable-primitiveweillaplace--5c1de7f82288a9df5356da06.md) | 184 | `result-track:5c1de7f82288a9df5356da0696bc52cd21f7e24fbd3a2cb28ffcae5850551411` |
| 15 | `theorem` | [primitiveWeilLaplace_star](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/LaplaceTransform/Varianta41fcaf5517912b7db8c5ed4ff3ee038ece42ddea458868078d9b19e4b815593.lean/declarations/primitiveweillaplace-star--42b7d07ef224d1e0fc067331.md) | 191 | `result-track:42b7d07ef224d1e0fc0673310e8c7279ee62b88a6e5697077d92a2ecb187969e` |
| 16 | `theorem` | [primitiveWeilLaplaceIntegrand_autocorrelation](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/LaplaceTransform/Varianta41fcaf5517912b7db8c5ed4ff3ee038ece42ddea458868078d9b19e4b815593.lean/declarations/primitiveweillaplaceintegrand-autocorrelation--89c1a36546fa228ffec14a14.md) | 211 | `result-track:89c1a36546fa228ffec14a146c3bdf2e2a73a113e7ad6d761d25b65e2f6a7285` |
| 17 | `theorem` | [primitiveWeilLaplace_autocorrelation](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/LaplaceTransform/Varianta41fcaf5517912b7db8c5ed4ff3ee038ece42ddea458868078d9b19e4b815593.lean/declarations/primitiveweillaplace-autocorrelation--d2215976fd919066f308ff2e.md) | 243 | `result-track:d2215976fd919066f308ff2e4daa4e668113fc81797d103c766657ea0898d444` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
