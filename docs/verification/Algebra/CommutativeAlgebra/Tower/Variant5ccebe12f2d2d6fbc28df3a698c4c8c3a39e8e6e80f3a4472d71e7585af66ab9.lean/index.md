# Verification target: GRWTSK.Algebra.CommutativeAlgebra.Tower.Variant5ccebe12f2d2d6fbc28df3a698c4c8c3a39e8e6e80f3a4472d71e7585af66ab9

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "765fc0ac02cc723d91f01e6916719fef73cc143d",
  "lexical_observation_count": 5,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/CommutativeAlgebra/Tower/Variant5ccebe12f2d2d6fbc28df3a698c4c8c3a39e8e6e80f3a4472d71e7585af66ab9.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/CommutativeAlgebra/Tower/Variant5ccebe12f2d2d6fbc28df3a698c4c8c3a39e8e6e80f3a4472d71e7585af66ab9.lean/index.md) · [Full source](../../../../../mathematics/Algebra/CommutativeAlgebra/Tower/Variant5ccebe12f2d2d6fbc28df3a698c4c8c3a39e8e6e80f3a4472d71e7585af66ab9.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `765fc0ac02cc723d91f01e6916719fef73cc143d`.

Source path: `GRWTSK/Algebra/CommutativeAlgebra/Tower/Variant5ccebe12f2d2d6fbc28df3a698c4c8c3a39e8e6e80f3a4472d71e7585af66ab9.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/CommutativeAlgebra/Tower/Variant5ccebe12f2d2d6fbc28df3a698c4c8c3a39e8e6e80f3a4472d71e7585af66ab9.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Algebra.Subalgebra.Tower` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.MvPolynomial.Eval` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [aeval_map_algebraMap](../../../../../mathematics/Algebra/CommutativeAlgebra/Tower/Variant5ccebe12f2d2d6fbc28df3a698c4c8c3a39e8e6e80f3a4472d71e7585af66ab9.lean/declarations/aeval-map-algebramap--2e9afc90702cfa5c9cacd2fc.md) | 33 | `result-track:2e9afc90702cfa5c9cacd2fc029fbf6f48fe133184e1276baf19ae1d5eaa606b` |
| 2 | `theorem` | [aeval_algebraMap_apply](../../../../../mathematics/Algebra/CommutativeAlgebra/Tower/Variant5ccebe12f2d2d6fbc28df3a698c4c8c3a39e8e6e80f3a4472d71e7585af66ab9.lean/declarations/aeval-algebramap-apply--16592e5811ff9090ab44a463.md) | 45 | `result-track:16592e5811ff9090ab44a4633f366b85869cfaa71c7df69fe9ae698b81c34bd7` |
| 3 | `theorem` | [aeval_algebraMap_eq_zero_iff](../../../../../mathematics/Algebra/CommutativeAlgebra/Tower/Variant5ccebe12f2d2d6fbc28df3a698c4c8c3a39e8e6e80f3a4472d71e7585af66ab9.lean/declarations/aeval-algebramap-eq-zero-iff--508527b7f847b0b3cfb26720.md) | 52 | `result-track:508527b7f847b0b3cfb26720c6e1bb4958452f6bbeb859fdf58cb27282eb59b4` |
| 4 | `theorem` | [aeval_algebraMap_eq_zero_iff_of_injective](../../../../../mathematics/Algebra/CommutativeAlgebra/Tower/Variant5ccebe12f2d2d6fbc28df3a698c4c8c3a39e8e6e80f3a4472d71e7585af66ab9.lean/declarations/aeval-algebramap-eq-zero-iff-of-injective--e5f2f24f289f2c5d0dc0b91b.md) | 57 | `result-track:e5f2f24f289f2c5d0dc0b91b6aaf12d97e6b23efa5fcdf2909594b2d364c06f7` |
| 5 | `theorem` | [mvPolynomial_aeval_coe](../../../../../mathematics/Algebra/CommutativeAlgebra/Tower/Variant5ccebe12f2d2d6fbc28df3a698c4c8c3a39e8e6e80f3a4472d71e7585af66ab9.lean/declarations/mvpolynomial-aeval-coe--672a05a05d27c9b52ba7e8ae.md) | 75 | `result-track:672a05a05d27c9b52ba7e8ae9c99b177f63723544776beabe64b820377112719` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
