# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Shift.Variantfc3317813ec9782272db0973fade272979426a8e0753694c39d2df77f92cf1f3

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "1e8307162eef365d79e2ec5279ebeb3ec496e74a",
  "lexical_observation_count": 5,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Shift/Variantfc3317813ec9782272db0973fade272979426a8e0753694c39d2df77f92cf1f3.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Shift/Variantfc3317813ec9782272db0973fade272979426a8e0753694c39d2df77f92cf1f3.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Shift/Variantfc3317813ec9782272db0973fade272979426a8e0753694c39d2df77f92cf1f3.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `1e8307162eef365d79e2ec5279ebeb3ec496e74a`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Shift/Variantfc3317813ec9782272db0973fade272979426a8e0753694c39d2df77f92cf1f3.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Shift/Variantfc3317813ec9782272db0973fade272979426a8e0753694c39d2df77f92cf1f3.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.ObjectProperty.ClosedUnderIsomorphisms` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Shift.Basic` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [shift](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Shift/Variantfc3317813ec9782272db0973fade272979426a8e0753694c39d2df77f92cf1f3.lean/declarations/shift--93bab5950afb7d8ef9db5a36.md) | 28 | `declaration-track:93bab5950afb7d8ef9db5a365efce1dc9683e112c18ec6d52707d8cf288909ef` |
| 2 | `lemma` | [prop_shift_iff](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Shift/Variantfc3317813ec9782272db0973fade272979426a8e0753694c39d2df77f92cf1f3.lean/declarations/prop-shift-iff--d3ed576939e57e7a7f39269c.md) | 30 | `result-track:d3ed576939e57e7a7f39269cda0e775e4ba80fc33242c0933139506fba031866` |
| 3 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Shift/Variantfc3317813ec9782272db0973fade272979426a8e0753694c39d2df77f92cf1f3.lean/declarations/instance--dfdf24ed9148a23de9f01925.md) | 32 | `declaration-track:dfdf24ed9148a23de9f019259c961ff8c7a9705e5fdb3b74dd005e7a96bd1cc2` |
| 4 | `lemma` | [shift_zero](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Shift/Variantfc3317813ec9782272db0973fade272979426a8e0753694c39d2df77f92cf1f3.lean/declarations/shift-zero--5631a8d95ca8384f82eb8469.md) | 39 | `result-track:5631a8d95ca8384f82eb8469fc380a9136ec8a664c73e77a923b3bbb7b7371db` |
| 5 | `lemma` | [shift_shift](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Shift/Variantfc3317813ec9782272db0973fade272979426a8e0753694c39d2df77f92cf1f3.lean/declarations/shift-shift--6c24a5f208e19cc1cd6b16da.md) | 45 | `result-track:6c24a5f208e19cc1cd6b16da878e43c1567609f3d2864868879189108936e38b` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
