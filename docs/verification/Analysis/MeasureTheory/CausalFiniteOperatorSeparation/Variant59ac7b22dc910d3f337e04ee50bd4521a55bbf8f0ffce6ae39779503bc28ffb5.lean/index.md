# Verification target: GRWTSK.Analysis.MeasureTheory.CausalFiniteOperatorSeparation.Variant59ac7b22dc910d3f337e04ee50bd4521a55bbf8f0ffce6ae39779503bc28ffb5

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "f7fdd9638aba7e0a551c1ae213b09466e5ab6f93",
  "lexical_observation_count": 9,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/MeasureTheory/CausalFiniteOperatorSeparation/Variant59ac7b22dc910d3f337e04ee50bd4521a55bbf8f0ffce6ae39779503bc28ffb5.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/MeasureTheory/CausalFiniteOperatorSeparation/Variant59ac7b22dc910d3f337e04ee50bd4521a55bbf8f0ffce6ae39779503bc28ffb5.lean/index.md) · [Full source](../../../../../mathematics/Analysis/MeasureTheory/CausalFiniteOperatorSeparation/Variant59ac7b22dc910d3f337e04ee50bd4521a55bbf8f0ffce6ae39779503bc28ffb5.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `f7fdd9638aba7e0a551c1ae213b09466e5ab6f93`.

Source path: `GRWTSK/Analysis/MeasureTheory/CausalFiniteOperatorSeparation/Variant59ac7b22dc910d3f337e04ee50bd4521a55bbf8f0ffce6ae39779503bc28ffb5.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/MeasureTheory/CausalFiniteOperatorSeparation/Variant59ac7b22dc910d3f337e04ee50bd4521a55bbf8f0ffce6ae39779503bc28ffb5.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.Algebra.LinearAlgebra.LinearMap.FiniteMixingObstruction`](../../../../../mathematics/Algebra/LinearAlgebra/LinearMap/FiniteMixingObstruction__SourceOccurrence962c388bb394d70603721d67.lean/index.md) — import line 4; pinned internal source present.
- [`GRWTSK.Analysis.InnerProductSpace.CausalContactHilbertSeparation`](../../../../../mathematics/Analysis/InnerProductSpace/CausalContactHilbertSeparation.lean/index.md) — import line 5; pinned internal source present.
- [`GRWTSK.Analysis.InnerProductSpace.CompactSourceGramPositiveDefinite`](../../../../../mathematics/Analysis/InnerProductSpace/CompactSourceGramPositiveDefinite.lean/index.md) — import line 6; pinned internal source present.
- `Mathlib.MeasureTheory.Function.LpSeminorm.Indicator` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Measure.OpenPos` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [window_response_memLp](../../../../../mathematics/Analysis/MeasureTheory/CausalFiniteOperatorSeparation/Variant59ac7b22dc910d3f337e04ee50bd4521a55bbf8f0ffce6ae39779503bc28ffb5.lean/declarations/window-response-memlp--b9a770e4b8f02abbd7c6938a.md) | 46 | `result-track:b9a770e4b8f02abbd7c6938ab8224e7c3719d8c645d103cac351de088a8c58e9` |
| 2 | `def` | [originalWindowL2](../../../../../mathematics/Analysis/MeasureTheory/CausalFiniteOperatorSeparation/Variant59ac7b22dc910d3f337e04ee50bd4521a55bbf8f0ffce6ae39779503bc28ffb5.lean/declarations/originalwindowl2--86e1b3299706587ce9ed46d1.md) | 55 | `declaration-track:86e1b3299706587ce9ed46d1e3eaa3c677b01476279e5538247f7f39119d6cff` |
| 3 | `theorem` | [original_window_L2_contact_zero](../../../../../mathematics/Analysis/MeasureTheory/CausalFiniteOperatorSeparation/Variant59ac7b22dc910d3f337e04ee50bd4521a55bbf8f0ffce6ae39779503bc28ffb5.lean/declarations/original-window-l2-contact-zero--37ee815c3864fd1d434a3928.md) | 58 | `result-track:37ee815c3864fd1d434a3928fa679f21d17d1dbfd602ca5218f25d0a5dc781e2` |
| 4 | `theorem` | [finite_source_L2_combination_ae](../../../../../mathematics/Analysis/MeasureTheory/CausalFiniteOperatorSeparation/Variant59ac7b22dc910d3f337e04ee50bd4521a55bbf8f0ffce6ae39779503bc28ffb5.lean/declarations/finite-source-l2-combination-ae--d4b91520dcdeab63a9179346.md) | 66 | `result-track:d4b91520dcdeab63a9179346ed371e2b8e2b8956fc07bd2516bfdb02660cb42b` |
| 5 | `theorem` | [distinct_source_L2_linearIndependent](../../../../../mathematics/Analysis/MeasureTheory/CausalFiniteOperatorSeparation/Variant59ac7b22dc910d3f337e04ee50bd4521a55bbf8f0ffce6ae39779503bc28ffb5.lean/declarations/distinct-source-l2-linearindependent--9c1c95ca9cdd79bbe8c3f175.md) | 90 | `result-track:9c1c95ca9cdd79bbe8c3f1757cb5ff584c72d0458df65e8171b70f155b5f4b89` |
| 6 | `theorem` | [finite_contact_functions_no_linear_mix](../../../../../mathematics/Analysis/MeasureTheory/CausalFiniteOperatorSeparation/Variant59ac7b22dc910d3f337e04ee50bd4521a55bbf8f0ffce6ae39779503bc28ffb5.lean/declarations/finite-contact-functions-no-linear-mix--5311cd87a0f402b4e80896c2.md) | 115 | `result-track:5311cd87a0f402b4e80896c2011b5c72ab07e36f9042a11b02668087a819c482` |
| 7 | `theorem` | [finite_contact_L2_no_linear_mix](../../../../../mathematics/Analysis/MeasureTheory/CausalFiniteOperatorSeparation/Variant59ac7b22dc910d3f337e04ee50bd4521a55bbf8f0ffce6ae39779503bc28ffb5.lean/declarations/finite-contact-l2-no-linear-mix--0d43cf85ea774cd4785d0577.md) | 126 | `result-track:0d43cf85ea774cd4785d05773f491d7037e7f3d922d884b4bb9243e41e0dd8e6` |
| 8 | `theorem` | [original_inventory_L2_no_linear_mix](../../../../../mathematics/Analysis/MeasureTheory/CausalFiniteOperatorSeparation/Variant59ac7b22dc910d3f337e04ee50bd4521a55bbf8f0ffce6ae39779503bc28ffb5.lean/declarations/original-inventory-l2-no-linear-mix--3d7cf7fb8577f18efa1814e5.md) | 139 | `result-track:3d7cf7fb8577f18efa1814e553ad94a221f81e5bbf5a9f7e54eecbca7728a5ce` |
| 9 | `theorem` | [prescribed_horizon_L2_linear_mix_obstruction](../../../../../mathematics/Analysis/MeasureTheory/CausalFiniteOperatorSeparation/Variant59ac7b22dc910d3f337e04ee50bd4521a55bbf8f0ffce6ae39779503bc28ffb5.lean/declarations/prescribed-horizon-l2-linear-mix-obstruction--1dac5167d7002523bad3566d.md) | 153 | `result-track:1dac5167d7002523bad3566df72b943842bca90231cbb2fa25e39272010c8651` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
