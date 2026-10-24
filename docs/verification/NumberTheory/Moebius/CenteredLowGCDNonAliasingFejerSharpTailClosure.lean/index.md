# Verification target: GRWTSK.NumberTheory.Moebius.CenteredLowGCDNonAliasingFejerSharpTailClosure

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "31f783c37cbfb7899a100a5578365bfc948e28c0",
  "lexical_observation_count": 5,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Moebius/CenteredLowGCDNonAliasingFejerSharpTailClosure.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/NumberTheory/Moebius/CenteredLowGCDNonAliasingFejerSharpTailClosure.lean/index.md) · [Full source](../../../../mathematics/NumberTheory/Moebius/CenteredLowGCDNonAliasingFejerSharpTailClosure.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `31f783c37cbfb7899a100a5578365bfc948e28c0`.

Source path: `GRWTSK/NumberTheory/Moebius/CenteredLowGCDNonAliasingFejerSharpTailClosure.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Moebius/CenteredLowGCDNonAliasingFejerSharpTailClosure.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.NumberTheory.Moebius.CenteredLowGCDSharpDivisibilityTail`](../../../../mathematics/NumberTheory/Moebius/CenteredLowGCDSharpDivisibilityTail.lean/index.md) — import line 7; pinned internal source present.
- [`GRWTSK.NumberTheory.Moebius.CenteredLowGCDNonAliasingFejerResidualObstruction`](../../../../mathematics/NumberTheory/Moebius/CenteredLowGCDNonAliasingFejerResidualObstruction.lean/index.md) — import line 8; pinned internal source present.
- `Mathlib.Tactic` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [nonAliasingFejerSharpDivisibilityTail_proved](../../../../mathematics/NumberTheory/Moebius/CenteredLowGCDNonAliasingFejerSharpTailClosure.lean/declarations/nonaliasingfejersharpdivisibilitytail-proved--484dad632ef323dcc90d963d.md) | 34 | `result-track:484dad632ef323dcc90d963d3b3c4383ed9ca03e2c8d610dbbb279a34af96179` |
| 2 | `theorem` | [abs_nonAliasingFejer_cutoffCorrection_le_target](../../../../mathematics/NumberTheory/Moebius/CenteredLowGCDNonAliasingFejerSharpTailClosure.lean/declarations/abs-nonaliasingfejer-cutoffcorrection-le-target--f3ae4d33e781f3b5486f2c7c.md) | 56 | `result-track:f3ae4d33e781f3b5486f2c7cb2ec42edcc6ef5b82b37daeb764fb06466b8ec0b` |
| 3 | `theorem` | [centeredMass_sq_le_of_residual](../../../../mathematics/NumberTheory/Moebius/CenteredLowGCDNonAliasingFejerSharpTailClosure.lean/declarations/centeredmass-sq-le-of-residual--92a9cd85b27affd2666d9dd1.md) | 73 | `result-track:92a9cd85b27affd2666d9dd193230d316ac347ff807c27926c04f1acbc9c2436` |
| 4 | `theorem` | [abs_residual_le_of_centeredMass_sq](../../../../mathematics/NumberTheory/Moebius/CenteredLowGCDNonAliasingFejerSharpTailClosure.lean/declarations/abs-residual-le-of-centeredmass-sq--f14dca41721f9532acca55ad.md) | 94 | `result-track:f14dca41721f9532acca55ad72d86d0f4de6a7923b966ac88dea8f2ad5e8f9e4` |
| 5 | `theorem` | [abs_nonAliasingFejer_positiveShift_sqrt_le_of_centeredMass_sq_closedTail](../../../../mathematics/NumberTheory/Moebius/CenteredLowGCDNonAliasingFejerSharpTailClosure.lean/declarations/abs-nonaliasingfejer-positiveshift-sqrt-le-of-centeredmass-sq-closedtail--69f4c27825b79f3172ff63a7.md) | 116 | `result-track:69f4c27825b79f3172ff63a7348f4b97b4f5fcfcec956e37ca088736a40cfb44` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
