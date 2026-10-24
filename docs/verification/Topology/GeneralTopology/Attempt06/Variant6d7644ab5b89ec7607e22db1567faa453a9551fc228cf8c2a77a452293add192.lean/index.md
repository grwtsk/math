# Verification target: GRWTSK.Topology.GeneralTopology.Attempt06.Variant6d7644ab5b89ec7607e22db1567faa453a9551fc228cf8c2a77a452293add192

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "e2bd980f3bb785e525ca6d82ceef96253bccd9ff",
  "lexical_observation_count": 12,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/Attempt06/Variant6d7644ab5b89ec7607e22db1567faa453a9551fc228cf8c2a77a452293add192.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/Attempt06/Variant6d7644ab5b89ec7607e22db1567faa453a9551fc228cf8c2a77a452293add192.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/Attempt06/Variant6d7644ab5b89ec7607e22db1567faa453a9551fc228cf8c2a77a452293add192.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `e2bd980f3bb785e525ca6d82ceef96253bccd9ff`.

Source path: `GRWTSK/Topology/GeneralTopology/Attempt06/Variant6d7644ab5b89ec7607e22db1567faa453a9551fc228cf8c2a77a452293add192.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/Attempt06/Variant6d7644ab5b89ec7607e22db1567faa453a9551fc228cf8c2a77a452293add192.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.RiemannHypothesis.Laplace.Expansion` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecialFunctions.Exp` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [p](../../../../../mathematics/Topology/GeneralTopology/Attempt06/Variant6d7644ab5b89ec7607e22db1567faa453a9551fc228cf8c2a77a452293add192.lean/declarations/p--c98571e547cc92519663e727.md) | 23 | `declaration-track:c98571e547cc92519663e7273da7ac8f0b0304bc6fd2c9cc6441ed951818aa2d` |
| 2 | `def` | [normalizedSquare](../../../../../mathematics/Topology/GeneralTopology/Attempt06/Variant6d7644ab5b89ec7607e22db1567faa453a9551fc228cf8c2a77a452293add192.lean/declarations/normalizedsquare--c0a36c846d3ec85052660eef.md) | 25 | `declaration-track:c0a36c846d3ec85052660eefe666b7c64a2f551da4a7fb3df386243393066a1a` |
| 3 | `theorem` | [p_coe](../../../../../mathematics/Topology/GeneralTopology/Attempt06/Variant6d7644ab5b89ec7607e22db1567faa453a9551fc228cf8c2a77a452293add192.lean/declarations/p-coe--e5e4c4c02315862598067615.md) | 28 | `result-track:e5e4c4c0231586259806761560f6dda243213f7f4930cc7132a7dab7fce16cf3` |
| 4 | `theorem` | [actual_scaled_square_real](../../../../../mathematics/Topology/GeneralTopology/Attempt06/Variant6d7644ab5b89ec7607e22db1567faa453a9551fc228cf8c2a77a452293add192.lean/declarations/actual-scaled-square-real--3541de33953dd647b14a325b.md) | 31 | `result-track:3541de33953dd647b14a325b52d8a8d4010c4e1ce8b0935d4d2406d49f41b037` |
| 5 | `theorem` | [p_ratio](../../../../../mathematics/Topology/GeneralTopology/Attempt06/Variant6d7644ab5b89ec7607e22db1567faa453a9551fc228cf8c2a77a452293add192.lean/declarations/p-ratio--1e895ef3f5c1f4439fec558a.md) | 57 | `result-track:1e895ef3f5c1f4439fec558ae9a77475a24566fbfe6c7c115659e7080d318d49` |
| 6 | `theorem` | [p_ratio_tendsto](../../../../../mathematics/Topology/GeneralTopology/Attempt06/Variant6d7644ab5b89ec7607e22db1567faa453a9551fc228cf8c2a77a452293add192.lean/declarations/p-ratio-tendsto--07a7b2bb1a30910dc1b0c389.md) | 61 | `result-track:07a7b2bb1a30910dc1b0c389b8c1097d43f1d0d292ebd4e073db9767c995b06b` |
| 7 | `theorem` | [normalization_tendsto](../../../../../mathematics/Topology/GeneralTopology/Attempt06/Variant6d7644ab5b89ec7607e22db1567faa453a9551fc228cf8c2a77a452293add192.lean/declarations/normalization-tendsto--9d3e25c172d2003fceda9939.md) | 78 | `result-track:9d3e25c172d2003fceda9939ba408d3014cf73095ddaa13a1b9edc25d4246183` |
| 8 | `theorem` | [exp_scaled_neg_tendsto](../../../../../mathematics/Topology/GeneralTopology/Attempt06/Variant6d7644ab5b89ec7607e22db1567faa453a9551fc228cf8c2a77a452293add192.lean/declarations/exp-scaled-neg-tendsto--c1dc8e7059e234591fb34a78.md) | 87 | `result-track:c1dc8e7059e234591fb34a78f6b13276d68dea60c0ab54acdd6bf8aa54093f38` |
| 9 | `theorem` | [exp_square_rescale](../../../../../mathematics/Topology/GeneralTopology/Attempt06/Variant6d7644ab5b89ec7607e22db1567faa453a9551fc228cf8c2a77a452293add192.lean/declarations/exp-square-rescale--4605020cdac678dcad8fb808.md) | 92 | `result-track:4605020cdac678dcad8fb8083495ee865eeb47033905d0e40dccc688acf420b7` |
| 10 | `theorem` | [scaled_square_exact](../../../../../mathematics/Topology/GeneralTopology/Attempt06/Variant6d7644ab5b89ec7607e22db1567faa453a9551fc228cf8c2a77a452293add192.lean/declarations/scaled-square-exact--0e45377508580e4d95171347.md) | 101 | `result-track:0e45377508580e4d95171347083ade7f15717f102ad716d1e21bb77c75743092` |
| 11 | `theorem` | [scaled_square_tendsto](../../../../../mathematics/Topology/GeneralTopology/Attempt06/Variant6d7644ab5b89ec7607e22db1567faa453a9551fc228cf8c2a77a452293add192.lean/declarations/scaled-square-tendsto--a9f704030d0435f93666d960.md) | 123 | `result-track:a9f704030d0435f93666d96095c6b23c7fd3563df44c283d30b434437ac0635d` |
| 12 | `theorem` | [quarter_scaled_limit](../../../../../mathematics/Topology/GeneralTopology/Attempt06/Variant6d7644ab5b89ec7607e22db1567faa453a9551fc228cf8c2a77a452293add192.lean/declarations/quarter-scaled-limit--cb73160e5885f38121a9ebe3.md) | 143 | `result-track:cb73160e5885f38121a9ebe3477d6fa2b1cb7747ed08542e9b51f00a14356ee4` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
