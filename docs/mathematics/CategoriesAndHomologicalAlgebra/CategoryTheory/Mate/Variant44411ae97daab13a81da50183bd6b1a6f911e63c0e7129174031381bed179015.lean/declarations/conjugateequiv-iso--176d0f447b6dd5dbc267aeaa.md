# conjugateEquiv_iso

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:f412b5eeeb7870d024de5333661403214b61b20116a218541eff634fc7055204",
  "kind": "instance",
  "lexical_name": "conjugateEquiv_iso",
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
  "slug": "conjugateequiv-iso--176d0f447b6dd5dbc267aeaa",
  "source": {
    "blob": "eccb12c8b39c52d8af43220632ae6c439ceff644",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 590,
    "line": 583,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Mate/Variant44411ae97daab13a81da50183bd6b1a6f911e63c0e7129174031381bed179015.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:176d0f447b6dd5dbc267aeaa988f6138d01894d811061f0737425f73b4117bbb",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Mate/Variant44411ae97daab13a81da50183bd6b1a6f911e63c0e7129174031381bed179015.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:f412b5eeeb7870d024de5333661403214b61b20116a218541eff634fc7055204`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 583–590.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance conjugateEquiv_iso (α : l₂ ⟶ l₁) [IsIso α] :
    IsIso (conjugateEquiv adj₁ adj₂ α) :=
  ⟨⟨conjugateEquiv adj₂ adj₁ (inv α),
      ⟨conjugateEquiv_comm _ _ (by simp), conjugateEquiv_comm _ _ (by simp)⟩⟩⟩

/-- If `α` is an isomorphism between right adjoints, then its conjugate 2-morphism is an
isomorphism. The converse is given in `conjugateEquiv_symm_of_iso`.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Mate/Variant44411ae97daab13a81da50183bd6b1a6f911e63c0e7129174031381bed179015.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Mate/Variant44411ae97daab13a81da50183bd6b1a6f911e63c0e7129174031381bed179015.lean#L583).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `eccb12c8b39c52d8af43220632ae6c439ceff644` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
