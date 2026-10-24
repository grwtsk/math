# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.LocallySmall.Variant3e0c26f045d015095a9fa67f469fb64af02a5b163d9b34ae0c94a2b53017d48a

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "136e954a16b90d89f1a17ee3035284feb4814bcb",
  "lexical_observation_count": 4,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/LocallySmall/Variant3e0c26f045d015095a9fa67f469fb64af02a5b163d9b34ae0c94a2b53017d48a.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/LocallySmall/Variant3e0c26f045d015095a9fa67f469fb64af02a5b163d9b34ae0c94a2b53017d48a.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/LocallySmall/Variant3e0c26f045d015095a9fa67f469fb64af02a5b163d9b34ae0c94a2b53017d48a.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `136e954a16b90d89f1a17ee3035284feb4814bcb`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/LocallySmall/Variant3e0c26f045d015095a9fa67f469fb64af02a5b163d9b34ae0c94a2b53017d48a.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/LocallySmall/Variant3e0c26f045d015095a9fa67f469fb64af02a5b163d9b34ae0c94a2b53017d48a.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.Limits.Preserves.Ulift` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Limits.IndYoneda` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Limits.Indization.IndObject` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [colimitYonedaHomEquiv](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/LocallySmall/Variant3e0c26f045d015095a9fa67f469fb64af02a5b163d9b34ae0c94a2b53017d48a.lean/declarations/colimityonedahomequiv--50722e36194c009eae3b0dbd.md) | 40 | `declaration-track:50722e36194c009eae3b0dbdd383c09ca495dea54e46a874477d8566d04391d6` |
| 2 | `theorem` | [colimitYonedaHomEquiv_π_apply](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/LocallySmall/Variant3e0c26f045d015095a9fa67f469fb64af02a5b163d9b34ae0c94a2b53017d48a.lean/declarations/colimityonedahomequiv-apply--452f427831d1346eaaf84e1a.md) | 50 | `result-track:452f427831d1346eaaf84e1ac83aaf232348d175eff7d8b08779fc2d47bd3ba8` |
| 3 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/LocallySmall/Variant3e0c26f045d015095a9fa67f469fb64af02a5b163d9b34ae0c94a2b53017d48a.lean/declarations/instance--03dd75fa85d576a55fa0b7ff.md) | 63 | `declaration-track:03dd75fa85d576a55fa0b7ff177806be6dabd314336391907e069903b6d286ae` |
| 4 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/LocallySmall/Variant3e0c26f045d015095a9fa67f469fb64af02a5b163d9b34ae0c94a2b53017d48a.lean/declarations/instance--6521f0c6d4aa4ecf13a39bd7.md) | 68 | `declaration-track:6521f0c6d4aa4ecf13a39bd7b34e24203c56dcb8eed101098cacc527c6b3f601` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
