# Verification target: GRWTSK.Algebra.RankAndCardinality.Variant21b6edc888f89d5251a3d87e569f18ab2397f4270835606c5178a24548f539e5

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "dc43ed725c1a1abd798d3b782f9cd4e9c2110e82",
  "lexical_observation_count": 4,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/RankAndCardinality/Variant21b6edc888f89d5251a3d87e569f18ab2397f4270835606c5178a24548f539e5.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/RankAndCardinality/Variant21b6edc888f89d5251a3d87e569f18ab2397f4270835606c5178a24548f539e5.lean/index.md) · [Full source](../../../../mathematics/Algebra/RankAndCardinality/Variant21b6edc888f89d5251a3d87e569f18ab2397f4270835606c5178a24548f539e5.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `dc43ed725c1a1abd798d3b782f9cd4e9c2110e82`.

Source path: `GRWTSK/Algebra/RankAndCardinality/Variant21b6edc888f89d5251a3d87e569f18ab2397f4270835606c5178a24548f539e5.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/RankAndCardinality/Variant21b6edc888f89d5251a3d87e569f18ab2397f4270835606c5178a24548f539e5.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.FieldTheory.IntermediateField.Adjoin.Basic` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.FieldTheory.MvRatFunc.Rank` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Algebraic.Cardinality` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.AlgebraicIndependent.Adjoin` — import line 14; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.AlgebraicIndependent.Transcendental` — import line 15; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.AlgebraicIndependent.TranscendenceBasis` — import line 16; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [IsTranscendenceBasis.lift_cardinalMk_eq_max_lift](../../../../mathematics/Algebra/RankAndCardinality/Variant21b6edc888f89d5251a3d87e569f18ab2397f4270835606c5178a24548f539e5.lean/declarations/istranscendencebasis-lift-cardinalmk-eq-max-lift--fcb3a314823e515c56403182.md) | 49 | `result-track:fcb3a314823e515c56403182e8c43cf697fdd595c4240d7393fd5bb83396f185` |
| 2 | `theorem` | [IsTranscendenceBasis.lift_rank_eq_max_lift](../../../../mathematics/Algebra/RankAndCardinality/Variant21b6edc888f89d5251a3d87e569f18ab2397f4270835606c5178a24548f539e5.lean/declarations/istranscendencebasis-lift-rank-eq-max-lift--0902dcbed5e5fa78293e2069.md) | 60 | `result-track:0902dcbed5e5fa78293e20695f79cfa3b8d3250f94f87c3ca3bd369568af1ea6` |
| 3 | `theorem` | [Algebra.Transcendental.rank_eq_cardinalMk](../../../../mathematics/Algebra/RankAndCardinality/Variant21b6edc888f89d5251a3d87e569f18ab2397f4270835606c5178a24548f539e5.lean/declarations/algebra-transcendental-rank-eq-cardinalmk--eb6f831e0ddeb78801b96523.md) | 72 | `result-track:eb6f831e0ddeb78801b9652366e7bd72c9cb353a7ad9ccc59f3e70726bafb734` |
| 4 | `theorem` | [IntermediateField.rank_sup_le](../../../../mathematics/Algebra/RankAndCardinality/Variant21b6edc888f89d5251a3d87e569f18ab2397f4270835606c5178a24548f539e5.lean/declarations/intermediatefield-rank-sup-le--12481f6d1c51eee46a35c987.md) | 79 | `result-track:12481f6d1c51eee46a35c987428b71ce5e06b999ec6a6ebc55b6c751897c6f27` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
