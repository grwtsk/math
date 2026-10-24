# Verification target: GRWTSK.Analysis.SpecialFunctions.FiveModeGammaConstant.Variant15b2402e6a4a13d62261d34b32350bb25462352d524b1b6ea9ba5766aa76a1de

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "a00864719c29c9ca3fc171f96c3c2d120ec3a716",
  "lexical_observation_count": 3,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/SpecialFunctions/FiveModeGammaConstant/Variant15b2402e6a4a13d62261d34b32350bb25462352d524b1b6ea9ba5766aa76a1de.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/SpecialFunctions/FiveModeGammaConstant/Variant15b2402e6a4a13d62261d34b32350bb25462352d524b1b6ea9ba5766aa76a1de.lean/index.md) · [Full source](../../../../../mathematics/Analysis/SpecialFunctions/FiveModeGammaConstant/Variant15b2402e6a4a13d62261d34b32350bb25462352d524b1b6ea9ba5766aa76a1de.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `a00864719c29c9ca3fc171f96c3c2d120ec3a716`.

Source path: `GRWTSK/Analysis/SpecialFunctions/FiveModeGammaConstant/Variant15b2402e6a4a13d62261d34b32350bb25462352d524b1b6ea9ba5766aa76a1de.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/SpecialFunctions/FiveModeGammaConstant/Variant15b2402e6a4a13d62261d34b32350bb25462352d524b1b6ea9ba5766aa76a1de.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.Analysis.DigammaSeries` — import line 6; external provider; requires a separately pinned dependency.
- `FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.BridgeAdmissibility` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Real.Pi.Bounds` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Complex.ExponentialBounds` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic` — import line 10; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [quarter_digamma_le_one_sub_three](../../../../../mathematics/Analysis/SpecialFunctions/FiveModeGammaConstant/Variant15b2402e6a4a13d62261d34b32350bb25462352d524b1b6ea9ba5766aa76a1de.lean/declarations/quarter-digamma-le-one-sub-three--218cb93fc101f8459eafb0e9.md) | 32 | `result-track:218cb93fc101f8459eafb0e9d94cdf2568632e052e31e2e0b0af66185da846db` |
| 2 | `theorem` | [actual_archimedeanConstant_gt_four](../../../../../mathematics/Analysis/SpecialFunctions/FiveModeGammaConstant/Variant15b2402e6a4a13d62261d34b32350bb25462352d524b1b6ea9ba5766aa76a1de.lean/declarations/actual-archimedeanconstant-gt-four--9f8527623034e20df1018b2d.md) | 69 | `result-track:9f8527623034e20df1018b2dfd181eaf0d8bc3d1d4b122d0271f44ed4f67e93a` |
| 3 | `theorem` | [actual_gamma_constant_lt_neg_four](../../../../../mathematics/Analysis/SpecialFunctions/FiveModeGammaConstant/Variant15b2402e6a4a13d62261d34b32350bb25462352d524b1b6ea9ba5766aa76a1de.lean/declarations/actual-gamma-constant-lt-neg-four--637c75e0556e307c1e95ed25.md) | 80 | `result-track:637c75e0556e307c1e95ed251bf0d76d29e03ebe5de8ada721565fbc1ae23e18` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
