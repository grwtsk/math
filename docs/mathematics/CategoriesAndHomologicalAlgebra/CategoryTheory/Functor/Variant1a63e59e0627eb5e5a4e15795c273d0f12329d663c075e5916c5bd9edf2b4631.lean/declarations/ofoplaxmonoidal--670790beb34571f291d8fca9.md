# ofOplaxMonoidal

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:bbaffdb374050d200a64714159e0a5c1cf239360762c8252512450e4f50790e7",
  "kind": "def",
  "lexical_name": "ofOplaxMonoidal",
  "mathematical_admission": "NOT_CLAIMED",
  "metrics": [
    {
      "coverage": "No exact-source compiler-observed verification dependency graph supplied.",
      "id": "spectral_log_volume",
      "profile": "docs/reference/ranking-profile.json",
      "profile_id": "spectral-volume-radius3-v1",
      "profile_sha256": "f8800b2ae8ab1d08df856bc79abc53dbafa1cbd922963b7247e927bf0ed9afd6",
      "radius": 3,
      "reason": "verification_dependency_graph_unavailable",
      "status": "UNAVAILABLE",
      "value": null
    }
  ],
  "schema": "grwtsk.source-declaration-article/1",
  "slug": "ofoplaxmonoidal--670790beb34571f291d8fca9",
  "source": {
    "blob": "795cfcd62b99acf8328fe29e452bfb809f75b774",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 756,
    "line": 743,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Functor/Variant1a63e59e0627eb5e5a4e15795c273d0f12329d663c075e5916c5bd9edf2b4631.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:670790beb34571f291d8fca9ef9faa80357b1f25c4c9596f7d3e39978711fd76",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Functor/Variant1a63e59e0627eb5e5a4e15795c273d0f12329d663c075e5916c5bd9edf2b4631.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:bbaffdb374050d200a64714159e0a5c1cf239360762c8252512450e4f50790e7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 743–756.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable def ofOplaxMonoidal [F.OplaxMonoidal] [IsIso (η F)] [∀ X Y, IsIso (δ F X Y)] :
    F.CoreMonoidal where
  εIso := (asIso (η F)).symm
  μIso X Y := (asIso (δ F X Y)).symm
  associativity X Y Z := by
    simp [← cancel_epi (δ F X Y ▷ F.obj Z), ← cancel_epi (δ F (X ⊗ Y) Z)]
  left_unitality X := by simp [← cancel_epi (λ_ (F.obj X)).inv]
  right_unitality X := by simp [← cancel_epi (ρ_ (F.obj X)).inv]

end CoreMonoidal

/-- The `Functor.Monoidal` structure given by a lax monoidal functor such
that `ε` and `μ` are isomorphisms. -/
@[instance_reducible]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Functor/Variant1a63e59e0627eb5e5a4e15795c273d0f12329d663c075e5916c5bd9edf2b4631.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Functor/Variant1a63e59e0627eb5e5a4e15795c273d0f12329d663c075e5916c5bd9edf2b4631.lean#L743).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `795cfcd62b99acf8328fe29e452bfb809f75b774` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
