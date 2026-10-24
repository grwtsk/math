# Verification target: GRWTSK.Topology.GeneralTopology.MediumPNTLogErrorAttempt03.Variantc858bbccf81d8cb4c095b0abc2bc0ab918276386822c8c8c33f4751998b1a231

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "a0dc5d86ecb04f4b1da97c53bd510ae6215dda30",
  "lexical_observation_count": 5,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/MediumPNTLogErrorAttempt03/Variantc858bbccf81d8cb4c095b0abc2bc0ab918276386822c8c8c33f4751998b1a231.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/MediumPNTLogErrorAttempt03/Variantc858bbccf81d8cb4c095b0abc2bc0ab918276386822c8c8c33f4751998b1a231.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/MediumPNTLogErrorAttempt03/Variantc858bbccf81d8cb4c095b0abc2bc0ab918276386822c8c8c33f4751998b1a231.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `a0dc5d86ecb04f4b1da97c53bd510ae6215dda30`.

Source path: `GRWTSK/Topology/GeneralTopology/MediumPNTLogErrorAttempt03/Variantc858bbccf81d8cb4c095b0abc2bc0ab918276386822c8c8c33f4751998b1a231.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/MediumPNTLogErrorAttempt03/Variantc858bbccf81d8cb4c095b0abc2bc0ab918276386822c8c8c33f4751998b1a231.lean.json)

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
| 1 | `def` | [psiRelativeError](../../../../../mathematics/Topology/GeneralTopology/MediumPNTLogErrorAttempt03/Variantc858bbccf81d8cb4c095b0abc2bc0ab918276386822c8c8c33f4751998b1a231.lean/declarations/psirelativeerror--11c6ae9ce374af6dcc1ab679.md) | 19 | `declaration-track:11c6ae9ce374af6dcc1ab679cc3c574bac2c787279c9e29e5255a0c6d40ebb34` |
| 2 | `theorem` | [psiRelativeError_eq](../../../../../mathematics/Topology/GeneralTopology/MediumPNTLogErrorAttempt03/Variantc858bbccf81d8cb4c095b0abc2bc0ab918276386822c8c8c33f4751998b1a231.lean/declarations/psirelativeerror-eq--f7ecc02531667eeb780360e6.md) | 21 | `result-track:f7ecc02531667eeb780360e655a115996736a5b8fbe7003eeb33d5f21a62f627` |
| 3 | `theorem` | [psiRelativeError_medium_bound](../../../../../mathematics/Topology/GeneralTopology/MediumPNTLogErrorAttempt03/Variantc858bbccf81d8cb4c095b0abc2bc0ab918276386822c8c8c33f4751998b1a231.lean/declarations/psirelativeerror-medium-bound--16c377e81203270ebfff1f93.md) | 28 | `result-track:16c377e81203270ebfff1f930afb335634cd6de8bf20cd0eb878edaeb96172f5` |
| 4 | `theorem` | [power_stretched_exp_tendsto_zero](../../../../../mathematics/Topology/GeneralTopology/MediumPNTLogErrorAttempt03/Variantc858bbccf81d8cb4c095b0abc2bc0ab918276386822c8c8c33f4751998b1a231.lean/declarations/power-stretched-exp-tendsto-zero--187e1d0d52eefa45ac4ab9df.md) | 48 | `result-track:187e1d0d52eefa45ac4ab9df8238f05e30094232864c595372a87d377c144e33` |
| 5 | `theorem` | [psiRelativeError_mul_pow_tendsto_zero](../../../../../mathematics/Topology/GeneralTopology/MediumPNTLogErrorAttempt03/Variantc858bbccf81d8cb4c095b0abc2bc0ab918276386822c8c8c33f4751998b1a231.lean/declarations/psirelativeerror-mul-pow-tendsto-zero--05c0630ba3550e1f39009791.md) | 59 | `result-track:05c0630ba3550e1f3900979124a439d42db7eedf74b11fbc94a371d44d2c2d40` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
