# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Shift.Variant6fc9646f99f2d8745f5f359bdc364672e2922e85f706a9238b694b7bc9694844

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "5a5c2f031c2f5b1c11baaf10683cdf0849547a09",
  "lexical_observation_count": 5,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Shift/Variant6fc9646f99f2d8745f5f359bdc364672e2922e85f706a9238b694b7bc9694844.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Shift/Variant6fc9646f99f2d8745f5f359bdc364672e2922e85f706a9238b694b7bc9694844.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Shift/Variant6fc9646f99f2d8745f5f359bdc364672e2922e85f706a9238b694b7bc9694844.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `5a5c2f031c2f5b1c11baaf10683cdf0849547a09`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Shift/Variant6fc9646f99f2d8745f5f359bdc364672e2922e85f706a9238b694b7bc9694844.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Shift/Variant6fc9646f99f2d8745f5f359bdc364672e2922e85f706a9238b694b7bc9694844.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.ObjectProperty.ClosedUnderIsomorphisms` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Shift.Basic` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [shift](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Shift/Variant6fc9646f99f2d8745f5f359bdc364672e2922e85f706a9238b694b7bc9694844.lean/declarations/shift--80659e276de6357dcdd98aee.md) | 36 | `declaration-track:80659e276de6357dcdd98aee7228e51f07a3b12f5534f666f4aaf87aa32c4db2` |
| 2 | `lemma` | [prop_shift_iff](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Shift/Variant6fc9646f99f2d8745f5f359bdc364672e2922e85f706a9238b694b7bc9694844.lean/declarations/prop-shift-iff--3f2ae8c7e1e3a1f49b13d231.md) | 38 | `result-track:3f2ae8c7e1e3a1f49b13d23127be6e4cf4c78da5c4bdb8713dff45ac808d5e4b` |
| 3 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Shift/Variant6fc9646f99f2d8745f5f359bdc364672e2922e85f706a9238b694b7bc9694844.lean/declarations/instance--3d2f63ceffa33382ccf612d0.md) | 40 | `declaration-track:3d2f63ceffa33382ccf612d0afee8935731f0f1362ec4eac9dc01cdfcc731aed` |
| 4 | `lemma` | [shift_zero](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Shift/Variant6fc9646f99f2d8745f5f359bdc364672e2922e85f706a9238b694b7bc9694844.lean/declarations/shift-zero--7f3ddd36b200a138648843fe.md) | 47 | `result-track:7f3ddd36b200a138648843fe5a8526fa61c7436b744a16d72067e0249cf1d4e8` |
| 5 | `lemma` | [shift_shift](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Shift/Variant6fc9646f99f2d8745f5f359bdc364672e2922e85f706a9238b694b7bc9694844.lean/declarations/shift-shift--5de09dd31121acb6b28585c3.md) | 53 | `result-track:5de09dd31121acb6b28585c39325dea3fb944c4b5ce1b23f04b432cfa7e38e3d` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
