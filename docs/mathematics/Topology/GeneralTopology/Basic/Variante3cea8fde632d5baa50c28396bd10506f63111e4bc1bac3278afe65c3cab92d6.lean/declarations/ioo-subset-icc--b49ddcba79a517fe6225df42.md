# Ioo_subset_Icc

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "06c6a29985b9cd6e6a76b4b51fad5f2ff7ec4c83",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 405,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/e3/e3cea8fde632d5baa50c28396bd10506f63111e4bc1bac3278afe65c3cab92d6.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:4a866a3a-ec0f-9b35-c60d-829328c34856",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:8aa2fe2a-0e47-16db-9f33-62aad58b654b",
  "kind": "theorem",
  "lexical_name": "Ioo_subset_Icc",
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
  "slug": "ioo-subset-icc--b49ddcba79a517fe6225df42",
  "source": {
    "blob": "06c6a29985b9cd6e6a76b4b51fad5f2ff7ec4c83",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 407,
    "line": 405,
    "path": "GRWTSK/Topology/GeneralTopology/Basic/Variante3cea8fde632d5baa50c28396bd10506f63111e4bc1bac3278afe65c3cab92d6.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b49ddcba79a517fe6225df4216cc51f68df3fa71f25789b4109ab74dbb056d67",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Basic/Variante3cea8fde632d5baa50c28396bd10506f63111e4bc1bac3278afe65c3cab92d6.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:8aa2fe2a-0e47-16db-9f33-62aad58b654b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 405–407.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
protected theorem Ioo_subset_Icc (I : Box ι) : Box.Ioo I ⊆ Box.Icc I :=
  I.Ioo_subset_coe.trans coe_subset_Icc

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Basic/Variante3cea8fde632d5baa50c28396bd10506f63111e4bc1bac3278afe65c3cab92d6.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Basic/Variante3cea8fde632d5baa50c28396bd10506f63111e4bc1bac3278afe65c3cab92d6.lean#L405).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `06c6a29985b9cd6e6a76b4b51fad5f2ff7ec4c83` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
