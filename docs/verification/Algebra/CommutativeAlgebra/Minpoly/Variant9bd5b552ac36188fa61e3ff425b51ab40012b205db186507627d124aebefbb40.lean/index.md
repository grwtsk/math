# Verification target: GRWTSK.Algebra.CommutativeAlgebra.Minpoly.Variant9bd5b552ac36188fa61e3ff425b51ab40012b205db186507627d124aebefbb40

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "c9aa8a9b7bcb6f2a36c81656020444860f01b335",
  "lexical_observation_count": 7,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/CommutativeAlgebra/Minpoly/Variant9bd5b552ac36188fa61e3ff425b51ab40012b205db186507627d124aebefbb40.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/CommutativeAlgebra/Minpoly/Variant9bd5b552ac36188fa61e3ff425b51ab40012b205db186507627d124aebefbb40.lean/index.md) · [Full source](../../../../../mathematics/Algebra/CommutativeAlgebra/Minpoly/Variant9bd5b552ac36188fa61e3ff425b51ab40012b205db186507627d124aebefbb40.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `c9aa8a9b7bcb6f2a36c81656020444860f01b335`.

Source path: `GRWTSK/Algebra/CommutativeAlgebra/Minpoly/Variant9bd5b552ac36188fa61e3ff425b51ab40012b205db186507627d124aebefbb40.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/CommutativeAlgebra/Minpoly/Variant9bd5b552ac36188fa61e3ff425b51ab40012b205db186507627d124aebefbb40.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.LinearAlgebra.Eigenspace.Basic` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.FieldTheory.Minpoly.Field` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [eigenspace_aeval_polynomial_degree_1](../../../../../mathematics/Algebra/CommutativeAlgebra/Minpoly/Variant9bd5b552ac36188fa61e3ff425b51ab40012b205db186507627d124aebefbb40.lean/declarations/eigenspace-aeval-polynomial-degree-1--9eb08cfb73179db0c902cd3b.md) | 40 | `result-track:9eb08cfb73179db0c902cd3b5b9dff89599155cbf5771dc20cf701a6816377c3` |
| 2 | `theorem` | [ker_aeval_ring_hom'_unit_polynomial](../../../../../mathematics/Algebra/CommutativeAlgebra/Minpoly/Variant9bd5b552ac36188fa61e3ff425b51ab40012b205db186507627d124aebefbb40.lean/declarations/ker-aeval-ring-hom-unit-polynomial--52e61fa0937dcb78c39c3dd2.md) | 54 | `result-track:52e61fa0937dcb78c39c3dd21506aa7ee883bde0be4afb2aaa32a19dd19eeb1f` |
| 3 | `theorem` | [aeval_apply_of_hasEigenvector](../../../../../mathematics/Algebra/CommutativeAlgebra/Minpoly/Variant9bd5b552ac36188fa61e3ff425b51ab40012b205db186507627d124aebefbb40.lean/declarations/aeval-apply-of-haseigenvector--ad7cbed484500c1ac8d73397.md) | 62 | `result-track:ad7cbed484500c1ac8d733977eea7688fb0619f18854cf11910d4108da1f9205` |
| 4 | `theorem` | [isRoot_of_hasEigenvalue](../../../../../mathematics/Algebra/CommutativeAlgebra/Minpoly/Variant9bd5b552ac36188fa61e3ff425b51ab40012b205db186507627d124aebefbb40.lean/declarations/isroot-of-haseigenvalue--a13d16d3f2c76ecf4d6e9e46.md) | 73 | `result-track:a13d16d3f2c76ecf4d6e9e46f15f25b0f010b033bd1ee09771239486f7451703` |
| 5 | `theorem` | [hasEigenvalue_of_isRoot](../../../../../mathematics/Algebra/CommutativeAlgebra/Minpoly/Variant9bd5b552ac36188fa61e3ff425b51ab40012b205db186507627d124aebefbb40.lean/declarations/haseigenvalue-of-isroot--cc16a89b209e9b343e1d6948.md) | 84 | `result-track:cc16a89b209e9b343e1d6948788bddefb86eaf54f52dc8251fc7007941c6b2c5` |
| 6 | `theorem` | [hasEigenvalue_iff_isRoot](../../../../../mathematics/Algebra/CommutativeAlgebra/Minpoly/Variant9bd5b552ac36188fa61e3ff425b51ab40012b205db186507627d124aebefbb40.lean/declarations/haseigenvalue-iff-isroot--2734b8c148f53401cd5a923c.md) | 103 | `result-track:2734b8c148f53401cd5a923c86496c90b17af18964c312e8d23894f4aabb65c8` |
| 7 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/CommutativeAlgebra/Minpoly/Variant9bd5b552ac36188fa61e3ff425b51ab40012b205db186507627d124aebefbb40.lean/declarations/instance--8cb93fdad2c0ebb5acbb6a95.md) | 108 | `declaration-track:8cb93fdad2c0ebb5acbb6a95b30567122a7393ee0850e2523261ed4ccf4eb0b1` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
