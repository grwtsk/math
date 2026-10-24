# Verification target: GRWTSK.Analysis.RealAnalysis.Integration.ContinuousMapDense.Variant94ce708804c66313af906199668c86fca460286a62113d9b94e98ecf15cd3b57

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "29fdb7799c88779642e00156a001fcdd1836f70f",
  "lexical_observation_count": 12,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/ContinuousMapDense/Variant94ce708804c66313af906199668c86fca460286a62113d9b94e98ecf15cd3b57.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ContinuousMapDense/Variant94ce708804c66313af906199668c86fca460286a62113d9b94e98ecf15cd3b57.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ContinuousMapDense/Variant94ce708804c66313af906199668c86fca460286a62113d9b94e98ecf15cd3b57.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `29fdb7799c88779642e00156a001fcdd1836f70f`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/ContinuousMapDense/Variant94ce708804c66313af906199668c86fca460286a62113d9b94e98ecf15cd3b57.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/ContinuousMapDense/Variant94ce708804c66313af906199668c86fca460286a62113d9b94e98ecf15cd3b57.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.MeasureTheory.Measure.Regular` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Function.SimpleFuncDenseLp` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.UrysohnsLemma` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Integral.Bochner` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [exists_continuous_snorm_sub_le_of_closed](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ContinuousMapDense/Variant94ce708804c66313af906199668c86fca460286a62113d9b94e98ecf15cd3b57.lean/declarations/exists-continuous-snorm-sub-le-of-closed--5f3b09c61f1be363c20155ab.md) | 79 | `result-track:5f3b09c61f1be363c20155abc44147880030e15e6145ca361c94c0ff6d26fa86` |
| 2 | `theorem` | [Memℒp.exists_hasCompactSupport_snorm_sub_le](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ContinuousMapDense/Variant94ce708804c66313af906199668c86fca460286a62113d9b94e98ecf15cd3b57.lean/declarations/mem-p-exists-hascompactsupport-snorm-sub-le--59529c90ba217f19622087a9.md) | 140 | `result-track:59529c90ba217f19622087a9131e4ac7d0ccb6f574571b2e50ec35bf24516b44` |
| 3 | `theorem` | [Memℒp.exists_hasCompactSupport_integral_rpow_sub_le](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ContinuousMapDense/Variant94ce708804c66313af906199668c86fca460286a62113d9b94e98ecf15cd3b57.lean/declarations/mem-p-exists-hascompactsupport-integral-rpow-sub-le--ee6131f421d0ca2f7d5b047b.md) | 194 | `result-track:ee6131f421d0ca2f7d5b047b7c73ec0c7677e7330a10ba387cb29d5e15ee9bb7` |
| 4 | `theorem` | [Integrable.exists_hasCompactSupport_lintegral_sub_le](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ContinuousMapDense/Variant94ce708804c66313af906199668c86fca460286a62113d9b94e98ecf15cd3b57.lean/declarations/integrable-exists-hascompactsupport-lintegral-sub-le--47530472692d6021fde8059b.md) | 215 | `result-track:47530472692d6021fde8059b291ccc3ee5d602f6780b95762c1c3a9436104ee2` |
| 5 | `theorem` | [Integrable.exists_hasCompactSupport_integral_sub_le](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ContinuousMapDense/Variant94ce708804c66313af906199668c86fca460286a62113d9b94e98ecf15cd3b57.lean/declarations/integrable-exists-hascompactsupport-integral-sub-le--0b9c3c7f939a57d43e54b991.md) | 225 | `result-track:0b9c3c7f939a57d43e54b9916d14570ff2eb1c88159d8adbf1fb06cb99aaac28` |
| 6 | `theorem` | [Memℒp.exists_boundedContinuous_snorm_sub_le](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ContinuousMapDense/Variant94ce708804c66313af906199668c86fca460286a62113d9b94e98ecf15cd3b57.lean/declarations/mem-p-exists-boundedcontinuous-snorm-sub-le--258e05b49bd400c22dbdec98.md) | 236 | `result-track:258e05b49bd400c22dbdec984227631580b408987b7dc5b0f1f9b534cc4c98d6` |
| 7 | `theorem` | [Memℒp.exists_boundedContinuous_integral_rpow_sub_le](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ContinuousMapDense/Variant94ce708804c66313af906199668c86fca460286a62113d9b94e98ecf15cd3b57.lean/declarations/mem-p-exists-boundedcontinuous-integral-rpow-sub-le--67a097f4527911ae67e6c563.md) | 288 | `result-track:67a097f4527911ae67e6c563bee0043a1c09eab38ccb3c3a988fd5a439033be0` |
| 8 | `theorem` | [Integrable.exists_boundedContinuous_lintegral_sub_le](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ContinuousMapDense/Variant94ce708804c66313af906199668c86fca460286a62113d9b94e98ecf15cd3b57.lean/declarations/integrable-exists-boundedcontinuous-lintegral-sub-le--229204b091e7dea402ea82d2.md) | 306 | `result-track:229204b091e7dea402ea82d2634920a46916a7420fbc9e722b51bfe92bfbee3e` |
| 9 | `theorem` | [Integrable.exists_boundedContinuous_integral_sub_le](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ContinuousMapDense/Variant94ce708804c66313af906199668c86fca460286a62113d9b94e98ecf15cd3b57.lean/declarations/integrable-exists-boundedcontinuous-integral-sub-le--731859ed988f7a8f7fef115a.md) | 315 | `result-track:731859ed988f7a8f7fef115a649125b84d96b0769a23daa01c87a3c3d58cf599` |
| 10 | `theorem` | [boundedContinuousFunction_dense](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ContinuousMapDense/Variant94ce708804c66313af906199668c86fca460286a62113d9b94e98ecf15cd3b57.lean/declarations/boundedcontinuousfunction-dense--7624e453b177f5a39bda072f.md) | 328 | `result-track:7624e453b177f5a39bda072fb70e370c75eff06b74f50a3272f142dbe9623eb2` |
| 11 | `theorem` | [toLp_denseRange](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ContinuousMapDense/Variant94ce708804c66313af906199668c86fca460286a62113d9b94e98ecf15cd3b57.lean/declarations/tolp-denserange--717ea24c19aa97e7c91c5c6a.md) | 365 | `result-track:717ea24c19aa97e7c91c5c6a3552b0c090dce4c25e038f74026672b54683551e` |
| 12 | `theorem` | [toLp_denseRange](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ContinuousMapDense/Variant94ce708804c66313af906199668c86fca460286a62113d9b94e98ecf15cd3b57.lean/declarations/tolp-denserange--3c83cb3127f9b27528138487.md) | 382 | `result-track:3c83cb3127f9b2752813848732ffa9bd6ce81facc15a83fd208c9898ff891337` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
