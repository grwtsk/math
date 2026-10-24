# tendsto_ofReal_atBot_cobounded

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "ae94e8c85478b336909d7480bb78501e8597c556",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 34,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/90/9087d0d28b3979a96b4244b230883473e73f253f94f4a94250a17c7cac521639.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:b353a88a-8992-b5ad-1af7-d75efd148d87",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:14958849-8b60-6ff7-af89-c293dba03ffb",
  "kind": "theorem",
  "lexical_name": "tendsto_ofReal_atBot_cobounded",
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
  "slug": "tendsto-ofreal-atbot-cobounded--da0edeae61d620c58d946292",
  "source": {
    "blob": "ae94e8c85478b336909d7480bb78501e8597c556",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 39,
    "line": 34,
    "path": "GRWTSK/Topology/GeneralTopology/RCLike/Variant9087d0d28b3979a96b4244b230883473e73f253f94f4a94250a17c7cac521639.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:da0edeae61d620c58d946292d03dbda69ce5ca35eb7fcf1fa8e42cade4905fa6",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/RCLike/Variant9087d0d28b3979a96b4244b230883473e73f253f94f4a94250a17c7cac521639.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:14958849-8b60-6ff7-af89-c293dba03ffb`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 34–39.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem tendsto_ofReal_atBot_cobounded :
    Tendsto ofReal atBot (Bornology.cobounded 𝕜) :=
  tendsto_norm_atTop_iff_cobounded.mp (mod_cast tendsto_abs_atBot_atTop)

variable {𝕜}

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/RCLike/Variant9087d0d28b3979a96b4244b230883473e73f253f94f4a94250a17c7cac521639.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/RCLike/Variant9087d0d28b3979a96b4244b230883473e73f253f94f4a94250a17c7cac521639.lean#L34).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ae94e8c85478b336909d7480bb78501e8597c556` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
