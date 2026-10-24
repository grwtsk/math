# Anonymous instance

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:1e84ee542cb1f662fb2b67cb8f0aaf3ba21f65ad2c8d2678c4c174846e286e90",
  "kind": "instance",
  "lexical_name": null,
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
  "slug": "instance--967fbac0b2869d66e51c83b5",
  "source": {
    "blob": "62f52c858209bd7327725cd8de80aaa8f529d990",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 900,
    "line": 893,
    "path": "GRWTSK/Topology/GeneralTopology/Basic/Variantc40de2f641f0d2c5ad5db917ae02ed2237e77369edd531592ea29ce5d4e837ba.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:967fbac0b2869d66e51c83b575ec3d9f7aa0d271ded0bb5627ad6b8166073171",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Basic/Variantc40de2f641f0d2c5ad5db917ae02ed2237e77369edd531592ea29ce5d4e837ba.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:1e84ee542cb1f662fb2b67cb8f0aaf3ba21f65ad2c8d2678c4c174846e286e90`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 893–900.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance {e₀} (he₀ : e₀ ∈ a.pretrivializationAtlas) :
    (letI := a.totalSpaceTopology; letI := a.toFiberBundle;
      MemTrivializationAtlas (a.trivializationOfMemPretrivializationAtlas he₀)) :=
  letI := a.totalSpaceTopology; letI := a.toFiberBundle; ⟨e₀, he₀, rfl⟩

/-- For a fiber bundle `E` over `B` constructed using the `FiberPrebundle` mechanism,
continuity of a function `TotalSpace F E → X` on an open set `s` can be checked by precomposing at
each point with the pretrivialization used for the construction at that point. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Basic/Variantc40de2f641f0d2c5ad5db917ae02ed2237e77369edd531592ea29ce5d4e837ba.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Basic/Variantc40de2f641f0d2c5ad5db917ae02ed2237e77369edd531592ea29ce5d4e837ba.lean#L893).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `62f52c858209bd7327725cd8de80aaa8f529d990` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
