# toStructuredArrow_comp_proj

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:755e9e16-711b-b1c6-9b4b-aad2c0ccaecb",
  "kind": "lemma",
  "lexical_name": "toStructuredArrow_comp_proj",
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
  "slug": "tostructuredarrow-comp-proj--4479bd620a076c5d145e7bef",
  "source": {
    "blob": "2c7509b18de3b3c52965ea801c396fbe01d3d44b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 986,
    "line": 975,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant97226eb328a284409784c8e1df44c7356c8d611cee1bc755fa743b63cee01747.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:4479bd620a076c5d145e7bef0250500342bb3bf1b3341db414c8b4f964a4ded3",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant97226eb328a284409784c8e1df44c7356c8d611cee1bc755fa743b63cee01747.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:755e9e16-711b-b1c6-9b4b-aad2c0ccaecb`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 975–986.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma toStructuredArrow_comp_proj (G : E ⥤ C) (X : D) (F : C ⥤ D)
    (f : (Y : E) → X ⟶ F.obj (G.obj Y)) (h : ∀ {Y Z : E} (g : Y ⟶ Z), f Y ≫ F.map (G.map g) = f Z) :
    G.toStructuredArrow X F f h ⋙ StructuredArrow.proj _ _ = G :=
  rfl

/-- Given `F : C ⥤ D` and `X : D`, to upgrade a functor `G : E ⥤ C` to a functor
`E ⥤ CostructuredArrow F X`, it suffices to provide maps `F.obj (G.obj Y) ⟶ X` for all `Y`
making the obvious triangles involving all `F.map (G.map g)` commute.

This is of course the same as providing a cocone over `F ⋙ G` with cocone point `X`, see
`Functor.toCostructuredArrowIsoToCostructuredArrow`. -/
@[simps]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant97226eb328a284409784c8e1df44c7356c8d611cee1bc755fa743b63cee01747.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant97226eb328a284409784c8e1df44c7356c8d611cee1bc755fa743b63cee01747.lean#L975).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2c7509b18de3b3c52965ea801c396fbe01d3d44b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
