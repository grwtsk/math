# Verification target: GRWTSK.Topology.GeneralTopology.Attempt05.Variant6a78326e2b27c6411f4c39e0c2f4b6fa555323f275e6ed10ab5fa6a9ed3e5c3d

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "e2676d775de445cb98d0135ebc8c8cbba12cbf73",
  "lexical_observation_count": 12,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/Attempt05/Variant6a78326e2b27c6411f4c39e0c2f4b6fa555323f275e6ed10ab5fa6a9ed3e5c3d.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/Attempt05/Variant6a78326e2b27c6411f4c39e0c2f4b6fa555323f275e6ed10ab5fa6a9ed3e5c3d.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/Attempt05/Variant6a78326e2b27c6411f4c39e0c2f4b6fa555323f275e6ed10ab5fa6a9ed3e5c3d.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `e2676d775de445cb98d0135ebc8c8cbba12cbf73`.

Source path: `GRWTSK/Topology/GeneralTopology/Attempt05/Variant6a78326e2b27c6411f4c39e0c2f4b6fa555323f275e6ed10ab5fa6a9ed3e5c3d.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/Attempt05/Variant6a78326e2b27c6411f4c39e0c2f4b6fa555323f275e6ed10ab5fa6a9ed3e5c3d.lean.json)

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
| 1 | `def` | [p](../../../../../mathematics/Topology/GeneralTopology/Attempt05/Variant6a78326e2b27c6411f4c39e0c2f4b6fa555323f275e6ed10ab5fa6a9ed3e5c3d.lean/declarations/p--6af5e3be517fd7a912745afe.md) | 23 | `declaration-track:6af5e3be517fd7a912745afeea410c515e3d7091a190444809aa5db359a04876` |
| 2 | `def` | [normalizedSquare](../../../../../mathematics/Topology/GeneralTopology/Attempt05/Variant6a78326e2b27c6411f4c39e0c2f4b6fa555323f275e6ed10ab5fa6a9ed3e5c3d.lean/declarations/normalizedsquare--c6b2337d70a827bba57fb743.md) | 25 | `declaration-track:c6b2337d70a827bba57fb743c18b697853a1dadeadbc41b93724f48bfc787296` |
| 3 | `theorem` | [p_coe](../../../../../mathematics/Topology/GeneralTopology/Attempt05/Variant6a78326e2b27c6411f4c39e0c2f4b6fa555323f275e6ed10ab5fa6a9ed3e5c3d.lean/declarations/p-coe--5472aba264536cbf60423150.md) | 28 | `result-track:5472aba264536cbf604231501720d97c3dcd84654d5eb42bacd7ed2a4b3e217c` |
| 4 | `theorem` | [actual_scaled_square_real](../../../../../mathematics/Topology/GeneralTopology/Attempt05/Variant6a78326e2b27c6411f4c39e0c2f4b6fa555323f275e6ed10ab5fa6a9ed3e5c3d.lean/declarations/actual-scaled-square-real--579d1cb27af732bc1b08271c.md) | 31 | `result-track:579d1cb27af732bc1b08271ccb0d2d8efa3427df2653cbf0a048c358354c71f2` |
| 5 | `theorem` | [p_ratio](../../../../../mathematics/Topology/GeneralTopology/Attempt05/Variant6a78326e2b27c6411f4c39e0c2f4b6fa555323f275e6ed10ab5fa6a9ed3e5c3d.lean/declarations/p-ratio--a894b0d6079bb53e381ef91c.md) | 57 | `result-track:a894b0d6079bb53e381ef91cdde4f602417227e88394720d547af431e738c26f` |
| 6 | `theorem` | [p_ratio_tendsto](../../../../../mathematics/Topology/GeneralTopology/Attempt05/Variant6a78326e2b27c6411f4c39e0c2f4b6fa555323f275e6ed10ab5fa6a9ed3e5c3d.lean/declarations/p-ratio-tendsto--bc9c64b58db7cb91312a6867.md) | 61 | `result-track:bc9c64b58db7cb91312a6867447391939f97c7bc73a182cb5e2b065337dd0799` |
| 7 | `theorem` | [normalization_tendsto](../../../../../mathematics/Topology/GeneralTopology/Attempt05/Variant6a78326e2b27c6411f4c39e0c2f4b6fa555323f275e6ed10ab5fa6a9ed3e5c3d.lean/declarations/normalization-tendsto--35baadeaf21c5900e2eee5ef.md) | 78 | `result-track:35baadeaf21c5900e2eee5efd6eef178f183c886a94ab521c4944b0b675510da` |
| 8 | `theorem` | [exp_scaled_neg_tendsto](../../../../../mathematics/Topology/GeneralTopology/Attempt05/Variant6a78326e2b27c6411f4c39e0c2f4b6fa555323f275e6ed10ab5fa6a9ed3e5c3d.lean/declarations/exp-scaled-neg-tendsto--97bf63847b4092b92b9c81e2.md) | 87 | `result-track:97bf63847b4092b92b9c81e2138ab3a065bc3900755d9bde228af03763d3a900` |
| 9 | `theorem` | [exp_square_rescale](../../../../../mathematics/Topology/GeneralTopology/Attempt05/Variant6a78326e2b27c6411f4c39e0c2f4b6fa555323f275e6ed10ab5fa6a9ed3e5c3d.lean/declarations/exp-square-rescale--f315a7f2737414aed9b0207f.md) | 92 | `result-track:f315a7f2737414aed9b0207fbd37112ff77fa65e2f66fdf0ac6617e5eff51b64` |
| 10 | `theorem` | [scaled_square_exact](../../../../../mathematics/Topology/GeneralTopology/Attempt05/Variant6a78326e2b27c6411f4c39e0c2f4b6fa555323f275e6ed10ab5fa6a9ed3e5c3d.lean/declarations/scaled-square-exact--44e574c266937772ef08b64d.md) | 101 | `result-track:44e574c266937772ef08b64dc4372de62960705fbb4e61eaa1fbc87b9e7a2893` |
| 11 | `theorem` | [scaled_square_tendsto](../../../../../mathematics/Topology/GeneralTopology/Attempt05/Variant6a78326e2b27c6411f4c39e0c2f4b6fa555323f275e6ed10ab5fa6a9ed3e5c3d.lean/declarations/scaled-square-tendsto--56962a948ec7935a0796fdda.md) | 121 | `result-track:56962a948ec7935a0796fddaefa62c84148b244f6fd654220de6052cb23bcdc3` |
| 12 | `theorem` | [quarter_scaled_limit](../../../../../mathematics/Topology/GeneralTopology/Attempt05/Variant6a78326e2b27c6411f4c39e0c2f4b6fa555323f275e6ed10ab5fa6a9ed3e5c3d.lean/declarations/quarter-scaled-limit--5d64dd53bd1af85115700e11.md) | 141 | `result-track:5d64dd53bd1af85115700e11e2b5cc5b9a5d9583d81ddb9cd1a82e9a3e0cf5ab` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
