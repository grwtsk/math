# Verification target: GRWTSK.NumberTheory.Zeta.Riemann.DynamicBombieriSoficObstruction

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "4490c3a65d8f1b44c2aa447c38c5b0445c6abbe3",
  "lexical_observation_count": 6,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Zeta/Riemann/DynamicBombieriSoficObstruction.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/NumberTheory/Zeta/Riemann/DynamicBombieriSoficObstruction.lean/index.md) · [Full source](../../../../../mathematics/NumberTheory/Zeta/Riemann/DynamicBombieriSoficObstruction.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `4490c3a65d8f1b44c2aa447c38c5b0445c6abbe3`.

Source path: `GRWTSK/NumberTheory/Zeta/Riemann/DynamicBombieriSoficObstruction.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Zeta/Riemann/DynamicBombieriSoficObstruction.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.DynamicalSystems.Symbolic.DynamicSoficSpectralCover`](../../../../../mathematics/DifferentialEquationsAndDynamicalSystems/DynamicalSystems/SymbolicDynamics/DynamicSoficSpectralCover.lean/index.md) — import line 5; pinned internal source present.
- [`GRWTSK.NumberTheory.Zeta.Riemann.CanonicalSquareTentBombieriMomentInformationLoss`](../../../../../mathematics/NumberTheory/Zeta/Riemann/CanonicalSquareTentBombieriMomentInformationLoss.lean/index.md) — import line 6; pinned internal source present.
- `Mathlib` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [MomentOnlyStages](../../../../../mathematics/NumberTheory/Zeta/Riemann/DynamicBombieriSoficObstruction.lean/declarations/momentonlystages--0531fd35665b8d1cbf2dde6d.md) | 44 | `declaration-track:0531fd35665b8d1cbf2dde6dea90c8f842aa7ec91960518d5c9feb0881945a8b` |
| 2 | `theorem` | [momentOnly_stage_collision](../../../../../mathematics/NumberTheory/Zeta/Riemann/DynamicBombieriSoficObstruction.lean/declarations/momentonly-stage-collision--ab57a006794240988173df44.md) | 50 | `result-track:ab57a006794240988173df4444790b0d200b5a5376850300cbcc3db902cb7810` |
| 3 | `theorem` | [momentOnly_history_collision](../../../../../mathematics/NumberTheory/Zeta/Riemann/DynamicBombieriSoficObstruction.lean/declarations/momentonly-history-collision--9d78f1bfbbc7c4486623bdb6.md) | 62 | `result-track:9d78f1bfbbc7c4486623bdb6e60252803e256964b308f197c17bd94fa5828d63` |
| 4 | `theorem` | [no_exact_reconstruction_from_momentOnly_history](../../../../../mathematics/NumberTheory/Zeta/Riemann/DynamicBombieriSoficObstruction.lean/declarations/no-exact-reconstruction-from-momentonly-history--5f96192b2aa72306896c110e.md) | 72 | `result-track:5f96192b2aa72306896c110e797713fe060df336c2d7d2247303bf978658cd5d` |
| 5 | `theorem` | [trace_collision_of_momentOnly_history](../../../../../mathematics/NumberTheory/Zeta/Riemann/DynamicBombieriSoficObstruction.lean/declarations/trace-collision-of-momentonly-history--c1ecb1cb6fa052989eb268dc.md) | 90 | `result-track:c1ecb1cb6fa052989eb268dc945c0d23e63680f6630453573aa7edecced68b13` |
| 6 | `theorem` | [no_lossless_spectral_cover_after_moment_collapse](../../../../../mathematics/NumberTheory/Zeta/Riemann/DynamicBombieriSoficObstruction.lean/declarations/no-lossless-spectral-cover-after-moment-collapse--75b5e02432e132d3c3b756bb.md) | 103 | `result-track:75b5e02432e132d3c3b756bbc7b71e59da6f3d947784a0673cb98501a9c7fc56` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
