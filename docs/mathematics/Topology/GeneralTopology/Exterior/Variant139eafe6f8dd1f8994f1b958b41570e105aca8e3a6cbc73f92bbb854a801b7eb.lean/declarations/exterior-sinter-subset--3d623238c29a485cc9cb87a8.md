# exterior_sInter_subset

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:26ea1eb5-71bf-7c2a-4ba0-875ee95408ea",
  "kind": "theorem",
  "lexical_name": "exterior_sInter_subset",
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
  "slug": "exterior-sinter-subset--3d623238c29a485cc9cb87a8",
  "source": {
    "blob": "0fbf140d0fd4f3ef372f3e12dfa337e0bc7046de",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 100,
    "line": 98,
    "path": "GRWTSK/Topology/GeneralTopology/Exterior/Variant139eafe6f8dd1f8994f1b958b41570e105aca8e3a6cbc73f92bbb854a801b7eb.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:3d623238c29a485cc9cb87a8dea2fda0a991acaf17e3217ee9fefbb0d99a6476",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Exterior/Variant139eafe6f8dd1f8994f1b958b41570e105aca8e3a6cbc73f92bbb854a801b7eb.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:26ea1eb5-71bf-7c2a-4ba0-875ee95408ea`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 98–100.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem exterior_sInter_subset {s : Set (Set X)} : exterior (⋂₀ s) ⊆ ⋂ x ∈ s, exterior x :=
  exterior_mono.map_sInf_le

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Exterior/Variant139eafe6f8dd1f8994f1b958b41570e105aca8e3a6cbc73f92bbb854a801b7eb.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Exterior/Variant139eafe6f8dd1f8994f1b958b41570e105aca8e3a6cbc73f92bbb854a801b7eb.lean#L98).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0fbf140d0fd4f3ef372f3e12dfa337e0bc7046de` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
