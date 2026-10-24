# isTerminal_of_isSheafFor_empty_presieve

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:5e598e73672258bfe4c0bf94db5a66db952e9fcca42fc1f48559352e4ae9dc2b",
  "kind": "def",
  "lexical_name": "isTerminal_of_isSheafFor_empty_presieve",
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
  "slug": "isterminal-of-issheaffor-empty-presieve--d2a5f95f9a551206d841a3b1",
  "source": {
    "blob": "3078f6d39149e41f605c65596f63474bae8555cf",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 65,
    "line": 56,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Preserves/Variantd658e972bd2a912e4a6e31d67561e859cc1a124b038efdb9e659ac046f5929d1.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:d2a5f95f9a551206d841a3b155521e83f78a329c5574b5c6bdb058b81aa3bdde",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Preserves/Variantd658e972bd2a912e4a6e31d67561e859cc1a124b038efdb9e659ac046f5929d1.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:5e598e73672258bfe4c0bf94db5a66db952e9fcca42fc1f48559352e4ae9dc2b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 56–65.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def isTerminal_of_isSheafFor_empty_presieve : IsTerminal (F.obj (op I)) := by
  refine @IsTerminal.ofUnique _ _ _ fun Y ↦ ?_
  choose t h using hF (by tauto) (by tauto)
  exact ⟨⟨↾fun _ ↦ t⟩, fun a ↦ by ext; exact h.2 _ (by tauto)⟩

include hF in
/--
If `F` is a presheaf which satisfies the sheaf condition with respect to the empty presieve on the
initial object, then `F` preserves terminal objects.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Preserves/Variantd658e972bd2a912e4a6e31d67561e859cc1a124b038efdb9e659ac046f5929d1.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Preserves/Variantd658e972bd2a912e4a6e31d67561e859cc1a124b038efdb9e659ac046f5929d1.lean#L56).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3078f6d39149e41f605c65596f63474bae8555cf` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
