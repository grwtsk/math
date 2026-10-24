# Verification target: GRWTSK.Analysis.RealAnalysis.Integration.VitaliCaratheodory.Variant1186e787042789d661443146ada8130b2fca6be021b061577da4d5aa536a56f5

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "d80913873fa0b783accfad293d215b8870aad78b",
  "lexical_observation_count": 10,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/VitaliCaratheodory/Variant1186e787042789d661443146ada8130b2fca6be021b061577da4d5aa536a56f5.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/Integration/VitaliCaratheodory/Variant1186e787042789d661443146ada8130b2fca6be021b061577da4d5aa536a56f5.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/Integration/VitaliCaratheodory/Variant1186e787042789d661443146ada8130b2fca6be021b061577da4d5aa536a56f5.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `d80913873fa0b783accfad293d215b8870aad78b`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/VitaliCaratheodory/Variant1186e787042789d661443146ada8130b2fca6be021b061577da4d5aa536a56f5.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/VitaliCaratheodory/Variant1186e787042789d661443146ada8130b2fca6be021b061577da4d5aa536a56f5.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.MeasureTheory.Measure.Regular` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Semicontinuous` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Integral.Bochner` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Instances.EReal` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [SimpleFunc.exists_le_lowerSemicontinuous_lintegral_ge](../../../../../../mathematics/Analysis/RealAnalysis/Integration/VitaliCaratheodory/Variant1186e787042789d661443146ada8130b2fca6be021b061577da4d5aa536a56f5.lean/declarations/simplefunc-exists-le-lowersemicontinuous-lintegral-ge--01ad0333e62293dc4ee6600b.md) | 94 | `result-track:01ad0333e62293dc4ee6600bb638058b8a47b56eb27b0eed4b9dbd1a5c5a6131` |
| 2 | `theorem` | [exists_le_lowerSemicontinuous_lintegral_ge](../../../../../../mathematics/Analysis/RealAnalysis/Integration/VitaliCaratheodory/Variant1186e787042789d661443146ada8130b2fca6be021b061577da4d5aa536a56f5.lean/declarations/exists-le-lowersemicontinuous-lintegral-ge--30d2550d423fb10fed9c3ffc.md) | 165 | `result-track:30d2550d423fb10fed9c3ffcdcb39b9c450aee2d5646b0fb515dd2bae6eaee03` |
| 3 | `theorem` | [exists_lt_lowerSemicontinuous_lintegral_ge](../../../../../../mathematics/Analysis/RealAnalysis/Integration/VitaliCaratheodory/Variant1186e787042789d661443146ada8130b2fca6be021b061577da4d5aa536a56f5.lean/declarations/exists-lt-lowersemicontinuous-lintegral-ge--e27fbb9592c3ed745897e915.md) | 204 | `result-track:e27fbb9592c3ed745897e9159afca6b9a040996dda087188146786c2132d7af3` |
| 4 | `theorem` | [exists_lt_lowerSemicontinuous_lintegral_ge_of_aemeasurable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/VitaliCaratheodory/Variant1186e787042789d661443146ada8130b2fca6be021b061577da4d5aa536a56f5.lean/declarations/exists-lt-lowersemicontinuous-lintegral-ge-of-aemeasurable--483ce20575aabf45adbde62d.md) | 232 | `result-track:483ce20575aabf45adbde62d025e9ba7d06451b9ba01ae261ab81ea06a6d9712` |
| 5 | `theorem` | [exists_lt_lowerSemicontinuous_integral_gt_nnreal](../../../../../../mathematics/Analysis/RealAnalysis/Integration/VitaliCaratheodory/Variant1186e787042789d661443146ada8130b2fca6be021b061577da4d5aa536a56f5.lean/declarations/exists-lt-lowersemicontinuous-integral-gt-nnreal--2b142901681283915d994cdd.md) | 271 | `result-track:2b142901681283915d994cdde9ba7fd89bb11a64685097c71d856e3103f109c0` |
| 6 | `theorem` | [SimpleFunc.exists_upperSemicontinuous_le_lintegral_le](../../../../../../mathematics/Analysis/RealAnalysis/Integration/VitaliCaratheodory/Variant1186e787042789d661443146ada8130b2fca6be021b061577da4d5aa536a56f5.lean/declarations/simplefunc-exists-uppersemicontinuous-le-lintegral-le--ca0979bc9df911a4150d563f.md) | 324 | `result-track:ca0979bc9df911a4150d563f9123a8f17225924fe45d0caac4a7fa547ae0fb5a` |
| 7 | `theorem` | [exists_upperSemicontinuous_le_lintegral_le](../../../../../../mathematics/Analysis/RealAnalysis/Integration/VitaliCaratheodory/Variant1186e787042789d661443146ada8130b2fca6be021b061577da4d5aa536a56f5.lean/declarations/exists-uppersemicontinuous-le-lintegral-le--2d308ee40ec84fac39cdd350.md) | 388 | `result-track:2d308ee40ec84fac39cdd350dbc68fee97667786b8bce5fcd4df62e7dbbb9c99` |
| 8 | `theorem` | [exists_upperSemicontinuous_le_integral_le](../../../../../../mathematics/Analysis/RealAnalysis/Integration/VitaliCaratheodory/Variant1186e787042789d661443146ada8130b2fca6be021b061577da4d5aa536a56f5.lean/declarations/exists-uppersemicontinuous-le-integral-le--3582a163c924fd9a5268dd2d.md) | 423 | `result-track:3582a163c924fd9a5268dd2d0e72835b48ab7cb7dc95fe0aa36b3efcf1dfd226` |
| 9 | `theorem` | [exists_lt_lowerSemicontinuous_integral_lt](../../../../../../mathematics/Analysis/RealAnalysis/Integration/VitaliCaratheodory/Variant1186e787042789d661443146ada8130b2fca6be021b061577da4d5aa536a56f5.lean/declarations/exists-lt-lowersemicontinuous-integral-lt--cf42ffaebe54affe219917d3.md) | 458 | `result-track:cf42ffaebe54affe219917d3656078ca3f83aaf7737bd5e3392cb361732ca870` |
| 10 | `theorem` | [exists_upperSemicontinuous_lt_integral_gt](../../../../../../mathematics/Analysis/RealAnalysis/Integration/VitaliCaratheodory/Variant1186e787042789d661443146ada8130b2fca6be021b061577da4d5aa536a56f5.lean/declarations/exists-uppersemicontinuous-lt-integral-gt--0af4a67abb0d66f8af9b9daa.md) | 537 | `result-track:0af4a67abb0d66f8af9b9daa3c78ca582de27f12eec48f0f2d4de81169d8f175` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
