# Verification target: GRWTSK.Algebra.UniversalAlgebra.IndicatorFunction.Variant62e0c560202f19ce53bd8241dc5fd099b0e86969c696f5fbd48c0dda4b8f63a7

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "471cb9e5d6f691eb635d788a7664db93c98a0ae2",
  "lexical_observation_count": 9,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/UniversalAlgebra/IndicatorFunction/Variant62e0c560202f19ce53bd8241dc5fd099b0e86969c696f5fbd48c0dda4b8f63a7.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/UniversalAlgebra/IndicatorFunction/Variant62e0c560202f19ce53bd8241dc5fd099b0e86969c696f5fbd48c0dda4b8f63a7.lean/index.md) · [Full source](../../../../../mathematics/Algebra/UniversalAlgebra/IndicatorFunction/Variant62e0c560202f19ce53bd8241dc5fd099b0e86969c696f5fbd48c0dda4b8f63a7.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `471cb9e5d6f691eb635d788a7664db93c98a0ae2`.

Source path: `GRWTSK/Algebra/UniversalAlgebra/IndicatorFunction/Variant62e0c560202f19ce53bd8241dc5fd099b0e86969c696f5fbd48c0dda4b8f63a7.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/UniversalAlgebra/IndicatorFunction/Variant62e0c560202f19ce53bd8241dc5fd099b0e86969c696f5fbd48c0dda4b8f63a7.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Order.Group.Indicator` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Order.Pi` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Normed.Group.Basic` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `lemma` | [enorm_indicator_eq_indicator_enorm](../../../../../mathematics/Algebra/UniversalAlgebra/IndicatorFunction/Variant62e0c560202f19ce53bd8241dc5fd099b0e86969c696f5fbd48c0dda4b8f63a7.lean/declarations/enorm-indicator-eq-indicator-enorm--cde6f91c620e6149c0ca7c0a.md) | 33 | `result-track:cde6f91c620e6149c0ca7c0a9d53104149ad5b1325b4e8bc4ac1b60884ab5d5a` |
| 2 | `theorem` | [enorm_indicator_le_of_subset](../../../../../mathematics/Algebra/UniversalAlgebra/IndicatorFunction/Variant62e0c560202f19ce53bd8241dc5fd099b0e86969c696f5fbd48c0dda4b8f63a7.lean/declarations/enorm-indicator-le-of-subset--ca62804d29ee13c09824ab47.md) | 37 | `result-track:ca62804d29ee13c09824ab476d7bdb776bb4c8b0f34f2e44ad629aec0d436e1b` |
| 3 | `theorem` | [indicator_enorm_le_enorm_self](../../../../../mathematics/Algebra/UniversalAlgebra/IndicatorFunction/Variant62e0c560202f19ce53bd8241dc5fd099b0e86969c696f5fbd48c0dda4b8f63a7.lean/declarations/indicator-enorm-le-enorm-self--901aa0161ffbd21114de3b54.md) | 42 | `result-track:901aa0161ffbd21114de3b54f84c68d1d6cbe077c499545117db9c297067c02f` |
| 4 | `theorem` | [enorm_indicator_le_enorm_self](../../../../../mathematics/Algebra/UniversalAlgebra/IndicatorFunction/Variant62e0c560202f19ce53bd8241dc5fd099b0e86969c696f5fbd48c0dda4b8f63a7.lean/declarations/enorm-indicator-le-enorm-self--31710463837406c4cf98f04b.md) | 45 | `result-track:31710463837406c4cf98f04bc126afbe335ff9293c2d8b6301c17b4001e8e687` |
| 5 | `theorem` | [norm_indicator_eq_indicator_norm](../../../../../mathematics/Algebra/UniversalAlgebra/IndicatorFunction/Variant62e0c560202f19ce53bd8241dc5fd099b0e86969c696f5fbd48c0dda4b8f63a7.lean/declarations/norm-indicator-eq-indicator-norm--e8f24dbd69e021eedbb1d905.md) | 55 | `result-track:e8f24dbd69e021eedbb1d9051d0863921a22f3108acd6822b235e5180f5ec045` |
| 6 | `theorem` | [nnnorm_indicator_eq_indicator_nnnorm](../../../../../mathematics/Algebra/UniversalAlgebra/IndicatorFunction/Variant62e0c560202f19ce53bd8241dc5fd099b0e86969c696f5fbd48c0dda4b8f63a7.lean/declarations/nnnorm-indicator-eq-indicator-nnnorm--6a3625f10516fbec50e02979.md) | 58 | `result-track:6a3625f10516fbec50e029797c9927ae59337da2638619fa01740d3ace7c8e0c` |
| 7 | `theorem` | [norm_indicator_le_of_subset](../../../../../mathematics/Algebra/UniversalAlgebra/IndicatorFunction/Variant62e0c560202f19ce53bd8241dc5fd099b0e86969c696f5fbd48c0dda4b8f63a7.lean/declarations/norm-indicator-le-of-subset--6405afccd1b5e941ae07d41b.md) | 62 | `result-track:6405afccd1b5e941ae07d41b1b93396106a58d4dcb8c9eb5a0934468d919866b` |
| 8 | `theorem` | [indicator_norm_le_norm_self](../../../../../mathematics/Algebra/UniversalAlgebra/IndicatorFunction/Variant62e0c560202f19ce53bd8241dc5fd099b0e86969c696f5fbd48c0dda4b8f63a7.lean/declarations/indicator-norm-le-norm-self--7b21a99abe214fb469e8b774.md) | 67 | `result-track:7b21a99abe214fb469e8b77463a518e743c250bfc813ac1371e6c2f3745c247b` |
| 9 | `theorem` | [norm_indicator_le_norm_self](../../../../../mathematics/Algebra/UniversalAlgebra/IndicatorFunction/Variant62e0c560202f19ce53bd8241dc5fd099b0e86969c696f5fbd48c0dda4b8f63a7.lean/declarations/norm-indicator-le-norm-self--9103a6aa2fdb1d3a09e30fa4.md) | 70 | `result-track:9103a6aa2fdb1d3a09e30fa4a12092cbc6fa4fbc67ac108ca519d89bf053e41c` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
