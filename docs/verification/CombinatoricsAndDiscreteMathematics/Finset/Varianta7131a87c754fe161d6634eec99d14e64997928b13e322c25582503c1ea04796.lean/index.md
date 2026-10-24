# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.Finset.Varianta7131a87c754fe161d6634eec99d14e64997928b13e322c25582503c1ea04796

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "13e3404ea8093e3e89147741be1215105499c13a",
  "lexical_observation_count": 7,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Finset/Varianta7131a87c754fe161d6634eec99d14e64997928b13e322c25582503c1ea04796.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finset/Varianta7131a87c754fe161d6634eec99d14e64997928b13e322c25582503c1ea04796.lean/index.md) · [Full source](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finset/Varianta7131a87c754fe161d6634eec99d14e64997928b13e322c25582503c1ea04796.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `13e3404ea8093e3e89147741be1215105499c13a`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/Finset/Varianta7131a87c754fe161d6634eec99d14e64997928b13e322c25582503c1ea04796.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/Finset/Varianta7131a87c754fe161d6634eec99d14e64997928b13e322c25582503c1ea04796.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Finset.Preimage` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Order.Filter.AtTopBot.Tendsto` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Order.Filter.AtTopBot.Basic` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Order.Filter.Finite` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [tendsto_finset_range](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finset/Varianta7131a87c754fe161d6634eec99d14e64997928b13e322c25582503c1ea04796.lean/declarations/tendsto-finset-range--97965e376d585f82b466dce2.md) | 21 | `result-track:97965e376d585f82b466dce2bd71bc02476e28e78b67b35e71be03a30b4fbb41` |
| 2 | `theorem` | [atTop_finset_eq_iInf](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finset/Varianta7131a87c754fe161d6634eec99d14e64997928b13e322c25582503c1ea04796.lean/declarations/attop-finset-eq-iinf--e826e227d3ee1d95a1fe2731.md) | 24 | `result-track:e826e227d3ee1d95a1fe27310b70a17f58dce9e63f372f55dceef51469dfd946` |
| 3 | `theorem` | [tendsto_atTop_finset_of_monotone](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finset/Varianta7131a87c754fe161d6634eec99d14e64997928b13e322c25582503c1ea04796.lean/declarations/tendsto-attop-finset-of-monotone--373a276935a173dfee5a4af3.md) | 35 | `result-track:373a276935a173dfee5a4af380d23ed2f8210c7355cd60bd54352c5cd08b452d` |
| 4 | `theorem` | [tendsto_finset_image_atTop_atTop](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finset/Varianta7131a87c754fe161d6634eec99d14e64997928b13e322c25582503c1ea04796.lean/declarations/tendsto-finset-image-attop-attop--39594bfcc29bd83dde00fd1e.md) | 44 | `result-track:39594bfcc29bd83dde00fd1e29f587140ca4134bb7bc9e82d829964771e30e90` |
| 5 | `theorem` | [tendsto_finset_preimage_atTop_atTop](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finset/Varianta7131a87c754fe161d6634eec99d14e64997928b13e322c25582503c1ea04796.lean/declarations/tendsto-finset-preimage-attop-attop--b9984f0d00c6a5bd1dba7cf6.md) | 49 | `result-track:b9984f0d00c6a5bd1dba7cf60a7c220a8bc3ccde8310284820d8574f7092e978` |
| 6 | `lemma` | [tendsto_toLeft_atTop](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finset/Varianta7131a87c754fe161d6634eec99d14e64997928b13e322c25582503c1ea04796.lean/declarations/tendsto-toleft-attop--7102b1edbbe4c6b53b57b324.md) | 54 | `result-track:7102b1edbbe4c6b53b57b3249cbd6d14f7306d1d47ddde3a41092e3b9377f74c` |
| 7 | `lemma` | [tendsto_toRight_atTop](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finset/Varianta7131a87c754fe161d6634eec99d14e64997928b13e322c25582503c1ea04796.lean/declarations/tendsto-toright-attop--9a37f2d279ea64a70e5fdec5.md) | 61 | `result-track:9a37f2d279ea64a70e5fdec58b8546ac8bc4b9508721fcde702413ebebe7ee47` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
