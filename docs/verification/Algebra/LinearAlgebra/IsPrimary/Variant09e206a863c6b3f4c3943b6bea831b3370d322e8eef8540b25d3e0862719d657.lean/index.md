# Verification target: GRWTSK.Algebra.LinearAlgebra.IsPrimary.Variant09e206a863c6b3f4c3943b6bea831b3370d322e8eef8540b25d3e0862719d657

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "0c893bcfd56017f79b91b962747c79ed85888be2",
  "lexical_observation_count": 3,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/IsPrimary/Variant09e206a863c6b3f4c3943b6bea831b3370d322e8eef8540b25d3e0862719d657.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/IsPrimary/Variant09e206a863c6b3f4c3943b6bea831b3370d322e8eef8540b25d3e0862719d657.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/IsPrimary/Variant09e206a863c6b3f4c3943b6bea831b3370d322e8eef8540b25d3e0862719d657.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `0c893bcfd56017f79b91b962747c79ed85888be2`.

Source path: `GRWTSK/Algebra/LinearAlgebra/IsPrimary/Variant09e206a863c6b3f4c3943b6bea831b3370d322e8eef8540b25d3e0862719d657.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/IsPrimary/Variant09e206a863c6b3f4c3943b6bea831b3370d322e8eef8540b25d3e0862719d657.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.LinearAlgebra.Quotient.Basic` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Ideal.Operations` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [IsPrimary](../../../../../mathematics/Algebra/LinearAlgebra/IsPrimary/Variant09e206a863c6b3f4c3943b6bea831b3370d322e8eef8540b25d3e0862719d657.lean/declarations/isprimary--d6e631d65239b2ff26d8ef52.md) | 53 | `declaration-track:d6e631d65239b2ff26d8ef52c3c939122d64ce410c7bd47cd1a2a2d02e610c3f` |
| 2 | `lemma` | [IsPrimary.ne_top](../../../../../mathematics/Algebra/LinearAlgebra/IsPrimary/Variant09e206a863c6b3f4c3943b6bea831b3370d322e8eef8540b25d3e0862719d657.lean/declarations/isprimary-ne-top--c977f7da529642f610626ec4.md) | 58 | `result-track:c977f7da529642f610626ec42e844b0e6b8fcb71c0d2e22e7c067460e4166bbb` |
| 3 | `lemma` | [isPrimary_iff_zero_divisor_quotient_imp_nilpotent_smul](../../../../../mathematics/Algebra/LinearAlgebra/IsPrimary/Variant09e206a863c6b3f4c3943b6bea831b3370d322e8eef8540b25d3e0862719d657.lean/declarations/isprimary-iff-zero-divisor-quotient-imp-nilpotent-smul--f920c32b1ae78d43a1b600e3.md) | 66 | `result-track:f920c32b1ae78d43a1b600e383a11c2643aa61ad2aad2d855bc4e3c19b828a80` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
