# Verification target: GRWTSK.Analysis.RealAnalysis.Integration.LogMoments.Variantcb5f1cf8c97ac55bd86d304237177c8cdc6f6fe568219e9961cfe09ba36b7f45

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "3b471bc684f328e516b8e4a8ebc469437b437ed2",
  "lexical_observation_count": 13,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/LogMoments/Variantcb5f1cf8c97ac55bd86d304237177c8cdc6f6fe568219e9961cfe09ba36b7f45.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/Integration/LogMoments/Variantcb5f1cf8c97ac55bd86d304237177c8cdc6f6fe568219e9961cfe09ba36b7f45.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/Integration/LogMoments/Variantcb5f1cf8c97ac55bd86d304237177c8cdc6f6fe568219e9961cfe09ba36b7f45.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `3b471bc684f328e516b8e4a8ebc469437b437ed2`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/LogMoments/Variantcb5f1cf8c97ac55bd86d304237177c8cdc6f6fe568219e9961cfe09ba36b7f45.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/LogMoments/Variantcb5f1cf8c97ac55bd86d304237177c8cdc6f6fe568219e9961cfe09ba36b7f45.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.SpecialFunctions.ImproperIntegrals` — import line 1; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecialFunctions.Pow.Asymptotics` — import line 2; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic` — import line 3; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [negative_nat_rpow](../../../../../../mathematics/Analysis/RealAnalysis/Integration/LogMoments/Variantcb5f1cf8c97ac55bd86d304237177c8cdc6f6fe568219e9961cfe09ba36b7f45.lean/declarations/negative-nat-rpow--4841655236b5a6f40a9c8a2f.md) | 17 | `result-track:4841655236b5a6f40a9c8a2f9b53fc1e008ae6c877e1b8e62a323b0ac0d116e6` |
| 2 | `theorem` | [inverse_power_integrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/LogMoments/Variantcb5f1cf8c97ac55bd86d304237177c8cdc6f6fe568219e9961cfe09ba36b7f45.lean/declarations/inverse-power-integrable--1177f17c3729dd73bc389c6f.md) | 22 | `result-track:1177f17c3729dd73bc389c6ff07fab4424f72570a32d941adcff5302ac773519` |
| 3 | `theorem` | [inverse_power_integral](../../../../../../mathematics/Analysis/RealAnalysis/Integration/LogMoments/Variantcb5f1cf8c97ac55bd86d304237177c8cdc6f6fe568219e9961cfe09ba36b7f45.lean/declarations/inverse-power-integral--c45e88ad9420be9aeca11b21.md) | 31 | `result-track:c45e88ad9420be9aeca11b2152ad52e8d66532e450802771f05a20f93633b912` |
| 4 | `def` | [logMomentPrimitive](../../../../../../mathematics/Analysis/RealAnalysis/Integration/LogMoments/Variantcb5f1cf8c97ac55bd86d304237177c8cdc6f6fe568219e9961cfe09ba36b7f45.lean/declarations/logmomentprimitive--b13d0194eb12a44cc42aff1d.md) | 44 | `declaration-track:b13d0194eb12a44cc42aff1da6cb4b8ff97e86a36df8f4fb02487e1b1667cdf9` |
| 5 | `theorem` | [log_moment_primitive_derivative](../../../../../../mathematics/Analysis/RealAnalysis/Integration/LogMoments/Variantcb5f1cf8c97ac55bd86d304237177c8cdc6f6fe568219e9961cfe09ba36b7f45.lean/declarations/log-moment-primitive-derivative--6d5fc55b77ff39b1894afb75.md) | 47 | `result-track:6d5fc55b77ff39b1894afb7543b0a7be5297faa37effb0f81b9d79858f86c3fc` |
| 6 | `theorem` | [log_moment_primitive_tendsto](../../../../../../mathematics/Analysis/RealAnalysis/Integration/LogMoments/Variantcb5f1cf8c97ac55bd86d304237177c8cdc6f6fe568219e9961cfe09ba36b7f45.lean/declarations/log-moment-primitive-tendsto--58c8a1d5cda388ea8ee2a1f3.md) | 64 | `result-track:58c8a1d5cda388ea8ee2a1f3fb2b28c088f9912c616316972d67468ec804a729` |
| 7 | `theorem` | [log_ratio_power_nonnegative](../../../../../../mathematics/Analysis/RealAnalysis/Integration/LogMoments/Variantcb5f1cf8c97ac55bd86d304237177c8cdc6f6fe568219e9961cfe09ba36b7f45.lean/declarations/log-ratio-power-nonnegative--7d9521a9e5cd7ebc4c64fce8.md) | 83 | `result-track:7d9521a9e5cd7ebc4c64fce8a93fd2132e12ef8a68c06b7712c799bd15864fbf` |
| 8 | `theorem` | [log_ratio_power_integrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/LogMoments/Variantcb5f1cf8c97ac55bd86d304237177c8cdc6f6fe568219e9961cfe09ba36b7f45.lean/declarations/log-ratio-power-integrable--9f201eda413b2d2b1072187c.md) | 89 | `result-track:9f201eda413b2d2b1072187ccd47d7916ed13c12f615bf9ede2518d7416f0f81` |
| 9 | `theorem` | [log_ratio_power_integral](../../../../../../mathematics/Analysis/RealAnalysis/Integration/LogMoments/Variantcb5f1cf8c97ac55bd86d304237177c8cdc6f6fe568219e9961cfe09ba36b7f45.lean/declarations/log-ratio-power-integral--b0f62209e8f71e868d939e55.md) | 100 | `result-track:b0f62209e8f71e868d939e55866fbd9b8b6797ee88287c231d9ab94cf92fa987` |
| 10 | `theorem` | [log_ratio_sixth_integrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/LogMoments/Variantcb5f1cf8c97ac55bd86d304237177c8cdc6f6fe568219e9961cfe09ba36b7f45.lean/declarations/log-ratio-sixth-integrable--b9a45c32c1f570867343c33b.md) | 111 | `result-track:b9a45c32c1f570867343c33bc038809159193b98a94c6279528f8e4459a98a58` |
| 11 | `theorem` | [log_ratio_sixth_integral](../../../../../../mathematics/Analysis/RealAnalysis/Integration/LogMoments/Variantcb5f1cf8c97ac55bd86d304237177c8cdc6f6fe568219e9961cfe09ba36b7f45.lean/declarations/log-ratio-sixth-integral--baf4f885a5739a6dc8aae85c.md) | 115 | `result-track:baf4f885a5739a6dc8aae85cf80bd85702a646565decde7fc11fdcaf3a58ef11` |
| 12 | `theorem` | [log_ratio_seventh_integrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/LogMoments/Variantcb5f1cf8c97ac55bd86d304237177c8cdc6f6fe568219e9961cfe09ba36b7f45.lean/declarations/log-ratio-seventh-integrable--caff4c39302bbae792fb3001.md) | 119 | `result-track:caff4c39302bbae792fb3001cbfefe8b4eb5640b3b821bcc9f745bbd9f24a24c` |
| 13 | `theorem` | [log_ratio_seventh_integral](../../../../../../mathematics/Analysis/RealAnalysis/Integration/LogMoments/Variantcb5f1cf8c97ac55bd86d304237177c8cdc6f6fe568219e9961cfe09ba36b7f45.lean/declarations/log-ratio-seventh-integral--bd341f2a5cef8f3ddfef4e34.md) | 123 | `result-track:bd341f2a5cef8f3ddfef4e34aaa6383ccf95e52f1ad551c1448b44034a720745` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
