# Verification target: GRWTSK.NumberTheory.Moebius.CenteredLowGCDDivisorSqrtBound

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "0b9e1a9707dab2219bc11f5be76c01229dd6574f",
  "lexical_observation_count": 4,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Moebius/CenteredLowGCDDivisorSqrtBound.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/NumberTheory/Moebius/CenteredLowGCDDivisorSqrtBound.lean/index.md) · [Full source](../../../../mathematics/NumberTheory/Moebius/CenteredLowGCDDivisorSqrtBound.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `0b9e1a9707dab2219bc11f5be76c01229dd6574f`.

Source path: `GRWTSK/NumberTheory/Moebius/CenteredLowGCDDivisorSqrtBound.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Moebius/CenteredLowGCDDivisorSqrtBound.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.NumberTheory.Moebius.CenteredLowGCDCoefficients`](../../../../mathematics/NumberTheory/Moebius/CenteredLowGCDCoefficients.lean/index.md) — import line 7; pinned internal source present.
- `Mathlib.Analysis.Real.Sqrt` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.NumberTheory.ArithmeticFunction.Misc` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic` — import line 10; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [divisorSqrtCode](../../../../mathematics/NumberTheory/Moebius/CenteredLowGCDDivisorSqrtBound.lean/declarations/divisorsqrtcode--2e2f478d0b6068802f390b24.md) | 30 | `declaration-track:2e2f478d0b6068802f390b24572442821cf71b767db75693d7082ae8f6c4b66f` |
| 2 | `theorem` | [divisorSqrtCode_injective](../../../../mathematics/NumberTheory/Moebius/CenteredLowGCDDivisorSqrtBound.lean/declarations/divisorsqrtcode-injective--4618a02ee1f91717a3ee8586.md) | 48 | `result-track:4618a02ee1f91717a3ee8586d4b6739247193792e7c5d688cc42064494be2c90` |
| 3 | `theorem` | [card_divisors_le_two_mul_sqrt_succ](../../../../mathematics/NumberTheory/Moebius/CenteredLowGCDDivisorSqrtBound.lean/declarations/card-divisors-le-two-mul-sqrt-succ--00f18fd6b2db88a21732a89a.md) | 84 | `result-track:00f18fd6b2db88a21732a89aed1848698d9ebd84f76adc80fe167a7373f88e13` |
| 4 | `theorem` | [card_divisors_cast_le_six_mul_sqrt_scale](../../../../mathematics/NumberTheory/Moebius/CenteredLowGCDDivisorSqrtBound.lean/declarations/card-divisors-cast-le-six-mul-sqrt-scale--076a06d6f05683ba9f5007e1.md) | 96 | `result-track:076a06d6f05683ba9f5007e12c0c4afefed2bf4f24a133f193b8fe01d4a63175` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
