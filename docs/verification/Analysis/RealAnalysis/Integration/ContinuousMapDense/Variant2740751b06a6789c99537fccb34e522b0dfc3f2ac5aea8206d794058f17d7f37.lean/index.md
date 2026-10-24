# Verification target: GRWTSK.Analysis.RealAnalysis.Integration.ContinuousMapDense.Variant2740751b06a6789c99537fccb34e522b0dfc3f2ac5aea8206d794058f17d7f37

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "607d68668fa1805453d984767098e819c5bc9af1",
  "lexical_observation_count": 13,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/ContinuousMapDense/Variant2740751b06a6789c99537fccb34e522b0dfc3f2ac5aea8206d794058f17d7f37.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ContinuousMapDense/Variant2740751b06a6789c99537fccb34e522b0dfc3f2ac5aea8206d794058f17d7f37.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ContinuousMapDense/Variant2740751b06a6789c99537fccb34e522b0dfc3f2ac5aea8206d794058f17d7f37.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `607d68668fa1805453d984767098e819c5bc9af1`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/ContinuousMapDense/Variant2740751b06a6789c99537fccb34e522b0dfc3f2ac5aea8206d794058f17d7f37.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/ContinuousMapDense/Variant2740751b06a6789c99537fccb34e522b0dfc3f2ac5aea8206d794058f17d7f37.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.MeasureTheory.Measure.Regular` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Function.SimpleFuncDenseLp` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.UrysohnsLemma` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Function.LpSpace.ContinuousFunctions` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Integral.Bochner.Basic` — import line 10; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [exists_continuous_eLpNorm_sub_le_of_closed](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ContinuousMapDense/Variant2740751b06a6789c99537fccb34e522b0dfc3f2ac5aea8206d794058f17d7f37.lean/declarations/exists-continuous-elpnorm-sub-le-of-closed--fba916536854418c201bfd3a.md) | 77 | `result-track:fba916536854418c201bfd3af1802c04188cf7867662d27033a7191cb32fce30` |
| 2 | `theorem` | [MemLp.exists_hasCompactSupport_eLpNorm_sub_le](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ContinuousMapDense/Variant2740751b06a6789c99537fccb34e522b0dfc3f2ac5aea8206d794058f17d7f37.lean/declarations/memlp-exists-hascompactsupport-elpnorm-sub-le--3435eeae1955123fc91df281.md) | 134 | `result-track:3435eeae1955123fc91df2819f586377e2c61a592f976716436729dc33634d19` |
| 3 | `theorem` | [MemLp.exists_hasCompactSupport_integral_rpow_sub_le](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ContinuousMapDense/Variant2740751b06a6789c99537fccb34e522b0dfc3f2ac5aea8206d794058f17d7f37.lean/declarations/memlp-exists-hascompactsupport-integral-rpow-sub-le--f0f83fac2d410775d7b1afac.md) | 192 | `result-track:f0f83fac2d410775d7b1afaca01dff6d22f13abe826aade82df2210e09fed24d` |
| 4 | `theorem` | [Integrable.exists_hasCompactSupport_lintegral_sub_le](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ContinuousMapDense/Variant2740751b06a6789c99537fccb34e522b0dfc3f2ac5aea8206d794058f17d7f37.lean/declarations/integrable-exists-hascompactsupport-lintegral-sub-le--d369ec40dfa72f681eccf022.md) | 218 | `result-track:d369ec40dfa72f681eccf0223ce6adca4f7759cd76e2cd2e31f721b3f539cab7` |
| 5 | `theorem` | [Integrable.exists_hasCompactSupport_integral_sub_le](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ContinuousMapDense/Variant2740751b06a6789c99537fccb34e522b0dfc3f2ac5aea8206d794058f17d7f37.lean/declarations/integrable-exists-hascompactsupport-integral-sub-le--7bfe565adbdaa9bc706ffb6c.md) | 228 | `result-track:7bfe565adbdaa9bc706ffb6c68e00c39376392bbb47310fa348e20d788a3bc93` |
| 6 | `theorem` | [MemLp.exists_boundedContinuous_eLpNorm_sub_le](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ContinuousMapDense/Variant2740751b06a6789c99537fccb34e522b0dfc3f2ac5aea8206d794058f17d7f37.lean/declarations/memlp-exists-boundedcontinuous-elpnorm-sub-le--5807a7eb1f0aede0579a133a.md) | 239 | `result-track:5807a7eb1f0aede0579a133a370d68a8a5121d52a9c1f319bbf42b23a2ece8f5` |
| 7 | `theorem` | [MemLp.exists_boundedContinuous_integral_rpow_sub_le](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ContinuousMapDense/Variant2740751b06a6789c99537fccb34e522b0dfc3f2ac5aea8206d794058f17d7f37.lean/declarations/memlp-exists-boundedcontinuous-integral-rpow-sub-le--26b4a765d576914c48f34d91.md) | 293 | `result-track:26b4a765d576914c48f34d91620f7f9efcee33e97f67ef3fd1079d7825026577` |
| 8 | `theorem` | [Integrable.exists_boundedContinuous_lintegral_sub_le](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ContinuousMapDense/Variant2740751b06a6789c99537fccb34e522b0dfc3f2ac5aea8206d794058f17d7f37.lean/declarations/integrable-exists-boundedcontinuous-lintegral-sub-le--c5de65571a4c2f925e7c7dde.md) | 314 | `result-track:c5de65571a4c2f925e7c7dde0005de84ff68032b98da9407b564742691a4e340` |
| 9 | `theorem` | [Integrable.exists_boundedContinuous_integral_sub_le](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ContinuousMapDense/Variant2740751b06a6789c99537fccb34e522b0dfc3f2ac5aea8206d794058f17d7f37.lean/declarations/integrable-exists-boundedcontinuous-integral-sub-le--2290c56e914938a2dc7a3212.md) | 322 | `result-track:2290c56e914938a2dc7a3212943ed62ed68e12a6a0e5b3f55d078670d368326e` |
| 10 | `theorem` | [boundedContinuousFunction_dense](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ContinuousMapDense/Variant2740751b06a6789c99537fccb34e522b0dfc3f2ac5aea8206d794058f17d7f37.lean/declarations/boundedcontinuousfunction-dense--3f81dc0b44627fe59f7440b4.md) | 334 | `result-track:3f81dc0b44627fe59f7440b4fb841f4989e56c3d762ed5e1a6f330f339e2d260` |
| 11 | `theorem` | [boundedContinuousFunction_topologicalClosure](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ContinuousMapDense/Variant2740751b06a6789c99537fccb34e522b0dfc3f2ac5aea8206d794058f17d7f37.lean/declarations/boundedcontinuousfunction-topologicalclosure--052296de5ed28723d79c1d12.md) | 346 | `result-track:052296de5ed28723d79c1d12c8a6b95336283020defa5341f82e7d57dd2e06d4` |
| 12 | `theorem` | [toLp_denseRange](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ContinuousMapDense/Variant2740751b06a6789c99537fccb34e522b0dfc3f2ac5aea8206d794058f17d7f37.lean/declarations/tolp-denserange--2d22be896b1f7aedd82fc41d.md) | 362 | `result-track:2d22be896b1f7aedd82fc41d617e5a034536bd51646b0eb49d6e74b94f886f10` |
| 13 | `theorem` | [toLp_denseRange](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ContinuousMapDense/Variant2740751b06a6789c99537fccb34e522b0dfc3f2ac5aea8206d794058f17d7f37.lean/declarations/tolp-denserange--f8bd4948eb9cb4f18ef2ff1d.md) | 374 | `result-track:f8bd4948eb9cb4f18ef2ff1d9a04c7260a2044a65035ed02e1542104eb9bb765` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
