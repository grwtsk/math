# Verification target: GRWTSK.Analysis.RealAnalysis.Integration.ActualMuntzDirichletAttempt04.Variant49c6956f6e684ec18bf473a4d3cdec61691c81c998527f88c809ab4514d96aa9

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "3d58980e2c2836e42826219a2fb6a6de65cb3d0c",
  "lexical_observation_count": 10,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/ActualMuntzDirichletAttempt04/Variant49c6956f6e684ec18bf473a4d3cdec61691c81c998527f88c809ab4514d96aa9.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ActualMuntzDirichletAttempt04/Variant49c6956f6e684ec18bf473a4d3cdec61691c81c998527f88c809ab4514d96aa9.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ActualMuntzDirichletAttempt04/Variant49c6956f6e684ec18bf473a4d3cdec61691c81c998527f88c809ab4514d96aa9.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `3d58980e2c2836e42826219a2fb6a6de65cb3d0c`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/ActualMuntzDirichletAttempt04/Variant49c6956f6e684ec18bf473a4d3cdec61691c81c998527f88c809ab4514d96aa9.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/ActualMuntzDirichletAttempt04/Variant49c6956f6e684ec18bf473a4d3cdec61691c81c998527f88c809ab4514d96aa9.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `ActualMuntzMellinDomain` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Integral.DominatedConvergence` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.PSeries` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [weightedSample](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ActualMuntzDirichletAttempt04/Variant49c6956f6e684ec18bf473a4d3cdec61691c81c998527f88c809ab4514d96aa9.lean/declarations/weightedsample--11121b00f0d03796737b7d84.md) | 22 | `declaration-track:11121b00f0d03796737b7d84fa49dc2b390456f4da115ed4575dbfd9b8299c0f` |
| 2 | `def` | [sourceNormMoment](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ActualMuntzDirichletAttempt04/Variant49c6956f6e684ec18bf473a4d3cdec61691c81c998527f88c809ab4514d96aa9.lean/declarations/sourcenormmoment--7575fa20cf4b64da3d591b87.md) | 25 | `declaration-track:7575fa20cf4b64da3d591b877e46270eb784deaa8a2088ad8f07408359477fb4` |
| 3 | `theorem` | [weightedSample_integrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ActualMuntzDirichletAttempt04/Variant49c6956f6e684ec18bf473a4d3cdec61691c81c998527f88c809ab4514d96aa9.lean/declarations/weightedsample-integrable--7f905ddef9aa01ab70dc6e3d.md) | 28 | `result-track:7f905ddef9aa01ab70dc6e3de809ca1963e6d16949a43e824dc503843a1f8aac` |
| 4 | `theorem` | [weightedSample_norm](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ActualMuntzDirichletAttempt04/Variant49c6956f6e684ec18bf473a4d3cdec61691c81c998527f88c809ab4514d96aa9.lean/declarations/weightedsample-norm--23845f579678ac2ad8ae7fe4.md) | 35 | `result-track:23845f579678ac2ad8ae7fe48274444bd314b127363991790295d1a6d33cd906` |
| 5 | `theorem` | [weightedSample_norm_integral](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ActualMuntzDirichletAttempt04/Variant49c6956f6e684ec18bf473a4d3cdec61691c81c998527f88c809ab4514d96aa9.lean/declarations/weightedsample-norm-integral--1477db7702d247ae37fcb700.md) | 41 | `result-track:1477db7702d247ae37fcb70090772f2de89eac764b114e6c3aae25883577b42d` |
| 6 | `theorem` | [weightedSample_norm_integrals_summable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ActualMuntzDirichletAttempt04/Variant49c6956f6e684ec18bf473a4d3cdec61691c81c998527f88c809ab4514d96aa9.lean/declarations/weightedsample-norm-integrals-summable--dbbc446df0bca8b6456a714e.md) | 63 | `result-track:dbbc446df0bca8b6456a714e0e46361aa445c6f444e97d4222783f710e96ef7e` |
| 7 | `theorem` | [complexMuntz_eq_tsum](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ActualMuntzDirichletAttempt04/Variant49c6956f6e684ec18bf473a4d3cdec61691c81c998527f88c809ab4514d96aa9.lean/declarations/complexmuntz-eq-tsum--19ef08d28abcb87d227d8847.md) | 70 | `result-track:19ef08d28abcb87d227d884751ed7c013f3969ad6bf1e9acd72e0aff6d77bc19` |
| 8 | `theorem` | [weightedSample_tsum](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ActualMuntzDirichletAttempt04/Variant49c6956f6e684ec18bf473a4d3cdec61691c81c998527f88c809ab4514d96aa9.lean/declarations/weightedsample-tsum--8408fb566fd88838a0bd157e.md) | 75 | `result-track:8408fb566fd88838a0bd157ed49bedaf65339fd10682754f2aa74c619072bf4d` |
| 9 | `theorem` | [weightedSample_integral](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ActualMuntzDirichletAttempt04/Variant49c6956f6e684ec18bf473a4d3cdec61691c81c998527f88c809ab4514d96aa9.lean/declarations/weightedsample-integral--b774f781f6a75821c7c0d325.md) | 79 | `result-track:b774f781f6a75821c7c0d32508bacf3a83d6111fe2aca552d920d030d9ca51a2` |
| 10 | `theorem` | [actual_muntz_mellin_dirichlet](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ActualMuntzDirichletAttempt04/Variant49c6956f6e684ec18bf473a4d3cdec61691c81c998527f88c809ab4514d96aa9.lean/declarations/actual-muntz-mellin-dirichlet--f94b1b2de7e8e25d8d3e6eac.md) | 87 | `result-track:f94b1b2de7e8e25d8d3e6eac8aa8124f4a062c7bfe28b557851d80f10d1cb5a0` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
