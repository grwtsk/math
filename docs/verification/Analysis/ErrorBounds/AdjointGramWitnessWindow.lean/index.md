# Verification target: GRWTSK.Analysis.ErrorBounds.AdjointGramWitnessWindow

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "dbf0c525e4db0bc2b500d640eb4faba66c9269c2",
  "lexical_observation_count": 17,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/ErrorBounds/AdjointGramWitnessWindow.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Analysis/ErrorBounds/AdjointGramWitnessWindow.lean/index.md) · [Full source](../../../../mathematics/Analysis/ErrorBounds/AdjointGramWitnessWindow.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `dbf0c525e4db0bc2b500d640eb4faba66c9269c2`.

Source path: `GRWTSK/Analysis/ErrorBounds/AdjointGramWitnessWindow.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/ErrorBounds/AdjointGramWitnessWindow.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.Analysis.ErrorBounds.FiniteGramWitnessWindow`](../../../../mathematics/Analysis/ErrorBounds/FiniteGramWitnessWindow.lean/index.md) — import line 4; pinned internal source present.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [adjointTest](../../../../mathematics/Analysis/ErrorBounds/AdjointGramWitnessWindow.lean/declarations/adjointtest--10a9cacaea9beccf35a831f8.md) | 43 | `declaration-track:10a9cacaea9beccf35a831f82be0c177cd23fd0fb890f1a6582e4f1cd69ac85e` |
| 2 | `theorem` | [conj_adjointTest](../../../../mathematics/Analysis/ErrorBounds/AdjointGramWitnessWindow.lean/declarations/conj-adjointtest--69fc8abba5c3706167aa49d9.md) | 48 | `result-track:69fc8abba5c3706167aa49d930dc37f8c5ed44dfe3f889728905c911df986c90` |
| 3 | `theorem` | [readout_transport_adjoint](../../../../mathematics/Analysis/ErrorBounds/AdjointGramWitnessWindow.lean/declarations/readout-transport-adjoint--389d635b371c0fff6e6d2a2f.md) | 53 | `result-track:389d635b371c0fff6e6d2a2fdd997ca1716296d5816549813af8d292a3c4e690` |
| 4 | `theorem` | [readout_add](../../../../mathematics/Analysis/ErrorBounds/AdjointGramWitnessWindow.lean/declarations/readout-add--ded42326a1c86c64c43ad70c.md) | 71 | `result-track:ded42326a1c86c64c43ad70c0da232b9de48ab794c4b9f803afa196b5ebdae7f` |
| 5 | `theorem` | [readout_sub](../../../../mathematics/Analysis/ErrorBounds/AdjointGramWitnessWindow.lean/declarations/readout-sub--953ff91212d36f6dca5d28b9.md) | 76 | `result-track:953ff91212d36f6dca5d28b9794a9310dc0a58f4f314ec612d0d416ed4fe10c2` |
| 6 | `theorem` | [readout_residual_step](../../../../mathematics/Analysis/ErrorBounds/AdjointGramWitnessWindow.lean/declarations/readout-residual-step--e00a1b90f1b774c7c6160a54.md) | 82 | `result-track:e00a1b90f1b774c7c6160a548a80d2d9aa5cccb05831219a8b1445724512ac24` |
| 7 | `theorem` | [adjoint_window_identity](../../../../mathematics/Analysis/ErrorBounds/AdjointGramWitnessWindow.lean/declarations/adjoint-window-identity--9d266d0a29f408e2b33d91c0.md) | 95 | `result-track:9d266d0a29f408e2b33d91c0ec0a5fe3fdec864498987de686cda2fb4d487402` |
| 8 | `theorem` | [gram_adjoint_window_identity](../../../../mathematics/Analysis/ErrorBounds/AdjointGramWitnessWindow.lean/declarations/gram-adjoint-window-identity--c6bdee4775668bfb7bd2ab87.md) | 126 | `result-track:c6bdee4775668bfb7bd2ab87d45c9365dd04bb06aff5dbd44d94c6bf7677421d` |
| 9 | `theorem` | [readout_real_lower_of_modulus](../../../../mathematics/Analysis/ErrorBounds/AdjointGramWitnessWindow.lean/declarations/readout-real-lower-of-modulus--c79d2a0571c53a73053b358a.md) | 157 | `result-track:c79d2a0571c53a73053b358a11a9dce262e1e8893a645bb736e87205ba384631` |
| 10 | `theorem` | [source_lower_bound_of_signed_window](../../../../mathematics/Analysis/ErrorBounds/AdjointGramWitnessWindow.lean/declarations/source-lower-bound-of-signed-window--c9ffc2c9e56002ae59365282.md) | 168 | `result-track:c9ffc2c9e56002ae59365282b835e83c4630327f8331fa40294f1cd9c5951503` |
| 11 | `theorem` | [no_fixed_negative_of_signed_window](../../../../mathematics/Analysis/ErrorBounds/AdjointGramWitnessWindow.lean/declarations/no-fixed-negative-of-signed-window--48416d70e704d7e224132451.md) | 186 | `result-track:48416d70e704d7e224132451099b0ec3c59dcc6b45e7bd4338dc9675d76ab609` |
| 12 | `def` | [phaseGain](../../../../mathematics/Analysis/ErrorBounds/AdjointGramWitnessWindow.lean/declarations/phasegain--31db59fb660e9a6a264c1ceb.md) | 203 | `declaration-track:31db59fb660e9a6a264c1ceb68e30f654fe615542c1073a031555ff2371b4e25` |
| 13 | `theorem` | [adjoint_conjugation_required_fixture](../../../../mathematics/Analysis/ErrorBounds/AdjointGramWitnessWindow.lean/declarations/adjoint-conjugation-required-fixture--5e559abcb79a1b5419b1f2ef.md) | 207 | `result-track:5e559abcb79a1b5419b1f2ef7aafb9787c13299537257aa737cfacd2166f8543` |
| 14 | `def` | [unobservedBlock](../../../../mathematics/Analysis/ErrorBounds/AdjointGramWitnessWindow.lean/declarations/unobservedblock--98732bc1b5f8c41d913df9d1.md) | 214 | `declaration-track:98732bc1b5f8c41d913df9d1cf68e7e2077b5d9fd60417a6e79351024ce3c2ff` |
| 15 | `theorem` | [directional_mass_fixture](../../../../mathematics/Analysis/ErrorBounds/AdjointGramWitnessWindow.lean/declarations/directional-mass-fixture--ee684c231f8d3baec28989bb.md) | 219 | `result-track:ee684c231f8d3baec28989bba0b6e29f135c9688fa2f7f7304dd6441323374aa` |
| 16 | `theorem` | [signed_cancellation_fixture](../../../../mathematics/Analysis/ErrorBounds/AdjointGramWitnessWindow.lean/declarations/signed-cancellation-fixture--5c9194f42de54eacd5b17fac.md) | 226 | `result-track:5c9194f42de54eacd5b17fac821e48426703b97a20e166216d6d4504ee701358` |
| 17 | `theorem` | [erased_pullback_rejected_fixture](../../../../mathematics/Analysis/ErrorBounds/AdjointGramWitnessWindow.lean/declarations/erased-pullback-rejected-fixture--0bf782793fc6c60c8c3d98f3.md) | 232 | `result-track:0bf782793fc6c60c8c3d98f38db8464cad0d0d06de508f21aa8b761296335221` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
