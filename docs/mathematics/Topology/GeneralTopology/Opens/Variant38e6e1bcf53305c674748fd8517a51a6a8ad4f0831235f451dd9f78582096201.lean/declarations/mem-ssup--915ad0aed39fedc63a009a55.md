# mem_sSup

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "45c6cd630b991a156c8b9457758311adace1db86",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 249,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/38/38e6e1bcf53305c674748fd8517a51a6a8ad4f0831235f451dd9f78582096201.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:084f7980-abd7-14d0-0bf2-9918ef4a3475",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:250c400f-eb72-7c36-f5f8-158a4c73557d",
  "kind": "theorem",
  "lexical_name": "mem_sSup",
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
  "slug": "mem-ssup--915ad0aed39fedc63a009a55",
  "source": {
    "blob": "45c6cd630b991a156c8b9457758311adace1db86",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 252,
    "line": 249,
    "path": "GRWTSK/Topology/GeneralTopology/Opens/Variant38e6e1bcf53305c674748fd8517a51a6a8ad4f0831235f451dd9f78582096201.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:915ad0aed39fedc63a009a55281a9e626634811cae41600322eb6ce76fff777b",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Opens/Variant38e6e1bcf53305c674748fd8517a51a6a8ad4f0831235f451dd9f78582096201.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:250c400f-eb72-7c36-f5f8-158a4c73557d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 249–252.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem mem_sSup {Us : Set (Opens α)} {x : α} : x ∈ sSup Us ↔ ∃ u ∈ Us, x ∈ u := by
  simp_rw [sSup_eq_iSup, mem_iSup, exists_prop]
#align topological_space.opens.mem_Sup TopologicalSpace.Opens.mem_sSup

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Opens/Variant38e6e1bcf53305c674748fd8517a51a6a8ad4f0831235f451dd9f78582096201.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Opens/Variant38e6e1bcf53305c674748fd8517a51a6a8ad4f0831235f451dd9f78582096201.lean#L249).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `45c6cd630b991a156c8b9457758311adace1db86` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
