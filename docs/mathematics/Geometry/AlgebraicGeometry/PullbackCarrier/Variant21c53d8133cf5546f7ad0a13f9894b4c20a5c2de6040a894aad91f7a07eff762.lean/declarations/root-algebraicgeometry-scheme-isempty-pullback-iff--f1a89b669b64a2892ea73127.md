# _root_.AlgebraicGeometry.Scheme.isEmpty_pullback_iff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "3405d3fcf5a4301e938e0ceaa6e2b22eff75cd78",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 308,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/21/21c53d8133cf5546f7ad0a13f9894b4c20a5c2de6040a894aad91f7a07eff762.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:1d0e70a4-59bb-f3e1-0433-ee97d6f70a5e",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:a92075d5-2104-cf37-7cf9-0fa625001594",
  "kind": "lemma",
  "lexical_name": "_root_.AlgebraicGeometry.Scheme.isEmpty_pullback_iff",
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
  "slug": "root-algebraicgeometry-scheme-isempty-pullback-iff--f1a89b669b64a2892ea73127",
  "source": {
    "blob": "3405d3fcf5a4301e938e0ceaa6e2b22eff75cd78",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 316,
    "line": 308,
    "path": "GRWTSK/Geometry/AlgebraicGeometry/PullbackCarrier/Variant21c53d8133cf5546f7ad0a13f9894b4c20a5c2de6040a894aad91f7a07eff762.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f1a89b669b64a2892ea73127d3765680cc674ba6a0e12837a0427cc97bb1e9c9",
  "verification": {
    "reference": "docs/verification/Geometry/AlgebraicGeometry/PullbackCarrier/Variant21c53d8133cf5546f7ad0a13f9894b4c20a5c2de6040a894aad91f7a07eff762.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a92075d5-2104-cf37-7cf9-0fa625001594`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 308–316.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma _root_.AlgebraicGeometry.Scheme.isEmpty_pullback_iff {f : X ⟶ S} {g : Y ⟶ S} :
    IsEmpty ↑(Limits.pullback f g) ↔ Disjoint (Set.range f) (Set.range g) := by
  refine ⟨?_, Scheme.isEmpty_pullback f g⟩
  rw [Set.disjoint_iff_forall_ne]
  contrapose!
  rintro ⟨_, ⟨x, rfl⟩, _, ⟨y, rfl⟩, e⟩
  obtain ⟨z, -⟩ := exists_preimage_pullback x y e
  exact ⟨z⟩

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Geometry/AlgebraicGeometry/PullbackCarrier/Variant21c53d8133cf5546f7ad0a13f9894b4c20a5c2de6040a894aad91f7a07eff762.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/AlgebraicGeometry/PullbackCarrier/Variant21c53d8133cf5546f7ad0a13f9894b4c20a5c2de6040a894aad91f7a07eff762.lean#L308).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3405d3fcf5a4301e938e0ceaa6e2b22eff75cd78` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
