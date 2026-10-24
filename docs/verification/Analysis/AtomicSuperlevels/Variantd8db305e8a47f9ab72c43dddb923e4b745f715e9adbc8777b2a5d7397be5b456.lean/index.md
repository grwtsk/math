# Verification target: GRWTSK.Analysis.AtomicSuperlevels.Variantd8db305e8a47f9ab72c43dddb923e4b745f715e9adbc8777b2a5d7397be5b456

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "8fb0cb9d12982b5769cf6322e5c513dc4d4b0a11",
  "lexical_observation_count": 9,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/AtomicSuperlevels/Variantd8db305e8a47f9ab72c43dddb923e4b745f715e9adbc8777b2a5d7397be5b456.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Analysis/AtomicSuperlevels/Variantd8db305e8a47f9ab72c43dddb923e4b745f715e9adbc8777b2a5d7397be5b456.lean/index.md) · [Full source](../../../../mathematics/Analysis/AtomicSuperlevels/Variantd8db305e8a47f9ab72c43dddb923e4b745f715e9adbc8777b2a5d7397be5b456.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `8fb0cb9d12982b5769cf6322e5c513dc4d4b0a11`.

Source path: `GRWTSK/Analysis/AtomicSuperlevels/Variantd8db305e8a47f9ab72c43dddb923e4b745f715e9adbc8777b2a5d7397be5b456.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/AtomicSuperlevels/Variantd8db305e8a47f9ab72c43dddb923e4b745f715e9adbc8777b2a5d7397be5b456.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.RiemannHypothesis.Conversation.WeightedLpReserve` — import line 1; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecialFunctions.Pow.Integral` — import line 2; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [atomicMeasure](../../../../mathematics/Analysis/AtomicSuperlevels/Variantd8db305e8a47f9ab72c43dddb923e4b745f715e9adbc8777b2a5d7397be5b456.lean/declarations/atomicmeasure--beda873d581d749d023beaef.md) | 27 | `declaration-track:beda873d581d749d023beaeff31165026cd6a7f629d669606a71c0bfd8493c28` |
| 2 | `def` | [superlevelMass](../../../../mathematics/Analysis/AtomicSuperlevels/Variantd8db305e8a47f9ab72c43dddb923e4b745f715e9adbc8777b2a5d7397be5b456.lean/declarations/superlevelmass--cb08d11c2b7f04eca18c1d0e.md) | 29 | `declaration-track:cb08d11c2b7f04eca18c1d0ea54c590c357d850b66b7a670c1ea6a67ec86cd16` |
| 3 | `theorem` | [atomic_lintegral](../../../../mathematics/Analysis/AtomicSuperlevels/Variantd8db305e8a47f9ab72c43dddb923e4b745f715e9adbc8777b2a5d7397be5b456.lean/declarations/atomic-lintegral--ac9ef1790de86bca3dbdd466.md) | 32 | `result-track:ac9ef1790de86bca3dbdd466d211470697cc448fbfc3bc9adf9b3d7f8ee75741` |
| 4 | `theorem` | [atomic_superlevel_measure](../../../../mathematics/Analysis/AtomicSuperlevels/Variantd8db305e8a47f9ab72c43dddb923e4b745f715e9adbc8777b2a5d7397be5b456.lean/declarations/atomic-superlevel-measure--cf5a6dca0985ecc6b21a5229.md) | 38 | `result-track:cf5a6dca0985ecc6b21a52290d65c2b2d269527a7513ff5684afbc5ead71f1db` |
| 5 | `theorem` | [weighted_layercake](../../../../mathematics/Analysis/AtomicSuperlevels/Variantd8db305e8a47f9ab72c43dddb923e4b745f715e9adbc8777b2a5d7397be5b456.lean/declarations/weighted-layercake--56d3288df7863f4b7f2690f9.md) | 49 | `result-track:56d3288df7863f4b7f2690f9501e44fc6c98a7862e18581b995036c12827c5ae` |
| 6 | `theorem` | [superlevel_above_one_zero](../../../../mathematics/Analysis/AtomicSuperlevels/Variantd8db305e8a47f9ab72c43dddb923e4b745f715e9adbc8777b2a5d7397be5b456.lean/declarations/superlevel-above-one-zero--17acac750105db3bb5d9ddb6.md) | 61 | `result-track:17acac750105db3bb5d9ddb6cee366aeb5d524cb52ff0bc8daa810b7f1550239` |
| 7 | `theorem` | [unit_superlevel_integral](../../../../mathematics/Analysis/AtomicSuperlevels/Variantd8db305e8a47f9ab72c43dddb923e4b745f715e9adbc8777b2a5d7397be5b456.lean/declarations/unit-superlevel-integral--a8da322dd2a5dcb926dddc0e.md) | 67 | `result-track:a8da322dd2a5dcb926dddc0e084270b198e0b73b61eb946c4a471eb4f2e26d09` |
| 8 | `theorem` | [unit_panel_moment](../../../../mathematics/Analysis/AtomicSuperlevels/Variantd8db305e8a47f9ab72c43dddb923e4b745f715e9adbc8777b2a5d7397be5b456.lean/declarations/unit-panel-moment--998e9175382f2776ea7548c5.md) | 82 | `result-track:998e9175382f2776ea7548c5b078fe966fa63c5d495bdf701038a35449066faf` |
| 9 | `theorem` | [scaled_panel_moment](../../../../mathematics/Analysis/AtomicSuperlevels/Variantd8db305e8a47f9ab72c43dddb923e4b745f715e9adbc8777b2a5d7397be5b456.lean/declarations/scaled-panel-moment--0147eca81c5357609d2a0a63.md) | 90 | `result-track:0147eca81c5357609d2a0a63f70643fe1575ac432e23f5c8fb7075b56386e209` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
