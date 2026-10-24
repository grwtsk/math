# restrictTopIso

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:27355eface78342b743a9632c4b92c071da99edb258cfd956636465287f15a02",
  "kind": "def",
  "lexical_name": "restrictTopIso",
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
  "slug": "restricttopiso--b45a2e3c0b4a497dcca1a4e3",
  "source": {
    "blob": "382e944b3efe4352074de4332429a980521cd61c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 374,
    "line": 354,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/PresheafedSpace/Variant37b27801c6a3afeb7e980dc93bd77515d88366419f21979c5f00d12edc74f155.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:b45a2e3c0b4a497dcca1a4e3f174c933ec335272483b0452e1454370e97196aa",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/PresheafedSpace/Variant37b27801c6a3afeb7e980dc93bd77515d88366419f21979c5f00d12edc74f155.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:27355eface78342b743a9632c4b92c071da99edb258cfd956636465287f15a02`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 354–374.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def restrictTopIso (X : PresheafedSpace C) : X.restrict (Opens.isOpenEmbedding ⊤) ≅ X where
  hom := X.ofRestrict _
  inv := X.toRestrictTop
  hom_inv_id := by
    ext
    · rfl
    · erw [comp_c, toRestrictTop_c, whiskerRight_id',
        comp_id, ofRestrict_top_c, eqToHom_map, eqToHom_trans, eqToHom_refl]
      rfl
  inv_hom_id := by
    ext
    · rfl
    · erw [comp_c, ofRestrict_top_c, toRestrictTop_c, eqToHom_map, whiskerRight_id', comp_id,
        eqToHom_trans, eqToHom_refl]
      rfl

end Restrict

/-- The global sections, notated Gamma.
-/
@[simps]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/PresheafedSpace/Variant37b27801c6a3afeb7e980dc93bd77515d88366419f21979c5f00d12edc74f155.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/PresheafedSpace/Variant37b27801c6a3afeb7e980dc93bd77515d88366419f21979c5f00d12edc74f155.lean#L354).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `382e944b3efe4352074de4332429a980521cd61c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
