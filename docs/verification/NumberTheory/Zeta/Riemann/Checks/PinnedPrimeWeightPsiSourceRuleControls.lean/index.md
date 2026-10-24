# Verification target: GRWTSK.NumberTheory.Zeta.Riemann.Checks.PinnedPrimeWeightPsiSourceRuleControls

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "a9c91b4cf18ef5f16755be12c7c753b6f1d1f152",
  "lexical_observation_count": 8,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Zeta/Riemann/Checks/PinnedPrimeWeightPsiSourceRuleControls.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/PinnedPrimeWeightPsiSourceRuleControls.lean/index.md) · [Full source](../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/PinnedPrimeWeightPsiSourceRuleControls.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `a9c91b4cf18ef5f16755be12c7c753b6f1d1f152`.

Source path: `GRWTSK/NumberTheory/Zeta/Riemann/Checks/PinnedPrimeWeightPsiSourceRuleControls.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Zeta/Riemann/Checks/PinnedPrimeWeightPsiSourceRuleControls.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.NumberTheory.Zeta.Riemann.PinnedPrimeWeightPsiSourceRule`](../../../../../../mathematics/NumberTheory/Zeta/Riemann/PinnedPrimeWeightPsiSourceRule.lean/index.md) — import line 3; pinned internal source present.
- `Mathlib.Tactic` — import line 4; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [concrete_psi_source_exact_identity](../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/PinnedPrimeWeightPsiSourceRuleControls.lean/declarations/concrete-psi-source-exact-identity--56868daac3fb29119a97399e.md) | 16 | `result-track:56868daac3fb29119a97399e4228f0d57e0d5a22949e83af8deafd8322206a3d` |
| 2 | `theorem` | [concrete_psi_response_bound_iff](../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/PinnedPrimeWeightPsiSourceRuleControls.lean/declarations/concrete-psi-response-bound-iff--4bf9f4815c80697163c53b37.md) | 27 | `result-track:4bf9f4815c80697163c53b3711057fdcf93e4d8a8655f92544011c1cca06655b` |
| 3 | `theorem` | [concrete_psi_residual_sevenEighths](../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/PinnedPrimeWeightPsiSourceRuleControls.lean/declarations/concrete-psi-residual-seveneighths--8f6d888d343a61d600244a6e.md) | 37 | `result-track:8f6d888d343a61d600244a6e794fad0c8f00e3a250143093fa044f96db9ffed7` |
| 4 | `theorem` | [concrete_psi_residual_threeQuarters](../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/PinnedPrimeWeightPsiSourceRuleControls.lean/declarations/concrete-psi-residual-threequarters--06124c92222f931a6862c9e5.md) | 48 | `result-track:06124c92222f931a6862c9e585904a2cbee62e86e7cc9036f9ea65faae2eb140` |
| 5 | `theorem` | [zero_amplitude_response_bound_forces_psiError_zero](../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/PinnedPrimeWeightPsiSourceRuleControls.lean/declarations/zero-amplitude-response-bound-forces-psierror-zero--00aab11faa379096f0b2e5bf.md) | 60 | `result-track:00aab11faa379096f0b2e5bf886754ddfa2035044b6263b587a349e448740822` |
| 6 | `theorem` | [psi_response_eq_targetFitted_iff_psi_eq_theta](../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/PinnedPrimeWeightPsiSourceRuleControls.lean/declarations/psi-response-eq-targetfitted-iff-psi-eq-theta--db9474c8ab1f2acb10b4975d.md) | 85 | `result-track:db9474c8ab1f2acb10b4975d945c62d5c008352f9f40457baf77cd14af92c1e4` |
| 7 | `def` | [remainingPsiSourceObligations](../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/PinnedPrimeWeightPsiSourceRuleControls.lean/declarations/remainingpsisourceobligations--c78e63089209ce6e3939b84d.md) | 104 | `declaration-track:c78e63089209ce6e3939b84d3de35d3a9d43e3c647c461e9677c30057c564a6b` |
| 8 | `def` | [prohibitedPromotions](../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/PinnedPrimeWeightPsiSourceRuleControls.lean/declarations/prohibitedpromotions--2f6be734e6e9f29d817e9822.md) | 112 | `declaration-track:2f6be734e6e9f29d817e9822bff993a5a71a921dfde85fe4a69134c308f0bb1d` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
