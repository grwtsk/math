# StructuredArrow.final_map₂_id

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:a4b97cbfc07d6e7d4306d3fc5ca9a0de26c96e1865fd87d83ba26cf0a05b214a",
  "kind": "instance",
  "lexical_name": "StructuredArrow.final_map₂_id",
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
  "slug": "structuredarrow-final-map-id--04f2a34b99120bd51176a6a3",
  "source": {
    "blob": "3d4252f7c42e003d21e3a296f36a9ebba69691b7",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 384,
    "line": 376,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Final/Variant159a1b594023dbe13f3281eca2e01e4723cd211da9020a0ba5c682bd33eb1210.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:04f2a34b99120bd51176a6a3f996db0fbf57c551ca952b9ae6bfae831cbe005a",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Final/Variant159a1b594023dbe13f3281eca2e01e4723cd211da9020a0ba5c682bd33eb1210.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:a4b97cbfc07d6e7d4306d3fc5ca9a0de26c96e1865fd87d83ba26cf0a05b214a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 376–384.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance StructuredArrow.final_map₂_id [IsFiltered C] {E : Type u₃} [Category.{v₃} E]
    {T : C ⥤ D} [T.Final] {S : D ⥤ E} [S.Final] {T' : C ⥤ E}
    {d : D} {e : E} (u : e ⟶ S.obj d) (α : T ⋙ S ⟶ T') [IsIso α] :
    Final (map₂ (F := 𝟭 _) u α) := by
  haveI : IsFiltered (StructuredArrow e (T ⋙ S)) :=
    (T ⋙ S).final_iff_isFiltered_structuredArrow.mp inferInstance e
  apply final_of_natIso (map₂IsoPreEquivalenceInverseCompProj d e u α).symm

/-- `StructuredArrow.map` is final if the functor `T` is final` and its domain is filtered. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Final/Variant159a1b594023dbe13f3281eca2e01e4723cd211da9020a0ba5c682bd33eb1210.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Final/Variant159a1b594023dbe13f3281eca2e01e4723cd211da9020a0ba5c682bd33eb1210.lean#L376).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3d4252f7c42e003d21e3a296f36a9ebba69691b7` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
