# Verification target: GRWTSK.Topology.GeneralTopology.MediumPNTLogErrorAttempt01.Variant93d5e775531a60fd7147356627fe1657974950dbce79442f621358279f9ea6f5

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "d189cf2c04a43203892752379c28fce8b4ee0f24",
  "lexical_observation_count": 5,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/MediumPNTLogErrorAttempt01/Variant93d5e775531a60fd7147356627fe1657974950dbce79442f621358279f9ea6f5.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/MediumPNTLogErrorAttempt01/Variant93d5e775531a60fd7147356627fe1657974950dbce79442f621358279f9ea6f5.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/MediumPNTLogErrorAttempt01/Variant93d5e775531a60fd7147356627fe1657974950dbce79442f621358279f9ea6f5.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `d189cf2c04a43203892752379c28fce8b4ee0f24`.

Source path: `GRWTSK/Topology/GeneralTopology/MediumPNTLogErrorAttempt01/Variant93d5e775531a60fd7147356627fe1657974950dbce79442f621358279f9ea6f5.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/MediumPNTLogErrorAttempt01/Variant93d5e775531a60fd7147356627fe1657974950dbce79442f621358279f9ea6f5.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Zeta23.FromPNTPlus.MediumPNT` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecialFunctions.Pow.Asymptotics` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [psiRelativeError](../../../../../mathematics/Topology/GeneralTopology/MediumPNTLogErrorAttempt01/Variant93d5e775531a60fd7147356627fe1657974950dbce79442f621358279f9ea6f5.lean/declarations/psirelativeerror--4d0482cfbe08b201f9c69bd2.md) | 18 | `declaration-track:4d0482cfbe08b201f9c69bd26f16740f5e9b3b9473fd8b4158f44d91c0bb8a9e` |
| 2 | `theorem` | [psiRelativeError_eq](../../../../../mathematics/Topology/GeneralTopology/MediumPNTLogErrorAttempt01/Variant93d5e775531a60fd7147356627fe1657974950dbce79442f621358279f9ea6f5.lean/declarations/psirelativeerror-eq--ef3cef7370229d769bfe3794.md) | 20 | `result-track:ef3cef7370229d769bfe3794eec2a7d3e4941f541a887649c24d9b79250d97a7` |
| 3 | `theorem` | [psiRelativeError_medium_bound](../../../../../mathematics/Topology/GeneralTopology/MediumPNTLogErrorAttempt01/Variant93d5e775531a60fd7147356627fe1657974950dbce79442f621358279f9ea6f5.lean/declarations/psirelativeerror-medium-bound--689da4a641260faf408cbba7.md) | 27 | `result-track:689da4a641260faf408cbba7fed9182cd24ae54665ee1dc2ac9044ffb335540a` |
| 4 | `theorem` | [power_stretched_exp_tendsto_zero](../../../../../mathematics/Topology/GeneralTopology/MediumPNTLogErrorAttempt01/Variant93d5e775531a60fd7147356627fe1657974950dbce79442f621358279f9ea6f5.lean/declarations/power-stretched-exp-tendsto-zero--8e726c783cfbc48b1d33b580.md) | 47 | `result-track:8e726c783cfbc48b1d33b58014ce2c5b879b356b1d4f5d96aadf39f6365d9afc` |
| 5 | `theorem` | [psiRelativeError_mul_pow_tendsto_zero](../../../../../mathematics/Topology/GeneralTopology/MediumPNTLogErrorAttempt01/Variant93d5e775531a60fd7147356627fe1657974950dbce79442f621358279f9ea6f5.lean/declarations/psirelativeerror-mul-pow-tendsto-zero--52a662ca7f84441438fc6072.md) | 58 | `result-track:52a662ca7f84441438fc6072b4df24d78a766b6cfc6c3571cba3a4e1d2523466` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
