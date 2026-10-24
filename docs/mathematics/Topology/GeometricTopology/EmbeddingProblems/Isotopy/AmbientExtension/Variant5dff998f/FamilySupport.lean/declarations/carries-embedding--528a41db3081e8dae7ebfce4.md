# carries_embedding

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:3e57dd07-84ee-369e-ad74-94ac25a659d0",
  "kind": "theorem",
  "lexical_name": "carries_embedding",
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
  "slug": "carries-embedding--528a41db3081e8dae7ebfce4",
  "source": {
    "blob": "1bc71d41a16ff504c49889fa46ccf75c748a24e3",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 243,
    "line": 231,
    "path": "GRWTSK/Topology/GeometricTopology/EmbeddingProblems/Isotopy/AmbientExtension/Variant5dff998f/FamilySupport.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:528a41db3081e8dae7ebfce4be0767f4be9979be6cac7103b6639a1e90d67328",
  "verification": {
    "reference": "docs/verification/Topology/GeometricTopology/EmbeddingProblems/Isotopy/AmbientExtension/Variant5dff998f/FamilySupport.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:3e57dd07-84ee-369e-ad74-94ac25a659d0`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 231–243.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem carries_embedding
    {p q : Nat} {M : T.Manifold}
    {e₀ e₁ : T.FramedEmbedding p q M}
    (h : T.FramedIsotopic e₀ e₁) :
    A.CarriesEmbedding (A.ambientEnd h) e₀ e₁ := by
  rw [← A.ambient_family_one h]
  exact Eq.mp
    (congrArg
      (fun e => A.CarriesEmbedding (A.ambientFamily h A.timeOne) e₀ e)
      (A.framed_embedding_one h))
    (A.ambient_carries_embedding_at h A.timeOne)

/-- All four support-control obligations are retained together. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../verification/Topology/GeometricTopology/EmbeddingProblems/Isotopy/AmbientExtension/Variant5dff998f/FamilySupport.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeometricTopology/EmbeddingProblems/Isotopy/AmbientExtension/Variant5dff998f/FamilySupport.lean#L231).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1bc71d41a16ff504c49889fa46ccf75c748a24e3` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
