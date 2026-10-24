# Verification target: GRWTSK.NumberTheory.Moebius.CoreBoundaryMertensSquareEnergy

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "da8dc01529865475e7505bfa12a98fa129e2b44a",
  "lexical_observation_count": 11,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Moebius/CoreBoundaryMertensSquareEnergy.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/NumberTheory/Moebius/CoreBoundaryMertensSquareEnergy.lean/index.md) · [Full source](../../../../mathematics/NumberTheory/Moebius/CoreBoundaryMertensSquareEnergy.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `da8dc01529865475e7505bfa12a98fa129e2b44a`.

Source path: `GRWTSK/NumberTheory/Moebius/CoreBoundaryMertensSquareEnergy.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Moebius/CoreBoundaryMertensSquareEnergy.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.NumberTheory.Moebius.CoreBoundaryQuadraticEnergy`](../../../../mathematics/NumberTheory/Moebius/CoreBoundaryQuadraticEnergy.lean/index.md) — import line 11; pinned internal source present.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [boundaryCoreDepths_eq_Ico](../../../../mathematics/NumberTheory/Moebius/CoreBoundaryMertensSquareEnergy.lean/declarations/boundarycoredepths-eq-ico--8d1d8796a34b65353afa29c5.md) | 21 | `result-track:8d1d8796a34b65353afa29c5eacc3f937de6699de2520c41cacf8ede2c6337e5` |
| 2 | `theorem` | [mertensPrefixReal_sub_eq_Ico](../../../../mathematics/NumberTheory/Moebius/CoreBoundaryMertensSquareEnergy.lean/declarations/mertensprefixreal-sub-eq-ico--802636646f4c35990d992037.md) | 51 | `result-track:802636646f4c35990d992037d6aac4e9bf958c29a6637bb4082c35a832aa4820` |
| 3 | `theorem` | [sum_Ico_sub_shift](../../../../mathematics/NumberTheory/Moebius/CoreBoundaryMertensSquareEnergy.lean/declarations/sum-ico-sub-shift--ff85f2d1c8caaf4b44b5e5a3.md) | 62 | `result-track:ff85f2d1c8caaf4b44b5e5a3fcd0bfad5aec3ffc917d5691e1c6513335c72a56` |
| 4 | `theorem` | [boundaryTailMertens_eq_prefix_sub](../../../../mathematics/NumberTheory/Moebius/CoreBoundaryMertensSquareEnergy.lean/declarations/boundarytailmertens-eq-prefix-sub--5e0f40bcc8c7465c283ce4ce.md) | 87 | `result-track:5e0f40bcc8c7465c283ce4ce91b7e7e08f6dc6121fc69f37cb4b6aedc8833017` |
| 5 | `def` | [boundaryLocalizedMertensSquareEnergy](../../../../mathematics/NumberTheory/Moebius/CoreBoundaryMertensSquareEnergy.lean/declarations/boundarylocalizedmertenssquareenergy--17a3ae4e7788d510fa89fba0.md) | 158 | `declaration-track:17a3ae4e7788d510fa89fba0c4956ade486950adcb44688636ad946f5730a887` |
| 6 | `theorem` | [sub_sq_le_two_sq_add_two_sq](../../../../mathematics/NumberTheory/Moebius/CoreBoundaryMertensSquareEnergy.lean/declarations/sub-sq-le-two-sq-add-two-sq--5bbe4cb87fb2da0aab6e3ec0.md) | 166 | `result-track:5bbe4cb87fb2da0aab6e3ec06b884fd79bcfd7e7b8a7e522d4845052111547d8` |
| 7 | `theorem` | [boundaryMovingWindowSquareEnergy_le_localized](../../../../mathematics/NumberTheory/Moebius/CoreBoundaryMertensSquareEnergy.lean/declarations/boundarymovingwindowsquareenergy-le-localized--d51b6989e765f0c2e0dca16e.md) | 173 | `result-track:d51b6989e765f0c2e0dca16e2699ed843b57ca80fbfc37534854629275ac2e6c` |
| 8 | `theorem` | [boundaryTailSquareEnergy_le_localized](../../../../mathematics/NumberTheory/Moebius/CoreBoundaryMertensSquareEnergy.lean/declarations/boundarytailsquareenergy-le-localized--74f2726a97273484ecfd470a.md) | 203 | `result-track:74f2726a97273484ecfd470a8747e764db38879493615b8a417ca2af09557f3c` |
| 9 | `def` | [SubpolynomialBoundaryLocalizedMertensSquareEnergy](../../../../mathematics/NumberTheory/Moebius/CoreBoundaryMertensSquareEnergy.lean/declarations/subpolynomialboundarylocalizedmertenssquareenergy--acfa594579e37f2121c15f1f.md) | 236 | `declaration-track:acfa594579e37f2121c15f1f2065a9673c78c3a19fe6960ba98e40081c5cbc5a` |
| 10 | `structure` | [WeakMertensToBoundaryLocalizedEnergyAdapter](../../../../mathematics/NumberTheory/Moebius/CoreBoundaryMertensSquareEnergy.lean/declarations/weakmertenstoboundarylocalizedenergyadapter--d5d9a935246d0084c24a9aaf.md) | 244 | `declaration-track:d5d9a935246d0084c24a9aafbe93ce8e9b33fe3e9772267322001c5f2c41bee4` |
| 11 | `structure` | [BoundaryLocalizedEnergyNormalizationAdapter](../../../../mathematics/NumberTheory/Moebius/CoreBoundaryMertensSquareEnergy.lean/declarations/boundarylocalizedenergynormalizationadapter--a3e4a276dbf5ed45b2e563e7.md) | 257 | `declaration-track:a3e4a276dbf5ed45b2e563e74a4dc7548dc9cf867e43df55bab66c6269f567e9` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
