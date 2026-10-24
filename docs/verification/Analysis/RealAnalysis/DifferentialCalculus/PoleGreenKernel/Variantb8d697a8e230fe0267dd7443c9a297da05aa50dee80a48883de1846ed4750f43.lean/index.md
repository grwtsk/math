# Verification target: GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.PoleGreenKernel.Variantb8d697a8e230fe0267dd7443c9a297da05aa50dee80a48883de1846ed4750f43

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "b99134d83a1c3a3f604fe548f7cf5dcae653a7eb",
  "lexical_observation_count": 14,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/PoleGreenKernel/Variantb8d697a8e230fe0267dd7443c9a297da05aa50dee80a48883de1846ed4750f43.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/PoleGreenKernel/Variantb8d697a8e230fe0267dd7443c9a297da05aa50dee80a48883de1846ed4750f43.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/PoleGreenKernel/Variantb8d697a8e230fe0267dd7443c9a297da05aa50dee80a48883de1846ed4750f43.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `b99134d83a1c3a3f604fe548f7cf5dcae653a7eb`.

Source path: `GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/PoleGreenKernel/Variantb8d697a8e230fe0267dd7443c9a297da05aa50dee80a48883de1846ed4750f43.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/DifferentialCalculus/PoleGreenKernel/Variantb8d697a8e230fe0267dd7443c9a297da05aa50dee80a48883de1846ed4750f43.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.RiemannHypothesis.PoleArithmeticFunctional` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [poleMode](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/PoleGreenKernel/Variantb8d697a8e230fe0267dd7443c9a297da05aa50dee80a48883de1846ed4750f43.lean/declarations/polemode--b48f39dd9101b8e6456c8118.md) | 30 | `declaration-track:b48f39dd9101b8e6456c81182695fbad5e84c14999d2d3ddeb31f578ee7cfa70` |
| 2 | `theorem` | [pole_mode_deriv](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/PoleGreenKernel/Variantb8d697a8e230fe0267dd7443c9a297da05aa50dee80a48883de1846ed4750f43.lean/declarations/pole-mode-deriv--c22a08234a687541d32e10a1.md) | 33 | `result-track:c22a08234a687541d32e10a1413ccb5c5498b11de71ecb4269f3d3945a10d88d` |
| 3 | `theorem` | [pole_mode_second_deriv](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/PoleGreenKernel/Variantb8d697a8e230fe0267dd7443c9a297da05aa50dee80a48883de1846ed4750f43.lean/declarations/pole-mode-second-deriv--5bb72ec38a5999f7865c79e8.md) | 44 | `result-track:5bb72ec38a5999f7865c79e85e041604511936aa132bee74e957dc46dc2b047a` |
| 4 | `theorem` | [pole_mode_fourth_deriv](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/PoleGreenKernel/Variantb8d697a8e230fe0267dd7443c9a297da05aa50dee80a48883de1846ed4750f43.lean/declarations/pole-mode-fourth-deriv--284c9864e782db7789fd04c1.md) | 51 | `result-track:284c9864e782db7789fd04c11b998b5de66b931389febdd423852e487408f3e6` |
| 5 | `theorem` | [pole_operator_mode](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/PoleGreenKernel/Variantb8d697a8e230fe0267dd7443c9a297da05aa50dee80a48883de1846ed4750f43.lean/declarations/pole-operator-mode--0d26656c114e2794477c8bc8.md) | 58 | `result-track:0d26656c114e2794477c8bc82aad3c602f1488fa0a954d49b979bc2a46c19529` |
| 6 | `theorem` | [pole_squared_operator_mode_zero](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/PoleGreenKernel/Variantb8d697a8e230fe0267dd7443c9a297da05aa50dee80a48883de1846ed4750f43.lean/declarations/pole-squared-operator-mode-zero--80ee476d4f01d6c7e9fa166c.md) | 67 | `result-track:80ee476d4f01d6c7e9fa166cc5f4c30ef2f48f1161641e66a7ff80daf074556c` |
| 7 | `def` | [positiveGreenBranch](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/PoleGreenKernel/Variantb8d697a8e230fe0267dd7443c9a297da05aa50dee80a48883de1846ed4750f43.lean/declarations/positivegreenbranch--f33c21bf64096d5af1ed6b51.md) | 78 | `declaration-track:f33c21bf64096d5af1ed6b516d56f1ba606865be0687b87067b14a180cfee613` |
| 8 | `def` | [negativeGreenBranch](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/PoleGreenKernel/Variantb8d697a8e230fe0267dd7443c9a297da05aa50dee80a48883de1846ed4750f43.lean/declarations/negativegreenbranch--610b9ab8ee033f11ed8a8cb5.md) | 81 | `declaration-track:610b9ab8ee033f11ed8a8cb5f182b9590864d2bcb2b07849c31e06cffce547f7` |
| 9 | `theorem` | [pole_squared_green_positive_branch](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/PoleGreenKernel/Variantb8d697a8e230fe0267dd7443c9a297da05aa50dee80a48883de1846ed4750f43.lean/declarations/pole-squared-green-positive-branch--3f935643ed1a86228b832e75.md) | 84 | `result-track:3f935643ed1a86228b832e75b0b2fcc26ed6185545a674f3bcd66ec66fce1206` |
| 10 | `theorem` | [pole_squared_green_negative_branch](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/PoleGreenKernel/Variantb8d697a8e230fe0267dd7443c9a297da05aa50dee80a48883de1846ed4750f43.lean/declarations/pole-squared-green-negative-branch--2fe76bfd2435137275f1e004.md) | 90 | `result-track:2fe76bfd2435137275f1e004c011e27689a784ebf26ace3a6584b852040766d6` |
| 11 | `theorem` | [green_branches_homogeneous](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/PoleGreenKernel/Variantb8d697a8e230fe0267dd7443c9a297da05aa50dee80a48883de1846ed4750f43.lean/declarations/green-branches-homogeneous--5a7448f967767f4d2b2e39bb.md) | 96 | `result-track:5a7448f967767f4d2b2e39bb975b58c7e6ad9a467fc62cd037b6953d23e87f43` |
| 12 | `theorem` | [green_branch_jets_at_zero](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/PoleGreenKernel/Variantb8d697a8e230fe0267dd7443c9a297da05aa50dee80a48883de1846ed4750f43.lean/declarations/green-branch-jets-at-zero--36a6307b8f6ab30ad34a9015.md) | 102 | `result-track:36a6307b8f6ab30ad34a901554e10b72b7749a11832ec3409b9e17c2ff6c7fc8` |
| 13 | `def` | [poleBoundaryFlux](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/PoleGreenKernel/Variantb8d697a8e230fe0267dd7443c9a297da05aa50dee80a48883de1846ed4750f43.lean/declarations/poleboundaryflux--afa83baad43a5424703290bb.md) | 114 | `declaration-track:afa83baad43a5424703290bbb40ce206b993d643f3318027178e87b72c58af49` |
| 14 | `theorem` | [green_boundary_flux_jump](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/PoleGreenKernel/Variantb8d697a8e230fe0267dd7443c9a297da05aa50dee80a48883de1846ed4750f43.lean/declarations/green-boundary-flux-jump--c19eb4b5c914721c85466db9.md) | 118 | `result-track:c19eb4b5c914721c85466db93e9404614857a54fbf5e5c05d0000a8f0ef991e0` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
