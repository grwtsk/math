# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.ErrorBudget.Variant769ab47d9db86eaa2fd2226ea9b5aa73b59a21f97633019c146ad3d8c48cec8a

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "da3d1ddd81242b6af4f9ab66012bc86d77249b0e",
  "lexical_observation_count": 9,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/ErrorBudget/Variant769ab47d9db86eaa2fd2226ea9b5aa73b59a21f97633019c146ad3d8c48cec8a.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/ErrorBudget/Variant769ab47d9db86eaa2fd2226ea9b5aa73b59a21f97633019c146ad3d8c48cec8a.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/ErrorBudget/Variant769ab47d9db86eaa2fd2226ea9b5aa73b59a21f97633019c146ad3d8c48cec8a.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `da3d1ddd81242b6af4f9ab66012bc86d77249b0e`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/ErrorBudget/Variant769ab47d9db86eaa2fd2226ea9b5aa73b59a21f97633019c146ad3d8c48cec8a.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/ErrorBudget/Variant769ab47d9db86eaa2fd2226ea9b5aa73b59a21f97633019c146ad3d8c48cec8a.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathematics.Attention.Interchange` — import line 6; external provider; requires a separately pinned dependency.
- `Mathematics.Attention.Residual` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [TransportedErrorTerm](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/ErrorBudget/Variant769ab47d9db86eaa2fd2226ea9b5aa73b59a21f97633019c146ad3d8c48cec8a.lean/declarations/transportederrorterm--4eff9dd1f84f9d9f88d2d133.md) | 25 | `declaration-track:4eff9dd1f84f9d9f88d2d13344f7c158ed11914d12c75ba46a0e932e096a6325` |
| 2 | `def` | [TransportedErrorTerm.bound](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/ErrorBudget/Variant769ab47d9db86eaa2fd2226ea9b5aa73b59a21f97633019c146ad3d8c48cec8a.lean/declarations/transportederrorterm-bound--114d63e6950065705445e9a6.md) | 29 | `declaration-track:114d63e6950065705445e9a6168b44dc293c622561b79b54f8b83170d1e4dc46` |
| 3 | `theorem` | [TransportedErrorTerm.bound_nonnegative](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/ErrorBudget/Variant769ab47d9db86eaa2fd2226ea9b5aa73b59a21f97633019c146ad3d8c48cec8a.lean/declarations/transportederrorterm-bound-nonnegative--4f8d55049f954c3720a78865.md) | 34 | `result-track:4f8d55049f954c3720a78865853dc00cec5b265ac0dfecaaeecdbfbb6a45a312` |
| 4 | `def` | [TransportedErrorTerm.toResidualBound](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/ErrorBudget/Variant769ab47d9db86eaa2fd2226ea9b5aa73b59a21f97633019c146ad3d8c48cec8a.lean/declarations/transportederrorterm-toresidualbound--fdb578ca2a9f3974fe78ad56.md) | 44 | `declaration-track:fdb578ca2a9f3974fe78ad56b752660145be3ff02f5d95924f02c21dbda738e9` |
| 5 | `structure` | [AttentionErrorBudget](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/ErrorBudget/Variant769ab47d9db86eaa2fd2226ea9b5aa73b59a21f97633019c146ad3d8c48cec8a.lean/declarations/attentionerrorbudget--6e927ff8b33fe9c8829008ed.md) | 53 | `declaration-track:6e927ff8b33fe9c8829008ed4ded29022a1627370045b54c513699bc4fd43ea0` |
| 6 | `def` | [AttentionErrorBudget.residuals](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/ErrorBudget/Variant769ab47d9db86eaa2fd2226ea9b5aa73b59a21f97633019c146ad3d8c48cec8a.lean/declarations/attentionerrorbudget-residuals--e933e022db37bc8844debfba.md) | 65 | `declaration-track:e933e022db37bc8844debfba06dd7f4b468e1518569dbac381f9576fe506ec73` |
| 7 | `def` | [AttentionErrorBudget.total](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/ErrorBudget/Variant769ab47d9db86eaa2fd2226ea9b5aa73b59a21f97633019c146ad3d8c48cec8a.lean/declarations/attentionerrorbudget-total--4fa4d84b3f0eb71fa2e3fd3b.md) | 90 | `declaration-track:4fa4d84b3f0eb71fa2e3fd3b79b47feff8ee2b9c015100c0a13d0d88eb135b9b` |
| 8 | `theorem` | [AttentionErrorBudget.total_eq_transported_sum](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/ErrorBudget/Variant769ab47d9db86eaa2fd2226ea9b5aa73b59a21f97633019c146ad3d8c48cec8a.lean/declarations/attentionerrorbudget-total-eq-transported-sum--40018ba3547c5ffb88ef38b7.md) | 96 | `result-track:40018ba3547c5ffb88ef38b75930437ca3c15ad9751a804d4ae8f8323efc0771` |
| 9 | `theorem` | [AttentionErrorBudget.total_nonnegative](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/ErrorBudget/Variant769ab47d9db86eaa2fd2226ea9b5aa73b59a21f97633019c146ad3d8c48cec8a.lean/declarations/attentionerrorbudget-total-nonnegative--1df36af6f6bb89a3436e02eb.md) | 115 | `result-track:1df36af6f6bb89a3436e02eb2cba1eda1cc41e5c2daca80f652b1f3769aceb9d` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
