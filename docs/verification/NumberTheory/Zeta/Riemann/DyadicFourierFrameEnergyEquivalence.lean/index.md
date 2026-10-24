# Verification target: GRWTSK.NumberTheory.Zeta.Riemann.DyadicFourierFrameEnergyEquivalence

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "67b6069597fbea940363ec5ab5c820079f7cb139",
  "lexical_observation_count": 6,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Zeta/Riemann/DyadicFourierFrameEnergyEquivalence.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/NumberTheory/Zeta/Riemann/DyadicFourierFrameEnergyEquivalence.lean/index.md) · [Full source](../../../../../mathematics/NumberTheory/Zeta/Riemann/DyadicFourierFrameEnergyEquivalence.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `67b6069597fbea940363ec5ab5c820079f7cb139`.

Source path: `GRWTSK/NumberTheory/Zeta/Riemann/DyadicFourierFrameEnergyEquivalence.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Zeta/Riemann/DyadicFourierFrameEnergyEquivalence.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.NumberTheory.Zeta.Riemann.DyadicGreenFourierActionFrame`](../../../../../mathematics/NumberTheory/Zeta/Riemann/DyadicGreenFourierActionFrame.lean/index.md) — import line 3; pinned internal source present.
- [`GRWTSK.NumberTheory.Zeta.DyadicGreenReturn`](../../../../../mathematics/NumberTheory/Zeta/DyadicGreenReturn.lean/index.md) — import line 4; pinned internal source present.
- `Mathlib.Tactic` — import line 5; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [AllDyadicAdmissibleActionFrameBound](../../../../../mathematics/NumberTheory/Zeta/Riemann/DyadicFourierFrameEnergyEquivalence.lean/declarations/alldyadicadmissibleactionframebound--38a04653bc94446505ddc099.md) | 40 | `declaration-track:38a04653bc94446505ddc0999fbb764dee26a3dfc9973d1064f305df00341e59` |
| 2 | `theorem` | [allDyadicEnergyBound_to_actionFrameBound](../../../../../mathematics/NumberTheory/Zeta/Riemann/DyadicFourierFrameEnergyEquivalence.lean/declarations/alldyadicenergybound-to-actionframebound--d00d8eff1ab3aa9b04330409.md) | 48 | `result-track:d00d8eff1ab3aa9b04330409042216fb068149404ba3545bd453c72e88a7d1bb` |
| 3 | `theorem` | [actionFrameBound_to_allDyadicEnergyBound](../../../../../mathematics/NumberTheory/Zeta/Riemann/DyadicFourierFrameEnergyEquivalence.lean/declarations/actionframebound-to-alldyadicenergybound--1a5fe08755f4dfb36f62c586.md) | 62 | `result-track:1a5fe08755f4dfb36f62c58684e578235c50c944a68c339e45a7ac0842d4c4c9` |
| 4 | `theorem` | [allDyadicAdmissibleActionFrameBound_iff_energy](../../../../../mathematics/NumberTheory/Zeta/Riemann/DyadicFourierFrameEnergyEquivalence.lean/declarations/alldyadicadmissibleactionframebound-iff-energy--d5a3a2bc658091e8f7fa3d95.md) | 79 | `result-track:d5a3a2bc658091e8f7fa3d95daf36112575db5aa3edf978e9c37ebc74c0bc0ca` |
| 5 | `theorem` | [riemannHypothesis_of_admissibleActionFrameBound](../../../../../mathematics/NumberTheory/Zeta/Riemann/DyadicFourierFrameEnergyEquivalence.lean/declarations/riemannhypothesis-of-admissibleactionframebound--398dcad0a90026dc8a3b4ea5.md) | 86 | `result-track:398dcad0a90026dc8a3b4ea5f726e1379fc3f127846343c544ccba91ad379aac` |
| 6 | `theorem` | [not_actionFrameBound_of_offline_zero](../../../../../mathematics/NumberTheory/Zeta/Riemann/DyadicFourierFrameEnergyEquivalence.lean/declarations/not-actionframebound-of-offline-zero--c64e08bb7d66387aeeba7122.md) | 94 | `result-track:c64e08bb7d66387aeeba7122bcf96ac1e4b1275982fad38f026b31796be474d9` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
