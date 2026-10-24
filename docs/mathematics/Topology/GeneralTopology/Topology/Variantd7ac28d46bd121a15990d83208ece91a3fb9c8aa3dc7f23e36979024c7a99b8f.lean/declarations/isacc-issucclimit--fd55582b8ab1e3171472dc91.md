# IsAcc.isSuccLimit

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "a7adb1015fe6f6bede211aaf15c14d53269e4a95",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 183,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/d7/d7ac28d46bd121a15990d83208ece91a3fb9c8aa3dc7f23e36979024c7a99b8f.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:01519326-374b-0a9c-db25-b5d5e32148df",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:c8bc0289-a30f-00c1-6ece-ba381e10a038",
  "kind": "theorem",
  "lexical_name": "IsAcc.isSuccLimit",
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
  "slug": "isacc-issucclimit--fd55582b8ab1e3171472dc91",
  "source": {
    "blob": "a7adb1015fe6f6bede211aaf15c14d53269e4a95",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 186,
    "line": 183,
    "path": "GRWTSK/Topology/GeneralTopology/Topology/Variantd7ac28d46bd121a15990d83208ece91a3fb9c8aa3dc7f23e36979024c7a99b8f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:fd55582b8ab1e3171472dc913b3588ff6eb05fa28c1eeb94ae29c7dd7c13d226",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Topology/Variantd7ac28d46bd121a15990d83208ece91a3fb9c8aa3dc7f23e36979024c7a99b8f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c8bc0289-a30f-00c1-6ece-ba381e10a038`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 183–186.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem IsAcc.isSuccLimit {o : Ordinal} {S : Set Ordinal} (h : o.IsAcc S) : IsSuccLimit o :=
  AccPt.isSuccLimit h

@[deprecated AccPt.mono (since := "2026-05-24")]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Topology/Variantd7ac28d46bd121a15990d83208ece91a3fb9c8aa3dc7f23e36979024c7a99b8f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Topology/Variantd7ac28d46bd121a15990d83208ece91a3fb9c8aa3dc7f23e36979024c7a99b8f.lean#L183).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a7adb1015fe6f6bede211aaf15c14d53269e4a95` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
