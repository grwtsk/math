# preimage_map

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "f9dee998e9e5d0a2c82a3f8e274cc1aa370dc071",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 106,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/2d/2d9843fd6b4a86403f32ab554b292f72f60bcf5a7a4c66c53f1b5d230623f6ed.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:2fb8d1bd-54a5-b4d7-5cdf-fa2013c0a81b",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:e0727ffb-da00-1418-3168-5c248c03d8c2",
  "kind": "theorem",
  "lexical_name": "preimage_map",
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
  "slug": "preimage-map--f36c8775dbfaf7f37d1fd2f6",
  "source": {
    "blob": "f9dee998e9e5d0a2c82a3f8e274cc1aa370dc071",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 112,
    "line": 106,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/FullyFaithful/Variant2d9843fd6b4a86403f32ab554b292f72f60bcf5a7a4c66c53f1b5d230623f6ed.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f36c8775dbfaf7f37d1fd2f6915ce8af3347dd642f05fe816f07c66cbc1a2c28",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/FullyFaithful/Variant2d9843fd6b4a86403f32ab554b292f72f60bcf5a7a4c66c53f1b5d230623f6ed.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e0727ffb-da00-1418-3168-5c248c03d8c2`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 106–112.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem preimage_map (f : X ⟶ Y) : F.preimage (F.map f) = f :=
  F.map_injective (by simp)

variable (F)

/-- If `F : C ⥤ D` is fully faithful, every isomorphism `F.obj X ≅ F.obj Y` has a preimage. -/
@[simps]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/FullyFaithful/Variant2d9843fd6b4a86403f32ab554b292f72f60bcf5a7a4c66c53f1b5d230623f6ed.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/FullyFaithful/Variant2d9843fd6b4a86403f32ab554b292f72f60bcf5a7a4c66c53f1b5d230623f6ed.lean#L106).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f9dee998e9e5d0a2c82a3f8e274cc1aa370dc071` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
