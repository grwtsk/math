# Verification target: GRWTSK.NumberTheory.Moebius.CenteredLowGCDNonAliasingFejerCoprimeTailSplit

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "02375a4004c82595b34946f3821e30f21d1a52d0",
  "lexical_observation_count": 5,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Moebius/CenteredLowGCDNonAliasingFejerCoprimeTailSplit.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/NumberTheory/Moebius/CenteredLowGCDNonAliasingFejerCoprimeTailSplit.lean/index.md) · [Full source](../../../../mathematics/NumberTheory/Moebius/CenteredLowGCDNonAliasingFejerCoprimeTailSplit.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `02375a4004c82595b34946f3821e30f21d1a52d0`.

Source path: `GRWTSK/NumberTheory/Moebius/CenteredLowGCDNonAliasingFejerCoprimeTailSplit.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Moebius/CenteredLowGCDNonAliasingFejerCoprimeTailSplit.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.NumberTheory.Moebius.CenteredLowGCDLargeMobiusTailEstimate`](../../../../mathematics/NumberTheory/Moebius/CenteredLowGCDLargeMobiusTailEstimate.lean/index.md) — import line 7; pinned internal source present.
- [`GRWTSK.NumberTheory.Moebius.CenteredLowGCDNonAliasingFejerDiagonal`](../../../../mathematics/NumberTheory/Moebius/CenteredLowGCDNonAliasingFejerDiagonal.lean/index.md) — import line 8; pinned internal source present.
- `Mathlib.Tactic` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [nonAliasingFejerSmallMobiusAndPositiveGCDResidual](../../../../mathematics/NumberTheory/Moebius/CenteredLowGCDNonAliasingFejerCoprimeTailSplit.lean/declarations/nonaliasingfejersmallmobiusandpositivegcdresidual--2b51af69bb694c810159da91.md) | 33 | `declaration-track:2b51af69bb694c810159da91703ab615287c735913beabd7129ad56074595b9c` |
| 2 | `theorem` | [nonAliasingFejerSignedLowGCDBilinear_eq_residual_add_high](../../../../mathematics/NumberTheory/Moebius/CenteredLowGCDNonAliasingFejerCoprimeTailSplit.lean/declarations/nonaliasingfejersignedlowgcdbilinear-eq-residual-add-high--1334d85299416e6f58df28d2.md) | 41 | `result-track:1334d85299416e6f58df28d2fd6c2892336f0e5c7b14a6d3dd2c5ed3072ada99` |
| 3 | `theorem` | [abs_nonAliasingFejer_highCoprimeMobiusSquare_le_target](../../../../mathematics/NumberTheory/Moebius/CenteredLowGCDNonAliasingFejerCoprimeTailSplit.lean/declarations/abs-nonaliasingfejer-highcoprimemobiussquare-le-target--8b0ff8466c200474432f1e24.md) | 55 | `result-track:8b0ff8466c200474432f1e24742ca3e774a200d042bdb3c73447912750375439` |
| 4 | `theorem` | [abs_nonAliasingFejerSignedLowGCDBilinear_le_of_residual](../../../../mathematics/NumberTheory/Moebius/CenteredLowGCDNonAliasingFejerCoprimeTailSplit.lean/declarations/abs-nonaliasingfejersignedlowgcdbilinear-le-of-residual--85e95bca0c7b9459cc306e85.md) | 71 | `result-track:85e95bca0c7b9459cc306e858b6c63792264f6d93c8faf3452d3a9944143ea9a` |
| 5 | `theorem` | [abs_nonAliasingFejer_positiveShift_sqrt_le_of_residual](../../../../mathematics/NumberTheory/Moebius/CenteredLowGCDNonAliasingFejerCoprimeTailSplit.lean/declarations/abs-nonaliasingfejer-positiveshift-sqrt-le-of-residual--4375f35462d6e09416eb1ccf.md) | 105 | `result-track:4375f35462d6e09416eb1ccf2e91282653c7ec3314b3895a44ada9e84d656681` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
