# Verification target: GRWTSK.Analysis.ProjectiveSeminorm.Variant1f647f32cd324921645e97d9a86cb9d5b358448ddfd91e1aa42d8b2c22d02cb8

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "081fa3d8018f3cf07c44091ab5896fbd07b25720",
  "lexical_observation_count": 9,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/ProjectiveSeminorm/Variant1f647f32cd324921645e97d9a86cb9d5b358448ddfd91e1aa42d8b2c22d02cb8.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Analysis/ProjectiveSeminorm/Variant1f647f32cd324921645e97d9a86cb9d5b358448ddfd91e1aa42d8b2c22d02cb8.lean/index.md) · [Full source](../../../../mathematics/Analysis/ProjectiveSeminorm/Variant1f647f32cd324921645e97d9a86cb9d5b358448ddfd91e1aa42d8b2c22d02cb8.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `081fa3d8018f3cf07c44091ab5896fbd07b25720`.

Source path: `GRWTSK/Analysis/ProjectiveSeminorm/Variant1f647f32cd324921645e97d9a86cb9d5b358448ddfd91e1aa42d8b2c22d02cb8.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/ProjectiveSeminorm/Variant1f647f32cd324921645e97d9a86cb9d5b358448ddfd91e1aa42d8b2c22d02cb8.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.NormedSpace.Multilinear.Basic` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.PiTensorProduct` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [projectiveSeminormAux](../../../../mathematics/Analysis/ProjectiveSeminorm/Variant1f647f32cd324921645e97d9a86cb9d5b358448ddfd91e1aa42d8b2c22d02cb8.lean/declarations/projectiveseminormaux--fad79db0719e5cbb92369515.md) | 51 | `declaration-track:fad79db0719e5cbb92369515eda598da68853ecea1196d3272eca71df431bb36` |
| 2 | `theorem` | [projectiveSeminormAux_nonneg](../../../../mathematics/Analysis/ProjectiveSeminorm/Variant1f647f32cd324921645e97d9a86cb9d5b358448ddfd91e1aa42d8b2c22d02cb8.lean/declarations/projectiveseminormaux-nonneg--59f180d3f4891d2cd446ca3f.md) | 54 | `result-track:59f180d3f4891d2cd446ca3f2aa1e7b0a74d943395cad368f8ef211ccc014794` |
| 3 | `theorem` | [projectiveSeminormAux_add_le](../../../../mathematics/Analysis/ProjectiveSeminorm/Variant1f647f32cd324921645e97d9a86cb9d5b358448ddfd91e1aa42d8b2c22d02cb8.lean/declarations/projectiveseminormaux-add-le--c0a2baaedaa016b48204a9c7.md) | 65 | `result-track:c0a2baaedaa016b48204a9c7346051483c6e2c6cbb257f907f51f75cbac08628` |
| 4 | `theorem` | [projectiveSeminormAux_smul](../../../../mathematics/Analysis/ProjectiveSeminorm/Variant1f647f32cd324921645e97d9a86cb9d5b358448ddfd91e1aa42d8b2c22d02cb8.lean/declarations/projectiveseminormaux-smul--4da9d4ebd973821654ceb774.md) | 69 | `result-track:4da9d4ebd973821654ceb774534069f53ea06fb6811fbbe2baa3c8dffe3fafd3` |
| 5 | `theorem` | [bddBelow_projectiveSemiNormAux](../../../../mathematics/Analysis/ProjectiveSeminorm/Variant1f647f32cd324921645e97d9a86cb9d5b358448ddfd91e1aa42d8b2c22d02cb8.lean/declarations/bddbelow-projectiveseminormaux--353515e9d4acb081e7074c71.md) | 76 | `result-track:353515e9d4acb081e7074c718a7522b6f31e5914ea32fbf1a5910c82580d55f3` |
| 6 | `def` | [projectiveSeminorm](../../../../mathematics/Analysis/ProjectiveSeminorm/Variant1f647f32cd324921645e97d9a86cb9d5b358448ddfd91e1aa42d8b2c22d02cb8.lean/declarations/projectiveseminorm--1ca9b317154a20b2398d3437.md) | 88 | `declaration-track:1ca9b317154a20b2398d343765ed4c52251ee3a0bbb6d6a450e01758eb0497cf` |
| 7 | `theorem` | [projectiveSeminorm_apply](../../../../mathematics/Analysis/ProjectiveSeminorm/Variant1f647f32cd324921645e97d9a86cb9d5b358448ddfd91e1aa42d8b2c22d02cb8.lean/declarations/projectiveseminorm-apply--52955eefe524c8250950d763.md) | 108 | `result-track:52955eefe524c8250950d7632b0393aa4ad8ddd19f2e4929d3d025e7adcd06a1` |
| 8 | `theorem` | [projectiveSeminorm_tprod_le](../../../../mathematics/Analysis/ProjectiveSeminorm/Variant1f647f32cd324921645e97d9a86cb9d5b358448ddfd91e1aa42d8b2c22d02cb8.lean/declarations/projectiveseminorm-tprod-le--5034bb0acafd7bb63d867f7e.md) | 111 | `result-track:5034bb0acafd7bb63d867f7e06abd0e73bb2518741acf2506c4839ad3a600850` |
| 9 | `theorem` | [norm_eval_le_projectiveSeminorm](../../../../mathematics/Analysis/ProjectiveSeminorm/Variant1f647f32cd324921645e97d9a86cb9d5b358448ddfd91e1aa42d8b2c22d02cb8.lean/declarations/norm-eval-le-projectiveseminorm--622b5436481221b6a1280bf3.md) | 118 | `result-track:622b5436481221b6a1280bf3d299a9ac1bc5d12cf167d5191cfe05dd6c709e62` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
