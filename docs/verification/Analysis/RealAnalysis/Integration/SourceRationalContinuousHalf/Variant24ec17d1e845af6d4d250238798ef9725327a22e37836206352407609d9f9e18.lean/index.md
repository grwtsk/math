# Verification target: GRWTSK.Analysis.RealAnalysis.Integration.SourceRationalContinuousHalf.Variant24ec17d1e845af6d4d250238798ef9725327a22e37836206352407609d9f9e18

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "8346f427811751f510d4c5d0d7c4a647ac0b15e4",
  "lexical_observation_count": 8,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/SourceRationalContinuousHalf/Variant24ec17d1e845af6d4d250238798ef9725327a22e37836206352407609d9f9e18.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceRationalContinuousHalf/Variant24ec17d1e845af6d4d250238798ef9725327a22e37836206352407609d9f9e18.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceRationalContinuousHalf/Variant24ec17d1e845af6d4d250238798ef9725327a22e37836206352407609d9f9e18.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `8346f427811751f510d4c5d0d7c4a647ac0b15e4`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/SourceRationalContinuousHalf/Variant24ec17d1e845af6d4d250238798ef9725327a22e37836206352407609d9f9e18.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/SourceRationalContinuousHalf/Variant24ec17d1e845af6d4d250238798ef9725327a22e37836206352407609d9f9e18.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `SourceNativeConstantCompensation` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Integral.Prod` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [continuousPoleHalf](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceRationalContinuousHalf/Variant24ec17d1e845af6d4d250238798ef9725327a22e37836206352407609d9f9e18.lean/declarations/continuouspolehalf--809d319e7e5c6ec9cb2a280e.md) | 32 | `declaration-track:809d319e7e5c6ec9cb2a280e714768da70164d4dea5ce0f8b471fbcadca05016` |
| 2 | `theorem` | [continuousPoleHalf_eq_interval](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceRationalContinuousHalf/Variant24ec17d1e845af6d4d250238798ef9725327a22e37836206352407609d9f9e18.lean/declarations/continuouspolehalf-eq-interval--0e899342d15f5c50ffd5e68a.md) | 36 | `result-track:0e899342d15f5c50ffd5e68a45b4a42b570d0cbd9a9138e08ba66b6167a3aaa2` |
| 3 | `theorem` | [continuousPoleHalf_eq_neg_negative](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceRationalContinuousHalf/Variant24ec17d1e845af6d4d250238798ef9725327a22e37836206352407609d9f9e18.lean/declarations/continuouspolehalf-eq-neg-negative--b14d289fff9f3b67b90da95c.md) | 54 | `result-track:b14d289fff9f3b67b90da95c87c3664dc4ca0e3474379e6b7fc43ce22cc35a5f` |
| 4 | `theorem` | [continuousPoleHalf_abs_le_two](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceRationalContinuousHalf/Variant24ec17d1e845af6d4d250238798ef9725327a22e37836206352407609d9f9e18.lean/declarations/continuouspolehalf-abs-le-two--f300e6bf9b5ed92633cb2777.md) | 62 | `result-track:f300e6bf9b5ed92633cb277734652f996505a858d31a35c3cb8aa3d3ab565603` |
| 5 | `theorem` | [inverse_phase_norm](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceRationalContinuousHalf/Variant24ec17d1e845af6d4d250238798ef9725327a22e37836206352407609d9f9e18.lean/declarations/inverse-phase-norm--93119cbc2979bb837f1fcb2e.md) | 67 | `result-track:93119cbc2979bb837f1fcb2e589766cbe0335ac520df3ce6238ee6bb8b26a6e9` |
| 6 | `theorem` | [rationalKernel_eq_laplace](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceRationalContinuousHalf/Variant24ec17d1e845af6d4d250238798ef9725327a22e37836206352407609d9f9e18.lean/declarations/rationalkernel-eq-laplace--4425c0ea9d362c8a709cf9d2.md) | 73 | `result-track:4425c0ea9d362c8a709cf9d2db2eedac90e09b941d73942187fd147c73a365f4` |
| 7 | `theorem` | [rationalReadout_product_integrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceRationalContinuousHalf/Variant24ec17d1e845af6d4d250238798ef9725327a22e37836206352407609d9f9e18.lean/declarations/rationalreadout-product-integrable--e6df841cf4e53331d7d95124.md) | 92 | `result-track:e6df841cf4e53331d7d95124d169b62f5f891ab776b007e51300828148ffa70b` |
| 8 | `theorem` | [native_rational_readout_eq_continuousPoleHalf](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceRationalContinuousHalf/Variant24ec17d1e845af6d4d250238798ef9725327a22e37836206352407609d9f9e18.lean/declarations/native-rational-readout-eq-continuouspolehalf--b968df40ee3247844556cbd5.md) | 107 | `result-track:b968df40ee3247844556cbd5b0c452e863a4f0c9bd3cd2a6440a586c6848052c` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
