# Verification target: GRWTSK.Analysis.RealAnalysis.Integration.LogCoordinateAttempt03.Variantf93adfa417b7e32ce9a5004b55918a4196169c7e114e41830950f4253d28f8a9

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "a8b2cbde2ec92af0ef9a9260688e8ec9f0fd5e16",
  "lexical_observation_count": 9,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/LogCoordinateAttempt03/Variantf93adfa417b7e32ce9a5004b55918a4196169c7e114e41830950f4253d28f8a9.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/Integration/LogCoordinateAttempt03/Variantf93adfa417b7e32ce9a5004b55918a4196169c7e114e41830950f4253d28f8a9.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/Integration/LogCoordinateAttempt03/Variantf93adfa417b7e32ce9a5004b55918a4196169c7e114e41830950f4253d28f8a9.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `a8b2cbde2ec92af0ef9a9260688e8ec9f0fd5e16`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/LogCoordinateAttempt03/Variantf93adfa417b7e32ce9a5004b55918a4196169c7e114e41830950f4253d28f8a9.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/LogCoordinateAttempt03/Variantf93adfa417b7e32ce9a5004b55918a4196169c7e114e41830950f4253d28f8a9.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `ActualComplexDilation` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Function.JacobianOneDim` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Measure.WithDensity` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `abbrev` | [LogL2](../../../../../../mathematics/Analysis/RealAnalysis/Integration/LogCoordinateAttempt03/Variantf93adfa417b7e32ce9a5004b55918a4196169c7e114e41830950f4253d28f8a9.lean/declarations/logl2--197debb67ed556be8fbe4f56.md) | 23 | `declaration-track:197debb67ed556be8fbe4f56421944e5e6d2b92819f1ad661159d2a2e6899861` |
| 2 | `theorem` | [integral_exp_jacobian](../../../../../../mathematics/Analysis/RealAnalysis/Integration/LogCoordinateAttempt03/Variantf93adfa417b7e32ce9a5004b55918a4196169c7e114e41830950f4253d28f8a9.lean/declarations/integral-exp-jacobian--94537a53e7737db637a84338.md) | 25 | `result-track:94537a53e7737db637a84338b07f7ec2e1efc0eb785bb4b9a93684dae0991cb7` |
| 3 | `theorem` | [integrable_exp_jacobian](../../../../../../mathematics/Analysis/RealAnalysis/Integration/LogCoordinateAttempt03/Variantf93adfa417b7e32ce9a5004b55918a4196169c7e114e41830950f4253d28f8a9.lean/declarations/integrable-exp-jacobian--ad8ca09cf57609102123e028.md) | 34 | `result-track:ad8ca09cf57609102123e0281dbb15bf66477fe1027d93ab1c504e108228c1c2` |
| 4 | `theorem` | [exp_quasi](../../../../../../mathematics/Analysis/RealAnalysis/Integration/LogCoordinateAttempt03/Variantf93adfa417b7e32ce9a5004b55918a4196169c7e114e41830950f4253d28f8a9.lean/declarations/exp-quasi--071d1d41be37ae5fe2447ea9.md) | 43 | `result-track:071d1d41be37ae5fe2447ea99d07f6cedec0267231035920aa2323cfd5bfa2cd` |
| 5 | `theorem` | [log_quasi](../../../../../../mathematics/Analysis/RealAnalysis/Integration/LogCoordinateAttempt03/Variantf93adfa417b7e32ce9a5004b55918a4196169c7e114e41830950f4253d28f8a9.lean/declarations/log-quasi--fb7421b2b56891abc7b102c5.md) | 65 | `result-track:fb7421b2b56891abc7b102c5cc2e67e8797d5fc830b61c1dc7e587f6c9be7ec5` |
| 6 | `def` | [logFunc](../../../../../../mathematics/Analysis/RealAnalysis/Integration/LogCoordinateAttempt03/Variantf93adfa417b7e32ce9a5004b55918a4196169c7e114e41830950f4253d28f8a9.lean/declarations/logfunc--bc0bf6464e12164702193c18.md) | 84 | `declaration-track:bc0bf6464e12164702193c18bb1f883c00e4d8544cf11fe035396241635850f9` |
| 7 | `def` | [positiveFunc](../../../../../../mathematics/Analysis/RealAnalysis/Integration/LogCoordinateAttempt03/Variantf93adfa417b7e32ce9a5004b55918a4196169c7e114e41830950f4253d28f8a9.lean/declarations/positivefunc--05c5f6b50f307ce631368d56.md) | 85 | `declaration-track:05c5f6b50f307ce631368d56e4bd9b6f2ce5a4a9c1da9243982b77eacbab245d` |
| 8 | `theorem` | [logFunc_norm_sq](../../../../../../mathematics/Analysis/RealAnalysis/Integration/LogCoordinateAttempt03/Variantf93adfa417b7e32ce9a5004b55918a4196169c7e114e41830950f4253d28f8a9.lean/declarations/logfunc-norm-sq--0caeb2b096ecfa50c7ddab9b.md) | 88 | `result-track:0caeb2b096ecfa50c7ddab9bf8095f9190beb75356a5130b5aaf9899f989ced1` |
| 9 | `theorem` | [logFunc_memLp](../../../../../../mathematics/Analysis/RealAnalysis/Integration/LogCoordinateAttempt03/Variantf93adfa417b7e32ce9a5004b55918a4196169c7e114e41830950f4253d28f8a9.lean/declarations/logfunc-memlp--cb923a1603490c2c781dff87.md) | 96 | `result-track:cb923a1603490c2c781dff870c99488755988c24af3448c7dd29b51dfba377eb` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
