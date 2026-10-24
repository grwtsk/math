# Verification target: GRWTSK.Analysis.RealAnalysis.Integration.SourceCenteredSmoothing.Variant5b532e9d7c6c26ee201613b007e2931ffea871780e3b0a30b5bf81abd0afe612

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "32038d87c50cc68de4f19caa2971a2f5308a5914",
  "lexical_observation_count": 7,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/SourceCenteredSmoothing/Variant5b532e9d7c6c26ee201613b007e2931ffea871780e3b0a30b5bf81abd0afe612.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceCenteredSmoothing/Variant5b532e9d7c6c26ee201613b007e2931ffea871780e3b0a30b5bf81abd0afe612.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceCenteredSmoothing/Variant5b532e9d7c6c26ee201613b007e2931ffea871780e3b0a30b5bf81abd0afe612.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `32038d87c50cc68de4f19caa2971a2f5308a5914`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/SourceCenteredSmoothing/Variant5b532e9d7c6c26ee201613b007e2931ffea871780e3b0a30b5bf81abd0afe612.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/SourceCenteredSmoothing/Variant5b532e9d7c6c26ee201613b007e2931ffea871780e3b0a30b5bf81abd0afe612.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.RiemannHypothesis.SourceConservativeComparison` — import line 1; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Calculus.ParametricIntegral` — import line 2; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [smoothedCorrelation](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceCenteredSmoothing/Variant5b532e9d7c6c26ee201613b007e2931ffea871780e3b0a30b5bf81abd0afe612.lean/declarations/smoothedcorrelation--52ac4548b9a35fa8f0da2069.md) | 23 | `declaration-track:52ac4548b9a35fa8f0da2069cfa80940723f3e2daa70d97fa619fb84fb9d39dc` |
| 2 | `def` | [smoothedSlope](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceCenteredSmoothing/Variant5b532e9d7c6c26ee201613b007e2931ffea871780e3b0a30b5bf81abd0afe612.lean/declarations/smoothedslope--9db2a75f3b3e558039b44e21.md) | 27 | `declaration-track:9db2a75f3b3e558039b44e21118a79ff3de6eaef815683ae87b74d2e39c89dc5` |
| 3 | `theorem` | [shiftedCorrelation_integrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceCenteredSmoothing/Variant5b532e9d7c6c26ee201613b007e2931ffea871780e3b0a30b5bf81abd0afe612.lean/declarations/shiftedcorrelation-integrable--5b4c25ebdeb2ac73d2afc0b2.md) | 30 | `result-track:5b4c25ebdeb2ac73d2afc0b2fb08ee2db032b24781544d19e8087fc7bb5a4135` |
| 4 | `theorem` | [shiftedSlope_integrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceCenteredSmoothing/Variant5b532e9d7c6c26ee201613b007e2931ffea871780e3b0a30b5bf81abd0afe612.lean/declarations/shiftedslope-integrable--bb3c623b323d7ab96a3ea56d.md) | 38 | `result-track:bb3c623b323d7ab96a3ea56d92fa4725652461d794ece2d0802e8752eabd0e40` |
| 5 | `theorem` | [smoothedCorrelation_error](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceCenteredSmoothing/Variant5b532e9d7c6c26ee201613b007e2931ffea871780e3b0a30b5bf81abd0afe612.lean/declarations/smoothedcorrelation-error--bf6278d297f4cf7cdb1ddb6d.md) | 47 | `result-track:bf6278d297f4cf7cdb1ddb6d9a78204ea388c6acad65442c901338b334a28c6c` |
| 6 | `theorem` | [smoothedSlope_error](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceCenteredSmoothing/Variant5b532e9d7c6c26ee201613b007e2931ffea871780e3b0a30b5bf81abd0afe612.lean/declarations/smoothedslope-error--45f6e6b26265fd54edd90ee8.md) | 81 | `result-track:45f6e6b26265fd54edd90ee8edf35120e192a3926569cf717e1dd5fb038a2091` |
| 7 | `theorem` | [finite_tangent_smoothed_error](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceCenteredSmoothing/Variant5b532e9d7c6c26ee201613b007e2931ffea871780e3b0a30b5bf81abd0afe612.lean/declarations/finite-tangent-smoothed-error--70086408659a6efc8de6009b.md) | 112 | `result-track:70086408659a6efc8de6009bb5526749470c35b90bc86d8f03b3ab78e0d783db` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
