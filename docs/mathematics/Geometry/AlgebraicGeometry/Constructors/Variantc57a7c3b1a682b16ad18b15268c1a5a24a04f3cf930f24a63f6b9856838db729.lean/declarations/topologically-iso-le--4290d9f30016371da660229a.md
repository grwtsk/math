# topologically_iso_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "88bcf15636c887111b8f5d021d3744ed9d486c6a",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 235,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/c5/c57a7c3b1a682b16ad18b15268c1a5a24a04f3cf930f24a63f6b9856838db729.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:fd6f0049-1568-e9d7-5a4d-79a8c4fd2384",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:f53d38e0-65cc-fbac-3d48-41fbc36a9880",
  "kind": "lemma",
  "lexical_name": "topologically_iso_le",
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
  "slug": "topologically-iso-le--4290d9f30016371da660229a",
  "source": {
    "blob": "88bcf15636c887111b8f5d021d3744ed9d486c6a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 243,
    "line": 235,
    "path": "GRWTSK/Geometry/AlgebraicGeometry/Constructors/Variantc57a7c3b1a682b16ad18b15268c1a5a24a04f3cf930f24a63f6b9856838db729.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:4290d9f30016371da660229a6339cf7f8bac034e40e34b9208cdd79176130f24",
  "verification": {
    "reference": "docs/verification/Geometry/AlgebraicGeometry/Constructors/Variantc57a7c3b1a682b16ad18b15268c1a5a24a04f3cf930f24a63f6b9856838db729.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f53d38e0-65cc-fbac-3d48-41fbc36a9880`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 235–243.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma topologically_iso_le
    (hP : ∀ {α β : Type u} [TopologicalSpace α] [TopologicalSpace β] (f : α ≃ₜ β), P f) :
    MorphismProperty.isomorphisms Scheme ≤ (topologically P) := by
  intro X Y e (he : IsIso e)
  have : IsIso e := he
  exact hP (TopCat.homeoOfIso (asIso e.base))

/-- If a property of maps of topological spaces is satisfied by homeomorphisms and is stable
under composition, the induced property on schemes respects isomorphisms. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Geometry/AlgebraicGeometry/Constructors/Variantc57a7c3b1a682b16ad18b15268c1a5a24a04f3cf930f24a63f6b9856838db729.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/AlgebraicGeometry/Constructors/Variantc57a7c3b1a682b16ad18b15268c1a5a24a04f3cf930f24a63f6b9856838db729.lean#L235).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `88bcf15636c887111b8f5d021d3744ed9d486c6a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
