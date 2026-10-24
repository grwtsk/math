# Verification target: GRWTSK.Analysis.MeasureTheory.SourceCriticalCumulativeDiscrepancy.Variantb2b02471354b8b735165a387551fe868cbaaa7f574ee4778aeb493e68012e133

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "bf9693eae2a87357e37ccd98b8a6994a0aec4d33",
  "lexical_observation_count": 24,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/MeasureTheory/SourceCriticalCumulativeDiscrepancy/Variantb2b02471354b8b735165a387551fe868cbaaa7f574ee4778aeb493e68012e133.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/MeasureTheory/SourceCriticalCumulativeDiscrepancy/Variantb2b02471354b8b735165a387551fe868cbaaa7f574ee4778aeb493e68012e133.lean/index.md) · [Full source](../../../../../mathematics/Analysis/MeasureTheory/SourceCriticalCumulativeDiscrepancy/Variantb2b02471354b8b735165a387551fe868cbaaa7f574ee4778aeb493e68012e133.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `bf9693eae2a87357e37ccd98b8a6994a0aec4d33`.

Source path: `GRWTSK/Analysis/MeasureTheory/SourceCriticalCumulativeDiscrepancy/Variantb2b02471354b8b735165a387551fe868cbaaa7f574ee4778aeb493e68012e133.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/MeasureTheory/SourceCriticalCumulativeDiscrepancy/Variantb2b02471354b8b735165a387551fe868cbaaa7f574ee4778aeb493e68012e133.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.RiemannHypothesis.SourceCriticalDensityQuadrature` — import line 1; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Integral.DominatedConvergence` — import line 2; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Integral.IntervalIntegral.LebesgueDifferentiationThm` — import line 3; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Integral.IntervalIntegral.AbsolutelyContinuousFun` — import line 4; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [criticalCumulativeDiscrepancy](../../../../../mathematics/Analysis/MeasureTheory/SourceCriticalCumulativeDiscrepancy/Variantb2b02471354b8b735165a387551fe868cbaaa7f574ee4778aeb493e68012e133.lean/declarations/criticalcumulativediscrepancy--fb9f7a0bee3a74e4c05d6344.md) | 31 | `declaration-track:fb9f7a0bee3a74e4c05d6344c48fe6cba0ef21a268a7e442d2722ef1aa506f9b` |
| 2 | `def` | [criticalDiscrepancyPrimitive](../../../../../mathematics/Analysis/MeasureTheory/SourceCriticalCumulativeDiscrepancy/Variantb2b02471354b8b735165a387551fe868cbaaa7f574ee4778aeb493e68012e133.lean/declarations/criticaldiscrepancyprimitive--fd26958af3f2bbafd15eaeb3.md) | 35 | `declaration-track:fd26958af3f2bbafd15eaeb359ccb611b859b0bbf5f176bcb108bc8cd155b6c9` |
| 3 | `def` | [criticalDiscrepancyBridge](../../../../../mathematics/Analysis/MeasureTheory/SourceCriticalCumulativeDiscrepancy/Variantb2b02471354b8b735165a387551fe868cbaaa7f574ee4778aeb493e68012e133.lean/declarations/criticaldiscrepancybridge--f8f7d6665550b9b96b7f3431.md) | 39 | `declaration-track:f8f7d6665550b9b96b7f3431be7ab50528c3a5757e3c08305e7c21eb5052ac29` |
| 4 | `theorem` | [decay_continuous](../../../../../mathematics/Analysis/MeasureTheory/SourceCriticalCumulativeDiscrepancy/Variantb2b02471354b8b735165a387551fe868cbaaa7f574ee4778aeb493e68012e133.lean/declarations/decay-continuous--c1df9fbd05b80fe7a13c163e.md) | 43 | `result-track:c1df9fbd05b80fe7a13c163e0a9ef9a5f1c45f5a7723e9e10349d74327e17213` |
| 5 | `theorem` | [decay_hasDerivAt](../../../../../mathematics/Analysis/MeasureTheory/SourceCriticalCumulativeDiscrepancy/Variantb2b02471354b8b735165a387551fe868cbaaa7f574ee4778aeb493e68012e133.lean/declarations/decay-hasderivat--c428051b1dfce5948664be2f.md) | 47 | `result-track:c428051b1dfce5948664be2fe937d74b01e29de62f354602cff9415d2eddecf3` |
| 6 | `theorem` | [density_mass](../../../../../mathematics/Analysis/MeasureTheory/SourceCriticalCumulativeDiscrepancy/Variantb2b02471354b8b735165a387551fe868cbaaa7f574ee4778aeb493e68012e133.lean/declarations/density-mass--fb6895451e903d9d62c5768b.md) | 57 | `result-track:fb6895451e903d9d62c5768b1effe7b7550cc8cf5a1a278b24c7f0a1475a25a7` |
| 7 | `theorem` | [density_mass_continuous](../../../../../mathematics/Analysis/MeasureTheory/SourceCriticalCumulativeDiscrepancy/Variantb2b02471354b8b735165a387551fe868cbaaa7f574ee4778aeb493e68012e133.lean/declarations/density-mass-continuous--c89548ed52de00ec6251abfc.md) | 63 | `result-track:c89548ed52de00ec6251abfc9f97112d7d82bb4fb821d7d33e70d4dbf18e2358` |
| 8 | `theorem` | [prime_prefix_intervalIntegrable](../../../../../mathematics/Analysis/MeasureTheory/SourceCriticalCumulativeDiscrepancy/Variantb2b02471354b8b735165a387551fe868cbaaa7f574ee4778aeb493e68012e133.lean/declarations/prime-prefix-intervalintegrable--f311163268f16fc9fe7c86ab.md) | 70 | `result-track:f311163268f16fc9fe7c86ab91254b72060e57a7aa10c51f1f84f3fb46ae356e` |
| 9 | `theorem` | [criticalCumulativeDiscrepancy_eq](../../../../../mathematics/Analysis/MeasureTheory/SourceCriticalCumulativeDiscrepancy/Variantb2b02471354b8b735165a387551fe868cbaaa7f574ee4778aeb493e68012e133.lean/declarations/criticalcumulativediscrepancy-eq--0af9047043cf6b47dbe85763.md) | 83 | `result-track:0af9047043cf6b47dbe85763beed3b0b1c7af108ffb674f48e1cb49d2a592559` |
| 10 | `theorem` | [criticalCumulativeDiscrepancy_at_upper](../../../../../mathematics/Analysis/MeasureTheory/SourceCriticalCumulativeDiscrepancy/Variantb2b02471354b8b735165a387551fe868cbaaa7f574ee4778aeb493e68012e133.lean/declarations/criticalcumulativediscrepancy-at-upper--a43ed0b60a7cb272b27f554b.md) | 90 | `result-track:a43ed0b60a7cb272b27f554b60e132693c00e1d72e94129f6264eaf3dc505ac0` |
| 11 | `theorem` | [criticalCumulativeDiscrepancy_at_zero](../../../../../mathematics/Analysis/MeasureTheory/SourceCriticalCumulativeDiscrepancy/Variantb2b02471354b8b735165a387551fe868cbaaa7f574ee4778aeb493e68012e133.lean/declarations/criticalcumulativediscrepancy-at-zero--15c77539a576ffa9add2aaa8.md) | 94 | `result-track:15c77539a576ffa9add2aaa821dcb58eb6c2005031a30ea5952cbd87bc66e163` |
| 12 | `theorem` | [criticalCumulativeDiscrepancy_intervalIntegrable](../../../../../mathematics/Analysis/MeasureTheory/SourceCriticalCumulativeDiscrepancy/Variantb2b02471354b8b735165a387551fe868cbaaa7f574ee4778aeb493e68012e133.lean/declarations/criticalcumulativediscrepancy-intervalintegrable--36a22b6e6d7c4abd1b5e3285.md) | 98 | `result-track:36a22b6e6d7c4abd1b5e3285e1fc7f525f0e1a6486f24002850b4a0e117d630e` |
| 13 | `theorem` | [criticalDiscrepancyPrimitive_at_zero](../../../../../mathematics/Analysis/MeasureTheory/SourceCriticalCumulativeDiscrepancy/Variantb2b02471354b8b735165a387551fe868cbaaa7f574ee4778aeb493e68012e133.lean/declarations/criticaldiscrepancyprimitive-at-zero--36c70547ec87de8b5a085156.md) | 104 | `result-track:36c70547ec87de8b5a085156c3e1a086c9523ea7598f514e324a1293978a511c` |
| 14 | `theorem` | [criticalDiscrepancyPrimitive_continuous](../../../../../mathematics/Analysis/MeasureTheory/SourceCriticalCumulativeDiscrepancy/Variantb2b02471354b8b735165a387551fe868cbaaa7f574ee4778aeb493e68012e133.lean/declarations/criticaldiscrepancyprimitive-continuous--4dce3cc29a77a2f89ac926fa.md) | 108 | `result-track:4dce3cc29a77a2f89ac926fa457c9fd43b2758f622f3d4f1ea4b3480cb7007a1` |
| 15 | `theorem` | [criticalDiscrepancyPrimitive_absolutelyContinuous](../../../../../mathematics/Analysis/MeasureTheory/SourceCriticalCumulativeDiscrepancy/Variantb2b02471354b8b735165a387551fe868cbaaa7f574ee4778aeb493e68012e133.lean/declarations/criticaldiscrepancyprimitive-absolutelycontinuous--864298b9766bfe690fd9334f.md) | 112 | `result-track:864298b9766bfe690fd9334fc3a0da7eb9b3d7e7209dd1d14cc452f634d6ae77` |
| 16 | `theorem` | [criticalDiscrepancyPrimitive_ae_hasDerivAt](../../../../../mathematics/Analysis/MeasureTheory/SourceCriticalCumulativeDiscrepancy/Variantb2b02471354b8b735165a387551fe868cbaaa7f574ee4778aeb493e68012e133.lean/declarations/criticaldiscrepancyprimitive-ae-hasderivat--610f57c0ac596b324a0acc70.md) | 118 | `result-track:610f57c0ac596b324a0acc70aea4dc5f3ca317a15f1b8684ef033ab404b195d0` |
| 17 | `theorem` | [criticalDiscrepancyPrimitive_sub](../../../../../mathematics/Analysis/MeasureTheory/SourceCriticalCumulativeDiscrepancy/Variantb2b02471354b8b735165a387551fe868cbaaa7f574ee4778aeb493e68012e133.lean/declarations/criticaldiscrepancyprimitive-sub--12e7bf05c2fd3c88e31fc5ed.md) | 127 | `result-track:12e7bf05c2fd3c88e31fc5edfe3c851877bfd66cf0f0896d1134a924c6bd8d8d` |
| 18 | `theorem` | [density_mass_integral](../../../../../mathematics/Analysis/MeasureTheory/SourceCriticalCumulativeDiscrepancy/Variantb2b02471354b8b735165a387551fe868cbaaa7f574ee4778aeb493e68012e133.lean/declarations/density-mass-integral--2b01d4fe94c679e4fcc9dcc5.md) | 134 | `result-track:2b01d4fe94c679e4fcc9dcc51b520889244281e9b918727ef2074f86a960327c` |
| 19 | `theorem` | [criticalDiscrepancyPrimitive_eq_primeLogSum](../../../../../mathematics/Analysis/MeasureTheory/SourceCriticalCumulativeDiscrepancy/Variantb2b02471354b8b735165a387551fe868cbaaa7f574ee4778aeb493e68012e133.lean/declarations/criticaldiscrepancyprimitive-eq-primelogsum--924c1ed5b0659bcaa61a2bfd.md) | 155 | `result-track:924c1ed5b0659bcaa61a2bfde4a6ca055ee2d647894a563615f07a9ba79f2f07` |
| 20 | `theorem` | [criticalDiscrepancyBridge_at_zero](../../../../../mathematics/Analysis/MeasureTheory/SourceCriticalCumulativeDiscrepancy/Variantb2b02471354b8b735165a387551fe868cbaaa7f574ee4778aeb493e68012e133.lean/declarations/criticaldiscrepancybridge-at-zero--3a680bb38575a161c0f79fca.md) | 177 | `result-track:3a680bb38575a161c0f79fcaf32c8ecaa675de2f4f62ca1bc95514cd72952334` |
| 21 | `theorem` | [criticalDiscrepancyBridge_at_upper](../../../../../mathematics/Analysis/MeasureTheory/SourceCriticalCumulativeDiscrepancy/Variantb2b02471354b8b735165a387551fe868cbaaa7f574ee4778aeb493e68012e133.lean/declarations/criticaldiscrepancybridge-at-upper--13f004a8796eee4b4f276523.md) | 182 | `result-track:13f004a8796eee4b4f276523d03cf9d9a241d3d7a8e2aab53f52b74e10e51992` |
| 22 | `theorem` | [criticalDiscrepancyBridge_continuous](../../../../../mathematics/Analysis/MeasureTheory/SourceCriticalCumulativeDiscrepancy/Variantb2b02471354b8b735165a387551fe868cbaaa7f574ee4778aeb493e68012e133.lean/declarations/criticaldiscrepancybridge-continuous--cef134f58e50aa08d816598b.md) | 188 | `result-track:cef134f58e50aa08d816598ba6a1770460a2754d3f8d841857a025db202059cc` |
| 23 | `theorem` | [criticalDiscrepancyBridge_absolutelyContinuous](../../../../../mathematics/Analysis/MeasureTheory/SourceCriticalCumulativeDiscrepancy/Variantb2b02471354b8b735165a387551fe868cbaaa7f574ee4778aeb493e68012e133.lean/declarations/criticaldiscrepancybridge-absolutelycontinuous--97ba1b8dab120bb720101fe9.md) | 194 | `result-track:97ba1b8dab120bb720101fe949c00ab0fa8938cd8143135dd809ea75500d6b27` |
| 24 | `theorem` | [criticalDiscrepancyBridge_ae_hasDerivAt](../../../../../mathematics/Analysis/MeasureTheory/SourceCriticalCumulativeDiscrepancy/Variantb2b02471354b8b735165a387551fe868cbaaa7f574ee4778aeb493e68012e133.lean/declarations/criticaldiscrepancybridge-ae-hasderivat--4c5a9b928215fa78fc027704.md) | 202 | `result-track:4c5a9b928215fa78fc02770402d71ed9b27d27339d874c3e06e30b2764768f74` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
