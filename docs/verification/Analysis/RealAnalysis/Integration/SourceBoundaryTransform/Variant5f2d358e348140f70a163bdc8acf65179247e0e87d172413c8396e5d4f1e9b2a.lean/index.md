# Verification target: GRWTSK.Analysis.RealAnalysis.Integration.SourceBoundaryTransform.Variant5f2d358e348140f70a163bdc8acf65179247e0e87d172413c8396e5d4f1e9b2a

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "229bad1834236abb1ac2d9baf54f17aa468f95c3",
  "lexical_observation_count": 9,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/SourceBoundaryTransform/Variant5f2d358e348140f70a163bdc8acf65179247e0e87d172413c8396e5d4f1e9b2a.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceBoundaryTransform/Variant5f2d358e348140f70a163bdc8acf65179247e0e87d172413c8396e5d4f1e9b2a.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceBoundaryTransform/Variant5f2d358e348140f70a163bdc8acf65179247e0e87d172413c8396e5d4f1e9b2a.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `229bad1834236abb1ac2d9baf54f17aa468f95c3`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/SourceBoundaryTransform/Variant5f2d358e348140f70a163bdc8acf65179247e0e87d172413c8396e5d4f1e9b2a.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_SOURCE_DEPENDENCY`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/SourceBoundaryTransform/Variant5f2d358e348140f70a163bdc8acf65179247e0e87d172413c8396e5d4f1e9b2a.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `ActualMomentDictionary` — import line 2; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Complex.RealDeriv` — import line 3; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [normalizedTransform](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceBoundaryTransform/Variant5f2d358e348140f70a163bdc8acf65179247e0e87d172413c8396e5d4f1e9b2a.lean/declarations/normalizedtransform--16f9fd183aefb96e382a23eb.md) | 25 | `declaration-track:16f9fd183aefb96e382a23eb40fda4bd6933783abf3fa4eb8c0c86846997b2bc` |
| 2 | `def` | [boundaryTransform](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceBoundaryTransform/Variant5f2d358e348140f70a163bdc8acf65179247e0e87d172413c8396e5d4f1e9b2a.lean/declarations/boundarytransform--8b47f6e5e0c49ce196428f0a.md) | 30 | `declaration-track:8b47f6e5e0c49ce196428f0ac2edc987a31e9a0ec2854466dd86340337efd2f3` |
| 3 | `theorem` | [normalizedTransform_dictionary](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceBoundaryTransform/Variant5f2d358e348140f70a163bdc8acf65179247e0e87d172413c8396e5d4f1e9b2a.lean/declarations/normalizedtransform-dictionary--1418f031d70d89160f875c63.md) | 33 | `result-track:1418f031d70d89160f875c631265ffd70ce84d9867aa7659928726064d853f30` |
| 4 | `theorem` | [normalized_integrand_integrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceBoundaryTransform/Variant5f2d358e348140f70a163bdc8acf65179247e0e87d172413c8396e5d4f1e9b2a.lean/declarations/normalized-integrand-integrable--b6f5d362f4eafcf78aa97b7d.md) | 43 | `result-track:b6f5d362f4eafcf78aa97b7d1cd956faafb3f513447964e44c0fb5b3dd02b5fa` |
| 5 | `theorem` | [full_complex_correlation_square](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceBoundaryTransform/Variant5f2d358e348140f70a163bdc8acf65179247e0e87d172413c8396e5d4f1e9b2a.lean/declarations/full-complex-correlation-square--673e4142be858d3625d9d4f2.md) | 54 | `result-track:673e4142be858d3625d9d4f2d0735f6cc97f7c640f810906933249a39fc95ae2` |
| 6 | `theorem` | [interval_complex_correlation_square](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceBoundaryTransform/Variant5f2d358e348140f70a163bdc8acf65179247e0e87d172413c8396e5d4f1e9b2a.lean/declarations/interval-complex-correlation-square--6ed0b27fc0911663ca20fa44.md) | 84 | `result-track:6ed0b27fc0911663ca20fa4400095681e6de24272b569dd034b98fe5448efb7f` |
| 7 | `theorem` | [critical_complex_ibp](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceBoundaryTransform/Variant5f2d358e348140f70a163bdc8acf65179247e0e87d172413c8396e5d4f1e9b2a.lean/declarations/critical-complex-ibp--bd6857f4ab3c8e0e15b86faa.md) | 105 | `result-track:bd6857f4ab3c8e0e15b86faa01c47d7065d7882174874f1f5f04b721570e934e` |
| 8 | `theorem` | [boundary_integrand_intervalIntegrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceBoundaryTransform/Variant5f2d358e348140f70a163bdc8acf65179247e0e87d172413c8396e5d4f1e9b2a.lean/declarations/boundary-integrand-intervalintegrable--e364e4a151ec80dfda437b54.md) | 153 | `result-track:e364e4a151ec80dfda437b54ec40ac3f6a24a70e8f44c06bd39ebb1ac3be9c9b` |
| 9 | `theorem` | [boundary_transform_exact](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceBoundaryTransform/Variant5f2d358e348140f70a163bdc8acf65179247e0e87d172413c8396e5d4f1e9b2a.lean/declarations/boundary-transform-exact--36cea5dd966a189d2ece2a95.md) | 165 | `result-track:36cea5dd966a189d2ece2a95abc1524e75639daf4e06363342c5cd45088136bf` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
