# ofEquivFunctor

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:a09b3244810b6eea485e3d300e70408fc644fb596c63572590f522741fc554d7",
  "kind": "def",
  "lexical_name": "ofEquivFunctor",
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
  "slug": "ofequivfunctor--a1e763b3d390fb47f1153cbf",
  "source": {
    "blob": "e1baced82b9be16a9d2fc8b503bca3d62dfc606f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 279,
    "line": 270,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Core/Variant0764e3243f6b76eb24d9cdc9d599556321a421cf1cbc5fe8b8a38c636debdf02.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:a1e763b3d390fb47f1153cbf09104e426e6e121835d1068e3e52ed33319ed181",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Core/Variant0764e3243f6b76eb24d9cdc9d599556321a421cf1cbc5fe8b8a38c636debdf02.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:a09b3244810b6eea485e3d300e70408fc644fb596c63572590f522741fc554d7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 270–279.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def ofEquivFunctor (m : Type u₁ → Type u₂) [EquivFunctor m] :
    Core (Type u₁) ⥤ Core (Type u₂) where
  obj x := .mk <| m x.of
  map f := .mk <| (EquivFunctor.mapEquiv m f.iso.toEquiv).toIso
  map_id α := by ext x; exact congr_fun (EquivFunctor.map_refl' _) x
  map_comp f g := by
    ext
    simp [Equiv.toIso, EquivFunctor.map_trans']

end CategoryTheory
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Core/Variant0764e3243f6b76eb24d9cdc9d599556321a421cf1cbc5fe8b8a38c636debdf02.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Core/Variant0764e3243f6b76eb24d9cdc9d599556321a421cf1cbc5fe8b8a38c636debdf02.lean#L270).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e1baced82b9be16a9d2fc8b503bca3d62dfc606f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
