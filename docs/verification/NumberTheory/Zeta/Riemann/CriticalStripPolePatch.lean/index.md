# Verification target: GRWTSK.NumberTheory.Zeta.Riemann.CriticalStripPolePatch

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "ac17d019a9404904cca01b222a3cd84f878a9ad7",
  "lexical_observation_count": 18,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Zeta/Riemann/CriticalStripPolePatch.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripPolePatch.lean/index.md) · [Full source](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripPolePatch.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `ac17d019a9404904cca01b222a3cd84f878a9ad7`.

Source path: `GRWTSK/NumberTheory/Zeta/Riemann/CriticalStripPolePatch.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Zeta/Riemann/CriticalStripPolePatch.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.NumberTheory.Zeta.Riemann.CriticalStripAnalyticPatch`](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripAnalyticPatch.lean/index.md) — import line 4; pinned internal source present.
- `Mathlib.Analysis.Complex.RemovableSingularity` — import line 5; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [poleNormalizedZeta](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripPolePatch.lean/declarations/polenormalizedzeta--1090a30e32e3833a3894a247.md) | 29 | `declaration-track:1090a30e32e3833a3894a247f7d933467b5c3f55a501bf3f935d55018cc8780a` |
| 2 | `theorem` | [poleNormalizedZeta_one](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripPolePatch.lean/declarations/polenormalizedzeta-one--20f38c870dc8582e446786ee.md) | 33 | `result-track:20f38c870dc8582e446786eeee7c10396f6e3eaa64cad82f1f6ad7bffd3f4cbd` |
| 3 | `theorem` | [poleNormalizedZeta_of_ne](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripPolePatch.lean/declarations/polenormalizedzeta-of-ne--9df33aeea0070c2a729fc0fa.md) | 37 | `result-track:9df33aeea0070c2a729fc0fa3bc2bed9a8003c3d7f066902214db5c5dff5dd98` |
| 4 | `theorem` | [continuousAt_poleNormalizedZeta_one](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripPolePatch.lean/declarations/continuousat-polenormalizedzeta-one--ac2f140801dd3dff56e0ce10.md) | 43 | `result-track:ac2f140801dd3dff56e0ce107ef670a0b360084cd3cadfa21060d451f6ab199a` |
| 5 | `theorem` | [differentiableAt_poleNormalizedZeta_of_ne](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripPolePatch.lean/declarations/differentiableat-polenormalizedzeta-of-ne--586dd3cc4d58f6437edcf0bb.md) | 49 | `result-track:586dd3cc4d58f6437edcf0bb5651625bea6dcadbf12261b59f717aa6ee339b4d` |
| 6 | `theorem` | [differentiable_poleNormalizedZeta](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripPolePatch.lean/declarations/differentiable-polenormalizedzeta--8dfbbb2164ccf2659aa7dc33.md) | 58 | `result-track:8dfbbb2164ccf2659aa7dc3336bb0d179787145a68a092efc18c9a92f3ef76f5` |
| 7 | `theorem` | [poleNormalizedZeta_eq_zero_iff](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripPolePatch.lean/declarations/polenormalizedzeta-eq-zero-iff--47c62d40aa725ab0032ac4b9.md) | 68 | `result-track:47c62d40aa725ab0032ac4b95b84be87bf405b27fed676bc46531a46a02bb4dd` |
| 8 | `theorem` | [poleNormalizedZeta_zero_of_target](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripPolePatch.lean/declarations/polenormalizedzeta-zero-of-target--5649d182e97f41b2a509e7e8.md) | 80 | `result-track:5649d182e97f41b2a509e7e864576e9c23173436a4d57883207308a9d1e39296` |
| 9 | `theorem` | [raw_pole_product_at_one](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripPolePatch.lean/declarations/raw-pole-product-at-one--c09439130b91a8267c51678d.md) | 85 | `result-track:c09439130b91a8267c51678dbf9e463f020c5bb07c9dc8a2ea67c34e0d0c430b` |
| 10 | `theorem` | [poleNormalizedZeta_ne_raw_product](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripPolePatch.lean/declarations/polenormalizedzeta-ne-raw-product--7bff65b1314f219238248a20.md) | 89 | `result-track:7bff65b1314f219238248a209e520e9af4224edb674657fe10eb209ae2587752` |
| 11 | `theorem` | [exists_poleNormalized_variation](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripPolePatch.lean/declarations/exists-polenormalized-variation--c4eb73f04186f9210935cde3.md) | 96 | `result-track:c4eb73f04186f9210935cde33e99b597e2678b33ae6099af92ce8738fb17f763` |
| 12 | `def` | [poleNormalizedPatch](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripPolePatch.lean/declarations/polenormalizedpatch--f74b769f0ef979b34411150a.md) | 107 | `declaration-track:f74b769f0ef979b34411150a07d02b84675fab09af48540416e8a20050e7dff1` |
| 13 | `theorem` | [exists_poleNormalized_patch](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripPolePatch.lean/declarations/exists-polenormalized-patch--dec985fd7d60895b3f9fc5d0.md) | 121 | `result-track:dec985fd7d60895b3f9fc5d0b0a9ea61af43119e8611f588ba60c42aab1509e3` |
| 14 | `theorem` | [exists_punctured_zeta_pole_lower_bound](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripPolePatch.lean/declarations/exists-punctured-zeta-pole-lower-bound--78bb041f0f67242021d5f9df.md) | 129 | `result-track:78bb041f0f67242021d5f9df5a593972406d7c78a8d1c4d9acd1f567b6317efd` |
| 15 | `theorem` | [zeta_norm_lower_of_pole_bound](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripPolePatch.lean/declarations/zeta-norm-lower-of-pole-bound--83c3cc67bf4d70392ba03e29.md) | 142 | `result-track:83c3cc67bf4d70392ba03e29b5456c396ec840a0b98cda8dc6de1a53aec65ed5` |
| 16 | `theorem` | [noTargetZero_of_poleNormalized_cover](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripPolePatch.lean/declarations/notargetzero-of-polenormalized-cover--d6b836751939ade5013f4da5.md) | 150 | `result-track:d6b836751939ade5013f4da55a0a3ef369db34843f9fb70ea1d2521f13cdbd6d` |
| 17 | `theorem` | [shellRH_of_poleNormalized_covers](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripPolePatch.lean/declarations/shellrh-of-polenormalized-covers--9a4dbc0b8875e9e67fe2cc41.md) | 157 | `result-track:9a4dbc0b8875e9e67fe2cc41d279dde0412bc149e21b52e37cfbfd674a0f75d4` |
| 18 | `theorem` | [window_succ_of_poleNormalized_covers](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripPolePatch.lean/declarations/window-succ-of-polenormalized-covers--326294f6dcca5babbd673967.md) | 167 | `result-track:326294f6dcca5babbd67396762be602f158db480842d20f4c944859b08fc2c3b` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
