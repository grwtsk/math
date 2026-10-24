# Verification target: GRWTSK.Analysis.RealAnalysis.Integration.WithDensity.Variant64618ec84d091b88a9dff3356706283c3c221e71aafed7d49bad60f19208b411

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "8b54c88561647f7fb33badc10b6758788c19a5a2",
  "lexical_observation_count": 13,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/WithDensity/Variant64618ec84d091b88a9dff3356706283c3c221e71aafed7d49bad60f19208b411.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/Integration/WithDensity/Variant64618ec84d091b88a9dff3356706283c3c221e71aafed7d49bad60f19208b411.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/Integration/WithDensity/Variant64618ec84d091b88a9dff3356706283c3c221e71aafed7d49bad60f19208b411.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `8b54c88561647f7fb33badc10b6758788c19a5a2`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/WithDensity/Variant64618ec84d091b88a9dff3356706283c3c221e71aafed7d49bad60f19208b411.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/WithDensity/Variant64618ec84d091b88a9dff3356706283c3c221e71aafed7d49bad60f19208b411.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Probability.Kernel.MeasurableIntegral` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Integral.SetIntegral` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [withDensity](../../../../../../mathematics/Analysis/RealAnalysis/Integration/WithDensity/Variant64618ec84d091b88a9dff3356706283c3c221e71aafed7d49bad60f19208b411.lean/declarations/withdensity--ae0641c807008a947334512c.md) | 55 | `declaration-track:ae0641c807008a947334512ce83f333c1f41b9c746bcc49ff8a6d50e3568e63d` |
| 2 | `theorem` | [withDensity_of_not_measurable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/WithDensity/Variant64618ec84d091b88a9dff3356706283c3c221e71aafed7d49bad60f19208b411.lean/declarations/withdensity-of-not-measurable--b6613edf7ce9d49030d96120.md) | 65 | `result-track:b6613edf7ce9d49030d9612078b95a39726b770475cf175d56f0c64721d4acab` |
| 3 | `theorem` | [withDensity_apply](../../../../../../mathematics/Analysis/RealAnalysis/Integration/WithDensity/Variant64618ec84d091b88a9dff3356706283c3c221e71aafed7d49bad60f19208b411.lean/declarations/withdensity-apply--48ed804b53787b928bc9f6c1.md) | 69 | `result-track:48ed804b53787b928bc9f6c18c7e997af1cf36f6b8f78407818de53044cb9982` |
| 4 | `theorem` | [withDensity_apply'](../../../../../../mathematics/Analysis/RealAnalysis/Integration/WithDensity/Variant64618ec84d091b88a9dff3356706283c3c221e71aafed7d49bad60f19208b411.lean/declarations/withdensity-apply--f4fad4d16ccd53318acd1ce6.md) | 77 | `result-track:f4fad4d16ccd53318acd1ce6be97d821ad4fc9fdcea6ff08b33a7e2e7d31d7e1` |
| 5 | `theorem` | [lintegral_withDensity](../../../../../../mathematics/Analysis/RealAnalysis/Integration/WithDensity/Variant64618ec84d091b88a9dff3356706283c3c221e71aafed7d49bad60f19208b411.lean/declarations/lintegral-withdensity--562163cbbe22182d4fdcae8f.md) | 83 | `result-track:562163cbbe22182d4fdcae8f679e3a7ee5d6b58817d2aa78ed04935ef89d0bc0` |
| 6 | `theorem` | [integral_withDensity](../../../../../../mathematics/Analysis/RealAnalysis/Integration/WithDensity/Variant64618ec84d091b88a9dff3356706283c3c221e71aafed7d49bad60f19208b411.lean/declarations/integral-withdensity--00b93ff3c38ce05fa159482c.md) | 91 | `result-track:00b93ff3c38ce05fa159482c1da52cfd495a2c89348e27de07fc80f8d02995dd` |
| 7 | `theorem` | [withDensity_add_left](../../../../../../mathematics/Analysis/RealAnalysis/Integration/WithDensity/Variant64618ec84d091b88a9dff3356706283c3c221e71aafed7d49bad60f19208b411.lean/declarations/withdensity-add-left--e9c4846f5531c1b264415e47.md) | 100 | `result-track:e9c4846f5531c1b264415e47e69dbbeac922f12655a439bb372a6462cf06e678` |
| 8 | `theorem` | [withDensity_kernel_sum](../../../../../../mathematics/Analysis/RealAnalysis/Integration/WithDensity/Variant64618ec84d091b88a9dff3356706283c3c221e71aafed7d49bad60f19208b411.lean/declarations/withdensity-kernel-sum--fb2a205a06024c4c3fac99e6.md) | 110 | `result-track:fb2a205a06024c4c3fac99e63535821b8a53eb074aa93bb5ee1a7fa2a7d9341c` |
| 9 | `theorem` | [withDensity_tsum](../../../../../../mathematics/Analysis/RealAnalysis/Integration/WithDensity/Variant64618ec84d091b88a9dff3356706283c3c221e71aafed7d49bad60f19208b411.lean/declarations/withdensity-tsum--e4dec893b6340e3130b32fa7.md) | 122 | `result-track:e4dec893b6340e3130b32fa7ca839969f6bffadb6b0cecd560f5d32e24b1ede4` |
| 10 | `theorem` | [isFiniteKernel_withDensity_of_bounded](../../../../../../mathematics/Analysis/RealAnalysis/Integration/WithDensity/Variant64618ec84d091b88a9dff3356706283c3c221e71aafed7d49bad60f19208b411.lean/declarations/isfinitekernel-withdensity-of-bounded--2d448adfe037c1af9cfa6676.md) | 147 | `result-track:2d448adfe037c1af9cfa66762e9de77b3faa58ada92397529f594b89dd970d09` |
| 11 | `theorem` | [isSFiniteKernel_withDensity_of_isFiniteKernel](../../../../../../mathematics/Analysis/RealAnalysis/Integration/WithDensity/Variant64618ec84d091b88a9dff3356706283c3c221e71aafed7d49bad60f19208b411.lean/declarations/issfinitekernel-withdensity-of-isfinitekernel--a9d8d98687125130c83540e7.md) | 164 | `result-track:a9d8d98687125130c83540e7ac5526d392f8b105e15e0b4a0a71b7566a3149fa` |
| 12 | `theorem` | [IsSFiniteKernel.withDensity](../../../../../../mathematics/Analysis/RealAnalysis/Integration/WithDensity/Variant64618ec84d091b88a9dff3356706283c3c221e71aafed7d49bad60f19208b411.lean/declarations/issfinitekernel-withdensity--25acc795e6a53e7f9d8f4d3a.md) | 223 | `result-track:25acc795e6a53e7f9d8f4d3a151b7d278aa4f3dbddf0e0a64495e122cc569144` |
| 13 | `instance` | [(anonymous)](../../../../../../mathematics/Analysis/RealAnalysis/Integration/WithDensity/Variant64618ec84d091b88a9dff3356706283c3c221e71aafed7d49bad60f19208b411.lean/declarations/instance--431a62b517b6f423a717fb55.md) | 235 | `declaration-track:431a62b517b6f423a717fb55ffedbbf1af9080f70ddf1ca5447ab578f35fd88d` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
