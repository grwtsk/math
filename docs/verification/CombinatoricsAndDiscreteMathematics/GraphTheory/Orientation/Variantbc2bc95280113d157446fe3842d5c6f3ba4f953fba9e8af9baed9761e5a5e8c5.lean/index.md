# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.GraphTheory.Orientation.Variantbc2bc95280113d157446fe3842d5c6f3ba4f953fba9e8af9baed9761e5a5e8c5

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "7c5581bbe53a204913b1bea90ba356d78ea14353",
  "lexical_observation_count": 9,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/GraphTheory/Orientation/Variantbc2bc95280113d157446fe3842d5c6f3ba4f953fba9e8af9baed9761e5a5e8c5.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Orientation/Variantbc2bc95280113d157446fe3842d5c6f3ba4f953fba9e8af9baed9761e5a5e8c5.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Orientation/Variantbc2bc95280113d157446fe3842d5c6f3ba4f953fba9e8af9baed9761e5a5e8c5.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `7c5581bbe53a204913b1bea90ba356d78ea14353`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/GraphTheory/Orientation/Variantbc2bc95280113d157446fe3842d5c6f3ba4f953fba9e8af9baed9761e5a5e8c5.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/GraphTheory/Orientation/Variantbc2bc95280113d157446fe3842d5c6f3ba4f953fba9e8af9baed9761e5a5e8c5.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Combinatorics.Digraph.Basic` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Combinatorics.SimpleGraph.Basic` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [toSimpleGraphInclusive](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Orientation/Variantbc2bc95280113d157446fe3842d5c6f3ba4f953fba9e8af9baed9761e5a5e8c5.lean/declarations/tosimplegraphinclusive--f44cd4a2aa0afb4aba812e72.md) | 47 | `declaration-track:f44cd4a2aa0afb4aba812e72bfb8006f3dc532e52265d1d9f65c1780131f2aa4` |
| 2 | `def` | [toSimpleGraphStrict](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Orientation/Variantbc2bc95280113d157446fe3842d5c6f3ba4f953fba9e8af9baed9761e5a5e8c5.lean/declarations/tosimplegraphstrict--fd51efe84c1f05fb4ff84fc4.md) | 53 | `declaration-track:fd51efe84c1f05fb4ff84fc49653729b58da63d2c9387a02738db30050390f5d` |
| 3 | `lemma` | [toSimpleGraphStrict_subgraph_toSimpleGraphInclusive](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Orientation/Variantbc2bc95280113d157446fe3842d5c6f3ba4f953fba9e8af9baed9761e5a5e8c5.lean/declarations/tosimplegraphstrict-subgraph-tosimplegraphinclusive--5b72dfc8152b87495017c230.md) | 58 | `result-track:5b72dfc8152b87495017c230e402e6978257ec45b461aeabf30320e25cff1509` |
| 4 | `lemma` | [toSimpleGraphInclusive_mono](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Orientation/Variantbc2bc95280113d157446fe3842d5c6f3ba4f953fba9e8af9baed9761e5a5e8c5.lean/declarations/tosimplegraphinclusive-mono--bc31fe3d607d83e981f9bef2.md) | 63 | `result-track:bc31fe3d607d83e981f9bef26159acef3577fe7a1a7554c47a9d113f7a8de5e5` |
| 5 | `lemma` | [toSimpleGraphStrict_mono](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Orientation/Variantbc2bc95280113d157446fe3842d5c6f3ba4f953fba9e8af9baed9761e5a5e8c5.lean/declarations/tosimplegraphstrict-mono--e9bfacbf99bc2ebe0db109cc.md) | 71 | `result-track:e9bfacbf99bc2ebe0db109cc49abc6264f828f19d89307e8510187db86cb3254` |
| 6 | `lemma` | [toSimpleGraphInclusive_top](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Orientation/Variantbc2bc95280113d157446fe3842d5c6f3ba4f953fba9e8af9baed9761e5a5e8c5.lean/declarations/tosimplegraphinclusive-top--7b20296f55035310773704bc.md) | 75 | `result-track:7b20296f55035310773704bc420a2fc5452ba0397dcc29cb9cc85d69b6677d66` |
| 7 | `lemma` | [toSimpleGraphStrict_top](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Orientation/Variantbc2bc95280113d157446fe3842d5c6f3ba4f953fba9e8af9baed9761e5a5e8c5.lean/declarations/tosimplegraphstrict-top--e817359b39dbfbf0780d152d.md) | 79 | `result-track:e817359b39dbfbf0780d152d70fe8e94bb31285f01e4d9fcde896c26e45cba22` |
| 8 | `lemma` | [toSimpleGraphInclusive_bot](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Orientation/Variantbc2bc95280113d157446fe3842d5c6f3ba4f953fba9e8af9baed9761e5a5e8c5.lean/declarations/tosimplegraphinclusive-bot--047aff071c4804dd149ed367.md) | 83 | `result-track:047aff071c4804dd149ed3673ebbcbdf6affdfd884bc6ab30ceac23f15dd805b` |
| 9 | `lemma` | [toSimpleGraphStrict_bot](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Orientation/Variantbc2bc95280113d157446fe3842d5c6f3ba4f953fba9e8af9baed9761e5a5e8c5.lean/declarations/tosimplegraphstrict-bot--e6b68011adf01d2f3c6ecc51.md) | 87 | `result-track:e6b68011adf01d2f3c6ecc51887f0b789e3415bde8862f6403809a54f3eb6190` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
