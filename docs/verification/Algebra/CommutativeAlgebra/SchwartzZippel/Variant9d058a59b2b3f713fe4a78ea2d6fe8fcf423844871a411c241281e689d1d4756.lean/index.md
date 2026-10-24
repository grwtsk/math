# Verification target: GRWTSK.Algebra.CommutativeAlgebra.SchwartzZippel.Variant9d058a59b2b3f713fe4a78ea2d6fe8fcf423844871a411c241281e689d1d4756

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "aa336eb96d1015376dc86bbb6561590af0a28021",
  "lexical_observation_count": 3,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/CommutativeAlgebra/SchwartzZippel/Variant9d058a59b2b3f713fe4a78ea2d6fe8fcf423844871a411c241281e689d1d4756.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/CommutativeAlgebra/SchwartzZippel/Variant9d058a59b2b3f713fe4a78ea2d6fe8fcf423844871a411c241281e689d1d4756.lean/index.md) · [Full source](../../../../../mathematics/Algebra/CommutativeAlgebra/SchwartzZippel/Variant9d058a59b2b3f713fe4a78ea2d6fe8fcf423844871a411c241281e689d1d4756.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `aa336eb96d1015376dc86bbb6561590af0a28021`.

Source path: `GRWTSK/Algebra/CommutativeAlgebra/SchwartzZippel/Variant9d058a59b2b3f713fe4a78ea2d6fe8fcf423844871a411c241281e689d1d4756.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/CommutativeAlgebra/SchwartzZippel/Variant9d058a59b2b3f713fe4a78ea2d6fe8fcf423844871a411c241281e689d1d4756.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.BigOperators.Field` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.MvPolynomial.Equiv` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.MvPolynomial.Variables` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Order.Group.Finset` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Order.GroupWithZero.Finset` — import line 10; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Order.Ring.Finset` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Polynomial.Roots` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Fin.Tuple.Finset` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Positivity.Finset` — import line 14; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `lemma` | [schwartz_zippel_sup_sum](../../../../../mathematics/Algebra/CommutativeAlgebra/SchwartzZippel/Variant9d058a59b2b3f713fe4a78ea2d6fe8fcf423844871a411c241281e689d1d4756.lean/declarations/schwartz-zippel-sup-sum--7fe08cd601ff9499400fcde7.md) | 68 | `result-track:7fe08cd601ff9499400fcde7f50d79283091232d8e759e4d7f63d64c0df7de8b` |
| 2 | `lemma` | [schwartz_zippel_sum_degreeOf](../../../../../mathematics/Algebra/CommutativeAlgebra/SchwartzZippel/Variant9d058a59b2b3f713fe4a78ea2d6fe8fcf423844871a411c241281e689d1d4756.lean/declarations/schwartz-zippel-sum-degreeof--8d0120d2bb0f262a85bbeda6.md) | 175 | `result-track:8d0120d2bb0f262a85bbeda681e0c5e17552534fd3421f05b8e2324d910e253c` |
| 3 | `lemma` | [schwartz_zippel_totalDegree](../../../../../mathematics/Algebra/CommutativeAlgebra/SchwartzZippel/Variant9d058a59b2b3f713fe4a78ea2d6fe8fcf423844871a411c241281e689d1d4756.lean/declarations/schwartz-zippel-totaldegree--b96a958bd9f913fe8ded4b98.md) | 188 | `result-track:b96a958bd9f913fe8ded4b986d186678ee4c74098e978aae4ef79f398862fea5` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
