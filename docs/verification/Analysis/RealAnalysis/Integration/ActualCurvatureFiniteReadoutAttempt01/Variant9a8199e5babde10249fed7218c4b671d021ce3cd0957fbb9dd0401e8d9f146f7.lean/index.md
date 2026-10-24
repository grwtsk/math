# Verification target: GRWTSK.Analysis.RealAnalysis.Integration.ActualCurvatureFiniteReadoutAttempt01.Variant9a8199e5babde10249fed7218c4b671d021ce3cd0957fbb9dd0401e8d9f146f7

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "8ef17c27c25cd30588d6c9d624b50688ab28c23b",
  "lexical_observation_count": 10,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/ActualCurvatureFiniteReadoutAttempt01/Variant9a8199e5babde10249fed7218c4b671d021ce3cd0957fbb9dd0401e8d9f146f7.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ActualCurvatureFiniteReadoutAttempt01/Variant9a8199e5babde10249fed7218c4b671d021ce3cd0957fbb9dd0401e8d9f146f7.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ActualCurvatureFiniteReadoutAttempt01/Variant9a8199e5babde10249fed7218c4b671d021ce3cd0957fbb9dd0401e8d9f146f7.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `8ef17c27c25cd30588d6c9d624b50688ab28c23b`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/ActualCurvatureFiniteReadoutAttempt01/Variant9a8199e5babde10249fed7218c4b671d021ce3cd0957fbb9dd0401e8d9f146f7.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/ActualCurvatureFiniteReadoutAttempt01/Variant9a8199e5babde10249fed7218c4b671d021ce3cd0957fbb9dd0401e8d9f146f7.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `ActualCurvatureResolution` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [gridPoint](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ActualCurvatureFiniteReadoutAttempt01/Variant9a8199e5babde10249fed7218c4b671d021ce3cd0957fbb9dd0401e8d9f146f7.lean/declarations/gridpoint--a5b4253266cea253b3a95594.md) | 24 | `declaration-track:a5b4253266cea253b3a95594f3d42d013c7d9d54c2c95f37f17388fec107ecc1` |
| 2 | `theorem` | [gridPoint_zero](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ActualCurvatureFiniteReadoutAttempt01/Variant9a8199e5babde10249fed7218c4b671d021ce3cd0957fbb9dd0401e8d9f146f7.lean/declarations/gridpoint-zero--403f11add18762a657f9cced.md) | 26 | `result-track:403f11add18762a657f9cced602283bf130dbb4d63f20edf339e61bbf7520637` |
| 3 | `theorem` | [gridPoint_upper](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ActualCurvatureFiniteReadoutAttempt01/Variant9a8199e5babde10249fed7218c4b671d021ce3cd0957fbb9dd0401e8d9f146f7.lean/declarations/gridpoint-upper--6f7bc8edfae0adb132aeae99.md) | 29 | `result-track:6f7bc8edfae0adb132aeae99616df4e2571e5c7206131f032db837458dcfa139` |
| 4 | `theorem` | [gridPoint_step_pos](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ActualCurvatureFiniteReadoutAttempt01/Variant9a8199e5babde10249fed7218c4b671d021ce3cd0957fbb9dd0401e8d9f146f7.lean/declarations/gridpoint-step-pos--c3320a1c6e24b178d2a52739.md) | 34 | `result-track:c3320a1c6e24b178d2a52739b6a6039a0162967a212359bb7703f6449962a7e4` |
| 5 | `theorem` | [leftGridSample_eq_on_cell](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ActualCurvatureFiniteReadoutAttempt01/Variant9a8199e5babde10249fed7218c4b671d021ce3cd0957fbb9dd0401e8d9f146f7.lean/declarations/leftgridsample-eq-on-cell--10ca908ac933182d4f60fd33.md) | 42 | `result-track:10ca908ac933182d4f60fd336e37bec03541be8e37e9f74b1a0216eba81dd461` |
| 6 | `theorem` | [actual_curvature_cell_FTC](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ActualCurvatureFiniteReadoutAttempt01/Variant9a8199e5babde10249fed7218c4b671d021ce3cd0957fbb9dd0401e8d9f146f7.lean/declarations/actual-curvature-cell-ftc--c4b30b951179b1173ddcf652.md) | 63 | `result-track:c4b30b951179b1173ddcf6528a06b55211b0736cf8b50d26951a7f517b561fb1` |
| 7 | `theorem` | [actual_grid_cell_integral](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ActualCurvatureFiniteReadoutAttempt01/Variant9a8199e5babde10249fed7218c4b671d021ce3cd0957fbb9dd0401e8d9f146f7.lean/declarations/actual-grid-cell-integral--871609605a076848f534c393.md) | 68 | `result-track:871609605a076848f534c3937cce07543ec8c2026576f629f4d86156ce7a3fa2` |
| 8 | `theorem` | [sampled_grid_cell_intervalIntegrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ActualCurvatureFiniteReadoutAttempt01/Variant9a8199e5babde10249fed7218c4b671d021ce3cd0957fbb9dd0401e8d9f146f7.lean/declarations/sampled-grid-cell-intervalintegrable--6e798d3442dc635ddcb091e0.md) | 84 | `result-track:6e798d3442dc635ddcb091e00c0b30f9698f0dae9bc64a18279ea6e0d88a8def` |
| 9 | `def` | [finiteCurvatureReadout](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ActualCurvatureFiniteReadoutAttempt01/Variant9a8199e5babde10249fed7218c4b671d021ce3cd0957fbb9dd0401e8d9f146f7.lean/declarations/finitecurvaturereadout--cc1a9725864804d9f4ed86f0.md) | 97 | `declaration-track:cc1a9725864804d9f4ed86f027204a55d4ff002eadbd93473ce3bec22d3d4496` |
| 10 | `theorem` | [sampled_grid_eq_finite](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ActualCurvatureFiniteReadoutAttempt01/Variant9a8199e5babde10249fed7218c4b671d021ce3cd0957fbb9dd0401e8d9f146f7.lean/declarations/sampled-grid-eq-finite--8f168c27da37f7202d765096.md) | 103 | `result-track:8f168c27da37f7202d76509659c203a2076d8d72fac7a634db39134748d8dcc5` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
