# Verification target: GRWTSK.NumberTheory.Zeta.Riemann.Checks.PinnedZetaExplicitFormulaChannelsControls

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "35baf691e43f4c95ea74dfd0af4552971d3f5705",
  "lexical_observation_count": 4,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Zeta/Riemann/Checks/PinnedZetaExplicitFormulaChannelsControls.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/PinnedZetaExplicitFormulaChannelsControls.lean/index.md) · [Full source](../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/PinnedZetaExplicitFormulaChannelsControls.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `35baf691e43f4c95ea74dfd0af4552971d3f5705`.

Source path: `GRWTSK/NumberTheory/Zeta/Riemann/Checks/PinnedZetaExplicitFormulaChannelsControls.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Zeta/Riemann/Checks/PinnedZetaExplicitFormulaChannelsControls.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.NumberTheory.Zeta.Riemann.PinnedZetaExplicitFormulaChannels`](../../../../../../mathematics/NumberTheory/Zeta/Riemann/PinnedZetaExplicitFormulaChannels.lean/index.md) — import line 3; pinned internal source present.
- `Mathlib.Tactic` — import line 4; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [trivial_zero_minus_two](../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/PinnedZetaExplicitFormulaChannelsControls.lean/declarations/trivial-zero-minus-two--405723b0410e54a5b377d8fb.md) | 13 | `result-track:405723b0410e54a5b377d8fb7223fbe8f83013bbd3e4a0ec57dedfd3913155f2` |
| 2 | `theorem` | [completed_FE_at_two](../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/PinnedZetaExplicitFormulaChannelsControls.lean/declarations/completed-fe-at-two--e5244effbdcfc9918b04274a.md) | 17 | `result-track:e5244effbdcfc9918b04274aab4513cde185d17bb329292f9f58af21a9dac4d4` |
| 3 | `def` | [knownChannels](../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/PinnedZetaExplicitFormulaChannelsControls.lean/declarations/knownchannels--91a27861d26c6ee510f124af.md) | 24 | `declaration-track:91a27861d26c6ee510f124af2bc8ed0fc305d3fd452130744e14b0f13cfbcbe6` |
| 4 | `def` | [globalSummationStatus](../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/PinnedZetaExplicitFormulaChannelsControls.lean/declarations/globalsummationstatus--15f4825b4d116df38b97e876.md) | 27 | `declaration-track:15f4825b4d116df38b97e8767e0d4b04749e895b8f0f09ed73d09b8b2ff6e952` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
