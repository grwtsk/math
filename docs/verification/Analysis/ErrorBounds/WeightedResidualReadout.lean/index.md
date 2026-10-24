# Verification target: GRWTSK.Analysis.ErrorBounds.WeightedResidualReadout

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "4d6454d99dd7fd9cffff555bcd00294dfb2795c0",
  "lexical_observation_count": 3,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/ErrorBounds/WeightedResidualReadout.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Analysis/ErrorBounds/WeightedResidualReadout.lean/index.md) · [Full source](../../../../mathematics/Analysis/ErrorBounds/WeightedResidualReadout.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `4d6454d99dd7fd9cffff555bcd00294dfb2795c0`.

Source path: `GRWTSK/Analysis/ErrorBounds/WeightedResidualReadout.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/ErrorBounds/WeightedResidualReadout.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.Analysis.ErrorBounds.SourceResidualConvergence`](../../../../mathematics/Analysis/ErrorBounds/SourceResidualConvergence.lean/index.md) — import line 1; pinned internal source present.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [coordinate_le_channelMass](../../../../mathematics/Analysis/ErrorBounds/WeightedResidualReadout.lean/declarations/coordinate-le-channelmass--73008bc0d6d2396e25ae48cf.md) | 9 | `result-track:73008bc0d6d2396e25ae48cfbe23a835bbe2e874e6cd26f59edc67c391a82fdb` |
| 2 | `theorem` | [coordinate_vanishes_of_mass](../../../../mathematics/Analysis/ErrorBounds/WeightedResidualReadout.lean/declarations/coordinate-vanishes-of-mass--2977711f42e8f9dc649fe008.md) | 17 | `result-track:2977711f42e8f9dc649fe008798bfaff5ee83bfb26eee6baaceef1d09aaa0643` |
| 3 | `theorem` | [readout_vanishes_of_mass](../../../../mathematics/Analysis/ErrorBounds/WeightedResidualReadout.lean/declarations/readout-vanishes-of-mass--84129ca91fc841ce92f227c4.md) | 32 | `result-track:84129ca91fc841ce92f227c4334571a4118df9ac318ff975905672b3d7ede322` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
