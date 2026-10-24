# Verification target: GRWTSK.NumberTheory.Chebyshev.TentLeftDecay

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "199e8ec0815fdcc435a005b0c69bad3836909245",
  "lexical_observation_count": 7,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Chebyshev/TentLeftDecay.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/NumberTheory/Chebyshev/TentLeftDecay.lean/index.md) · [Full source](../../../../mathematics/NumberTheory/Chebyshev/TentLeftDecay.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `199e8ec0815fdcc435a005b0c69bad3836909245`.

Source path: `GRWTSK/NumberTheory/Chebyshev/TentLeftDecay.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Chebyshev/TentLeftDecay.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.NumberTheory.Zeta.Riemann.LeftLogDerivative`](../../../../mathematics/NumberTheory/Zeta/Riemann/LeftLogDerivative.lean/index.md) — import line 4; pinned internal source present.
- [`GRWTSK.NumberTheory.Chebyshev.TentEdgeBounds`](../../../../mathematics/NumberTheory/Chebyshev/TentEdgeBounds.lean/index.md) — import line 5; pinned internal source present.
- `Mathlib.Analysis.SpecificLimits.Normed` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.LinearCombination` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [affine_exp_decay](../../../../mathematics/NumberTheory/Chebyshev/TentLeftDecay.lean/declarations/affine-exp-decay--2c4b1a8576524637706209ea.md) | 38 | `result-track:2c4b1a8576524637706209ead2f4a3ee414becf8027976f8de65cfc458e09a28` |
| 2 | `theorem` | [exists_left_vertical_budget](../../../../mathematics/NumberTheory/Chebyshev/TentLeftDecay.lean/declarations/exists-left-vertical-budget--ee2badfc6eff78137ed0004b.md) | 59 | `result-track:ee2badfc6eff78137ed0004b97861f8a57cd7a72f1f2618a08a06e8778f7f8bd` |
| 3 | `theorem` | [left_vertical_tendsto_zero](../../../../mathematics/NumberTheory/Chebyshev/TentLeftDecay.lean/declarations/left-vertical-tendsto-zero--2772ea61058479d09f7b806d.md) | 74 | `result-track:2772ea61058479d09f7b806d85c029e3a4ab9f7f43bf851ca9992ab184766184` |
| 4 | `theorem` | [normalized_left_tendsto_zero](../../../../mathematics/NumberTheory/Chebyshev/TentLeftDecay.lean/declarations/normalized-left-tendsto-zero--63922ce2a67ae27673507f8e.md) | 86 | `result-track:63922ce2a67ae27673507f8e76b4273bbd60f62fd507a9a91b664068a676046d` |
| 5 | `theorem` | [exists_left_cutoff](../../../../mathematics/NumberTheory/Chebyshev/TentLeftDecay.lean/declarations/exists-left-cutoff--9d26585455c36cd13f844c7d.md) | 94 | `result-track:9d26585455c36cd13f844c7d706c0b447f58190e3dd8a7722c98b44726f467f2` |
| 6 | `theorem` | [exists_left_schedule](../../../../mathematics/NumberTheory/Chebyshev/TentLeftDecay.lean/declarations/exists-left-schedule--5877a675003a4098f9b40421.md) | 107 | `result-track:5877a675003a4098f9b40421a5ae2857b2ba958afaf69a9b01601973b5de2ea7` |
| 7 | `theorem` | [horizontal_difference_tendsto_at_fixed_height](../../../../mathematics/NumberTheory/Chebyshev/TentLeftDecay.lean/declarations/horizontal-difference-tendsto-at-fixed-height--9148641cf6d6a9dde1bdf662.md) | 120 | `result-track:9148641cf6d6a9dde1bdf66208dd0475059e072f9ff68671bb3f836c4b7753dc` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
