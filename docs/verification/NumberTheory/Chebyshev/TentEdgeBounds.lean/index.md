# Verification target: GRWTSK.NumberTheory.Chebyshev.TentEdgeBounds

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "216d2cc455ed15f2e44489611b76a2efeabd6a35",
  "lexical_observation_count": 9,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Chebyshev/TentEdgeBounds.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/NumberTheory/Chebyshev/TentEdgeBounds.lean/index.md) · [Full source](../../../../mathematics/NumberTheory/Chebyshev/TentEdgeBounds.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `216d2cc455ed15f2e44489611b76a2efeabd6a35`.

Source path: `GRWTSK/NumberTheory/Chebyshev/TentEdgeBounds.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Chebyshev/TentEdgeBounds.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.Analysis.Complex.TentContourMajorants`](../../../../mathematics/Analysis/ComplexAnalysis/TentContourMajorants.lean/index.md) — import line 4; pinned internal source present.
- [`GRWTSK.NumberTheory.Chebyshev.HeightIndexedTentResidues`](../../../../mathematics/NumberTheory/Chebyshev/HeightIndexedTentResidues.lean/index.md) — import line 5; pinned internal source present.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [leftEdge_le_neg_two](../../../../mathematics/NumberTheory/Chebyshev/TentEdgeBounds.lean/declarations/leftedge-le-neg-two--55b6282d13542798645296d9.md) | 39 | `result-track:55b6282d13542798645296d9aecfcdb9e3298c98c900cb142107271329b64fd6` |
| 2 | `theorem` | [powerProfile_leftEdge](../../../../mathematics/NumberTheory/Chebyshev/TentEdgeBounds.lean/declarations/powerprofile-leftedge--fe07b59aac79cab4f6982665.md) | 45 | `result-track:fe07b59aac79cab4f698266502b2536e054a545abfa553219bf8b69b8ca4c37a` |
| 3 | `theorem` | [continuous_zeta_tent_left](../../../../mathematics/NumberTheory/Chebyshev/TentEdgeBounds.lean/declarations/continuous-zeta-tent-left--5971bff3e6edf13acd7d7235.md) | 52 | `result-track:5971bff3e6edf13acd7d7235a8d6a804e00550302e55ab5c58ba075c75274b79` |
| 4 | `theorem` | [zeta_tent_left_intervalIntegrable](../../../../mathematics/NumberTheory/Chebyshev/TentEdgeBounds.lean/declarations/zeta-tent-left-intervalintegrable--a98bf8ca45bf6a3062f4bbfc.md) | 69 | `result-track:a98bf8ca45bf6a3062f4bbfc89e4a2717360fd08d0bae2b5b703bfcafb64299e` |
| 5 | `theorem` | [norm_selected_horizontal_le](../../../../mathematics/NumberTheory/Chebyshev/TentEdgeBounds.lean/declarations/norm-selected-horizontal-le--410357fd9cc8d4c401fc46a4.md) | 77 | `result-track:410357fd9cc8d4c401fc46a4f88483dbee71f735ee143d27ac99cd582df6cf94` |
| 6 | `theorem` | [norm_left_vertical_le](../../../../mathematics/NumberTheory/Chebyshev/TentEdgeBounds.lean/declarations/norm-left-vertical-le--33d8d3e0e55f4a160c87a58c.md) | 96 | `result-track:33d8d3e0e55f4a160c87a58c001563ed3135fdc63c03a09c5de0eca4c8266a6c` |
| 7 | `theorem` | [norm_edgeRemainder_le](../../../../mathematics/NumberTheory/Chebyshev/TentEdgeBounds.lean/declarations/norm-edgeremainder-le--5744c331ffac2639bb0d3683.md) | 108 | `result-track:5744c331ffac2639bb0d3683959536be6a031889d716262cdd020085f6dce42f` |
| 8 | `theorem` | [norm_right_residue_defect_le](../../../../mathematics/NumberTheory/Chebyshev/TentEdgeBounds.lean/declarations/norm-right-residue-defect-le--ff88b23792f5ed7e9aeaabd5.md) | 155 | `result-track:ff88b23792f5ed7e9aeaabd57e4e2ddae74e040cf96c8426b74fd13c8faea4ab` |
| 9 | `theorem` | [edgeRemainder_tendsto_of_rates](../../../../mathematics/NumberTheory/Chebyshev/TentEdgeBounds.lean/declarations/edgeremainder-tendsto-of-rates--214f49ddd792e80a35379a2c.md) | 172 | `result-track:214f49ddd792e80a35379a2cb929868cc55a694d9066a0386ac244a546ccff72` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
