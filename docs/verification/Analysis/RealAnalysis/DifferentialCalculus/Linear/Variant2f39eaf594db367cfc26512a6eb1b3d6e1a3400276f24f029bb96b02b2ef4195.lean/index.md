# Verification target: GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.Linear.Variant2f39eaf594db367cfc26512a6eb1b3d6e1a3400276f24f029bb96b02b2ef4195

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "7a7ffd50334e8893324d6dd6ebaa87d33a4219e1",
  "lexical_observation_count": 19,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Linear/Variant2f39eaf594db367cfc26512a6eb1b3d6e1a3400276f24f029bb96b02b2ef4195.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Linear/Variant2f39eaf594db367cfc26512a6eb1b3d6e1a3400276f24f029bb96b02b2ef4195.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Linear/Variant2f39eaf594db367cfc26512a6eb1b3d6e1a3400276f24f029bb96b02b2ef4195.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `7a7ffd50334e8893324d6dd6ebaa87d33a4219e1`.

Source path: `GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Linear/Variant2f39eaf594db367cfc26512a6eb1b3d6e1a3400276f24f029bb96b02b2ef4195.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/DifferentialCalculus/Linear/Variant2f39eaf594db367cfc26512a6eb1b3d6e1a3400276f24f029bb96b02b2ef4195.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.Calculus.FDeriv.Basic` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Normed.Operator.BoundedLinearMaps` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [ContinuousLinearMap.hasStrictFDerivAt](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Linear/Variant2f39eaf594db367cfc26512a6eb1b3d6e1a3400276f24f029bb96b02b2ef4195.lean/declarations/continuouslinearmap-hasstrictfderivat--aafc6bd8dc9e315a4c811213.md) | 44 | `result-track:aafc6bd8dc9e315a4c81121397b285e81055a3dac9d5c853b982b46a2b8ebcd9` |
| 2 | `theorem` | [ContinuousLinearMap.hasFDerivAtFilter](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Linear/Variant2f39eaf594db367cfc26512a6eb1b3d6e1a3400276f24f029bb96b02b2ef4195.lean/declarations/continuouslinearmap-hasfderivatfilter--eba097aeb4bf412657f0abf0.md) | 48 | `result-track:eba097aeb4bf412657f0abf01a8905a8cd61bf7ebd1684279f462a5a08f2a1b5` |
| 3 | `theorem` | [ContinuousLinearMap.hasFDerivWithinAt](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Linear/Variant2f39eaf594db367cfc26512a6eb1b3d6e1a3400276f24f029bb96b02b2ef4195.lean/declarations/continuouslinearmap-hasfderivwithinat--451117e5ca9689cb9022772e.md) | 53 | `result-track:451117e5ca9689cb9022772eb136aa34aa6ef3f61da75889fb3ac9e70d7cdd2a` |
| 4 | `theorem` | [ContinuousLinearMap.hasFDerivAt](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Linear/Variant2f39eaf594db367cfc26512a6eb1b3d6e1a3400276f24f029bb96b02b2ef4195.lean/declarations/continuouslinearmap-hasfderivat--2497d65fbbeb17aa0bb99b2d.md) | 57 | `result-track:2497d65fbbeb17aa0bb99b2d571dbbdf912aa209cdb3819d03f0f061463b694f` |
| 5 | `theorem` | [ContinuousLinearMap.differentiableAt](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Linear/Variant2f39eaf594db367cfc26512a6eb1b3d6e1a3400276f24f029bb96b02b2ef4195.lean/declarations/continuouslinearmap-differentiableat--f463bfda474c81162a3e1b8d.md) | 61 | `result-track:f463bfda474c81162a3e1b8d7a1a43454fd0bc0057d4127d063d74771dde58c2` |
| 6 | `theorem` | [ContinuousLinearMap.differentiableWithinAt](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Linear/Variant2f39eaf594db367cfc26512a6eb1b3d6e1a3400276f24f029bb96b02b2ef4195.lean/declarations/continuouslinearmap-differentiablewithinat--ca41b20e530ef756ddd950f1.md) | 65 | `result-track:ca41b20e530ef756ddd950f10d66e6b86fbc5316274205490c917940fcab4cf9` |
| 7 | `theorem` | [ContinuousLinearMap.fderiv](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Linear/Variant2f39eaf594db367cfc26512a6eb1b3d6e1a3400276f24f029bb96b02b2ef4195.lean/declarations/continuouslinearmap-fderiv--efeb2742f9588ab264abb6b0.md) | 69 | `result-track:efeb2742f9588ab264abb6b0862ed7ade9574b1dff5f8711989987b67135c97e` |
| 8 | `theorem` | [ContinuousLinearMap.fderivWithin](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Linear/Variant2f39eaf594db367cfc26512a6eb1b3d6e1a3400276f24f029bb96b02b2ef4195.lean/declarations/continuouslinearmap-fderivwithin--c184fc554af6126963965538.md) | 72 | `result-track:c184fc554af61269639655386a749244d9d13cdac1a653554adef7af2cb6016f` |
| 9 | `theorem` | [ContinuousLinearMap.differentiable](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Linear/Variant2f39eaf594db367cfc26512a6eb1b3d6e1a3400276f24f029bb96b02b2ef4195.lean/declarations/continuouslinearmap-differentiable--df40f01028c5e3fa3b9300b4.md) | 78 | `result-track:df40f01028c5e3fa3b9300b419ee9f1a719a2f308214c3be5e896ccdb476e1cf` |
| 10 | `theorem` | [ContinuousLinearMap.differentiableOn](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Linear/Variant2f39eaf594db367cfc26512a6eb1b3d6e1a3400276f24f029bb96b02b2ef4195.lean/declarations/continuouslinearmap-differentiableon--a968fc8aa7e2eed0451e7b8e.md) | 82 | `result-track:a968fc8aa7e2eed0451e7b8ef0f6964c6895a84bbd96095f73ae8eff93312371` |
| 11 | `theorem` | [IsBoundedLinearMap.hasFDerivAtFilter](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Linear/Variant2f39eaf594db367cfc26512a6eb1b3d6e1a3400276f24f029bb96b02b2ef4195.lean/declarations/isboundedlinearmap-hasfderivatfilter--04afb6e26c2c5735257e099c.md) | 85 | `result-track:04afb6e26c2c5735257e099c744398f8f6215006fe4255125cccf596c95abf01` |
| 12 | `theorem` | [IsBoundedLinearMap.hasFDerivWithinAt](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Linear/Variant2f39eaf594db367cfc26512a6eb1b3d6e1a3400276f24f029bb96b02b2ef4195.lean/declarations/isboundedlinearmap-hasfderivwithinat--56b672ca4a4c1d1f41a02435.md) | 90 | `result-track:56b672ca4a4c1d1f41a0243524ea8ec76a5f1bf73f0adc9ba2a1004f312ca541` |
| 13 | `theorem` | [IsBoundedLinearMap.hasFDerivAt](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Linear/Variant2f39eaf594db367cfc26512a6eb1b3d6e1a3400276f24f029bb96b02b2ef4195.lean/declarations/isboundedlinearmap-hasfderivat--bdb0e74a771a99bb00f647d4.md) | 95 | `result-track:bdb0e74a771a99bb00f647d4e7e53e3a29a681540b27e3f2b7ffda74c5ba7964` |
| 14 | `theorem` | [IsBoundedLinearMap.differentiableAt](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Linear/Variant2f39eaf594db367cfc26512a6eb1b3d6e1a3400276f24f029bb96b02b2ef4195.lean/declarations/isboundedlinearmap-differentiableat--555706cb50e78a8ae2fbd4bd.md) | 100 | `result-track:555706cb50e78a8ae2fbd4bde9526afa9646e3cc6dd98c0c2c02150d6185576d` |
| 15 | `theorem` | [IsBoundedLinearMap.differentiableWithinAt](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Linear/Variant2f39eaf594db367cfc26512a6eb1b3d6e1a3400276f24f029bb96b02b2ef4195.lean/declarations/isboundedlinearmap-differentiablewithinat--9fe2d08b74ad8e7bb48582c9.md) | 104 | `result-track:9fe2d08b74ad8e7bb48582c9beb09683d50360152268955309e1e2c7f3ea21b4` |
| 16 | `theorem` | [IsBoundedLinearMap.fderiv](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Linear/Variant2f39eaf594db367cfc26512a6eb1b3d6e1a3400276f24f029bb96b02b2ef4195.lean/declarations/isboundedlinearmap-fderiv--39e0de6018cf7866838ad74f.md) | 108 | `result-track:39e0de6018cf7866838ad74f3fb45ae74ac29f476c9d96440c74366640ace460` |
| 17 | `theorem` | [IsBoundedLinearMap.fderivWithin](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Linear/Variant2f39eaf594db367cfc26512a6eb1b3d6e1a3400276f24f029bb96b02b2ef4195.lean/declarations/isboundedlinearmap-fderivwithin--f09a5ad8048a2f940b0e3e23.md) | 112 | `result-track:f09a5ad8048a2f940b0e3e236b2b8039f31f56bac92bd6280124d7651e0131fb` |
| 18 | `theorem` | [IsBoundedLinearMap.differentiable](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Linear/Variant2f39eaf594db367cfc26512a6eb1b3d6e1a3400276f24f029bb96b02b2ef4195.lean/declarations/isboundedlinearmap-differentiable--82d392baa87645d263cbc48e.md) | 118 | `result-track:82d392baa87645d263cbc48e5cb26b6a7c6ee97c26b2ca72f9f1237b6d061709` |
| 19 | `theorem` | [IsBoundedLinearMap.differentiableOn](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Linear/Variant2f39eaf594db367cfc26512a6eb1b3d6e1a3400276f24f029bb96b02b2ef4195.lean/declarations/isboundedlinearmap-differentiableon--0980dd79bc0545c377255943.md) | 122 | `result-track:0980dd79bc0545c377255943ed6f1db9cea610ab495e2f9541b9bc2802fda444` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
