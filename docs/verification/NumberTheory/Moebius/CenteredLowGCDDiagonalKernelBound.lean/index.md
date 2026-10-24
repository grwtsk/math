# Verification target: GRWTSK.NumberTheory.Moebius.CenteredLowGCDDiagonalKernelBound

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "025afceebb333db5255c30755790652b3b18fa99",
  "lexical_observation_count": 4,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Moebius/CenteredLowGCDDiagonalKernelBound.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/NumberTheory/Moebius/CenteredLowGCDDiagonalKernelBound.lean/index.md) · [Full source](../../../../mathematics/NumberTheory/Moebius/CenteredLowGCDDiagonalKernelBound.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `025afceebb333db5255c30755790652b3b18fa99`.

Source path: `GRWTSK/NumberTheory/Moebius/CenteredLowGCDDiagonalKernelBound.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Moebius/CenteredLowGCDDiagonalKernelBound.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.NumberTheory.Moebius.CenteredLowGCDCoefficients`](../../../../mathematics/NumberTheory/Moebius/CenteredLowGCDCoefficients.lean/index.md) — import line 7; pinned internal source present.
- `Mathlib.NumberTheory.ArithmeticFunction.Misc` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [genuineLowGCDPairKernel_diagonal_eq_divisorPairSum](../../../../mathematics/NumberTheory/Moebius/CenteredLowGCDDiagonalKernelBound.lean/declarations/genuinelowgcdpairkernel-diagonal-eq-divisorpairsum--49b65f98e8d291a4fdf81a3b.md) | 27 | `result-track:49b65f98e8d291a4fdf81a3b6764a5a8af69f3864ef0dfcbc7996ee47d56caa8` |
| 2 | `theorem` | [abs_mobiusLogTerm_le_log_four_mul_scale](../../../../mathematics/NumberTheory/Moebius/CenteredLowGCDDiagonalKernelBound.lean/declarations/abs-mobiuslogterm-le-log-four-mul-scale--afcfd319542942c4734c60cc.md) | 76 | `result-track:afcfd319542942c4734c60cca9f692ab027c01f11d870e953ca9453a132b564e` |
| 3 | `theorem` | [abs_genuineLowGCDPairKernel_diagonal_le](../../../../mathematics/NumberTheory/Moebius/CenteredLowGCDDiagonalKernelBound.lean/declarations/abs-genuinelowgcdpairkernel-diagonal-le--a761b696d64324adbf37df59.md) | 108 | `result-track:a761b696d64324adbf37df59ef929928cbd3d75059bda703916bff43d455ace4` |
| 4 | `theorem` | [abs_centeredLowGCDPairKernel_diagonal_le](../../../../mathematics/NumberTheory/Moebius/CenteredLowGCDDiagonalKernelBound.lean/declarations/abs-centeredlowgcdpairkernel-diagonal-le--86f9e02b43bc310e223b4003.md) | 162 | `result-track:86f9e02b43bc310e223b4003d119ac41852eceb376a163304c6c4ff8780273a4` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
