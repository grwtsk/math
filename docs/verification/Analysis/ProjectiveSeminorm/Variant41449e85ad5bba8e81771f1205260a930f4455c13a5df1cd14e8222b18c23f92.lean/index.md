# Verification target: GRWTSK.Analysis.ProjectiveSeminorm.Variant41449e85ad5bba8e81771f1205260a930f4455c13a5df1cd14e8222b18c23f92

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "b7c5f4462566942dbc0297f6e1db4129174243a4",
  "lexical_observation_count": 9,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/ProjectiveSeminorm/Variant41449e85ad5bba8e81771f1205260a930f4455c13a5df1cd14e8222b18c23f92.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Analysis/ProjectiveSeminorm/Variant41449e85ad5bba8e81771f1205260a930f4455c13a5df1cd14e8222b18c23f92.lean/index.md) · [Full source](../../../../mathematics/Analysis/ProjectiveSeminorm/Variant41449e85ad5bba8e81771f1205260a930f4455c13a5df1cd14e8222b18c23f92.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `b7c5f4462566942dbc0297f6e1db4129174243a4`.

Source path: `GRWTSK/Analysis/ProjectiveSeminorm/Variant41449e85ad5bba8e81771f1205260a930f4455c13a5df1cd14e8222b18c23f92.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/ProjectiveSeminorm/Variant41449e85ad5bba8e81771f1205260a930f4455c13a5df1cd14e8222b18c23f92.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.NormedSpace.Multilinear.Basic` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.PiTensorProduct` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [projectiveSeminormAux](../../../../mathematics/Analysis/ProjectiveSeminorm/Variant41449e85ad5bba8e81771f1205260a930f4455c13a5df1cd14e8222b18c23f92.lean/declarations/projectiveseminormaux--c2fc9740ed43658a12675051.md) | 59 | `declaration-track:c2fc9740ed43658a12675051c4acbc551be7ba018165f744c45db5c4488a8e82` |
| 2 | `theorem` | [projectiveSeminormAux_nonneg](../../../../mathematics/Analysis/ProjectiveSeminorm/Variant41449e85ad5bba8e81771f1205260a930f4455c13a5df1cd14e8222b18c23f92.lean/declarations/projectiveseminormaux-nonneg--17c2e875711af0eaf6da40a3.md) | 62 | `result-track:17c2e875711af0eaf6da40a3da57585c5d412378df698826bdfd2af699922cf2` |
| 3 | `theorem` | [projectiveSeminormAux_add_le](../../../../mathematics/Analysis/ProjectiveSeminorm/Variant41449e85ad5bba8e81771f1205260a930f4455c13a5df1cd14e8222b18c23f92.lean/declarations/projectiveseminormaux-add-le--bda6d2669632b4b8b138082f.md) | 73 | `result-track:bda6d2669632b4b8b138082fdf77386f9b5cbc0ee18c9112d713f365896fd2b0` |
| 4 | `theorem` | [projectiveSeminormAux_smul](../../../../mathematics/Analysis/ProjectiveSeminorm/Variant41449e85ad5bba8e81771f1205260a930f4455c13a5df1cd14e8222b18c23f92.lean/declarations/projectiveseminormaux-smul--1999ef76ef600d486d77d3a6.md) | 77 | `result-track:1999ef76ef600d486d77d3a621fdcf23ac8137abf0c8572b30385ae4dd3645ab` |
| 5 | `theorem` | [bddBelow_projectiveSemiNormAux](../../../../mathematics/Analysis/ProjectiveSeminorm/Variant41449e85ad5bba8e81771f1205260a930f4455c13a5df1cd14e8222b18c23f92.lean/declarations/bddbelow-projectiveseminormaux--d46faed7b2f7e5c00ae06132.md) | 84 | `result-track:d46faed7b2f7e5c00ae06132e24eac4174629e96fa3f72a6d0334a7312d8441a` |
| 6 | `def` | [projectiveSeminorm](../../../../mathematics/Analysis/ProjectiveSeminorm/Variant41449e85ad5bba8e81771f1205260a930f4455c13a5df1cd14e8222b18c23f92.lean/declarations/projectiveseminorm--8b78d2ff87d1f6570763a150.md) | 96 | `declaration-track:8b78d2ff87d1f6570763a150dcdb0b2d935c499f5abe0d65b9b7b109405c8d48` |
| 7 | `theorem` | [projectiveSeminorm_apply](../../../../mathematics/Analysis/ProjectiveSeminorm/Variant41449e85ad5bba8e81771f1205260a930f4455c13a5df1cd14e8222b18c23f92.lean/declarations/projectiveseminorm-apply--36764833f1e5f1aa2bfadce7.md) | 116 | `result-track:36764833f1e5f1aa2bfadce77e351833750bacf3e02998d46b463604eacc2275` |
| 8 | `theorem` | [projectiveSeminorm_tprod_le](../../../../mathematics/Analysis/ProjectiveSeminorm/Variant41449e85ad5bba8e81771f1205260a930f4455c13a5df1cd14e8222b18c23f92.lean/declarations/projectiveseminorm-tprod-le--23bd7179b28a97f5170b0a3f.md) | 119 | `result-track:23bd7179b28a97f5170b0a3ff7fa4c16436e5b5a4bb38b8e950c8c0d3933b3e8` |
| 9 | `theorem` | [norm_eval_le_projectiveSeminorm](../../../../mathematics/Analysis/ProjectiveSeminorm/Variant41449e85ad5bba8e81771f1205260a930f4455c13a5df1cd14e8222b18c23f92.lean/declarations/norm-eval-le-projectiveseminorm--c02303e4431e83e366a47fea.md) | 126 | `result-track:c02303e4431e83e366a47fea75ae604a10e6a00552fcb0fc83dfcf62642d04a5` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
