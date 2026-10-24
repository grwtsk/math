# Verification target: GRWTSK.Analysis.RealAnalysis.Integration.SourceOuterPsiFubiniAttempt01.Variant529e7b72f79a74bedfab1b697f0201af704623cc223a700af0f52bf687625f40

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "cebbabe4d9d52ad8a707d47562028c87cfe5e0a2",
  "lexical_observation_count": 6,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/SourceOuterPsiFubiniAttempt01/Variant529e7b72f79a74bedfab1b697f0201af704623cc223a700af0f52bf687625f40.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceOuterPsiFubiniAttempt01/Variant529e7b72f79a74bedfab1b697f0201af704623cc223a700af0f52bf687625f40.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceOuterPsiFubiniAttempt01/Variant529e7b72f79a74bedfab1b697f0201af704623cc223a700af0f52bf687625f40.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `cebbabe4d9d52ad8a707d47562028c87cfe5e0a2`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/SourceOuterPsiFubiniAttempt01/Variant529e7b72f79a74bedfab1b697f0201af704623cc223a700af0f52bf687625f40.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/SourceOuterPsiFubiniAttempt01/Variant529e7b72f79a74bedfab1b697f0201af704623cc223a700af0f52bf687625f40.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `SourcePrimitiveInnerKernel` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Integral.Prod` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [finiteDensity](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceOuterPsiFubiniAttempt01/Variant529e7b72f79a74bedfab1b697f0201af704623cc223a700af0f52bf687625f40.lean/declarations/finitedensity--5249db9f032caf390793a800.md) | 28 | `declaration-track:5249db9f032caf390793a800239f16fa9d1c1ae6aa2a5d5884f3737549629424` |
| 2 | `theorem` | [threshold_order](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceOuterPsiFubiniAttempt01/Variant529e7b72f79a74bedfab1b697f0201af704623cc223a700af0f52bf687625f40.lean/declarations/threshold-order--d24449921fe6bf0c937df8d7.md) | 33 | `result-track:d24449921fe6bf0c937df8d7a89ab0d1f05fb98e9f41b8141089d3d304ca90ab` |
| 3 | `theorem` | [finiteDensity_integrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceOuterPsiFubiniAttempt01/Variant529e7b72f79a74bedfab1b697f0201af704623cc223a700af0f52bf687625f40.lean/declarations/finitedensity-integrable--2b0839d56eef4b3b032f0a65.md) | 37 | `result-track:2b0839d56eef4b3b032f0a65cf31efebe2bc032f16d1c9517c23809feba33e54` |
| 4 | `theorem` | [density_left_slice](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceOuterPsiFubiniAttempt01/Variant529e7b72f79a74bedfab1b697f0201af704623cc223a700af0f52bf687625f40.lean/declarations/density-left-slice--67e7b1e808fe27394c2c72b2.md) | 90 | `result-track:67e7b1e808fe27394c2c72b250a64064af175ce8e12d35ce39fc65de20630c6f` |
| 5 | `theorem` | [density_right_slice](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceOuterPsiFubiniAttempt01/Variant529e7b72f79a74bedfab1b697f0201af704623cc223a700af0f52bf687625f40.lean/declarations/density-right-slice--bcc234568702158a706f04b6.md) | 112 | `result-track:bcc234568702158a706f04b6120957396860c9facf0be37cff03946d0026f9f3` |
| 6 | `theorem` | [actualFiniteSecondReadout_outer_fubini](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceOuterPsiFubiniAttempt01/Variant529e7b72f79a74bedfab1b697f0201af704623cc223a700af0f52bf687625f40.lean/declarations/actualfinitesecondreadout-outer-fubini--1e06a8a760a7af9ab63717f1.md) | 138 | `result-track:1e06a8a760a7af9ab63717f150f728f4af54497bd4ed6e01252dbb44d39ff36b` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
