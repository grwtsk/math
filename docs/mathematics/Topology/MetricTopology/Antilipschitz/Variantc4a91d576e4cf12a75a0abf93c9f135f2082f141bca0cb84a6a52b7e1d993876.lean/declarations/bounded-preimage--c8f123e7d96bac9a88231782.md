# bounded_preimage

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "23afad6d697bd19418537c0171eba14f232979e3",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 223,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/c4/c4a91d576e4cf12a75a0abf93c9f135f2082f141bca0cb84a6a52b7e1d993876.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:76ebfb25-f8dd-3cce-91a0-76761fc8707c",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:3ade9482-5060-f9c4-37c9-ae353691af30",
  "kind": "theorem",
  "lexical_name": "bounded_preimage",
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
  "slug": "bounded-preimage--c8f123e7d96bac9a88231782",
  "source": {
    "blob": "23afad6d697bd19418537c0171eba14f232979e3",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 230,
    "line": 223,
    "path": "GRWTSK/Topology/MetricTopology/Antilipschitz/Variantc4a91d576e4cf12a75a0abf93c9f135f2082f141bca0cb84a6a52b7e1d993876.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c8f123e7d96bac9a882317827f18ded8b6dd4f904e37602fccf2abcbc59d0879",
  "verification": {
    "reference": "docs/verification/Topology/MetricTopology/Antilipschitz/Variantc4a91d576e4cf12a75a0abf93c9f135f2082f141bca0cb84a6a52b7e1d993876.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:3ade9482-5060-f9c4-37c9-ae353691af30`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 223–230.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem bounded_preimage (hf : AntilipschitzWith K f) {s : Set β} (hs : Bounded s) :
    Bounded (f ⁻¹' s) :=
  Exists.intro (K * diam s) fun x hx y hy =>
    calc
      dist x y ≤ K * dist (f x) (f y) := hf.le_mul_dist x y
      _ ≤ K * diam s := by gcongr; exact dist_le_diam_of_mem hs hx hy
#align antilipschitz_with.bounded_preimage AntilipschitzWith.bounded_preimage

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/MetricTopology/Antilipschitz/Variantc4a91d576e4cf12a75a0abf93c9f135f2082f141bca0cb84a6a52b7e1d993876.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/MetricTopology/Antilipschitz/Variantc4a91d576e4cf12a75a0abf93c9f135f2082f141bca0cb84a6a52b7e1d993876.lean#L223).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `23afad6d697bd19418537c0171eba14f232979e3` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
