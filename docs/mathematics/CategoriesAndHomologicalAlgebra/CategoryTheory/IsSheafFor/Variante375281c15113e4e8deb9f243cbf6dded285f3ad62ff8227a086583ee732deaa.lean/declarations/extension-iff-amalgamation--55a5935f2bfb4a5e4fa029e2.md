# extension_iff_amalgamation

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "a2dc4c68219a724be5f99a0b56d8ed4aaff5b8db",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 456,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/e3/e375281c15113e4e8deb9f243cbf6dded285f3ad62ff8227a086583ee732deaa.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:46dcfe09-5401-5162-7a98-e02d2716c1ab",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:8a4b3a6c-9bc6-d54b-999e-5b313f5fcfe6",
  "kind": "theorem",
  "lexical_name": "extension_iff_amalgamation",
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
  "slug": "extension-iff-amalgamation--55a5935f2bfb4a5e4fa029e2",
  "source": {
    "blob": "a2dc4c68219a724be5f99a0b56d8ed4aaff5b8db",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 476,
    "line": 456,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/IsSheafFor/Variante375281c15113e4e8deb9f243cbf6dded285f3ad62ff8227a086583ee732deaa.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:55a5935f2bfb4a5e4fa029e26d8310b0b346e4ada857835ac9ca4dc0d14c21ec",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/IsSheafFor/Variante375281c15113e4e8deb9f243cbf6dded285f3ad62ff8227a086583ee732deaa.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:8a4b3a6c-9bc6-d54b-999e-5b313f5fcfe6`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 456–476.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem extension_iff_amalgamation {P : Cᵒᵖ ⥤ Type v₁} (x : S.functor ⟶ P) (g : yoneda.obj X ⟶ P) :
    S.functorInclusion ≫ g = x ↔
      (natTransEquivCompatibleFamily x).1.IsAmalgamation (yonedaEquiv g) := by
  change _ ↔ ∀ ⦃Y : C⦄ (f : Y ⟶ X) (h : S f), P.map f.op (yonedaEquiv g) = x.app (op Y) ⟨f, h⟩
  constructor
  · rintro rfl Y f hf
    rw [yonedaEquiv_naturality]
    dsimp
    simp [yonedaEquiv_apply]
  -- See note [dsimp, simp].
  · intro h
    ext Y ⟨f, hf⟩
    convert h f hf
    rw [yonedaEquiv_naturality]
    dsimp [yonedaEquiv]
    simp

/-- The yoneda version of the sheaf condition is equivalent to the sheaf condition.

C2.1.4 of [Elephant].
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/IsSheafFor/Variante375281c15113e4e8deb9f243cbf6dded285f3ad62ff8227a086583ee732deaa.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/IsSheafFor/Variante375281c15113e4e8deb9f243cbf6dded285f3ad62ff8227a086583ee732deaa.lean#L456).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a2dc4c68219a724be5f99a0b56d8ed4aaff5b8db` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
