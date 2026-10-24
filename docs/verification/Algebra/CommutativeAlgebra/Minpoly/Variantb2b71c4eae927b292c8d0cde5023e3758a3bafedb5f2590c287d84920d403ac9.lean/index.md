# Verification target: GRWTSK.Algebra.CommutativeAlgebra.Minpoly.Variantb2b71c4eae927b292c8d0cde5023e3758a3bafedb5f2590c287d84920d403ac9

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "b54eec1b612243be10d42769743e1b979f93d762",
  "lexical_observation_count": 7,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/CommutativeAlgebra/Minpoly/Variantb2b71c4eae927b292c8d0cde5023e3758a3bafedb5f2590c287d84920d403ac9.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/CommutativeAlgebra/Minpoly/Variantb2b71c4eae927b292c8d0cde5023e3758a3bafedb5f2590c287d84920d403ac9.lean/index.md) · [Full source](../../../../../mathematics/Algebra/CommutativeAlgebra/Minpoly/Variantb2b71c4eae927b292c8d0cde5023e3758a3bafedb5f2590c287d84920d403ac9.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `b54eec1b612243be10d42769743e1b979f93d762`.

Source path: `GRWTSK/Algebra/CommutativeAlgebra/Minpoly/Variantb2b71c4eae927b292c8d0cde5023e3758a3bafedb5f2590c287d84920d403ac9.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/CommutativeAlgebra/Minpoly/Variantb2b71c4eae927b292c8d0cde5023e3758a3bafedb5f2590c287d84920d403ac9.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.LinearAlgebra.Eigenspace.Basic` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.FieldTheory.Minpoly.Field` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [eigenspace_aeval_polynomial_degree_1](../../../../../mathematics/Algebra/CommutativeAlgebra/Minpoly/Variantb2b71c4eae927b292c8d0cde5023e3758a3bafedb5f2590c287d84920d403ac9.lean/declarations/eigenspace-aeval-polynomial-degree-1--ba2db4e88f34e4d94f2ff111.md) | 32 | `result-track:ba2db4e88f34e4d94f2ff111d3af0abf7ca3b0787116b17e1176e6573e74dd92` |
| 2 | `theorem` | [ker_aeval_ring_hom'_unit_polynomial](../../../../../mathematics/Algebra/CommutativeAlgebra/Minpoly/Variantb2b71c4eae927b292c8d0cde5023e3758a3bafedb5f2590c287d84920d403ac9.lean/declarations/ker-aeval-ring-hom-unit-polynomial--b1f3c2facb9c36b94565456c.md) | 46 | `result-track:b1f3c2facb9c36b94565456c7f57778e64e04532f57940d6ef2cda09f9d54cd7` |
| 3 | `theorem` | [aeval_apply_of_hasEigenvector](../../../../../mathematics/Algebra/CommutativeAlgebra/Minpoly/Variantb2b71c4eae927b292c8d0cde5023e3758a3bafedb5f2590c287d84920d403ac9.lean/declarations/aeval-apply-of-haseigenvector--a0ae66de498a8f26b2a53a18.md) | 54 | `result-track:a0ae66de498a8f26b2a53a18706de330107c80ec3ab753f5b04053962fd5b71a` |
| 4 | `theorem` | [isRoot_of_hasEigenvalue](../../../../../mathematics/Algebra/CommutativeAlgebra/Minpoly/Variantb2b71c4eae927b292c8d0cde5023e3758a3bafedb5f2590c287d84920d403ac9.lean/declarations/isroot-of-haseigenvalue--bf663d018323871e0a45785a.md) | 65 | `result-track:bf663d018323871e0a45785a88092eb324c66d8ec1cad2636c24951b1ff40d42` |
| 5 | `theorem` | [hasEigenvalue_of_isRoot](../../../../../mathematics/Algebra/CommutativeAlgebra/Minpoly/Variantb2b71c4eae927b292c8d0cde5023e3758a3bafedb5f2590c287d84920d403ac9.lean/declarations/haseigenvalue-of-isroot--52203b33ed067b040c59e428.md) | 76 | `result-track:52203b33ed067b040c59e428087684261d483f6dd81d6994eaa394382096bf52` |
| 6 | `theorem` | [hasEigenvalue_iff_isRoot](../../../../../mathematics/Algebra/CommutativeAlgebra/Minpoly/Variantb2b71c4eae927b292c8d0cde5023e3758a3bafedb5f2590c287d84920d403ac9.lean/declarations/haseigenvalue-iff-isroot--7730b9d65be0a2caaad51df2.md) | 95 | `result-track:7730b9d65be0a2caaad51df2a05effc35398e021a090883a0dea0276fce39ae6` |
| 7 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/CommutativeAlgebra/Minpoly/Variantb2b71c4eae927b292c8d0cde5023e3758a3bafedb5f2590c287d84920d403ac9.lean/declarations/instance--3fe6ef120c8155dd49f04dca.md) | 100 | `declaration-track:3fe6ef120c8155dd49f04dcafc7cad911b9a2500265b599631eaaaa30dcf72e8` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
