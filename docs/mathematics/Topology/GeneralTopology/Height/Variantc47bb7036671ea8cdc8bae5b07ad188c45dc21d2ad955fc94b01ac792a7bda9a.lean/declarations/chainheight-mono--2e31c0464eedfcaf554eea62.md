# chainHeight_mono

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:fdd624d5-d1b2-22da-a1a0-ee20d69d278f",
  "kind": "theorem",
  "lexical_name": "chainHeight_mono",
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
  "slug": "chainheight-mono--2e31c0464eedfcaf554eea62",
  "source": {
    "blob": "0084311cc14e6268b2c1eb2784f20ef008828a44",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 198,
    "line": 196,
    "path": "GRWTSK/Topology/GeneralTopology/Height/Variantc47bb7036671ea8cdc8bae5b07ad188c45dc21d2ad955fc94b01ac792a7bda9a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:2e31c0464eedfcaf554eea6277754195a25a4bd1474fc553d19bc3c2db39c827",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Height/Variantc47bb7036671ea8cdc8bae5b07ad188c45dc21d2ad955fc94b01ac792a7bda9a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:fdd624d5-d1b2-22da-a1a0-ee20d69d278f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 196–198.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem chainHeight_mono (h : s ⊆ t) : s.chainHeight ≤ t.chainHeight :=
  chainHeight_le_chainHeight_iff.2 fun l hl ↦ ⟨l, ⟨hl.1, fun i hi ↦ h <| hl.2 i hi⟩, rfl⟩

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Height/Variantc47bb7036671ea8cdc8bae5b07ad188c45dc21d2ad955fc94b01ac792a7bda9a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Height/Variantc47bb7036671ea8cdc8bae5b07ad188c45dc21d2ad955fc94b01ac792a7bda9a.lean#L196).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0084311cc14e6268b2c1eb2784f20ef008828a44` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
