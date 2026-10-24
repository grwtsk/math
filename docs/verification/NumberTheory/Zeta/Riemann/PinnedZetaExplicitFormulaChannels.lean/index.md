# Verification target: GRWTSK.NumberTheory.Zeta.Riemann.PinnedZetaExplicitFormulaChannels

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "9d59f305367a68baaa5dffbeda2e9e8374a0973b",
  "lexical_observation_count": 8,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Zeta/Riemann/PinnedZetaExplicitFormulaChannels.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/NumberTheory/Zeta/Riemann/PinnedZetaExplicitFormulaChannels.lean/index.md) · [Full source](../../../../../mathematics/NumberTheory/Zeta/Riemann/PinnedZetaExplicitFormulaChannels.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `9d59f305367a68baaa5dffbeda2e9e8374a0973b`.

Source path: `GRWTSK/NumberTheory/Zeta/Riemann/PinnedZetaExplicitFormulaChannels.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Zeta/Riemann/PinnedZetaExplicitFormulaChannels.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.NumberTheory.Zeta.Riemann.PinnedVonMangoldtCoefficientSource`](../../../../../mathematics/NumberTheory/Zeta/Riemann/PinnedVonMangoldtCoefficientSource.lean/index.md) — import line 4; pinned internal source present.
- [`GRWTSK.NumberTheory.Zeta.Riemann.CanonicalLogarithmicResidues`](../../../../../mathematics/NumberTheory/Zeta/Riemann/CanonicalLogarithmicResidues.lean/index.md) — import line 5; pinned internal source present.
- `Mathlib.NumberTheory.LSeries.RiemannZeta` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.NumberTheory.Harmonic.ZetaAsymp` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [PinnedZetaChannelSourceRecord](../../../../../mathematics/NumberTheory/Zeta/Riemann/PinnedZetaExplicitFormulaChannels.lean/declarations/pinnedzetachannelsourcerecord--04938a9948339929c0868f75.md) | 43 | `declaration-track:04938a9948339929c0868f7546c58e485b7d71c11e9248cddc75394421a7dd3d` |
| 2 | `def` | [pinnedZetaChannelSource](../../../../../mathematics/NumberTheory/Zeta/Riemann/PinnedZetaExplicitFormulaChannels.lean/declarations/pinnedzetachannelsource--145f9e1f812c5292faaa842d.md) | 57 | `declaration-track:145f9e1f812c5292faaa842d45d3725b040b8de926630cd93e7e9d5793428d4d` |
| 3 | `structure` | [KnownZetaExplicitFormulaChannels](../../../../../mathematics/NumberTheory/Zeta/Riemann/PinnedZetaExplicitFormulaChannels.lean/declarations/knownzetaexplicitformulachannels--cea014e3c2a680ae626c0b1f.md) | 75 | `declaration-track:cea014e3c2a680ae626c0b1f83e1872f69765997fc32e43a0abc4fae2bdb0c68` |
| 4 | `def` | [pinnedKnownZetaExplicitFormulaChannels](../../../../../mathematics/NumberTheory/Zeta/Riemann/PinnedZetaExplicitFormulaChannels.lean/declarations/pinnedknownzetaexplicitformulachannels--e7a907ae5b05442359328d09.md) | 103 | `declaration-track:e7a907ae5b05442359328d09c9bd92803817546e6962537b6f30fd335f38f545` |
| 5 | `theorem` | [pinned_completed_functional_equation](../../../../../mathematics/NumberTheory/Zeta/Riemann/PinnedZetaExplicitFormulaChannels.lean/declarations/pinned-completed-functional-equation--5b0a34b7333e8a4beba849ef.md) | 119 | `result-track:5b0a34b7333e8a4beba849ef916db3db9c29c97cfc168b8bf76bb8252d9e7fc7` |
| 6 | `theorem` | [pinned_trivial_zero](../../../../../mathematics/NumberTheory/Zeta/Riemann/PinnedZetaExplicitFormulaChannels.lean/declarations/pinned-trivial-zero--719be1c4ae951898b09f762c.md) | 124 | `result-track:719be1c4ae951898b09f762c8b9c9280cfa32ef4c7e2e427af4e679c2b7bb3b2` |
| 7 | `theorem` | [pinned_zeta_pole_residue](../../../../../mathematics/NumberTheory/Zeta/Riemann/PinnedZetaExplicitFormulaChannels.lean/declarations/pinned-zeta-pole-residue--c2a877e678b2567c9232e351.md) | 129 | `result-track:c2a877e678b2567c9232e351d4b8c2cbe99d3ef9e33edb6f3fdd9a49d0a4d45c` |
| 8 | `theorem` | [pinned_nontrivial_zero_log_residue](../../../../../mathematics/NumberTheory/Zeta/Riemann/PinnedZetaExplicitFormulaChannels.lean/declarations/pinned-nontrivial-zero-log-residue--4ecda75990221a6775a85ec6.md) | 136 | `result-track:4ecda75990221a6775a85ec695ce46a1de31493368528e9f36b4a776017d6f98` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
