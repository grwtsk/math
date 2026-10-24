# Verification target: GRWTSK.NumberTheory.SourceNativeDirichletMoments.Variant812091b9e00a0ecc97f43af5c1233a3fd20a195becc847a9921c283163e7f203

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "1176115ca771d52bb479813d5b590f55171f2ab9",
  "lexical_observation_count": 8,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/SourceNativeDirichletMoments/Variant812091b9e00a0ecc97f43af5c1233a3fd20a195becc847a9921c283163e7f203.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/NumberTheory/SourceNativeDirichletMoments/Variant812091b9e00a0ecc97f43af5c1233a3fd20a195becc847a9921c283163e7f203.lean/index.md) · [Full source](../../../../mathematics/NumberTheory/SourceNativeDirichletMoments/Variant812091b9e00a0ecc97f43af5c1233a3fd20a195becc847a9921c283163e7f203.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `1176115ca771d52bb479813d5b590f55171f2ab9`.

Source path: `GRWTSK/NumberTheory/SourceNativeDirichletMoments/Variant812091b9e00a0ecc97f43af5c1233a3fd20a195becc847a9921c283163e7f203.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/SourceNativeDirichletMoments/Variant812091b9e00a0ecc97f43af5c1233a3fd20a195becc847a9921c283163e7f203.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `SourceNativeDirichlet` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.NumberTheory.LSeries.Deriv` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [dirichletMoment](../../../../mathematics/NumberTheory/SourceNativeDirichletMoments/Variant812091b9e00a0ecc97f43af5c1233a3fd20a195becc847a9921c283163e7f203.lean/declarations/dirichletmoment--5bcce3586428e8279df19d02.md) | 23 | `declaration-track:5bcce3586428e8279df19d020dc005e7041970a1c564d0d529f5d7a4c5e10cc9` |
| 2 | `theorem` | [dirichletMoment_nonneg](../../../../mathematics/NumberTheory/SourceNativeDirichletMoments/Variant812091b9e00a0ecc97f43af5c1233a3fd20a195becc847a9921c283163e7f203.lean/declarations/dirichletmoment-nonneg--2d1f18ab51fa8148a6f542b0.md) | 27 | `result-track:2d1f18ab51fa8148a6f542b051d1d868861baa8a694818596571f7333dca2a95` |
| 3 | `theorem` | [mangoldt_abscissa_le_one](../../../../mathematics/NumberTheory/SourceNativeDirichletMoments/Variant812091b9e00a0ecc97f43af5c1233a3fd20a195becc847a9921c283163e7f203.lean/declarations/mangoldt-abscissa-le-one--2ead3b2873a462748e79f32d.md) | 34 | `result-track:2ead3b2873a462748e79f32d0cd260fa00b2cf90bb99368dcd7d1f2b12ddfed9` |
| 4 | `theorem` | [iterate_logMul_eq](../../../../mathematics/NumberTheory/SourceNativeDirichletMoments/Variant812091b9e00a0ecc97f43af5c1233a3fd20a195becc847a9921c283163e7f203.lean/declarations/iterate-logmul-eq--d81e91d869dc31d30844a677.md) | 40 | `result-track:d81e91d869dc31d30844a677bcf0cf4660429aa3579b891289d5e0940cab3d08` |
| 5 | `theorem` | [dirichletMoment_summable](../../../../mathematics/NumberTheory/SourceNativeDirichletMoments/Variant812091b9e00a0ecc97f43af5c1233a3fd20a195becc847a9921c283163e7f203.lean/declarations/dirichletmoment-summable--519d0c5e2ad6eced0339ccbe.md) | 49 | `result-track:519d0c5e2ad6eced0339ccbe05bd4631cfc66f91818e8123fd7124366f3baca7` |
| 6 | `theorem` | [log_moment_series_eq](../../../../mathematics/NumberTheory/SourceNativeDirichletMoments/Variant812091b9e00a0ecc97f43af5c1233a3fd20a195becc847a9921c283163e7f203.lean/declarations/log-moment-series-eq--577773cc1cbdb9026a9b11fb.md) | 71 | `result-track:577773cc1cbdb9026a9b11fb952a145f6ec0ac7ff02e35ba9bb0439502374354` |
| 7 | `theorem` | [native_series_hasDerivAt_two](../../../../mathematics/NumberTheory/SourceNativeDirichletMoments/Variant812091b9e00a0ecc97f43af5c1233a3fd20a195becc847a9921c283163e7f203.lean/declarations/native-series-hasderivat-two--ea7b142e9a41b9aca4a0493b.md) | 99 | `result-track:ea7b142e9a41b9aca4a0493b3fa796a60d0e57d12075011cf3194fb872b6f501` |
| 8 | `theorem` | [native_series_second_derivative_two](../../../../mathematics/NumberTheory/SourceNativeDirichletMoments/Variant812091b9e00a0ecc97f43af5c1233a3fd20a195becc847a9921c283163e7f203.lean/declarations/native-series-second-derivative-two--1b10d031e10a3a16ee17e2e9.md) | 110 | `result-track:1b10d031e10a3a16ee17e2e9c527591064564290221196f3e55f6c93ed75934f` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
