# Verification target: GRWTSK.Analysis.RealAnalysis.Integration.ContinuousMapDense.Variant7ddfc84506ee06d2fc6da8287f0b42f368cdda578dbfe9b86e0006aa941ac0bc

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "42e34c708789a0e6253a72c3fe0cad5f477eeb70",
  "lexical_observation_count": 12,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/ContinuousMapDense/Variant7ddfc84506ee06d2fc6da8287f0b42f368cdda578dbfe9b86e0006aa941ac0bc.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ContinuousMapDense/Variant7ddfc84506ee06d2fc6da8287f0b42f368cdda578dbfe9b86e0006aa941ac0bc.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ContinuousMapDense/Variant7ddfc84506ee06d2fc6da8287f0b42f368cdda578dbfe9b86e0006aa941ac0bc.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `42e34c708789a0e6253a72c3fe0cad5f477eeb70`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/ContinuousMapDense/Variant7ddfc84506ee06d2fc6da8287f0b42f368cdda578dbfe9b86e0006aa941ac0bc.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/ContinuousMapDense/Variant7ddfc84506ee06d2fc6da8287f0b42f368cdda578dbfe9b86e0006aa941ac0bc.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.MeasureTheory.Measure.Regular` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Function.SimpleFuncDenseLp` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.UrysohnsLemma` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Integral.Bochner` — import line 14; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [exists_continuous_snorm_sub_le_of_closed](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ContinuousMapDense/Variant7ddfc84506ee06d2fc6da8287f0b42f368cdda578dbfe9b86e0006aa941ac0bc.lean/declarations/exists-continuous-snorm-sub-le-of-closed--655146b97999f149744f8af6.md) | 87 | `result-track:655146b97999f149744f8af653e9232ee23d0036b9c141b88794f0827e6b7a0b` |
| 2 | `theorem` | [Memℒp.exists_hasCompactSupport_snorm_sub_le](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ContinuousMapDense/Variant7ddfc84506ee06d2fc6da8287f0b42f368cdda578dbfe9b86e0006aa941ac0bc.lean/declarations/mem-p-exists-hascompactsupport-snorm-sub-le--1bfe2bc17b7ae4d7081165d1.md) | 148 | `result-track:1bfe2bc17b7ae4d7081165d11083b2ebc61c44a0f9aff1c8572fb77e2394f4cf` |
| 3 | `theorem` | [Memℒp.exists_hasCompactSupport_integral_rpow_sub_le](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ContinuousMapDense/Variant7ddfc84506ee06d2fc6da8287f0b42f368cdda578dbfe9b86e0006aa941ac0bc.lean/declarations/mem-p-exists-hascompactsupport-integral-rpow-sub-le--fb18959b96cb509219a0de04.md) | 202 | `result-track:fb18959b96cb509219a0de04d55d27dd21f6facaa7460a7f4a08740d384b0bc2` |
| 4 | `theorem` | [Integrable.exists_hasCompactSupport_lintegral_sub_le](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ContinuousMapDense/Variant7ddfc84506ee06d2fc6da8287f0b42f368cdda578dbfe9b86e0006aa941ac0bc.lean/declarations/integrable-exists-hascompactsupport-lintegral-sub-le--0102ec3bc73e2810e8a03e56.md) | 223 | `result-track:0102ec3bc73e2810e8a03e56c5948f0d5e76b5104fc4192602da8059bfc6ce1c` |
| 5 | `theorem` | [Integrable.exists_hasCompactSupport_integral_sub_le](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ContinuousMapDense/Variant7ddfc84506ee06d2fc6da8287f0b42f368cdda578dbfe9b86e0006aa941ac0bc.lean/declarations/integrable-exists-hascompactsupport-integral-sub-le--00deb110122f2155d2ad9a5d.md) | 233 | `result-track:00deb110122f2155d2ad9a5d4193bf6a5bd53e129d2c741b14749d6c4c481dc3` |
| 6 | `theorem` | [Memℒp.exists_boundedContinuous_snorm_sub_le](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ContinuousMapDense/Variant7ddfc84506ee06d2fc6da8287f0b42f368cdda578dbfe9b86e0006aa941ac0bc.lean/declarations/mem-p-exists-boundedcontinuous-snorm-sub-le--3fdd2f511d1384da2b8a3fa6.md) | 244 | `result-track:3fdd2f511d1384da2b8a3fa6655aff41e1ddeff30cb23f77c322799b692f4e17` |
| 7 | `theorem` | [Memℒp.exists_boundedContinuous_integral_rpow_sub_le](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ContinuousMapDense/Variant7ddfc84506ee06d2fc6da8287f0b42f368cdda578dbfe9b86e0006aa941ac0bc.lean/declarations/mem-p-exists-boundedcontinuous-integral-rpow-sub-le--39334f3a0a44f2d880a09e0b.md) | 296 | `result-track:39334f3a0a44f2d880a09e0bedc2753ecc8f100c5ee895e8ba2acd8813fd734c` |
| 8 | `theorem` | [Integrable.exists_boundedContinuous_lintegral_sub_le](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ContinuousMapDense/Variant7ddfc84506ee06d2fc6da8287f0b42f368cdda578dbfe9b86e0006aa941ac0bc.lean/declarations/integrable-exists-boundedcontinuous-lintegral-sub-le--190aa6a29266c3f8e58efc33.md) | 314 | `result-track:190aa6a29266c3f8e58efc333884296073816427f376edad7acb6112411db94c` |
| 9 | `theorem` | [Integrable.exists_boundedContinuous_integral_sub_le](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ContinuousMapDense/Variant7ddfc84506ee06d2fc6da8287f0b42f368cdda578dbfe9b86e0006aa941ac0bc.lean/declarations/integrable-exists-boundedcontinuous-integral-sub-le--42598d04b763f9cfcef6cc07.md) | 323 | `result-track:42598d04b763f9cfcef6cc07240cd38d436dd40f9b1dc268704a81107e1058b5` |
| 10 | `theorem` | [boundedContinuousFunction_dense](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ContinuousMapDense/Variant7ddfc84506ee06d2fc6da8287f0b42f368cdda578dbfe9b86e0006aa941ac0bc.lean/declarations/boundedcontinuousfunction-dense--93bd19f8edbcdd7619a88949.md) | 336 | `result-track:93bd19f8edbcdd7619a889495a54e5183a4641e999df8b84fa5de3c28ff701c1` |
| 11 | `theorem` | [toLp_denseRange](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ContinuousMapDense/Variant7ddfc84506ee06d2fc6da8287f0b42f368cdda578dbfe9b86e0006aa941ac0bc.lean/declarations/tolp-denserange--49537fa517d2dd4f9448f029.md) | 373 | `result-track:49537fa517d2dd4f9448f029464b958e2eb939e5ea349af738642077ccef3b10` |
| 12 | `theorem` | [toLp_denseRange](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ContinuousMapDense/Variant7ddfc84506ee06d2fc6da8287f0b42f368cdda578dbfe9b86e0006aa941ac0bc.lean/declarations/tolp-denserange--9525eab3ad4e4f78979242f1.md) | 390 | `result-track:9525eab3ad4e4f78979242f16d60482a9ac0d94573a3310dc88b413208149cdd` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
