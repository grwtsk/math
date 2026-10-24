# Verification target: GRWTSK.NumberTheory.Zeta.Riemann.Checks.PinnedWienerSmoothIntervalBracketsControls

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "c653afb1aa5aef9a47a923f073cd8c65f882081c",
  "lexical_observation_count": 5,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Zeta/Riemann/Checks/PinnedWienerSmoothIntervalBracketsControls.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/PinnedWienerSmoothIntervalBracketsControls.lean/index.md) · [Full source](../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/PinnedWienerSmoothIntervalBracketsControls.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `c653afb1aa5aef9a47a923f073cd8c65f882081c`.

Source path: `GRWTSK/NumberTheory/Zeta/Riemann/Checks/PinnedWienerSmoothIntervalBracketsControls.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Zeta/Riemann/Checks/PinnedWienerSmoothIntervalBracketsControls.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.NumberTheory.Zeta.Riemann.PinnedWienerSmoothIntervalBrackets`](../../../../../../mathematics/NumberTheory/Zeta/Riemann/PinnedWienerSmoothIntervalBrackets.lean/index.md) — import line 4; pinned internal source present.
- `Mathlib.Tactic` — import line 5; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [half_to_one_has_smooth_brackets](../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/PinnedWienerSmoothIntervalBracketsControls.lean/declarations/half-to-one-has-smooth-brackets--0e28066adc110db57a1ad9fd.md) | 18 | `result-track:0e28066adc110db57a1ad9fd6b85a9c29fc957a0ebe77f00089fee2a1eaf3360` |
| 2 | `theorem` | [positiveFiniteWeightedSum_sandwich](../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/PinnedWienerSmoothIntervalBracketsControls.lean/declarations/positivefiniteweightedsum-sandwich--e555131cb19dd1c220b0b492.md) | 29 | `result-track:e555131cb19dd1c220b0b4920d19071c87862ea9ea9b0e4a691b9960221d0f5c` |
| 3 | `theorem` | [concrete_smooth_brackets_give_finite_sum_bounds](../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/PinnedWienerSmoothIntervalBracketsControls.lean/declarations/concrete-smooth-brackets-give-finite-sum-bounds--89c8e63e0dd968629f0645be.md) | 62 | `result-track:89c8e63e0dd968629f0645be1b818de99a5c3c58bcbbc680d6addee3d4071286` |
| 4 | `def` | [remainingSmoothWienerObligations](../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/PinnedWienerSmoothIntervalBracketsControls.lean/declarations/remainingsmoothwienerobligations--f0627590f52b36096743b934.md) | 96 | `declaration-track:f0627590f52b36096743b9340787f4a40c073ec73935f943616579511fdc48af` |
| 5 | `def` | [prohibitedPromotions](../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/PinnedWienerSmoothIntervalBracketsControls.lean/declarations/prohibitedpromotions--0da21abf19736347cc1f1a1d.md) | 104 | `declaration-track:0da21abf19736347cc1f1a1da27326052509c9793bd9f5fc867a0f068b666f14` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
