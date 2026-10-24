# Verification target: GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.Attempt02.Variant4616d1425d6a545a0bc48df580fee6088fa53303aac667f2baa6b9327350b855

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "95a39ed42eb5a7c5c9e4113043695b590368d4cb",
  "lexical_observation_count": 7,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Attempt02/Variant4616d1425d6a545a0bc48df580fee6088fa53303aac667f2baa6b9327350b855.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Attempt02/Variant4616d1425d6a545a0bc48df580fee6088fa53303aac667f2baa6b9327350b855.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Attempt02/Variant4616d1425d6a545a0bc48df580fee6088fa53303aac667f2baa6b9327350b855.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `95a39ed42eb5a7c5c9e4113043695b590368d4cb`.

Source path: `GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Attempt02/Variant4616d1425d6a545a0bc48df580fee6088fa53303aac667f2baa6b9327350b855.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/DifferentialCalculus/Attempt02/Variant4616d1425d6a545a0bc48df580fee6088fa53303aac667f2baa6b9327350b855.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `ActualLogCellMoment` — import line 1; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Calculus.ParametricIntegral` — import line 2; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Calculus.SmoothSeries` — import line 3; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [cellKernel](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Attempt02/Variant4616d1425d6a545a0bc48df580fee6088fa53303aac667f2baa6b9327350b855.lean/declarations/cellkernel--5e3eebb69284e156104635aa.md) | 13 | `declaration-track:5e3eebb69284e156104635aaaa73813d6f18d69826ec859deeaa08ec4fdcfed4` |
| 2 | `def` | [cellDerivative](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Attempt02/Variant4616d1425d6a545a0bc48df580fee6088fa53303aac667f2baa6b9327350b855.lean/declarations/cellderivative--c4c38f1c2b3247cd650f5603.md) | 14 | `declaration-track:c4c38f1c2b3247cd650f56036e532e407ce9fafa5b24ee2f7577b1533b7bef14` |
| 3 | `def` | [derivativeMajorant](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Attempt02/Variant4616d1425d6a545a0bc48df580fee6088fa53303aac667f2baa6b9327350b855.lean/declarations/derivativemajorant--fb52b0e0264beff4fa6fed67.md) | 15 | `declaration-track:fb52b0e0264beff4fa6fed67516c3b4b92abe081726e942af6e0905823e5e9d5` |
| 4 | `theorem` | [cellKernel_integrable](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Attempt02/Variant4616d1425d6a545a0bc48df580fee6088fa53303aac667f2baa6b9327350b855.lean/declarations/cellkernel-integrable--303cfd3f1b1b5d621b89e977.md) | 17 | `result-track:303cfd3f1b1b5d621b89e977b7b996aa9dc832632a27474344a60ddd00cab7a9` |
| 5 | `theorem` | [cellDerivative_integrable](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Attempt02/Variant4616d1425d6a545a0bc48df580fee6088fa53303aac667f2baa6b9327350b855.lean/declarations/cellderivative-integrable--b3d392e43091444de1e87a33.md) | 27 | `result-track:b3d392e43091444de1e87a330d14694fc09690c6d4dfa2f1a5d8af43c8f0997e` |
| 6 | `theorem` | [cellKernel_hasDerivAt](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Attempt02/Variant4616d1425d6a545a0bc48df580fee6088fa53303aac667f2baa6b9327350b855.lean/declarations/cellkernel-hasderivat--d8adae24ae79c3a2e08731a8.md) | 38 | `result-track:d8adae24ae79c3a2e08731a8c9983e7d52efd371c7dc4e799069557f6a1ea445` |
| 7 | `theorem` | [cellDerivative_bound](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Attempt02/Variant4616d1425d6a545a0bc48df580fee6088fa53303aac667f2baa6b9327350b855.lean/declarations/cellderivative-bound--1b8f8c3343ac706fe76a8e97.md) | 54 | `result-track:1b8f8c3343ac706fe76a8e9753679e07a6a01c1e8fe0df5d372ee2f344d0fc54` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
