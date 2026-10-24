# Verification target: GRWTSK.NumberTheory.Moebius.ReciprocalFluxKernelBounds

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "846c5cf5f51498a60713fa2394b89dce2361d0d2",
  "lexical_observation_count": 2,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Moebius/ReciprocalFluxKernelBounds.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/NumberTheory/Moebius/ReciprocalFluxKernelBounds.lean/index.md) · [Full source](../../../../mathematics/NumberTheory/Moebius/ReciprocalFluxKernelBounds.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `846c5cf5f51498a60713fa2394b89dce2361d0d2`.

Source path: `GRWTSK/NumberTheory/Moebius/ReciprocalFluxKernelBounds.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Moebius/ReciprocalFluxKernelBounds.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.NumberTheory.Moebius.ReciprocalPrefixVariationEnergy`](../../../../mathematics/NumberTheory/Moebius/ReciprocalPrefixVariationEnergy.lean/index.md) — import line 4; pinned internal source present.
- `Mathlib.NumberTheory.Harmonic.Bounds` — import line 5; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [sqrt_increment_sq_le_reciprocal](../../../../mathematics/NumberTheory/Moebius/ReciprocalFluxKernelBounds.lean/declarations/sqrt-increment-sq-le-reciprocal--1ee7e13a763fa699885ec994.md) | 28 | `result-track:1ee7e13a763fa699885ec99400eefee139717bf9841f420da2e3ea135b26c01c` |
| 2 | `theorem` | [reciprocalFluxWeightSquareMass_le_log](../../../../mathematics/NumberTheory/Moebius/ReciprocalFluxKernelBounds.lean/declarations/reciprocalfluxweightsquaremass-le-log--551722eaddd615929b3f18ae.md) | 56 | `result-track:551722eaddd615929b3f18aecac46264665f02fd114eedab61c1496cac9202d6` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
