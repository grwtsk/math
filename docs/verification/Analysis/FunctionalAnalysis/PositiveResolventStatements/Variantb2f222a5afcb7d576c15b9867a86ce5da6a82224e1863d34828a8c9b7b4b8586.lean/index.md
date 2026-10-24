# Verification target: GRWTSK.Analysis.FunctionalAnalysis.PositiveResolventStatements.Variantb2f222a5afcb7d576c15b9867a86ce5da6a82224e1863d34828a8c9b7b4b8586

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "6be7fa7898d403066195c967a94980cb39907ea4",
  "lexical_observation_count": 32,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/FunctionalAnalysis/PositiveResolventStatements/Variantb2f222a5afcb7d576c15b9867a86ce5da6a82224e1863d34828a8c9b7b4b8586.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/FunctionalAnalysis/PositiveResolventStatements/Variantb2f222a5afcb7d576c15b9867a86ce5da6a82224e1863d34828a8c9b7b4b8586.lean/index.md) · [Full source](../../../../../mathematics/Analysis/FunctionalAnalysis/PositiveResolventStatements/Variantb2f222a5afcb7d576c15b9867a86ce5da6a82224e1863d34828a8c9b7b4b8586.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `6be7fa7898d403066195c967a94980cb39907ea4`.

Source path: `GRWTSK/Analysis/FunctionalAnalysis/PositiveResolventStatements/Variantb2f222a5afcb7d576c15b9867a86ce5da6a82224e1863d34828a8c9b7b4b8586.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/FunctionalAnalysis/PositiveResolventStatements/Variantb2f222a5afcb7d576c15b9867a86ce5da6a82224e1863d34828a8c9b7b4b8586.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.InnerProductSpace.Positive` — import line 1; external provider; requires a separately pinned dependency.
- `FormalResearch.RiemannHypothesis.SourceComparison.HalfLineExponential` — import line 2; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic` — import line 3; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [positiveShift](../../../../../mathematics/Analysis/FunctionalAnalysis/PositiveResolventStatements/Variantb2f222a5afcb7d576c15b9867a86ce5da6a82224e1863d34828a8c9b7b4b8586.lean/declarations/positiveshift--c63700401bf275feafaab34b.md) | 21 | `declaration-track:c63700401bf275feafaab34bbafc6648dc6af6441a32fe549eb161756be13ad9` |
| 2 | `theorem` | [positiveShift_isPositive](../../../../../mathematics/Analysis/FunctionalAnalysis/PositiveResolventStatements/Variantb2f222a5afcb7d576c15b9867a86ce5da6a82224e1863d34828a8c9b7b4b8586.lean/declarations/positiveshift-ispositive--3466749bfa48a89b84d31820.md) | 25 | `result-track:3466749bfa48a89b84d31820a95c7321e78f978b4758e2690a67cac28944bbdc` |
| 3 | `theorem` | [positiveShift_coercive](../../../../../mathematics/Analysis/FunctionalAnalysis/PositiveResolventStatements/Variantb2f222a5afcb7d576c15b9867a86ce5da6a82224e1863d34828a8c9b7b4b8586.lean/declarations/positiveshift-coercive--c9f82bc58bc75e3edf9dcaea.md) | 32 | `result-track:c9f82bc58bc75e3edf9dcaea01388eac77bb4d133f8661aa4f83f9071f0bb519` |
| 4 | `theorem` | [positiveShift_isUnit](../../../../../mathematics/Analysis/FunctionalAnalysis/PositiveResolventStatements/Variantb2f222a5afcb7d576c15b9867a86ce5da6a82224e1863d34828a8c9b7b4b8586.lean/declarations/positiveshift-isunit--fa5eec0113bfcc7a0e572375.md) | 47 | `result-track:fa5eec0113bfcc7a0e572375f6992231039fb8c3e60ad7bfcb17a902085693df` |
| 5 | `def` | [positiveResolvent](../../../../../mathematics/Analysis/FunctionalAnalysis/PositiveResolventStatements/Variantb2f222a5afcb7d576c15b9867a86ce5da6a82224e1863d34828a8c9b7b4b8586.lean/declarations/positiveresolvent--7eb7ea1427631fd442b79b9e.md) | 58 | `declaration-track:7eb7ea1427631fd442b79b9ee4712cd4ce3b7be068d9c0854f4107fe008ff259` |
| 6 | `theorem` | [positiveShift_mul_resolvent](../../../../../mathematics/Analysis/FunctionalAnalysis/PositiveResolventStatements/Variantb2f222a5afcb7d576c15b9867a86ce5da6a82224e1863d34828a8c9b7b4b8586.lean/declarations/positiveshift-mul-resolvent--4a04e59673ec20efbcb0ac16.md) | 62 | `result-track:4a04e59673ec20efbcb0ac16a8d35aa5b9aca51083b4166bb6f8ac29356a3a11` |
| 7 | `theorem` | [resolvent_mul_positiveShift](../../../../../mathematics/Analysis/FunctionalAnalysis/PositiveResolventStatements/Variantb2f222a5afcb7d576c15b9867a86ce5da6a82224e1863d34828a8c9b7b4b8586.lean/declarations/resolvent-mul-positiveshift--fb0d4c8e5e3115d10e2efcf3.md) | 67 | `result-track:fb0d4c8e5e3115d10e2efcf3fc6bed2627f61838770ec349dcbccda9f90dba2f` |
| 8 | `theorem` | [positiveShift_resolvent_apply](../../../../../mathematics/Analysis/FunctionalAnalysis/PositiveResolventStatements/Variantb2f222a5afcb7d576c15b9867a86ce5da6a82224e1863d34828a8c9b7b4b8586.lean/declarations/positiveshift-resolvent-apply--0cb04ca0e35c802a9774a45d.md) | 72 | `result-track:0cb04ca0e35c802a9774a45dff212ff1f332584155eb838972054159e823c49c` |
| 9 | `theorem` | [positiveResolvent_norm_le](../../../../../mathematics/Analysis/FunctionalAnalysis/PositiveResolventStatements/Variantb2f222a5afcb7d576c15b9867a86ce5da6a82224e1863d34828a8c9b7b4b8586.lean/declarations/positiveresolvent-norm-le--df1c6af2d0bab99c48616497.md) | 79 | `result-track:df1c6af2d0bab99c486164972358e259185b29897ebaffeccddc6a4fbcffea9f` |
| 10 | `theorem` | [positiveResolvent_isPositive](../../../../../mathematics/Analysis/FunctionalAnalysis/PositiveResolventStatements/Variantb2f222a5afcb7d576c15b9867a86ce5da6a82224e1863d34828a8c9b7b4b8586.lean/declarations/positiveresolvent-ispositive--b314ae1f0e881fb9e207610d.md) | 95 | `result-track:b314ae1f0e881fb9e207610dcc509e3acfa0836677c6db4cec3e88203195763a` |
| 11 | `theorem` | [positiveResolvent_sub](../../../../../mathematics/Analysis/FunctionalAnalysis/PositiveResolventStatements/Variantb2f222a5afcb7d576c15b9867a86ce5da6a82224e1863d34828a8c9b7b4b8586.lean/declarations/positiveresolvent-sub--bc1c5872f445ceedf697ba4f.md) | 106 | `result-track:bc1c5872f445ceedf697ba4f9ec4be1401aa155465d296b20852b45afc80a8d7` |
| 12 | `theorem` | [positiveResolvent_sub_norm_le](../../../../../mathematics/Analysis/FunctionalAnalysis/PositiveResolventStatements/Variantb2f222a5afcb7d576c15b9867a86ce5da6a82224e1863d34828a8c9b7b4b8586.lean/declarations/positiveresolvent-sub-norm-le--f6634b273bb9c0987f52f245.md) | 118 | `result-track:f6634b273bb9c0987f52f245e059d9a8a33e92b226d6a6a4efbe67871a03391a` |
| 13 | `def` | [regularizedMass](../../../../../mathematics/Analysis/FunctionalAnalysis/PositiveResolventStatements/Variantb2f222a5afcb7d576c15b9867a86ce5da6a82224e1863d34828a8c9b7b4b8586.lean/declarations/regularizedmass--cbf8b74ae5e2101cfad2a4ef.md) | 132 | `declaration-track:cbf8b74ae5e2101cfad2a4efe03addc78d927411d9d32ce403925478b8872a29` |
| 14 | `theorem` | [abs_re_inner_map_le](../../../../../mathematics/Analysis/FunctionalAnalysis/PositiveResolventStatements/Variantb2f222a5afcb7d576c15b9867a86ce5da6a82224e1863d34828a8c9b7b4b8586.lean/declarations/abs-re-inner-map-le--13d9372f27acaebfa29227f7.md) | 136 | `result-track:13d9372f27acaebfa29227f7ca539c838b875487aefbeb42f3fe2b22ae8da77d` |
| 15 | `theorem` | [regularizedMass_sub_abs_le](../../../../../mathematics/Analysis/FunctionalAnalysis/PositiveResolventStatements/Variantb2f222a5afcb7d576c15b9867a86ce5da6a82224e1863d34828a8c9b7b4b8586.lean/declarations/regularizedmass-sub-abs-le--bc130e0307df67f93c5b61ba.md) | 145 | `result-track:bc130e0307df67f93c5b61ba4325103d4d6313e9940469739c41c96916283d5e` |
| 16 | `theorem` | [reference_regularizedMass_sub_abs_le](../../../../../mathematics/Analysis/FunctionalAnalysis/PositiveResolventStatements/Variantb2f222a5afcb7d576c15b9867a86ce5da6a82224e1863d34828a8c9b7b4b8586.lean/declarations/reference-regularizedmass-sub-abs-le--08652baa171b73cb4fafb846.md) | 165 | `result-track:08652baa171b73cb4fafb846b21dea2f01ca76fc0ce19ad01a64211f9f8d3fbe` |
| 17 | `example` | [(anonymous)](../../../../../mathematics/Analysis/FunctionalAnalysis/PositiveResolventStatements/Variantb2f222a5afcb7d576c15b9867a86ce5da6a82224e1863d34828a8c9b7b4b8586.lean/declarations/example--3fc95473dce3366c1b262e6f.md) | 190 | `declaration-track:3fc95473dce3366c1b262e6f77d5663115ea9cbdd618e49088f10650790ce6ff` |
| 18 | `example` | [(anonymous)](../../../../../mathematics/Analysis/FunctionalAnalysis/PositiveResolventStatements/Variantb2f222a5afcb7d576c15b9867a86ce5da6a82224e1863d34828a8c9b7b4b8586.lean/declarations/example--e56b13ea0e5082b114dff94d.md) | 192 | `declaration-track:e56b13ea0e5082b114dff94d4e7e8d77d41abc8292d1ecf73372ab36f0e12b9a` |
| 19 | `example` | [(anonymous)](../../../../../mathematics/Analysis/FunctionalAnalysis/PositiveResolventStatements/Variantb2f222a5afcb7d576c15b9867a86ce5da6a82224e1863d34828a8c9b7b4b8586.lean/declarations/example--3086875f3a55a363fa9b23c7.md) | 194 | `declaration-track:3086875f3a55a363fa9b23c7d47cc0889c1f84746c90fd6899b1304625b3e865` |
| 20 | `example` | [(anonymous)](../../../../../mathematics/Analysis/FunctionalAnalysis/PositiveResolventStatements/Variantb2f222a5afcb7d576c15b9867a86ce5da6a82224e1863d34828a8c9b7b4b8586.lean/declarations/example--319de7124c4c2d43a9fa3445.md) | 196 | `declaration-track:319de7124c4c2d43a9fa34457372568a8724995f47880000dd44c6c1b2e0d3d5` |
| 21 | `example` | [(anonymous)](../../../../../mathematics/Analysis/FunctionalAnalysis/PositiveResolventStatements/Variantb2f222a5afcb7d576c15b9867a86ce5da6a82224e1863d34828a8c9b7b4b8586.lean/declarations/example--d0737fc4b79e6d9300d24d90.md) | 200 | `declaration-track:d0737fc4b79e6d9300d24d90d491643b202a48e929988f16e4fa03458129d379` |
| 22 | `example` | [(anonymous)](../../../../../mathematics/Analysis/FunctionalAnalysis/PositiveResolventStatements/Variantb2f222a5afcb7d576c15b9867a86ce5da6a82224e1863d34828a8c9b7b4b8586.lean/declarations/example--4dcac669acaa59bb77531b24.md) | 205 | `declaration-track:4dcac669acaa59bb77531b24018b39369ca947e69db11bbd85ca37bf52a9e6e3` |
| 23 | `example` | [(anonymous)](../../../../../mathematics/Analysis/FunctionalAnalysis/PositiveResolventStatements/Variantb2f222a5afcb7d576c15b9867a86ce5da6a82224e1863d34828a8c9b7b4b8586.lean/declarations/example--e3ca1b4be7b1e37147f385ac.md) | 209 | `declaration-track:e3ca1b4be7b1e37147f385ac3be8e11ef224edb6ec332e9e8d4a16682faa4a86` |
| 24 | `example` | [(anonymous)](../../../../../mathematics/Analysis/FunctionalAnalysis/PositiveResolventStatements/Variantb2f222a5afcb7d576c15b9867a86ce5da6a82224e1863d34828a8c9b7b4b8586.lean/declarations/example--5422c465bb695d0032c78962.md) | 213 | `declaration-track:5422c465bb695d0032c78962b5f338a103cbcaa37627ff20c95af96aeb98473d` |
| 25 | `example` | [(anonymous)](../../../../../mathematics/Analysis/FunctionalAnalysis/PositiveResolventStatements/Variantb2f222a5afcb7d576c15b9867a86ce5da6a82224e1863d34828a8c9b7b4b8586.lean/declarations/example--15cb1e3f53d57f2f7a575861.md) | 217 | `declaration-track:15cb1e3f53d57f2f7a575861219e570a7d57b128139967a30d62ab82dd82d4bd` |
| 26 | `example` | [(anonymous)](../../../../../mathematics/Analysis/FunctionalAnalysis/PositiveResolventStatements/Variantb2f222a5afcb7d576c15b9867a86ce5da6a82224e1863d34828a8c9b7b4b8586.lean/declarations/example--98f6f7d36c450be02b6c359e.md) | 222 | `declaration-track:98f6f7d36c450be02b6c359ee744392b5ffd497c4b8aa176c70cb76bf8e56a79` |
| 27 | `example` | [(anonymous)](../../../../../mathematics/Analysis/FunctionalAnalysis/PositiveResolventStatements/Variantb2f222a5afcb7d576c15b9867a86ce5da6a82224e1863d34828a8c9b7b4b8586.lean/declarations/example--47fa2f2aaf4f48fc406031c1.md) | 226 | `declaration-track:47fa2f2aaf4f48fc406031c1d9410d7c785c4e942b6d11be8701ae3fd42f6f29` |
| 28 | `example` | [(anonymous)](../../../../../mathematics/Analysis/FunctionalAnalysis/PositiveResolventStatements/Variantb2f222a5afcb7d576c15b9867a86ce5da6a82224e1863d34828a8c9b7b4b8586.lean/declarations/example--b468c524e645e9842d7890e2.md) | 230 | `declaration-track:b468c524e645e9842d7890e20fda1677bdf8da6ff416b88f7fd86c907d374011` |
| 29 | `example` | [(anonymous)](../../../../../mathematics/Analysis/FunctionalAnalysis/PositiveResolventStatements/Variantb2f222a5afcb7d576c15b9867a86ce5da6a82224e1863d34828a8c9b7b4b8586.lean/declarations/example--d0cdaaa6c7b18e543893f951.md) | 236 | `declaration-track:d0cdaaa6c7b18e543893f9511d6e7dec4210f0a67c957d894ccd964218a79d51` |
| 30 | `example` | [(anonymous)](../../../../../mathematics/Analysis/FunctionalAnalysis/PositiveResolventStatements/Variantb2f222a5afcb7d576c15b9867a86ce5da6a82224e1863d34828a8c9b7b4b8586.lean/declarations/example--52c3d012a81921abbe322dd7.md) | 241 | `declaration-track:52c3d012a81921abbe322dd7a51cb44cd5015e4f09b5ca1684aaa0811555e03d` |
| 31 | `example` | [(anonymous)](../../../../../mathematics/Analysis/FunctionalAnalysis/PositiveResolventStatements/Variantb2f222a5afcb7d576c15b9867a86ce5da6a82224e1863d34828a8c9b7b4b8586.lean/declarations/example--8846df9736a2f863fba1e246.md) | 246 | `declaration-track:8846df9736a2f863fba1e2460c2d343c86f4002b4ca8b2f2afd57a528e8ed198` |
| 32 | `example` | [(anonymous)](../../../../../mathematics/Analysis/FunctionalAnalysis/PositiveResolventStatements/Variantb2f222a5afcb7d576c15b9867a86ce5da6a82224e1863d34828a8c9b7b4b8586.lean/declarations/example--c2d257813e4b3e138619a8c5.md) | 257 | `declaration-track:c2d257813e4b3e138619a8c55a993d85b727b249b9e0032e78d6ee9ef9839e7f` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
