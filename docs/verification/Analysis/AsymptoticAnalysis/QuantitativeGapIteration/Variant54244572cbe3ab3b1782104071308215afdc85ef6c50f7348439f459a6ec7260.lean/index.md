# Verification target: GRWTSK.Analysis.AsymptoticAnalysis.QuantitativeGapIteration.Variant54244572cbe3ab3b1782104071308215afdc85ef6c50f7348439f459a6ec7260

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "b2332825e2f3383484b8bc83285e9ae96ebb614e",
  "lexical_observation_count": 11,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/AsymptoticAnalysis/QuantitativeGapIteration/Variant54244572cbe3ab3b1782104071308215afdc85ef6c50f7348439f459a6ec7260.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/AsymptoticAnalysis/QuantitativeGapIteration/Variant54244572cbe3ab3b1782104071308215afdc85ef6c50f7348439f459a6ec7260.lean/index.md) · [Full source](../../../../../mathematics/Analysis/AsymptoticAnalysis/QuantitativeGapIteration/Variant54244572cbe3ab3b1782104071308215afdc85ef6c50f7348439f459a6ec7260.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `b2332825e2f3383484b8bc83285e9ae96ebb614e`.

Source path: `GRWTSK/Analysis/AsymptoticAnalysis/QuantitativeGapIteration/Variant54244572cbe3ab3b1782104071308215afdc85ef6c50f7348439f459a6ec7260.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/AsymptoticAnalysis/QuantitativeGapIteration/Variant54244572cbe3ab3b1782104071308215afdc85ef6c50f7348439f459a6ec7260.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.PositiveAtlas.QuantitativeGap` — import line 1; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Algebra.InfiniteSum.Order` — import line 2; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.FieldSimp` — import line 3; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Ring` — import line 4; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [lossProduct](../../../../../mathematics/Analysis/AsymptoticAnalysis/QuantitativeGapIteration/Variant54244572cbe3ab3b1782104071308215afdc85ef6c50f7348439f459a6ec7260.lean/declarations/lossproduct--da0aa6ce1b848205b43164dc.md) | 24 | `declaration-track:da0aa6ce1b848205b43164dc0c4a3091ea29c9459226dcf6d71b143f7cd72e24` |
| 2 | `theorem` | [lossProduct_zero](../../../../../mathematics/Analysis/AsymptoticAnalysis/QuantitativeGapIteration/Variant54244572cbe3ab3b1782104071308215afdc85ef6c50f7348439f459a6ec7260.lean/declarations/lossproduct-zero--48e6d7c4df07852e2f74e00b.md) | 27 | `result-track:48e6d7c4df07852e2f74e00bf749e8fe1a14a445519f1c5d220dbee77aef5452` |
| 3 | `theorem` | [lossProduct_succ](../../../../../mathematics/Analysis/AsymptoticAnalysis/QuantitativeGapIteration/Variant54244572cbe3ab3b1782104071308215afdc85ef6c50f7348439f459a6ec7260.lean/declarations/lossproduct-succ--f21acdb20ab019f22a28b69f.md) | 30 | `result-track:f21acdb20ab019f22a28b69fe619683d10e4f67597a63090a91990f2298e39db` |
| 4 | `theorem` | [lossProduct_pos](../../../../../mathematics/Analysis/AsymptoticAnalysis/QuantitativeGapIteration/Variant54244572cbe3ab3b1782104071308215afdc85ef6c50f7348439f459a6ec7260.lean/declarations/lossproduct-pos--e1caf21b066f44d8a41312c6.md) | 34 | `result-track:e1caf21b066f44d8a41312c633a507befb4c4f4417d254c7600c11e04899c6c7` |
| 5 | `def` | [refinementBudget](../../../../../mathematics/Analysis/AsymptoticAnalysis/QuantitativeGapIteration/Variant54244572cbe3ab3b1782104071308215afdc85ef6c50f7348439f459a6ec7260.lean/declarations/refinementbudget--6a851eb9ba8d3adaacdedd71.md) | 39 | `declaration-track:6a851eb9ba8d3adaacdedd71eb1d4fbcc49d64bafb57efe927fdb25ad2c255d3` |
| 6 | `theorem` | [refinementBudget_eq](../../../../../mathematics/Analysis/AsymptoticAnalysis/QuantitativeGapIteration/Variant54244572cbe3ab3b1782104071308215afdc85ef6c50f7348439f459a6ec7260.lean/declarations/refinementbudget-eq--3894ec5fad6235e8e37469ab.md) | 44 | `result-track:3894ec5fad6235e8e37469abdb0884157e39893379fe055dfe45bc0ed2647555` |
| 7 | `theorem` | [refinement_lower_bound](../../../../../mathematics/Analysis/AsymptoticAnalysis/QuantitativeGapIteration/Variant54244572cbe3ab3b1782104071308215afdc85ef6c50f7348439f459a6ec7260.lean/declarations/refinement-lower-bound--3d489823e4048291025e3831.md) | 57 | `result-track:3d489823e4048291025e383192af984a41ae30de2d4acc5f4bcd9c4135018fe1` |
| 8 | `theorem` | [refinement_iteration](../../../../../mathematics/Analysis/AsymptoticAnalysis/QuantitativeGapIteration/Variant54244572cbe3ab3b1782104071308215afdc85ef6c50f7348439f459a6ec7260.lean/declarations/refinement-iteration--9c8a235bea30e7ccef05887b.md) | 66 | `result-track:9c8a235bea30e7ccef05887b236ff05d24b33e1292e086b0c27c3f7e2edb3e40` |
| 9 | `theorem` | [uniform_of_prefix_budget](../../../../../mathematics/Analysis/AsymptoticAnalysis/QuantitativeGapIteration/Variant54244572cbe3ab3b1782104071308215afdc85ef6c50f7348439f459a6ec7260.lean/declarations/uniform-of-prefix-budget--8de1e14ef48a0f2efc8b32a5.md) | 74 | `result-track:8de1e14ef48a0f2efc8b32a55e323dcac4693fc61b40126113ddbbd1cde13f14` |
| 10 | `theorem` | [uniform_of_summable_budget](../../../../../mathematics/Analysis/AsymptoticAnalysis/QuantitativeGapIteration/Variant54244572cbe3ab3b1782104071308215afdc85ef6c50f7348439f459a6ec7260.lean/declarations/uniform-of-summable-budget--3483daf88cb1bdb4dc58727d.md) | 88 | `result-track:3483daf88cb1bdb4dc58727db96e879fb7199ab7a3b71315306e7e7a958e0d0a` |
| 11 | `theorem` | [uniform_positive_certificate](../../../../../mathematics/Analysis/AsymptoticAnalysis/QuantitativeGapIteration/Variant54244572cbe3ab3b1782104071308215afdc85ef6c50f7348439f459a6ec7260.lean/declarations/uniform-positive-certificate--e86545b39edfd143bd9fb3bb.md) | 102 | `result-track:e86545b39edfd143bd9fb3bb8c251f7b60e0f5a55ca98862d7b9dc0871d552e8` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
