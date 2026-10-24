# comp_assoc

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:7a7e31d9-4004-65cd-b360-b093c685f66d",
  "kind": "theorem",
  "lexical_name": "comp_assoc",
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
  "slug": "comp-assoc--91fdb10b1dbf4481472309a7",
  "source": {
    "blob": "72a49015902fa61f877fa16544b3f85eb6bb2020",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 229,
    "line": 214,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Reaction/Variant4a8c18a8480af447b081314ccd4326e6197ff01facebb6c6a1e6d91f9e382759.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:91fdb10b1dbf4481472309a711dad612eb47195303dcf778013c263c24015c30",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Reaction/Variant4a8c18a8480af447b081314ccd4326e6197ff01facebb6c6a1e6d91f9e382759.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:7a7e31d9-4004-65cd-b360-b093c685f66d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 214–229.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem comp_assoc {F G H K : Fabric}
    (ν : Reaction H K) (μ : Reaction G H) (η : Reaction F G) :
    comp (comp ν μ) η = comp ν (comp μ η) := by
  apply ext
  · exact (Category.assoc η.shapeMap μ.shapeMap ν.shapeMap).symm
  · rfl
  · exact heq_of_eq (by
      funext n x
      exact Presentation.Hom.comp_assoc
        (ν.cellMap (μ.mapCell (η.mapCell x)))
        (μ.cellMap (η.mapCell x))
        (η.cellMap x))

end Reaction

/-- Fabrics regarded as a category with reactions as morphisms. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Reaction/Variant4a8c18a8480af447b081314ccd4326e6197ff01facebb6c6a1e6d91f9e382759.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Reaction/Variant4a8c18a8480af447b081314ccd4326e6197ff01facebb6c6a1e6d91f9e382759.lean#L214).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `72a49015902fa61f877fa16544b3f85eb6bb2020` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
