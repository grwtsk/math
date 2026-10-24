# Verification target: GRWTSK.Analysis.ErrorBounds.FiniteGramWitnessWindow

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "c109fc6c3687a5a15667fa0957e51f48d09239bb",
  "lexical_observation_count": 15,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/ErrorBounds/FiniteGramWitnessWindow.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Analysis/ErrorBounds/FiniteGramWitnessWindow.lean/index.md) · [Full source](../../../../mathematics/Analysis/ErrorBounds/FiniteGramWitnessWindow.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `c109fc6c3687a5a15667fa0957e51f48d09239bb`.

Source path: `GRWTSK/Analysis/ErrorBounds/FiniteGramWitnessWindow.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/ErrorBounds/FiniteGramWitnessWindow.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.Analysis.ErrorBounds.ComplexModulusGramResidual`](../../../../mathematics/Analysis/ErrorBounds/ComplexModulusGramResidual.lean/index.md) — import line 4; pinned internal source present.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [windowMajorant](../../../../mathematics/Analysis/ErrorBounds/FiniteGramWitnessWindow.lean/declarations/windowmajorant--c8dcaf686b5ae8c0ac8ac421.md) | 42 | `declaration-track:c8dcaf686b5ae8c0ac8ac4215f37fc25e0071b366c143f45a0022bbde4e0f91c` |
| 2 | `theorem` | [window_majorant_bound](../../../../mathematics/Analysis/ErrorBounds/FiniteGramWitnessWindow.lean/declarations/window-majorant-bound--9a2a17aa8d460ad0c6b4dbe8.md) | 47 | `result-track:9a2a17aa8d460ad0c6b4dbe8d41a1aa727cc2a3b471b8c6c1f7dbcaa64f9d168` |
| 3 | `theorem` | [window_majorant_bound_from](../../../../mathematics/Analysis/ErrorBounds/FiniteGramWitnessWindow.lean/declarations/window-majorant-bound-from--5ae4f37368fe84a54c645099.md) | 67 | `result-track:5ae4f37368fe84a54c645099c0ce1dbbb39e916b18053875517a390af2a861cb` |
| 4 | `theorem` | [windowMajorant_constant_rate](../../../../mathematics/Analysis/ErrorBounds/FiniteGramWitnessWindow.lean/declarations/windowmajorant-constant-rate--b322426c1d5a7ce89a16896f.md) | 76 | `result-track:b322426c1d5a7ce89a16896fe30fef1619f7610896f1e638016483e726ff4a8f` |
| 5 | `theorem` | [windowMajorant_affine_fixed](../../../../mathematics/Analysis/ErrorBounds/FiniteGramWitnessWindow.lean/declarations/windowmajorant-affine-fixed--3476d06cd1a85a57f85e49cb.md) | 86 | `result-track:3476d06cd1a85a57f85e49cb7ac8993a67d141681de728d4e178a8eb37b6654d` |
| 6 | `theorem` | [windowMajorant_geometric](../../../../mathematics/Analysis/ErrorBounds/FiniteGramWitnessWindow.lean/declarations/windowmajorant-geometric--86002b3a54f11701503aa89e.md) | 99 | `result-track:86002b3a54f11701503aa89e89bff37d355a955a76502ed93926087dfe880da7` |
| 7 | `theorem` | [windowMajorant_rate_one](../../../../mathematics/Analysis/ErrorBounds/FiniteGramWitnessWindow.lean/declarations/windowmajorant-rate-one--645d3d1c519b681274ca5364.md) | 109 | `result-track:645d3d1c519b681274ca5364e2e2d06cfc60845b2326db35113d0f12a1c9099a` |
| 8 | `theorem` | [modulus_residual_step](../../../../mathematics/Analysis/ErrorBounds/FiniteGramWitnessWindow.lean/declarations/modulus-residual-step--d96755f56c1cc9b1df7e8f93.md) | 118 | `result-track:d96755f56c1cc9b1df7e8f93618f07c3a712b3dffc57eada8683e5a465d6d528` |
| 9 | `theorem` | [complex_gram_window_comparison](../../../../mathematics/Analysis/ErrorBounds/FiniteGramWitnessWindow.lean/declarations/complex-gram-window-comparison--8c678946480061a94acbb23f.md) | 150 | `result-track:8c678946480061a94acbb23fae55bf64d072ecce82c4e04a881af2c33ffcff28` |
| 10 | `theorem` | [no_fixed_negative_below_window](../../../../mathematics/Analysis/ErrorBounds/FiniteGramWitnessWindow.lean/declarations/no-fixed-negative-below-window--5d1d3289e0c184df8dde82c4.md) | 196 | `result-track:5d1d3289e0c184df8dde82c41eae12e56afbc06e000e0d17f45c6d175ac0c53b` |
| 11 | `theorem` | [reviewed_window_fixture](../../../../mathematics/Analysis/ErrorBounds/FiniteGramWitnessWindow.lean/declarations/reviewed-window-fixture--28bbc61ec6382856229c6cdb.md) | 206 | `result-track:28bbc61ec6382856229c6cdbf011ac7d99ac813f8486fdd81d42b2ff4404eb11` |
| 12 | `theorem` | [strict_margin_required_fixture](../../../../mathematics/Analysis/ErrorBounds/FiniteGramWitnessWindow.lean/declarations/strict-margin-required-fixture--1a47060adca421a0afe07977.md) | 212 | `result-track:1a47060adca421a0afe0797755ed67714e6d7b1eb8099fdbd3fe71f406bd2b84` |
| 13 | `theorem` | [expanding_step_fixture](../../../../mathematics/Analysis/ErrorBounds/FiniteGramWitnessWindow.lean/declarations/expanding-step-fixture--914ac782577030f30260945e.md) | 217 | `result-track:914ac782577030f30260945ef2cf6de46797455bcd889c327072233b3cb5a183` |
| 14 | `theorem` | [prefix_retained_fixture](../../../../mathematics/Analysis/ErrorBounds/FiniteGramWitnessWindow.lean/declarations/prefix-retained-fixture--2366cb0798730f61205120c0.md) | 222 | `result-track:2366cb0798730f61205120c0d630ae16f24679f91c5d1ce3e60ab3ed711009c1` |
| 15 | `theorem` | [varying_forcing_fixture](../../../../mathematics/Analysis/ErrorBounds/FiniteGramWitnessWindow.lean/declarations/varying-forcing-fixture--444d570ec385bc3348390810.md) | 228 | `result-track:444d570ec385bc3348390810ff06bce47b58988244031fb3504d7d38e7adfac9` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
