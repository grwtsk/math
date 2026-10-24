# Verification target: GRWTSK.Analysis.SpecialFunctions.SourceActualSharpZeroTail.Variant1aa0d28c3e567a5f50df5ae5dd4148f5cf754ec94dcca4bd3c0f6f9ce82741d3

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "c04bacfaaf651017a41122f3e7c9f22a8d608b57",
  "lexical_observation_count": 12,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/SpecialFunctions/SourceActualSharpZeroTail/Variant1aa0d28c3e567a5f50df5ae5dd4148f5cf754ec94dcca4bd3c0f6f9ce82741d3.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/SpecialFunctions/SourceActualSharpZeroTail/Variant1aa0d28c3e567a5f50df5ae5dd4148f5cf754ec94dcca4bd3c0f6f9ce82741d3.lean/index.md) · [Full source](../../../../../mathematics/Analysis/SpecialFunctions/SourceActualSharpZeroTail/Variant1aa0d28c3e567a5f50df5ae5dd4148f5cf754ec94dcca4bd3c0f6f9ce82741d3.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `c04bacfaaf651017a41122f3e7c9f22a8d608b57`.

Source path: `GRWTSK/Analysis/SpecialFunctions/SourceActualSharpZeroTail/Variant1aa0d28c3e567a5f50df5ae5dd4148f5cf754ec94dcca4bd3c0f6f9ce82741d3.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/SpecialFunctions/SourceActualSharpZeroTail/Variant1aa0d28c3e567a5f50df5ae5dd4148f5cf754ec94dcca4bd3c0f6f9ce82741d3.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `SourceActualZeroTailBudget` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [pole_norm_joint_strip_le](../../../../../mathematics/Analysis/SpecialFunctions/SourceActualSharpZeroTail/Variant1aa0d28c3e567a5f50df5ae5dd4148f5cf754ec94dcca4bd3c0f6f9ce82741d3.lean/declarations/pole-norm-joint-strip-le--1ffe6ed42fee3874e61d373e.md) | 27 | `result-track:1ffe6ed42fee3874e61d373e0fe5f782e298e073edf18309c1d582846a383ece` |
| 2 | `theorem` | [endpoint_minus_norm_le](../../../../../mathematics/Analysis/SpecialFunctions/SourceActualSharpZeroTail/Variant1aa0d28c3e567a5f50df5ae5dd4148f5cf754ec94dcca4bd3c0f6f9ce82741d3.lean/declarations/endpoint-minus-norm-le--896be1a554b7378f00d76ed8.md) | 49 | `result-track:896be1a554b7378f00d76ed8f2d534fc68fad1596f6e8e2aad54da723bb3125b` |
| 3 | `theorem` | [endpoint_plus_norm_le](../../../../../mathematics/Analysis/SpecialFunctions/SourceActualSharpZeroTail/Variant1aa0d28c3e567a5f50df5ae5dd4148f5cf754ec94dcca4bd3c0f6f9ce82741d3.lean/declarations/endpoint-plus-norm-le--86650078b2e44e831b08a189.md) | 60 | `result-track:86650078b2e44e831b08a1891ccf29372dd35c2405c1f199ba4783c038a58382` |
| 4 | `theorem` | [actual_bump_complete_endpoint_norm_le](../../../../../mathematics/Analysis/SpecialFunctions/SourceActualSharpZeroTail/Variant1aa0d28c3e567a5f50df5ae5dd4148f5cf754ec94dcca4bd3c0f6f9ce82741d3.lean/declarations/actual-bump-complete-endpoint-norm-le--b81390857afc068fbca29a18.md) | 72 | `result-track:b81390857afc068fbca29a181c3a12064e9b8c5731a48c15a802647a9c7b0a1a` |
| 5 | `def` | [endpointScale](../../../../../mathematics/Analysis/SpecialFunctions/SourceActualSharpZeroTail/Variant1aa0d28c3e567a5f50df5ae5dd4148f5cf754ec94dcca4bd3c0f6f9ce82741d3.lean/declarations/endpointscale--0c3f7188f3db08e1ce1df933.md) | 97 | `declaration-track:0c3f7188f3db08e1ce1df93355eeac11e0c9d0f625d86973ac4daec2cdefdb09` |
| 6 | `theorem` | [endpointScale_pos](../../../../../mathematics/Analysis/SpecialFunctions/SourceActualSharpZeroTail/Variant1aa0d28c3e567a5f50df5ae5dd4148f5cf754ec94dcca4bd3c0f6f9ce82741d3.lean/declarations/endpointscale-pos--a8d784f4867cc510bebecff2.md) | 100 | `result-track:a8d784f4867cc510bebecff22676aa06f0b2f8d260ac54bb3b323c1afd695bcb` |
| 7 | `theorem` | [endpointScale_antitone](../../../../../mathematics/Analysis/SpecialFunctions/SourceActualSharpZeroTail/Variant1aa0d28c3e567a5f50df5ae5dd4148f5cf754ec94dcca4bd3c0f6f9ce82741d3.lean/declarations/endpointscale-antitone--15aaffea1fac7f7d375f7c2f.md) | 104 | `result-track:15aaffea1fac7f7d375f7c2f88666c304cc22549cbf1bd0529e58e95f7ed583f` |
| 8 | `theorem` | [actual_bump_endpoint_scale_norm_le](../../../../../mathematics/Analysis/SpecialFunctions/SourceActualSharpZeroTail/Variant1aa0d28c3e567a5f50df5ae5dd4148f5cf754ec94dcca4bd3c0f6f9ce82741d3.lean/declarations/actual-bump-endpoint-scale-norm-le--a50c1abc396defd9f5b6044f.md) | 117 | `result-track:a50c1abc396defd9f5b6044fc6352111c518539c57c098e6f9586e6726800aa0` |
| 9 | `theorem` | [exp_pair_le_of_abs_le](../../../../../mathematics/Analysis/SpecialFunctions/SourceActualSharpZeroTail/Variant1aa0d28c3e567a5f50df5ae5dd4148f5cf754ec94dcca4bd3c0f6f9ce82741d3.lean/declarations/exp-pair-le-of-abs-le--1e3e3ad535605b3770d4a760.md) | 135 | `result-track:1e3e3ad535605b3770d4a7608fc817d8cbb90fb458a6556b219457346bb3d113` |
| 10 | `theorem` | [endpointScale_three_sixty_four_lt](../../../../../mathematics/Analysis/SpecialFunctions/SourceActualSharpZeroTail/Variant1aa0d28c3e567a5f50df5ae5dd4148f5cf754ec94dcca4bd3c0f6f9ce82741d3.lean/declarations/endpointscale-three-sixty-four-lt--0c99b008a1a2ba5cb334680a.md) | 141 | `result-track:0c99b008a1a2ba5cb334680a824a90bcb6287072b4b0ab9fa569227fc99bf2e3` |
| 11 | `theorem` | [actual_bump_strip_high_norm_le](../../../../../mathematics/Analysis/SpecialFunctions/SourceActualSharpZeroTail/Variant1aa0d28c3e567a5f50df5ae5dd4148f5cf754ec94dcca4bd3c0f6f9ce82741d3.lean/declarations/actual-bump-strip-high-norm-le--64502f1143766c3bb52341fe.md) | 145 | `result-track:64502f1143766c3bb52341fed2541653aab821213c357a5345daf25229cc260c` |
| 12 | `theorem` | [exp_neg_large_le](../../../../../mathematics/Analysis/SpecialFunctions/SourceActualSharpZeroTail/Variant1aa0d28c3e567a5f50df5ae5dd4148f5cf754ec94dcca4bd3c0f6f9ce82741d3.lean/declarations/exp-neg-large-le--fa4e43015b50fb809986073c.md) | 174 | `result-track:fa4e43015b50fb809986073cf28b5a93e06313757209c9a49556cf1d9cb21691` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
