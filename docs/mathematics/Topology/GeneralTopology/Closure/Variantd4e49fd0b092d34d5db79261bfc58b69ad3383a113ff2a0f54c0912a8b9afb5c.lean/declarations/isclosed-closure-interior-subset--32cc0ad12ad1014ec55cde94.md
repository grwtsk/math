# IsClosed.closure_interior_subset

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "557a4cd1768bc437e6f55fd9635ad07eba7c6080",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 460,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/d4/d4e49fd0b092d34d5db79261bfc58b69ad3383a113ff2a0f54c0912a8b9afb5c.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:6bc1c445-8bfd-4f61-e212-4d9e9616c804",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:76a21e43-bdf6-1211-cfc4-5d477339f020",
  "kind": "theorem",
  "lexical_name": "IsClosed.closure_interior_subset",
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
  "slug": "isclosed-closure-interior-subset--32cc0ad12ad1014ec55cde94",
  "source": {
    "blob": "557a4cd1768bc437e6f55fd9635ad07eba7c6080",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 462,
    "line": 460,
    "path": "GRWTSK/Topology/GeneralTopology/Closure/Variantd4e49fd0b092d34d5db79261bfc58b69ad3383a113ff2a0f54c0912a8b9afb5c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:32cc0ad12ad1014ec55cde94c353374dacfc702346b6204c48eb4208634b1764",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Closure/Variantd4e49fd0b092d34d5db79261bfc58b69ad3383a113ff2a0f54c0912a8b9afb5c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:76a21e43-bdf6-1211-cfc4-5d477339f020`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 460–462.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem IsClosed.closure_interior_subset {s : Set X} (s_closed : IsClosed s) :
    closure (interior s) ⊆ s := s_closed.closure_subset_iff.mpr interior_subset

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Closure/Variantd4e49fd0b092d34d5db79261bfc58b69ad3383a113ff2a0f54c0912a8b9afb5c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Closure/Variantd4e49fd0b092d34d5db79261bfc58b69ad3383a113ff2a0f54c0912a8b9afb5c.lean#L460).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `557a4cd1768bc437e6f55fd9635ad07eba7c6080` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
