# Verification target: GRWTSK.Algebra.GroupTheory.Archimedean.Variantffb0bb8fba03c6dbdc16ce5c706fc850580e34bce6c382486e751900d4779654

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "7834dc78a057c28a34a74f29803a5039880b191d",
  "lexical_observation_count": 6,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/GroupTheory/Archimedean/Variantffb0bb8fba03c6dbdc16ce5c706fc850580e34bce6c382486e751900d4779654.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/GroupTheory/Archimedean/Variantffb0bb8fba03c6dbdc16ce5c706fc850580e34bce6c382486e751900d4779654.lean/index.md) · [Full source](../../../../../mathematics/Algebra/GroupTheory/Archimedean/Variantffb0bb8fba03c6dbdc16ce5c706fc850580e34bce6c382486e751900d4779654.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `7834dc78a057c28a34a74f29803a5039880b191d`.

Source path: `GRWTSK/Algebra/GroupTheory/Archimedean/Variantffb0bb8fba03c6dbdc16ce5c706fc850580e34bce6c382486e751900d4779654.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/GroupTheory/Archimedean/Variantffb0bb8fba03c6dbdc16ce5c706fc850580e34bce6c382486e751900d4779654.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.GroupTheory.Archimedean` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Algebra.Order.Group` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Group.Subgroup.ZPowers.Basic` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Order.Basic` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [Rat.denseRange_cast](../../../../../mathematics/Algebra/GroupTheory/Archimedean/Variantffb0bb8fba03c6dbdc16ce5c706fc850580e34bce6c382486e751900d4779654.lean/declarations/rat-denserange-cast--94b22edf8e10caa57e7a79be.md) | 29 | `result-track:94b22edf8e10caa57e7a79bea5a2c35bc0da936388f196788d9ce857c9d9b677` |
| 2 | `theorem` | [dense_of_not_isolated_one](../../../../../mathematics/Algebra/GroupTheory/Archimedean/Variantffb0bb8fba03c6dbdc16ce5c706fc850580e34bce6c382486e751900d4779654.lean/declarations/dense-of-not-isolated-one--49fa4e42e7e175af4eb74378.md) | 46 | `result-track:49fa4e42e7e175af4eb743784c9cbf5a68e0f8a2a9cc26840c124a3627aef690` |
| 3 | `theorem` | [dense_of_no_min](../../../../../mathematics/Algebra/GroupTheory/Archimedean/Variantffb0bb8fba03c6dbdc16ce5c706fc850580e34bce6c382486e751900d4779654.lean/declarations/dense-of-no-min--8b77e1767395a552a3f703c5.md) | 65 | `result-track:8b77e1767395a552a3f703c5d902b70ccac5f05a473ce78572ac722c73c03d0c` |
| 4 | `theorem` | [dense_or_cyclic](../../../../../mathematics/Algebra/GroupTheory/Archimedean/Variantffb0bb8fba03c6dbdc16ce5c706fc850580e34bce6c382486e751900d4779654.lean/declarations/dense-or-cyclic--ef2a910dbdc3b5480a511df5.md) | 76 | `result-track:ef2a910dbdc3b5480a511df58c5d26ed16b211170c95650de42905227350d313` |
| 5 | `theorem` | [dense_xor'_cyclic](../../../../../mathematics/Algebra/GroupTheory/Archimedean/Variantffb0bb8fba03c6dbdc16ce5c706fc850580e34bce6c382486e751900d4779654.lean/declarations/dense-xor-cyclic--8018199512278bcd56032d9d.md) | 94 | `result-track:8018199512278bcd56032d9d6f0da69bf31be898193a619abe5c9c38ecf0f590` |
| 6 | `theorem` | [dense_iff_ne_zpowers](../../../../../mathematics/Algebra/GroupTheory/Archimedean/Variantffb0bb8fba03c6dbdc16ce5c706fc850580e34bce6c382486e751900d4779654.lean/declarations/dense-iff-ne-zpowers--059c0a20284617a23c005e27.md) | 105 | `result-track:059c0a20284617a23c005e27365ff309814a3d1238a427fd6cb37418bb49af56` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
