# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Subobject.Variant7cf9fc38674d0d76106badca4715a4282d9a5cde00f6cb0be84b1f38b618d5ac

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "7491cdac2d17968527cf9bcc4d37ffdc24101350",
  "lexical_observation_count": 4,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Subobject/Variant7cf9fc38674d0d76106badca4715a4282d9a5cde00f6cb0be84b1f38b618d5ac.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Subobject/Variant7cf9fc38674d0d76106badca4715a4282d9a5cde00f6cb0be84b1f38b618d5ac.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Subobject/Variant7cf9fc38674d0d76106badca4715a4282d9a5cde00f6cb0be84b1f38b618d5ac.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `7491cdac2d17968527cf9bcc4d37ffdc24101350`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Subobject/Variant7cf9fc38674d0d76106badca4715a4282d9a5cde00f6cb0be84b1f38b618d5ac.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Subobject/Variant7cf9fc38674d0d76106badca4715a4282d9a5cde00f6cb0be84b1f38b618d5ac.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.Subpresheaf.Image` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Subobject.Basic` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [equivalenceMonoOver](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Subobject/Variant7cf9fc38674d0d76106badca4715a4282d9a5cde00f6cb0be84b1f38b618d5ac.lean/declarations/equivalencemonoover--cd1dc191b29a0e0c1f0bb364.md) | 36 | `declaration-track:cd1dc191b29a0e0c1f0bb364b898f6b55704737d5cafef5d99243176d7f01095` |
| 2 | `lemma` | [range_subobjectMk_ι](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Subobject/Variant7cf9fc38674d0d76106badca4715a4282d9a5cde00f6cb0be84b1f38b618d5ac.lean/declarations/range-subobjectmk--bc9530797d952b1f218d4afe.md) | 52 | `result-track:bc9530797d952b1f218d4afeeba0ff6bd57561daa15cb2dd94d18a1458ad0366` |
| 3 | `lemma` | [subobjectMk_range_arrow](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Subobject/Variant7cf9fc38674d0d76106badca4715a4282d9a5cde00f6cb0be84b1f38b618d5ac.lean/declarations/subobjectmk-range-arrow--e44adf09b79b5901a31139f3.md) | 59 | `result-track:e44adf09b79b5901a31139f336c10f570d09e8746a00fe0199792b5f4eddf862` |
| 4 | `def` | [orderIsoSubobject](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Subobject/Variant7cf9fc38674d0d76106badca4715a4282d9a5cde00f6cb0be84b1f38b618d5ac.lean/declarations/orderisosubobject--df1802451b326cb1bbe4e24c.md) | 66 | `declaration-track:df1802451b326cb1bbe4e24cc2744a0ee8be1de52812dfec7a439cc546c3632a` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
