# Verification target: GRWTSK.Topology.GeneralTopology.MeanErgodic.Variant3596bc332c9f414746cb6082179c9d54d2d50975ec63338aa569e762307097a0

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "17fe550cb6481ee7454776691ba11e8417d7966d",
  "lexical_observation_count": 2,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/MeanErgodic/Variant3596bc332c9f414746cb6082179c9d54d2d50975ec63338aa569e762307097a0.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/MeanErgodic/Variant3596bc332c9f414746cb6082179c9d54d2d50975ec63338aa569e762307097a0.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/MeanErgodic/Variant3596bc332c9f414746cb6082179c9d54d2d50975ec63338aa569e762307097a0.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `17fe550cb6481ee7454776691ba11e8417d7966d`.

Source path: `GRWTSK/Topology/GeneralTopology/MeanErgodic/Variant3596bc332c9f414746cb6082179c9d54d2d50975ec63338aa569e762307097a0.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/MeanErgodic/Variant3596bc332c9f414746cb6082179c9d54d2d50975ec63338aa569e762307097a0.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.InnerProductSpace.Projection` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Dynamics.BirkhoffSum.NormedSpace` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [LinearMap.tendsto_birkhoffAverage_of_ker_subset_closure](../../../../../mathematics/Topology/GeneralTopology/MeanErgodic/Variant3596bc332c9f414746cb6082179c9d54d2d50975ec63338aa569e762307097a0.lean/declarations/linearmap-tendsto-birkhoffaverage-of-ker-subset-closure--a7e560e99d26dbf597e7bc48.md) | 43 | `result-track:a7e560e99d26dbf597e7bc48849ddf7913af889f5c838624992c8149c628b687` |
| 2 | `theorem` | [ContinuousLinearMap.tendsto_birkhoffAverage_orthogonalProjection](../../../../../mathematics/Topology/GeneralTopology/MeanErgodic/Variant3596bc332c9f414746cb6082179c9d54d2d50975ec63338aa569e762307097a0.lean/declarations/continuouslinearmap-tendsto-birkhoffaverage-orthogonalprojection--3339a9517a9623e464420930.md) | 84 | `result-track:3339a9517a9623e464420930dba0bfc4f93f2295afbc33539b5fee7e5ab8eb14` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
