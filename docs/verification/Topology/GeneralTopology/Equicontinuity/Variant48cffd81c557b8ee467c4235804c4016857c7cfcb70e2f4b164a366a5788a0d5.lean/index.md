# Verification target: GRWTSK.Topology.GeneralTopology.Equicontinuity.Variant48cffd81c557b8ee467c4235804c4016857c7cfcb70e2f4b164a366a5788a0d5

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "b4e3bd17d1093b03609553dc8164de8d91770fb5",
  "lexical_observation_count": 2,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/Equicontinuity/Variant48cffd81c557b8ee467c4235804c4016857c7cfcb70e2f4b164a366a5788a0d5.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/Equicontinuity/Variant48cffd81c557b8ee467c4235804c4016857c7cfcb70e2f4b164a366a5788a0d5.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/Equicontinuity/Variant48cffd81c557b8ee467c4235804c4016857c7cfcb70e2f4b164a366a5788a0d5.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `b4e3bd17d1093b03609553dc8164de8d91770fb5`.

Source path: `GRWTSK/Topology/GeneralTopology/Equicontinuity/Variant48cffd81c557b8ee467c4235804c4016857c7cfcb70e2f4b164a366a5788a0d5.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/Equicontinuity/Variant48cffd81c557b8ee467c4235804c4016857c7cfcb70e2f4b164a366a5788a0d5.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Topology.Algebra.UniformConvergence` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.UniformSpace.Equicontinuity` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [equicontinuous_of_equicontinuousAt_one](../../../../../mathematics/Topology/GeneralTopology/Equicontinuity/Variant48cffd81c557b8ee467c4235804c4016857c7cfcb70e2f4b164a366a5788a0d5.lean/declarations/equicontinuous-of-equicontinuousat-one--fb645185de683f7085fcd719.md) | 27 | `result-track:fb645185de683f7085fcd719e81d790e429c0051b60b509218b0ed71544b34b8` |
| 2 | `theorem` | [uniformEquicontinuous_of_equicontinuousAt_one](../../../../../mathematics/Topology/GeneralTopology/Equicontinuity/Variant48cffd81c557b8ee467c4235804c4016857c7cfcb70e2f4b164a366a5788a0d5.lean/declarations/uniformequicontinuous-of-equicontinuousat-one--7552040de7692da40a6b860c.md) | 41 | `result-track:7552040de7692da40a6b860cae6b086f543040e73333a93ccd99dd19fa98453c` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
