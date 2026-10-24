# Verification target: GRWTSK.Analysis.Complex.GammaVerticalBound

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "6e5f8f18f1f52d26684e95996420fa0bcbf43134",
  "lexical_observation_count": 13,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/Complex/GammaVerticalBound.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Analysis/ComplexAnalysis/GammaVerticalBound.lean/index.md) · [Full source](../../../../mathematics/Analysis/ComplexAnalysis/GammaVerticalBound.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `6e5f8f18f1f52d26684e95996420fa0bcbf43134`.

Source path: `GRWTSK/Analysis/Complex/GammaVerticalBound.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/Complex/GammaVerticalBound.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.Analysis.Complex.NormalizedDiskLogarithm`](../../../../mathematics/Analysis/ComplexAnalysis/NormalizedDiskLogarithm.lean/index.md) — import line 4; pinned internal source present.
- [`GRWTSK.Analysis.Complex.TrigonometricHeightBounds`](../../../../mathematics/Analysis/ComplexAnalysis/TrigonometricHeightBounds.lean/index.md) — import line 5; pinned internal source present.
- `Mathlib.Analysis.SpecialFunctions.Gamma.Digamma` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [envelope](../../../../mathematics/Analysis/ComplexAnalysis/GammaVerticalBound.lean/declarations/envelope--15f0df78bc5bc30995726f7c.md) | 31 | `declaration-track:15f0df78bc5bc30995726f7cb2534c3a4dbaec194e14367b801bfa2533837400` |
| 2 | `theorem` | [two_le_envelope](../../../../mathematics/Analysis/ComplexAnalysis/GammaVerticalBound.lean/declarations/two-le-envelope--fa3823885761b95c934bf071.md) | 33 | `result-track:fa3823885761b95c934bf07171ba6f258ab2b7d7e48eaa62bb832cb42542e83c` |
| 3 | `theorem` | [envelope_pos](../../../../mathematics/Analysis/ComplexAnalysis/GammaVerticalBound.lean/declarations/envelope-pos--53fc0e04c0178e1782ad26f8.md) | 39 | `result-track:53fc0e04c0178e1782ad26f831437cee20cd0d9a8612aaf0ffc97b947bc5a6c6` |
| 4 | `theorem` | [power_le_endpoint_sum](../../../../mathematics/Analysis/ComplexAnalysis/GammaVerticalBound.lean/declarations/power-le-endpoint-sum--6969e36d7dba5e5150c4205e.md) | 42 | `result-track:6969e36d7dba5e5150c4205ec85389edcef1b07a9cd315f4eed2a5a528d74c7f` |
| 5 | `theorem` | [norm_Gamma_le_envelope](../../../../mathematics/Analysis/ComplexAnalysis/GammaVerticalBound.lean/declarations/norm-gamma-le-envelope--75bf29505710bd9265149ae3.md) | 57 | `result-track:75bf29505710bd9265149ae38727ffea6fbff343e83b69c5ee5d8deb10a9a77b` |
| 6 | `def` | [center](../../../../mathematics/Analysis/ComplexAnalysis/GammaVerticalBound.lean/declarations/center--4f944b89bd0c9308d0d84a2e.md) | 76 | `declaration-track:4f944b89bd0c9308d0d84a2e3b80329227aeab6beae9417ecae70fc77ca218b2` |
| 7 | `theorem` | [half_anchor_product_ge_pi](../../../../mathematics/Analysis/ComplexAnalysis/GammaVerticalBound.lean/declarations/half-anchor-product-ge-pi--6ef1e43df4617f4c1a7a3a3e.md) | 79 | `result-track:6ef1e43df4617f4c1a7a3a3e65d1a2286d9ac53e4282dd6094103679d2b1c1a6` |
| 8 | `theorem` | [center_norm_ge_half_anchor](../../../../mathematics/Analysis/ComplexAnalysis/GammaVerticalBound.lean/declarations/center-norm-ge-half-anchor--15e4ef630ff9b82cc2f60aa4.md) | 110 | `result-track:15e4ef630ff9b82cc2f60aa43793c5c559b6a665b462113e44f450364cc25657` |
| 9 | `theorem` | [center_floor](../../../../mathematics/Analysis/ComplexAnalysis/GammaVerticalBound.lean/declarations/center-floor--2f4d8028cf8c00bfa020ff5c.md) | 133 | `result-track:2f4d8028cf8c00bfa020ff5c79a46698320afbfe3b73c6674bb8f71a1efdb542` |
| 10 | `def` | [heightLogBudget](../../../../mathematics/Analysis/ComplexAnalysis/GammaVerticalBound.lean/declarations/heightlogbudget--de0959006c5ec23244015c3b.md) | 150 | `declaration-track:de0959006c5ec23244015c3bdbc88a132e8cc480a9d8f44cc7d528b5b7bc960a` |
| 11 | `theorem` | [heightLogBudget_pos](../../../../mathematics/Analysis/ComplexAnalysis/GammaVerticalBound.lean/declarations/heightlogbudget-pos--c9c18c26f05c04141f56e9f7.md) | 152 | `result-track:c9c18c26f05c04141f56e9f7bb4c6743c0906dae4ae61d58a59b38b3d5ca5e24` |
| 12 | `theorem` | [normalized_log_deriv_le](../../../../mathematics/Analysis/ComplexAnalysis/GammaVerticalBound.lean/declarations/normalized-log-deriv-le--c2c167e267a546f76eea7742.md) | 159 | `result-track:c2c167e267a546f76eea7742bc6cfd70809af73b5f2e2caf3584b124584be70e` |
| 13 | `theorem` | [norm_digamma_le](../../../../mathematics/Analysis/ComplexAnalysis/GammaVerticalBound.lean/declarations/norm-digamma-le--2347912405c80234e21d6246.md) | 187 | `result-track:2347912405c80234e21d6246355b3bcfc7d2f93f4ac026db03bf60b38445f803` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
