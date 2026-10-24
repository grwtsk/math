# Verification target: GRWTSK.Analysis.MeasureTheory.Trim.Variant55dbde7374069de2ccd25a6aabbc788dd9c06e6f0af8565f8fa249b3b41922bd

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "cdb55ee2ff7f11072b33f0f97d7d53a102dae043",
  "lexical_observation_count": 7,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/MeasureTheory/Trim/Variant55dbde7374069de2ccd25a6aabbc788dd9c06e6f0af8565f8fa249b3b41922bd.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/MeasureTheory/Trim/Variant55dbde7374069de2ccd25a6aabbc788dd9c06e6f0af8565f8fa249b3b41922bd.lean/index.md) · [Full source](../../../../../mathematics/Analysis/MeasureTheory/Trim/Variant55dbde7374069de2ccd25a6aabbc788dd9c06e6f0af8565f8fa249b3b41922bd.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `cdb55ee2ff7f11072b33f0f97d7d53a102dae043`.

Source path: `GRWTSK/Analysis/MeasureTheory/Trim/Variant55dbde7374069de2ccd25a6aabbc788dd9c06e6f0af8565f8fa249b3b41922bd.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/MeasureTheory/Trim/Variant55dbde7374069de2ccd25a6aabbc788dd9c06e6f0af8565f8fa249b3b41922bd.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.MeasureTheory.Function.LpSeminorm.Basic` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [eLpNorm'_trim](../../../../../mathematics/Analysis/MeasureTheory/Trim/Variant55dbde7374069de2ccd25a6aabbc788dd9c06e6f0af8565f8fa249b3b41922bd.lean/declarations/elpnorm-trim--1a5dfcfa7fe54c6efb61750b.md) | 31 | `result-track:1a5dfcfa7fe54c6efb61750b9bf66cbda4a026756ab81b5362ed5dc3888a6d5e` |
| 2 | `theorem` | [limsup_trim](../../../../../mathematics/Analysis/MeasureTheory/Trim/Variant55dbde7374069de2ccd25a6aabbc788dd9c06e6f0af8565f8fa249b3b41922bd.lean/declarations/limsup-trim--4cd10f4daf61a8da619da111.md) | 37 | `result-track:4cd10f4daf61a8da619da11190598d89564310c5f1b2870663387e01bba5c3dc` |
| 3 | `theorem` | [essSup_trim](../../../../../mathematics/Analysis/MeasureTheory/Trim/Variant55dbde7374069de2ccd25a6aabbc788dd9c06e6f0af8565f8fa249b3b41922bd.lean/declarations/esssup-trim--24a64c6f03591c3e79cb4493.md) | 49 | `result-track:24a64c6f03591c3e79cb4493524ae601f0aa60c2847c0d481d23a3565e5ed83a` |
| 4 | `theorem` | [eLpNormEssSup_trim](../../../../../mathematics/Analysis/MeasureTheory/Trim/Variant55dbde7374069de2ccd25a6aabbc788dd9c06e6f0af8565f8fa249b3b41922bd.lean/declarations/elpnormesssup-trim--588597b392a21d46c6da05d3.md) | 54 | `result-track:588597b392a21d46c6da05d33b0b308ba70672ddf5602fd05fdf2e269d5ee2c3` |
| 5 | `theorem` | [eLpNorm_trim](../../../../../mathematics/Analysis/MeasureTheory/Trim/Variant55dbde7374069de2ccd25a6aabbc788dd9c06e6f0af8565f8fa249b3b41922bd.lean/declarations/elpnorm-trim--56c520c44b9e8d3c413f54af.md) | 58 | `result-track:56c520c44b9e8d3c413f54af63884ec7e5e0f654d087dcdd8d938a2cfe4d34a6` |
| 6 | `theorem` | [eLpNorm_trim_ae](../../../../../mathematics/Analysis/MeasureTheory/Trim/Variant55dbde7374069de2ccd25a6aabbc788dd9c06e6f0af8565f8fa249b3b41922bd.lean/declarations/elpnorm-trim-ae--7258358c2254df1fc7586306.md) | 66 | `result-track:7258358c2254df1fc7586306b18d12b85fa50cea4162332ba0e313fa3df201cd` |
| 7 | `theorem` | [memLp_of_memLp_trim](../../../../../mathematics/Analysis/MeasureTheory/Trim/Variant55dbde7374069de2ccd25a6aabbc788dd9c06e6f0af8565f8fa249b3b41922bd.lean/declarations/memlp-of-memlp-trim--fdef6e15ee5e2f0e322c03f9.md) | 71 | `result-track:fdef6e15ee5e2f0e322c03f90c82bf556b78b6b8b3a53b308dbd64119fff3d24` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
