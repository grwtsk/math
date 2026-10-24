# tendsto_nhds_limUnder

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "bce207603a63573751103b7cf27c0c15aab1686a",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 245,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/7e/7ed5bc70e1b1afb811bb65e61f8820b334408d9a92c656efd74dcb79f9169f99.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:4b3f8fdb-fd8b-7eac-7431-2aa23d271543",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:a0f136d5-37e9-a282-5c34-79da8d0d1d32",
  "kind": "theorem",
  "lexical_name": "tendsto_nhds_limUnder",
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
  "slug": "tendsto-nhds-limunder--09b6134dd8b2ff5465393ea7",
  "source": {
    "blob": "bce207603a63573751103b7cf27c0c15aab1686a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 248,
    "line": 245,
    "path": "GRWTSK/Topology/GeneralTopology/Basic/Variant7ed5bc70e1b1afb811bb65e61f8820b334408d9a92c656efd74dcb79f9169f99.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:09b6134dd8b2ff5465393ea72e9da580c3e3d86f50a16fef4dee30c2a501eb3b",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Basic/Variant7ed5bc70e1b1afb811bb65e61f8820b334408d9a92c656efd74dcb79f9169f99.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a0f136d5-37e9-a282-5c34-79da8d0d1d32`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 245–248.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem tendsto_nhds_limUnder {f : Filter α} {g : α → X} (h : ∃ x, Tendsto g f (𝓝 x)) :
    Tendsto g f (𝓝 (@limUnder _ _ _ h.nonempty f g)) :=
  le_nhds_lim h

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Basic/Variant7ed5bc70e1b1afb811bb65e61f8820b334408d9a92c656efd74dcb79f9169f99.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Basic/Variant7ed5bc70e1b1afb811bb65e61f8820b334408d9a92c656efd74dcb79f9169f99.lean#L245).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `bce207603a63573751103b7cf27c0c15aab1686a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
