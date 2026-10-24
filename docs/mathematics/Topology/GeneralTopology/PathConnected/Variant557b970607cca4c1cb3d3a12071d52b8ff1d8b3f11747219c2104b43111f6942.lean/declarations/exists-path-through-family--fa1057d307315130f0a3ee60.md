# exists_path_through_family'

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:411eef1b-5c74-f874-03eb-ad1f681cb073",
  "kind": "theorem",
  "lexical_name": "exists_path_through_family'",
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
  "slug": "exists-path-through-family--fa1057d307315130f0a3ee60",
  "source": {
    "blob": "1250a5e9a07eaf0a7012e3acf4f45464b21fa052",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 551,
    "line": 545,
    "path": "GRWTSK/Topology/GeneralTopology/PathConnected/Variant557b970607cca4c1cb3d3a12071d52b8ff1d8b3f11747219c2104b43111f6942.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:fa1057d307315130f0a3ee609b278a5144069569aa398dc40d1e2cec5b9ec472",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/PathConnected/Variant557b970607cca4c1cb3d3a12071d52b8ff1d8b3f11747219c2104b43111f6942.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:411eef1b-5c74-f874-03eb-ad1f681cb073`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 545–551.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem exists_path_through_family' {n : ℕ} (p : Fin (n + 1) → X) :
    ∃ (γ : Path (p 0) (p n)) (t : Fin (n + 1) → I), ∀ i, γ (t i) = p i := by
  have : IsPathConnected (univ : Set X) := pathConnectedSpace_iff_univ.mp (by infer_instance)
  rcases this.exists_path_through_family' p fun _i => True.intro with ⟨γ, t, -, h⟩
  exact ⟨γ, t, h⟩

end PathConnectedSpace
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/PathConnected/Variant557b970607cca4c1cb3d3a12071d52b8ff1d8b3f11747219c2104b43111f6942.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/PathConnected/Variant557b970607cca4c1cb3d3a12071d52b8ff1d8b3f11747219c2104b43111f6942.lean#L545).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1250a5e9a07eaf0a7012e3acf4f45464b21fa052` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
