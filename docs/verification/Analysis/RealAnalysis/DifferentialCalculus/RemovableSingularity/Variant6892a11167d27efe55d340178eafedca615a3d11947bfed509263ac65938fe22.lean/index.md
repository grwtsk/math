# Verification target: GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.RemovableSingularity.Variant6892a11167d27efe55d340178eafedca615a3d11947bfed509263ac65938fe22

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "f1eedd09fad3792d301f2e94bcc6d47b969c7c72",
  "lexical_observation_count": 9,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/RemovableSingularity/Variant6892a11167d27efe55d340178eafedca615a3d11947bfed509263ac65938fe22.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/RemovableSingularity/Variant6892a11167d27efe55d340178eafedca615a3d11947bfed509263ac65938fe22.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/RemovableSingularity/Variant6892a11167d27efe55d340178eafedca615a3d11947bfed509263ac65938fe22.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `f1eedd09fad3792d301f2e94bcc6d47b969c7c72`.

Source path: `GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/RemovableSingularity/Variant6892a11167d27efe55d340178eafedca615a3d11947bfed509263ac65938fe22.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/DifferentialCalculus/RemovableSingularity/Variant6892a11167d27efe55d340178eafedca615a3d11947bfed509263ac65938fe22.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.Calculus.FDeriv.Analytic` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Asymptotics.SpecificAsymptotics` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Complex.CauchyIntegral` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [analyticAt_of_differentiable_on_punctured_nhds_of_continuousAt](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/RemovableSingularity/Variant6892a11167d27efe55d340178eafedca615a3d11947bfed509263ac65938fe22.lean/declarations/analyticat-of-differentiable-on-punctured-nhds-of-continuousat--28ab4834a74423d23bcc11d2.md) | 32 | `result-track:28ab4834a74423d23bcc11d23d8696fc4f2d0890128ec78f30f8742fd5a5deac` |
| 2 | `theorem` | [differentiableOn_compl_singleton_and_continuousAt_iff](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/RemovableSingularity/Variant6892a11167d27efe55d340178eafedca615a3d11947bfed509263ac65938fe22.lean/declarations/differentiableon-compl-singleton-and-continuousat-iff--5b81da6512becd1b28ded8f3.md) | 43 | `result-track:5b81da6512becd1b28ded8f335936f21e545f002dd8cb1df670472d0df224fd6` |
| 3 | `theorem` | [differentiableOn_dslope](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/RemovableSingularity/Variant6892a11167d27efe55d340178eafedca615a3d11947bfed509263ac65938fe22.lean/declarations/differentiableon-dslope--a405191afbb35146ba96c6e7.md) | 56 | `result-track:a405191afbb35146ba96c6e7dc6aba8790e2d1417893474ff2c2369bccb772d1` |
| 4 | `theorem` | [differentiableOn_update_limUnder_of_isLittleO](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/RemovableSingularity/Variant6892a11167d27efe55d340178eafedca615a3d11947bfed509263ac65938fe22.lean/declarations/differentiableon-update-limunder-of-islittleo--c806fa894adf45231d83bbff.md) | 66 | `result-track:c806fa894adf45231d83bbff314ac25e3b3aeaf770f6a4b7161c68f4c8bb09bd` |
| 5 | `theorem` | [differentiableOn_update_limUnder_insert_of_isLittleO](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/RemovableSingularity/Variant6892a11167d27efe55d340178eafedca615a3d11947bfed509263ac65938fe22.lean/declarations/differentiableon-update-limunder-insert-of-islittleo--a899f01cafa3663b253684d3.md) | 87 | `result-track:a899f01cafa3663b253684d3988e1e0c961d38d04a21c2394476618bc5ef108b` |
| 6 | `theorem` | [differentiableOn_update_limUnder_of_bddAbove](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/RemovableSingularity/Variant6892a11167d27efe55d340178eafedca615a3d11947bfed509263ac65938fe22.lean/declarations/differentiableon-update-limunder-of-bddabove--aa9e8d8137a1df0f6152eb91.md) | 97 | `result-track:aa9e8d8137a1df0f6152eb91e3970e37c13e3b9efc3aeeaedd748374b2a159ce` |
| 7 | `theorem` | [tendsto_limUnder_of_differentiable_on_punctured_nhds_of_isLittleO](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/RemovableSingularity/Variant6892a11167d27efe55d340178eafedca615a3d11947bfed509263ac65938fe22.lean/declarations/tendsto-limunder-of-differentiable-on-punctured-nhds-of-islittleo--606cd18d469105c5fb86ba74.md) | 107 | `result-track:606cd18d469105c5fb86ba74bac717a29fb58b8366e9adba1f299db54c0d7ccb` |
| 8 | `theorem` | [tendsto_limUnder_of_differentiable_on_punctured_nhds_of_bounded_under](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/RemovableSingularity/Variant6892a11167d27efe55d340178eafedca615a3d11947bfed509263ac65938fe22.lean/declarations/tendsto-limunder-of-differentiable-on-punctured-nhds-of-bounded-under--2dae07d0ce1e76a86af49ac4.md) | 119 | `result-track:2dae07d0ce1e76a86af49ac498481786789778abf67604f8aa52edcd9f065271` |
| 9 | `theorem` | [two_pi_I_inv_smul_circleIntegral_sub_sq_inv_smul_of_differentiable](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/RemovableSingularity/Variant6892a11167d27efe55d340178eafedca615a3d11947bfed509263ac65938fe22.lean/declarations/two-pi-i-inv-smul-circleintegral-sub-sq-inv-smul-of-differentiable--af9590f13b68a08d5cb4c954.md) | 126 | `result-track:af9590f13b68a08d5cb4c95492c15d759c8644cc4047a302b0926e40853b8596` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
