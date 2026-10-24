# tendsto_iff_comap

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "515ff2aaf33ed7f005571558e8864c9ea206c988",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 2974,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/b9/b937604a038b13e64e202677d0e4ddfd1dd180b7fdb5906915ecc3d1db2f4462.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:7abba43e-e67e-8045-c9dd-7cd58f2d7474",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:0961cdfc-45e5-8fe5-1c2e-f64a6c74a45a",
  "kind": "theorem",
  "lexical_name": "tendsto_iff_comap",
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
  "slug": "tendsto-iff-comap--43eefe0f43b1bb5edbe8494a",
  "source": {
    "blob": "515ff2aaf33ed7f005571558e8864c9ea206c988",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 2981,
    "line": 2974,
    "path": "GRWTSK/Topology/GeneralTopology/Basic/Variantb937604a038b13e64e202677d0e4ddfd1dd180b7fdb5906915ecc3d1db2f4462.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:43eefe0f43b1bb5edbe8494a6d79982dd0c3ea5c953829f631c087ec60400483",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Basic/Variantb937604a038b13e64e202677d0e4ddfd1dd180b7fdb5906915ecc3d1db2f4462.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:0961cdfc-45e5-8fe5-1c2e-f64a6c74a45a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 2974–2981.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem tendsto_iff_comap {f : α → β} {l₁ : Filter α} {l₂ : Filter β} :
    Tendsto f l₁ l₂ ↔ l₁ ≤ l₂.comap f :=
  map_le_iff_le_comap
#align filter.tendsto_iff_comap Filter.tendsto_iff_comap

alias ⟨Tendsto.le_comap, _⟩ := tendsto_iff_comap
#align filter.tendsto.le_comap Filter.Tendsto.le_comap

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Basic/Variantb937604a038b13e64e202677d0e4ddfd1dd180b7fdb5906915ecc3d1db2f4462.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Basic/Variantb937604a038b13e64e202677d0e4ddfd1dd180b7fdb5906915ecc3d1db2f4462.lean#L2974).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `515ff2aaf33ed7f005571558e8864c9ea206c988` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
