# eqvGen_colimitTypeRel_of_rel

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "ed72642e9ecd2589c91cf045bbbdc4805946449b",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 50,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/52/52256ead64c9ab9e88f28ddeb7817cf203539ea96fca7fed03ece89e57649d71.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:dc271181-852f-0f0e-ad77-e62b9a5da304",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:bafe0fe2-41de-e42f-cdf2-a03b82276774",
  "kind": "theorem",
  "lexical_name": "eqvGen_colimitTypeRel_of_rel",
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
  "slug": "eqvgen-colimittyperel-of-rel--5ee5680cc24f6aaee7cf5a08",
  "source": {
    "blob": "ed72642e9ecd2589c91cf045bbbdc4805946449b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 58,
    "line": 50,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Filtered/Variant52256ead64c9ab9e88f28ddeb7817cf203539ea96fca7fed03ece89e57649d71.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:5ee5680cc24f6aaee7cf5a08743a9099b7c9e5954dd8188dcd05cbfe70351826",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Filtered/Variant52256ead64c9ab9e88f28ddeb7817cf203539ea96fca7fed03ece89e57649d71.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:bafe0fe2-41de-e42f-cdf2-a03b82276774`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 50–58.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem eqvGen_colimitTypeRel_of_rel (x y : Σ j, F.obj j) :
    FilteredColimit.Rel.{v, u} F x y → Relation.EqvGen F.ColimitTypeRel x y :=
  fun ⟨k, f, g, h⟩ => by
    refine Relation.EqvGen.trans _ ⟨k, F.map f x.2⟩ _ ?_ ?_
    · exact (Relation.EqvGen.rel _ _ ⟨f, rfl⟩)
    · exact (Relation.EqvGen.symm _ _ (Relation.EqvGen.rel _ _ ⟨g, h⟩))

set_option backward.defeqAttrib.useBackward true in
/-- Recognizing filtered colimits of types. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Filtered/Variant52256ead64c9ab9e88f28ddeb7817cf203539ea96fca7fed03ece89e57649d71.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Filtered/Variant52256ead64c9ab9e88f28ddeb7817cf203539ea96fca7fed03ece89e57649d71.lean#L50).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ed72642e9ecd2589c91cf045bbbdc4805946449b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
