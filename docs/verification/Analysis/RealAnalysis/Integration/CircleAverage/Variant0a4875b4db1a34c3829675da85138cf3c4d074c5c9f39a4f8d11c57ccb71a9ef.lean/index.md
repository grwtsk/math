# Verification target: GRWTSK.Analysis.RealAnalysis.Integration.CircleAverage.Variant0a4875b4db1a34c3829675da85138cf3c4d074c5c9f39a4f8d11c57ccb71a9ef

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "8dfae29b15e00c0f5252a479b32dcc714d270f38",
  "lexical_observation_count": 13,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/CircleAverage/Variant0a4875b4db1a34c3829675da85138cf3c4d074c5c9f39a4f8d11c57ccb71a9ef.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/Integration/CircleAverage/Variant0a4875b4db1a34c3829675da85138cf3c4d074c5c9f39a4f8d11c57ccb71a9ef.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/Integration/CircleAverage/Variant0a4875b4db1a34c3829675da85138cf3c4d074c5c9f39a4f8d11c57ccb71a9ef.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `8dfae29b15e00c0f5252a479b32dcc714d270f38`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/CircleAverage/Variant0a4875b4db1a34c3829675da85138cf3c4d074c5c9f39a4f8d11c57ccb71a9ef.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/CircleAverage/Variant0a4875b4db1a34c3829675da85138cf3c4d074c5c9f39a4f8d11c57ccb71a9ef.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.MeasureTheory.Integral.CircleIntegral` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Integral.IntervalAverage` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Integral.IntervalIntegral.Periodic` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [circleAverage](../../../../../../mathematics/Analysis/RealAnalysis/Integration/CircleAverage/Variant0a4875b4db1a34c3829675da85138cf3c4d074c5c9f39a4f8d11c57ccb71a9ef.lean/declarations/circleaverage--96f8c6be47a06753eea0152a.md) | 49 | `declaration-track:96f8c6be47a06753eea0152ae0fd3660006b6cb1bcb7bf091b3eb03352293060` |
| 2 | `lemma` | [circleAverage_def](../../../../../../mathematics/Analysis/RealAnalysis/Integration/CircleAverage/Variant0a4875b4db1a34c3829675da85138cf3c4d074c5c9f39a4f8d11c57ccb71a9ef.lean/declarations/circleaverage-def--6b14821af3ce8eefe671d9c3.md) | 52 | `result-track:6b14821af3ce8eefe671d9c370dcaadc6e077ee2c6bf4e0734a8766077b6bcaf` |
| 3 | `lemma` | [circleAverage_eq_intervalAverage](../../../../../../mathematics/Analysis/RealAnalysis/Integration/CircleAverage/Variant0a4875b4db1a34c3829675da85138cf3c4d074c5c9f39a4f8d11c57ccb71a9ef.lean/declarations/circleaverage-eq-intervalaverage--3ea4d448b59b073c5d8f5e57.md) | 56 | `result-track:3ea4d448b59b073c5d8f5e57e02b4be40404612b42ad2356a608685534dc7edb` |
| 4 | `lemma` | [circleAverage_zero](../../../../../../mathematics/Analysis/RealAnalysis/Integration/CircleAverage/Variant0a4875b4db1a34c3829675da85138cf3c4d074c5c9f39a4f8d11c57ccb71a9ef.lean/declarations/circleaverage-zero--b5e930d1be94896a03dde136.md) | 61 | `result-track:b5e930d1be94896a03dde1363019c911193afb59bc2c687391ed94b751f68acb` |
| 5 | `lemma` | [circleAverage_fun_add](../../../../../../mathematics/Analysis/RealAnalysis/Integration/CircleAverage/Variant0a4875b4db1a34c3829675da85138cf3c4d074c5c9f39a4f8d11c57ccb71a9ef.lean/declarations/circleaverage-fun-add--3b628eba940dc3e9a01576b6.md) | 72 | `result-track:3b628eba940dc3e9a01576b67edf405bebd17a1543b9ddf44cbf9b233eb14507` |
| 6 | `lemma` | [circleAverage_eq_integral_add](../../../../../../mathematics/Analysis/RealAnalysis/Integration/CircleAverage/Variant0a4875b4db1a34c3829675da85138cf3c4d074c5c9f39a4f8d11c57ccb71a9ef.lean/declarations/circleaverage-eq-integral-add--1e4e32f436db2691a7e96246.md) | 86 | `result-track:1e4e32f436db2691a7e962463af9b1ae942e3b9fcb1dc935686c9ff55f61cfce` |
| 7 | `theorem` | [circleAverage_neg_radius](../../../../../../mathematics/Analysis/RealAnalysis/Integration/CircleAverage/Variant0a4875b4db1a34c3829675da85138cf3c4d074c5c9f39a4f8d11c57ccb71a9ef.lean/declarations/circleaverage-neg-radius--8b8a1e055479e4f85f2fc2c9.md) | 98 | `result-track:8b8a1e055479e4f85f2fc2c992c00308534009b0a20e236fb8967e1b717a00d4` |
| 8 | `theorem` | [circleAverage_abs_radius](../../../../../../mathematics/Analysis/RealAnalysis/Integration/CircleAverage/Variant0a4875b4db1a34c3829675da85138cf3c4d074c5c9f39a4f8d11c57ccb71a9ef.lean/declarations/circleaverage-abs-radius--bf1aaabbd5fefc73e4c47bbe.md) | 104 | `result-track:bf1aaabbd5fefc73e4c47bbe33715ace1172b292269e050f2bd95296af86a15f` |
| 9 | `theorem` | [circleAverage_congr_codiscreteWithin](../../../../../../mathematics/Analysis/RealAnalysis/Integration/CircleAverage/Variant0a4875b4db1a34c3829675da85138cf3c4d074c5c9f39a4f8d11c57ccb71a9ef.lean/declarations/circleaverage-congr-codiscretewithin--ea72e3e69db085d840e8e819.md) | 111 | `result-track:ea72e3e69db085d840e8e8192c280a6bdeb392c0d4a6a10cb0cfeddc9a7c1d03` |
| 10 | `theorem` | [circleAverage_smul](../../../../../../mathematics/Analysis/RealAnalysis/Integration/CircleAverage/Variant0a4875b4db1a34c3829675da85138cf3c4d074c5c9f39a4f8d11c57ccb71a9ef.lean/declarations/circleaverage-smul--7e56c0c07269fc00c2be5c14.md) | 125 | `result-track:7e56c0c07269fc00c2be5c147efcc7bc8c1b36e8fdb273be0fbf77a3c628964c` |
| 11 | `theorem` | [circleAverage_fun_smul](../../../../../../mathematics/Analysis/RealAnalysis/Integration/CircleAverage/Variant0a4875b4db1a34c3829675da85138cf3c4d074c5c9f39a4f8d11c57ccb71a9ef.lean/declarations/circleaverage-fun-smul--cda1796a62bbaf5203a6495c.md) | 133 | `result-track:cda1796a62bbaf5203a6495c406b3d264348be0a0411063e55df61e23870e6af` |
| 12 | `theorem` | [circleAverage_add](../../../../../../mathematics/Analysis/RealAnalysis/Integration/CircleAverage/Variant0a4875b4db1a34c3829675da85138cf3c4d074c5c9f39a4f8d11c57ccb71a9ef.lean/declarations/circleaverage-add--20b277232004715e29043d25.md) | 138 | `result-track:20b277232004715e29043d25252aec0eea70ec254a2e874b017324475d0216a0` |
| 13 | `theorem` | [circleAverage_sum](../../../../../../mathematics/Analysis/RealAnalysis/Integration/CircleAverage/Variant0a4875b4db1a34c3829675da85138cf3c4d074c5c9f39a4f8d11c57ccb71a9ef.lean/declarations/circleaverage-sum--24b10bac43d2e948a8b3edbb.md) | 145 | `result-track:24b10bac43d2e948a8b3edbba57669a57459de31207b59d7bb257374ea43e152` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
