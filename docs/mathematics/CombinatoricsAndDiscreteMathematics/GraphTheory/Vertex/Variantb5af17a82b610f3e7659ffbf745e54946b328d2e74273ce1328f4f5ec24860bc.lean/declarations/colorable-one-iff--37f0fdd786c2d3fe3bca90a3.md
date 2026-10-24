# colorable_one_iff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "03375f086d1e3ee33865f30a9b0052be44d25d43",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 179,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/b5/b5af17a82b610f3e7659ffbf745e54946b328d2e74273ce1328f4f5ec24860bc.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:d449f526-a1ac-0f62-6e66-7bc57c17a2fd",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:b7d118ca-a956-5dae-d53c-3212dc1e95f2",
  "kind": "theorem",
  "lexical_name": "colorable_one_iff",
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
  "slug": "colorable-one-iff--37f0fdd786c2d3fe3bca90a3",
  "source": {
    "blob": "03375f086d1e3ee33865f30a9b0052be44d25d43",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 185,
    "line": 179,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/GraphTheory/Vertex/Variantb5af17a82b610f3e7659ffbf745e54946b328d2e74273ce1328f4f5ec24860bc.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:37f0fdd786c2d3fe3bca90a34eeeb59918ca066b488ad7d7f66dc40c039ada83",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/GraphTheory/Vertex/Variantb5af17a82b610f3e7659ffbf745e54946b328d2e74273ce1328f4f5ec24860bc.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b7d118ca-a956-5dae-d53c-3212dc1e95f2`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 179–185.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem colorable_one_iff : G.Colorable 1 ↔ G = ⊥ := by
  refine ⟨fun ⟨C⟩ ↦ eq_bot_iff_forall_not_adj.mpr fun u v h ↦ ?_, fun h ↦ h ▸ ⟨0, by simp⟩⟩
  exact C.map_rel h <| Subsingleton.elim ..

/-- A coloring of a graph `G` is a homomorphism from it to the mapped graph.
This is `Hom.map` spelled using colorings. The mapped graph `G.map f` can be thought of as taking
the original graph `G` and considering every color class (independent set) as a single vertex. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/GraphTheory/Vertex/Variantb5af17a82b610f3e7659ffbf745e54946b328d2e74273ce1328f4f5ec24860bc.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/GraphTheory/Vertex/Variantb5af17a82b610f3e7659ffbf745e54946b328d2e74273ce1328f4f5ec24860bc.lean#L179).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `03375f086d1e3ee33865f30a9b0052be44d25d43` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
