# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.NavierStokes.Variant416ea96f9367e667516ffaa8c28103285a5726c8fbdc24b839fc01c895612ed6

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "404b31f6776f999c76cadea9ca3847fe753d7e9a",
  "lexical_observation_count": 9,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/NavierStokes/Variant416ea96f9367e667516ffaa8c28103285a5726c8fbdc24b839fc01c895612ed6.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/NavierStokes/Variant416ea96f9367e667516ffaa8c28103285a5726c8fbdc24b839fc01c895612ed6.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/NavierStokes/Variant416ea96f9367e667516ffaa8c28103285a5726c8fbdc24b839fc01c895612ed6.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `404b31f6776f999c76cadea9ca3847fe753d7e9a`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/NavierStokes/Variant416ea96f9367e667516ffaa8c28103285a5726c8fbdc24b839fc01c895612ed6.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/NavierStokes/Variant416ea96f9367e667516ffaa8c28103285a5726c8fbdc24b839fc01c895612ed6.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Folder.GrandChallenge.NavierStokes.SmoothContinuation` — import line 1; external provider; requires a separately pinned dependency.
- `Folder.GrandChallenge.NavierStokes.NonBlowupObstruction` — import line 2; external provider; requires a separately pinned dependency.
- `Folder.GrandChallenge.NavierStokes.TaoSorting` — import line 3; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [ns_continuation_maps_exist_if_supplied](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/NavierStokes/Variant416ea96f9367e667516ffaa8c28103285a5726c8fbdc24b839fc01c895612ed6.lean/declarations/ns-continuation-maps-exist-if-supplied--3eba2cb023fa733694d80389.md) | 21 | `result-track:3eba2cb023fa733694d8038946d829ad77150fe20831e8509cd787f9fa94a40e` |
| 2 | `theorem` | [ns_preserves_true_nonlinearity_if_supplied](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/NavierStokes/Variant416ea96f9367e667516ffaa8c28103285a5726c8fbdc24b839fc01c895612ed6.lean/declarations/ns-preserves-true-nonlinearity-if-supplied--4660432d8113630954deaf73.md) | 26 | `result-track:4660432d8113630954deaf735844b626d90257c9b6db92dc41e886b9507f42a0` |
| 3 | `theorem` | [ns_blowup_obstruction_if_supplied](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/NavierStokes/Variant416ea96f9367e667516ffaa8c28103285a5726c8fbdc24b839fc01c895612ed6.lean/declarations/ns-blowup-obstruction-if-supplied--66b383404e6699911014f495.md) | 31 | `result-track:66b383404e6699911014f49560496234e51776711b392e3d70743dc6dfa7b0ae` |
| 4 | `theorem` | [critical_norm_bounded_if_supplied](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/NavierStokes/Variant416ea96f9367e667516ffaa8c28103285a5726c8fbdc24b839fc01c895612ed6.lean/declarations/critical-norm-bounded-if-supplied--fc0f0a1c10023f2561c924e1.md) | 36 | `result-track:fc0f0a1c10023f2561c924e1a351006f04c8181913f819d9d6c844e7c90415dd` |
| 5 | `theorem` | [critical_control_preserves_true_nonlinearity_if_supplied](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/NavierStokes/Variant416ea96f9367e667516ffaa8c28103285a5726c8fbdc24b839fc01c895612ed6.lean/declarations/critical-control-preserves-true-nonlinearity-if-supplied--70984997b43fb09bd07a574f.md) | 41 | `result-track:70984997b43fb09bd07a574fda6a9e794ea48d8c5877799af5f0e4addaf95b8d` |
| 6 | `theorem` | [quantitative_regularity_control_if_supplied](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/NavierStokes/Variant416ea96f9367e667516ffaa8c28103285a5726c8fbdc24b839fc01c895612ed6.lean/declarations/quantitative-regularity-control-if-supplied--c76f73c542ce73b726161ead.md) | 47 | `result-track:c76f73c542ce73b726161ead3e76355ff3c4a9dc9a8ef53a9c5c8a2a36ae0bc2` |
| 7 | `theorem` | [averaged_blowup_warning_if_supplied](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/NavierStokes/Variant416ea96f9367e667516ffaa8c28103285a5726c8fbdc24b839fc01c895612ed6.lean/declarations/averaged-blowup-warning-if-supplied--34c1205855cd42352d60c932.md) | 52 | `result-track:34c1205855cd42352d60c932c9ecbef83d52800da57c6616b4f35a4f6462f954` |
| 8 | `theorem` | [tao_sorting_if_supplied](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/NavierStokes/Variant416ea96f9367e667516ffaa8c28103285a5726c8fbdc24b839fc01c895612ed6.lean/declarations/tao-sorting-if-supplied--aaa80be6ad3f0d8ae671cf54.md) | 57 | `result-track:aaa80be6ad3f0d8ae671cf546f56d049b2b87234d76942ee9106b124ebf904ae` |
| 9 | `theorem` | [tao_gap_charts_glitch_candidate_if_supplied](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/NavierStokes/Variant416ea96f9367e667516ffaa8c28103285a5726c8fbdc24b839fc01c895612ed6.lean/declarations/tao-gap-charts-glitch-candidate-if-supplied--6b6a80f362462e4397d74b0f.md) | 65 | `result-track:6b6a80f362462e4397d74b0f8763163112ae3fd3b8cbcaaf353f9b0443d59c3a` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
