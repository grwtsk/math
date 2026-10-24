# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Products.Variant5ec1608ace5b4bcdf92065d5712f60e64ea3dc17303b84c53fe4a27d5e8d9a53

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "ff37eac7d9ca6a4169008e2fa1977b0851a12675",
  "lexical_observation_count": 3,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Products/Variant5ec1608ace5b4bcdf92065d5712f60e64ea3dc17303b84c53fe4a27d5e8d9a53.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Products/Variant5ec1608ace5b4bcdf92065d5712f60e64ea3dc17303b84c53fe4a27d5e8d9a53.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Products/Variant5ec1608ace5b4bcdf92065d5712f60e64ea3dc17303b84c53fe4a27d5e8d9a53.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `ff37eac7d9ca6a4169008e2fa1977b0851a12675`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Products/Variant5ec1608ace5b4bcdf92065d5712f60e64ea3dc17303b84c53fe4a27d5e8d9a53.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Products/Variant5ec1608ace5b4bcdf92065d5712f60e64ea3dc17303b84c53fe4a27d5e8d9a53.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.Limits.FilteredColimitCommutesProduct` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Limits.Indization.FilteredColimits` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [isIndObject_pi](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Products/Variant5ec1608ace5b4bcdf92065d5712f60e64ea3dc17303b84c53fe4a27d5e8d9a53.lean/declarations/isindobject-pi--0bf8caa777e01518c63759d2.md) | 34 | `result-track:0bf8caa777e01518c63759d2b33490e69c7f73e8b07ec4d369bfbac1653bf52c` |
| 2 | `theorem` | [isIndObject_limit_of_discrete](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Products/Variant5ec1608ace5b4bcdf92065d5712f60e64ea3dc17303b84c53fe4a27d5e8d9a53.lean/declarations/isindobject-limit-of-discrete--c3fbfde427637c2a67a56a82.md) | 42 | `result-track:c3fbfde427637c2a67a56a82d0c9204fcafc230b05b775c930522b5394a8649a` |
| 3 | `theorem` | [isIndObject_limit_of_discrete_of_hasLimitsOfShape](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Products/Variant5ec1608ace5b4bcdf92065d5712f60e64ea3dc17303b84c53fe4a27d5e8d9a53.lean/declarations/isindobject-limit-of-discrete-of-haslimitsofshape--fde8a76d5a0517ec3265d5c0.md) | 46 | `result-track:fde8a76d5a0517ec3265d5c0a5690a0b9240610953b6b37bbbf62e53a29da4b9` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
