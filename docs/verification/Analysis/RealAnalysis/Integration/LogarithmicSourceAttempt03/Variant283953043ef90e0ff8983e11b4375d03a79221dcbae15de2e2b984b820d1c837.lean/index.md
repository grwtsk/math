# Verification target: GRWTSK.Analysis.RealAnalysis.Integration.LogarithmicSourceAttempt03.Variant283953043ef90e0ff8983e11b4375d03a79221dcbae15de2e2b984b820d1c837

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "c634e9158a0d53b4fc1ec4e645fd7acb21dedb37",
  "lexical_observation_count": 10,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/LogarithmicSourceAttempt03/Variant283953043ef90e0ff8983e11b4375d03a79221dcbae15de2e2b984b820d1c837.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/Integration/LogarithmicSourceAttempt03/Variant283953043ef90e0ff8983e11b4375d03a79221dcbae15de2e2b984b820d1c837.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/Integration/LogarithmicSourceAttempt03/Variant283953043ef90e0ff8983e11b4375d03a79221dcbae15de2e2b984b820d1c837.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `c634e9158a0d53b4fc1ec4e645fd7acb21dedb37`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/LogarithmicSourceAttempt03/Variant283953043ef90e0ff8983e11b4375d03a79221dcbae15de2e2b984b820d1c837.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/LogarithmicSourceAttempt03/Variant283953043ef90e0ff8983e11b4375d03a79221dcbae15de2e2b984b820d1c837.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.BridgeNormalization` — import line 6; external provider; requires a separately pinned dependency.
- `FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.CorrelationRegularity` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.MellinTransform` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Function.JacobianOneDim` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [positiveLogLift](../../../../../../mathematics/Analysis/RealAnalysis/Integration/LogarithmicSourceAttempt03/Variant283953043ef90e0ff8983e11b4375d03a79221dcbae15de2e2b984b820d1c837.lean/declarations/positiveloglift--1d22c2599645ac8445bed132.md) | 26 | `declaration-track:1d22c2599645ac8445bed132183b5c53b661f9185a0b88c4753c21646af7e561` |
| 2 | `theorem` | [positiveLogLift_exp](../../../../../../mathematics/Analysis/RealAnalysis/Integration/LogarithmicSourceAttempt03/Variant283953043ef90e0ff8983e11b4375d03a79221dcbae15de2e2b984b820d1c837.lean/declarations/positiveloglift-exp--a2fde9e1584d60b887ad4d8d.md) | 29 | `result-track:a2fde9e1584d60b887ad4d8d08b120ee577fa2fca288c6b9f66a6bce15133e12` |
| 3 | `theorem` | [exp_square_weight](../../../../../../mathematics/Analysis/RealAnalysis/Integration/LogarithmicSourceAttempt03/Variant283953043ef90e0ff8983e11b4375d03a79221dcbae15de2e2b984b820d1c837.lean/declarations/exp-square-weight--268c81c65607fd55dd20bcfd.md) | 33 | `result-track:268c81c65607fd55dd20bcfd216eee2c71d3fcc9fa37288255a8ef9dfcd4d241` |
| 4 | `theorem` | [lift_square_jacobian](../../../../../../mathematics/Analysis/RealAnalysis/Integration/LogarithmicSourceAttempt03/Variant283953043ef90e0ff8983e11b4375d03a79221dcbae15de2e2b984b820d1c837.lean/declarations/lift-square-jacobian--1add4bb16634dfb99fa99521.md) | 39 | `result-track:1add4bb16634dfb99fa995217c56dbf5e2fe68d2f3e5eb8d419cde191e224520` |
| 5 | `theorem` | [lift_square_integrable_iff](../../../../../../mathematics/Analysis/RealAnalysis/Integration/LogarithmicSourceAttempt03/Variant283953043ef90e0ff8983e11b4375d03a79221dcbae15de2e2b984b820d1c837.lean/declarations/lift-square-integrable-iff--1d98e965d698b5de40cba6b4.md) | 46 | `result-track:1d98e965d698b5de40cba6b42942705ea230ccdb4d3f5c4cdc1170108fa0806b` |
| 6 | `theorem` | [lift_square_integral](../../../../../../mathematics/Analysis/RealAnalysis/Integration/LogarithmicSourceAttempt03/Variant283953043ef90e0ff8983e11b4375d03a79221dcbae15de2e2b984b820d1c837.lean/declarations/lift-square-integral--71a97dd4d952c86ea38f7d35.md) | 57 | `result-track:71a97dd4d952c86ea38f7d35007c95780977a64c7fe34761cd0cb2c880eb9f59` |
| 7 | `def` | [actualLogSource](../../../../../../mathematics/Analysis/RealAnalysis/Integration/LogarithmicSourceAttempt03/Variant283953043ef90e0ff8983e11b4375d03a79221dcbae15de2e2b984b820d1c837.lean/declarations/actuallogsource--b70d500ccc6a695d3309bd9b.md) | 68 | `declaration-track:b70d500ccc6a695d3309bd9b150612c517dd218129b98c38a7cda1315465d43e` |
| 8 | `theorem` | [actualLogSource_square_integrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/LogarithmicSourceAttempt03/Variant283953043ef90e0ff8983e11b4375d03a79221dcbae15de2e2b984b820d1c837.lean/declarations/actuallogsource-square-integrable--92ec9050f0c8f13e7ae87fc3.md) | 71 | `result-track:92ec9050f0c8f13e7ae87fc3658121c75b6aa3d0099ebd7d4152b9d843dbdbc6` |
| 9 | `theorem` | [actualLogSource_square_integral](../../../../../../mathematics/Analysis/RealAnalysis/Integration/LogarithmicSourceAttempt03/Variant283953043ef90e0ff8983e11b4375d03a79221dcbae15de2e2b984b820d1c837.lean/declarations/actuallogsource-square-integral--061caa457fc6a23784cad23d.md) | 75 | `result-track:061caa457fc6a23784cad23d686b43f70958195418be1fdc5392a3223b8cabe2` |
| 10 | `theorem` | [positiveLogLift_dilation](../../../../../../mathematics/Analysis/RealAnalysis/Integration/LogarithmicSourceAttempt03/Variant283953043ef90e0ff8983e11b4375d03a79221dcbae15de2e2b984b820d1c837.lean/declarations/positiveloglift-dilation--e72bc7ad25c6aa3fa4e6ecfd.md) | 80 | `result-track:e72bc7ad25c6aa3fa4e6ecfda09e66a3d89e4e3099c60797a898248e819d5fba` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
