# Verification target: GRWTSK.Algebra.CommutativeAlgebra.Polynomial.Variant854371433d1c668bc7a8907c0ca889e0a3041eb69ce66a89a8810c8d6e531677

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "c102d0db7133bd175d893c8454b1c70ee7e8819a",
  "lexical_observation_count": 2,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/CommutativeAlgebra/Polynomial/Variant854371433d1c668bc7a8907c0ca889e0a3041eb69ce66a89a8810c8d6e531677.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/CommutativeAlgebra/Polynomial/Variant854371433d1c668bc7a8907c0ca889e0a3041eb69ce66a89a8810c8d6e531677.lean/index.md) · [Full source](../../../../../mathematics/Algebra/CommutativeAlgebra/Polynomial/Variant854371433d1c668bc7a8907c0ca889e0a3041eb69ce66a89a8810c8d6e531677.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `c102d0db7133bd175d893c8454b1c70ee7e8819a`.

Source path: `GRWTSK/Algebra/CommutativeAlgebra/Polynomial/Variant854371433d1c668bc7a8907c0ca889e0a3041eb69ce66a89a8810c8d6e531677.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/CommutativeAlgebra/Polynomial/Variant854371433d1c668bc7a8907c0ca889e0a3041eb69ce66a89a8810c8d6e531677.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.RingTheory.Jacobson.Ideal` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Polynomial.Quotient` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [jacobson_bot_polynomial_le_sInf_map_maximal](../../../../../mathematics/Algebra/CommutativeAlgebra/Polynomial/Variant854371433d1c668bc7a8907c0ca889e0a3041eb69ce66a89a8810c8d6e531677.lean/declarations/jacobson-bot-polynomial-le-sinf-map-maximal--2f4334870c990bf197be769c.md) | 21 | `result-track:2f4334870c990bf197be769c402ff004f32828d422d32b995e8c9e9373333dff` |
| 2 | `theorem` | [jacobson_bot_polynomial_of_jacobson_bot](../../../../../mathematics/Algebra/CommutativeAlgebra/Polynomial/Variant854371433d1c668bc7a8907c0ca889e0a3041eb69ce66a89a8810c8d6e531677.lean/declarations/jacobson-bot-polynomial-of-jacobson-bot--906504e3a338df2fe12f3c1a.md) | 35 | `result-track:906504e3a338df2fe12f3c1afbf69c4d3186bbb86850e5a754cb1d37e7bd3ac3` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
