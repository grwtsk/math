# Inducing.dense_iff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:152f96bb-37c8-8ac7-34ba-b205b1c9a3fe",
  "kind": "theorem",
  "lexical_name": "Inducing.dense_iff",
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
  "slug": "inducing-dense-iff--31068f37b6b7f3d840d8df08",
  "source": {
    "blob": "16ef61fdbc82e0cccc1bb43c7f207f5e3f53d2bd",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 198,
    "line": 187,
    "path": "GRWTSK/Topology/GeneralTopology/Maps/Variant05ab4a70e7820efed285337524d545a2e6a4e0b00287939e762917780badcad2.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:31068f37b6b7f3d840d8df085d09b4e6d75c85451696b8a4c1888af115f795cc",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Maps/Variant05ab4a70e7820efed285337524d545a2e6a4e0b00287939e762917780badcad2.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:152f96bb-37c8-8ac7-34ba-b205b1c9a3fe`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 187–198.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem Inducing.dense_iff {f : α → β} (hf : Inducing f) {s : Set α} :
    Dense s ↔ ∀ x, f x ∈ closure (f '' s) := by
  simp only [Dense, hf.closure_eq_preimage_closure_image, mem_preimage]
#align inducing.dense_iff Inducing.dense_iff

end Inducing

section Embedding

/-- A function between topological spaces is an embedding if it is injective,
  and for all `s : Set α`, `s` is open iff it is the preimage of an open set. -/
@[mk_iff embedding_iff]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Maps/Variant05ab4a70e7820efed285337524d545a2e6a4e0b00287939e762917780badcad2.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Maps/Variant05ab4a70e7820efed285337524d545a2e6a4e0b00287939e762917780badcad2.lean#L187).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `16ef61fdbc82e0cccc1bb43c7f207f5e3f53d2bd` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
