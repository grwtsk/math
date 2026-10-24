# Verification target: GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.Defs.Variant324dd173fbbf117d1c1f194a10456c9724e908d10a196f0f45be33ebc2acf546

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "b4357a5bfb8cfffb5d88a669b4fb956b1acecf4b",
  "lexical_observation_count": 17,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Defs/Variant324dd173fbbf117d1c1f194a10456c9724e908d10a196f0f45be33ebc2acf546.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Defs/Variant324dd173fbbf117d1c1f194a10456c9724e908d10a196f0f45be33ebc2acf546.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Defs/Variant324dd173fbbf117d1c1f194a10456c9724e908d10a196f0f45be33ebc2acf546.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `b4357a5bfb8cfffb5d88a669b4fb956b1acecf4b`.

Source path: `GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Defs/Variant324dd173fbbf117d1c1f194a10456c9724e908d10a196f0f45be33ebc2acf546.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/DifferentialCalculus/Defs/Variant324dd173fbbf117d1c1f194a10456c9724e908d10a196f0f45be33ebc2acf546.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [HasFDerivAtFilter](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Defs/Variant324dd173fbbf117d1c1f194a10456c9724e908d10a196f0f45be33ebc2acf546.lean/declarations/hasfderivatfilter--c02788afaf41e199ff2857a9.md) | 118 | `declaration-track:c02788afaf41e199ff2857a92b6c0ca148327fbebd0e49a7b997744200dc3f12` |
| 2 | `def` | [HasFDerivWithinAt](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Defs/Variant324dd173fbbf117d1c1f194a10456c9724e908d10a196f0f45be33ebc2acf546.lean/declarations/hasfderivwithinat--ced3cb98fa4f382a57497a67.md) | 125 | `declaration-track:ced3cb98fa4f382a57497a670a0eff070fe242f4368b4feffb07cdcd6db3e0d7` |
| 3 | `def` | [HasFDerivAt](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Defs/Variant324dd173fbbf117d1c1f194a10456c9724e908d10a196f0f45be33ebc2acf546.lean/declarations/hasfderivat--e11d6bea2f70c42fd553f734.md) | 131 | `declaration-track:e11d6bea2f70c42fd553f73460f9346bef7fc6e011b835d9c5a61e631eb9792d` |
| 4 | `def` | [HasStrictFDerivAt](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Defs/Variant324dd173fbbf117d1c1f194a10456c9724e908d10a196f0f45be33ebc2acf546.lean/declarations/hasstrictfderivat--1aa94612872111fab03a5051.md) | 139 | `declaration-track:1aa94612872111fab03a505114c43d5d32c0b9f8e9f59468cb7af6bd0caecdfb` |
| 5 | `def` | [DifferentiableWithinAt](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Defs/Variant324dd173fbbf117d1c1f194a10456c9724e908d10a196f0f45be33ebc2acf546.lean/declarations/differentiablewithinat--b0ffcb20a8b2c39dcc821c95.md) | 147 | `declaration-track:b0ffcb20a8b2c39dcc821c9555312feb1203cf049a8297f5b3053fdcdc60c796` |
| 6 | `def` | [DifferentiableAt](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Defs/Variant324dd173fbbf117d1c1f194a10456c9724e908d10a196f0f45be33ebc2acf546.lean/declarations/differentiableat--af4cd969740b6c46d3c8d228.md) | 153 | `declaration-track:af4cd969740b6c46d3c8d22857f2fa93f41506d40f770ccec217ac95bdc8dba6` |
| 7 | `def` | [DifferentiableOn](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Defs/Variant324dd173fbbf117d1c1f194a10456c9724e908d10a196f0f45be33ebc2acf546.lean/declarations/differentiableon--7260e6c1447bdfc0965174a0.md) | 173 | `declaration-track:7260e6c1447bdfc0965174a0e16925103155f740cc6be37680dd6e492ea575e3` |
| 8 | `def` | [Differentiable](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Defs/Variant324dd173fbbf117d1c1f194a10456c9724e908d10a196f0f45be33ebc2acf546.lean/declarations/differentiable--d181b926beb1b4d0443ad802.md) | 178 | `declaration-track:d181b926beb1b4d0443ad802594e1d42c9ac5c45ac550de44a4dbadcb10034eb` |
| 9 | `theorem` | [hasFDerivAt_iff_isLittleOTVS](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Defs/Variant324dd173fbbf117d1c1f194a10456c9724e908d10a196f0f45be33ebc2acf546.lean/declarations/hasfderivat-iff-islittleotvs--5cfad90874807b0b96e575ad.md) | 188 | `result-track:5cfad90874807b0b96e575adba28b1a59e39106940d15079480fe79b05150aa3` |
| 10 | `theorem` | [hasFDerivWithinAt_iff_isLittleOTVS](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Defs/Variant324dd173fbbf117d1c1f194a10456c9724e908d10a196f0f45be33ebc2acf546.lean/declarations/hasfderivwithinat-iff-islittleotvs--620516b8bf7d617f6eb821c3.md) | 194 | `result-track:620516b8bf7d617f6eb821c33aec953427132d46265a4dfc9294c79590562101` |
| 11 | `theorem` | [hasStrictFDerivAt_iff_isLittleOTVS](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Defs/Variant324dd173fbbf117d1c1f194a10456c9724e908d10a196f0f45be33ebc2acf546.lean/declarations/hasstrictfderivat-iff-islittleotvs--8e30b21ef54a8da68a72db29.md) | 202 | `result-track:8e30b21ef54a8da68a72db2967fff5e8a325a016245803a5c9020097a96832ed` |
| 12 | `theorem` | [fderivWithin_zero_of_not_differentiableWithinAt](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Defs/Variant324dd173fbbf117d1c1f194a10456c9724e908d10a196f0f45be33ebc2acf546.lean/declarations/fderivwithin-zero-of-not-differentiablewithinat--5ed78cd8b4e2ea49c65ec024.md) | 207 | `result-track:5ed78cd8b4e2ea49c65ec0243f7a6ff7d0aa10628ea7b97ea45df10fa6f8523c` |
| 13 | `theorem` | [fderivWithin_univ](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Defs/Variant324dd173fbbf117d1c1f194a10456c9724e908d10a196f0f45be33ebc2acf546.lean/declarations/fderivwithin-univ--581a95d239e1cc5dbad404fa.md) | 212 | `result-track:581a95d239e1cc5dbad404fa2e686b5616e6ebe0c040dbcb05e94f45ecf5fb81` |
| 14 | `theorem` | [hasFDerivAtFilter_iff_isLittleO](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Defs/Variant324dd173fbbf117d1c1f194a10456c9724e908d10a196f0f45be33ebc2acf546.lean/declarations/hasfderivatfilter-iff-islittleo--9ea23ca415f8c70b44cf1ad4.md) | 227 | `result-track:9ea23ca415f8c70b44cf1ad4351c79e1eba8da375a4af5ac96deabc0cbbce04c` |
| 15 | `theorem` | [hasFDerivAt_iff_isLittleO](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Defs/Variant324dd173fbbf117d1c1f194a10456c9724e908d10a196f0f45be33ebc2acf546.lean/declarations/hasfderivat-iff-islittleo--57a2dd861c58827fa52d4d95.md) | 234 | `result-track:57a2dd861c58827fa52d4d95d3779bad76b6624a687f6c0d29c925c10573fd47` |
| 16 | `theorem` | [hasFDerivWithinAt_iff_isLittleO](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Defs/Variant324dd173fbbf117d1c1f194a10456c9724e908d10a196f0f45be33ebc2acf546.lean/declarations/hasfderivwithinat-iff-islittleo--2e07ef0aecc72cb24c6bb007.md) | 240 | `result-track:2e07ef0aecc72cb24c6bb0077f0173e56866138cfaa5025522cbde514e0afbb0` |
| 17 | `theorem` | [hasStrictFDerivAt_iff_isLittleO](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Defs/Variant324dd173fbbf117d1c1f194a10456c9724e908d10a196f0f45be33ebc2acf546.lean/declarations/hasstrictfderivat-iff-islittleo--a4be4ce7ca132dc82f95162b.md) | 248 | `result-track:a4be4ce7ca132dc82f95162b813527cc5fe124f1698ad1fa02227610f43938b0` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
