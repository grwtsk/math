# Verification target: GRWTSK.Algebra.GroupTheory.NoZeroDivisors.Variant39b0a50b02fa3583dcff519fac8a95aa51f4558cf6078414990c6358e922fa32

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "436c0885651d6022a268feb374b813a381b49977",
  "lexical_observation_count": 6,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/GroupTheory/NoZeroDivisors/Variant39b0a50b02fa3583dcff519fac8a95aa51f4558cf6078414990c6358e922fa32.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/GroupTheory/NoZeroDivisors/Variant39b0a50b02fa3583dcff519fac8a95aa51f4558cf6078414990c6358e922fa32.lean/index.md) · [Full source](../../../../../mathematics/Algebra/GroupTheory/NoZeroDivisors/Variant39b0a50b02fa3583dcff519fac8a95aa51f4558cf6078414990c6358e922fa32.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `436c0885651d6022a268feb374b813a381b49977`.

Source path: `GRWTSK/Algebra/GroupTheory/NoZeroDivisors/Variant39b0a50b02fa3583dcff519fac8a95aa51f4558cf6078414990c6358e922fa32.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/GroupTheory/NoZeroDivisors/Variant39b0a50b02fa3583dcff519fac8a95aa51f4558cf6078414990c6358e922fa32.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Group.UniqueProds.Basic` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.MonoidAlgebra.Defs` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [mul_apply_mul_eq_mul_of_uniqueMul](../../../../../mathematics/Algebra/GroupTheory/NoZeroDivisors/Variant39b0a50b02fa3583dcff519fac8a95aa51f4558cf6078414990c6358e922fa32.lean/declarations/mul-apply-mul-eq-mul-of-uniquemul--e01dfdb5363d240aa39f5aa4.md) | 69 | `result-track:e01dfdb5363d240aa39f5aa423d8040369dd2b90eb097f64e9bef11ea0d8c975` |
| 2 | `instance` | [instNoZeroDivisorsOfUniqueProds](../../../../../mathematics/Algebra/GroupTheory/NoZeroDivisors/Variant39b0a50b02fa3583dcff519fac8a95aa51f4558cf6078414990c6358e922fa32.lean/declarations/instnozerodivisorsofuniqueprods--937005854a7f4ec9f6cf40c6.md) | 82 | `declaration-track:937005854a7f4ec9f6cf40c643c91ff0cfd44cb2085658b07238f3789f8acd42` |
| 3 | `theorem` | [mul_apply_add_eq_mul_of_uniqueAdd](../../../../../mathematics/Algebra/GroupTheory/NoZeroDivisors/Variant39b0a50b02fa3583dcff519fac8a95aa51f4558cf6078414990c6358e922fa32.lean/declarations/mul-apply-add-eq-mul-of-uniqueadd--0d9e1f6da31994742fa52776.md) | 98 | `result-track:0d9e1f6da31994742fa52776c649ed92c4cfd6438cafa7990e3a47882b707000` |
| 4 | `instance` | [instNoZeroDivisorsOfUniqueSums](../../../../../mathematics/Algebra/GroupTheory/NoZeroDivisors/Variant39b0a50b02fa3583dcff519fac8a95aa51f4558cf6078414990c6358e922fa32.lean/declarations/instnozerodivisorsofuniquesums--3bd2089a104aea621150ab5e.md) | 103 | `declaration-track:3bd2089a104aea621150ab5e215be588df196a2c24ea7343a542f3c9a0c9d23d` |
| 5 | `instance` | [instIsDomainOfUniqueProds](../../../../../mathematics/Algebra/GroupTheory/NoZeroDivisors/Variant39b0a50b02fa3583dcff519fac8a95aa51f4558cf6078414990c6358e922fa32.lean/declarations/instisdomainofuniqueprods--b2729cff00e32119d1c0da21.md) | 114 | `declaration-track:b2729cff00e32119d1c0da21f2a83f5d1cccd2c57557a9a3d34e9c1bfe2ae3b0` |
| 6 | `instance` | [instIsDomainOfUniqueSums](../../../../../mathematics/Algebra/GroupTheory/NoZeroDivisors/Variant39b0a50b02fa3583dcff519fac8a95aa51f4558cf6078414990c6358e922fa32.lean/declarations/instisdomainofuniquesums--ef5a26ecce58100cd2e865b8.md) | 121 | `declaration-track:ef5a26ecce58100cd2e865b86fb3e6ef53e73724744104e52d69ddbed6c6ce7e` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
