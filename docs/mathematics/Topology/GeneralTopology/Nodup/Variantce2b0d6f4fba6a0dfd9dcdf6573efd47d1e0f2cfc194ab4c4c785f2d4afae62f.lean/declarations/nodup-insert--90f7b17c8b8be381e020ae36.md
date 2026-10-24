# Nodup.insert

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "147ed8a497c50fa83015d166c92b94f8557240ff",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 328,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/ce/ce2b0d6f4fba6a0dfd9dcdf6573efd47d1e0f2cfc194ab4c4c785f2d4afae62f.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:570b7b95-1601-4b24-9535-2e4b837d735c",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:a171ac1b-5e4c-393a-ea01-a434e2598268",
  "kind": "theorem",
  "lexical_name": "Nodup.insert",
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
  "slug": "nodup-insert--90f7b17c8b8be381e020ae36",
  "source": {
    "blob": "147ed8a497c50fa83015d166c92b94f8557240ff",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 331,
    "line": 328,
    "path": "GRWTSK/Topology/GeneralTopology/Nodup/Variantce2b0d6f4fba6a0dfd9dcdf6573efd47d1e0f2cfc194ab4c4c785f2d4afae62f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:90f7b17c8b8be381e020ae3668abb52ad859fdf48963141460b7d90e52cfa94d",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Nodup/Variantce2b0d6f4fba6a0dfd9dcdf6573efd47d1e0f2cfc194ab4c4c785f2d4afae62f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a171ac1b-5e4c-393a-ea01-a434e2598268`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 328–331.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
protected theorem Nodup.insert [DecidableEq α] (h : l.Nodup) : (l.insert a).Nodup :=
  if h' : a ∈ l then by rw [insert_of_mem h']; exact h
  else by rw [insert_of_not_mem h', nodup_cons]; constructor <;> assumption

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Nodup/Variantce2b0d6f4fba6a0dfd9dcdf6573efd47d1e0f2cfc194ab4c4c785f2d4afae62f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Nodup/Variantce2b0d6f4fba6a0dfd9dcdf6573efd47d1e0f2cfc194ab4c4c785f2d4afae62f.lean#L328).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `147ed8a497c50fa83015d166c92b94f8557240ff` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
