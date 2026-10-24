# product_sdiff_diag

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "f8acfa9846a52059432c84bca3b6fab226649f8e",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 370,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/34/3430e0b5119c7d5a54f1e5d6d77bb19b14cb6b8753da99065a7aeade06689a57.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:92518141-8343-bf2e-7237-7db512cc2c3c",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:f97aab3b-ec3a-4b65-ab91-ab1948fd57a8",
  "kind": "theorem",
  "lexical_name": "product_sdiff_diag",
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
  "slug": "product-sdiff-diag--f797222cbabc070c9932902a",
  "source": {
    "blob": "f8acfa9846a52059432c84bca3b6fab226649f8e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 374,
    "line": 370,
    "path": "GRWTSK/Topology/GeneralTopology/Prod/Variant3430e0b5119c7d5a54f1e5d6d77bb19b14cb6b8753da99065a7aeade06689a57.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f797222cbabc070c9932902a2dbfa4e12d9dc2200e00163952d2740a56e60b44",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Prod/Variant3430e0b5119c7d5a54f1e5d6d77bb19b14cb6b8753da99065a7aeade06689a57.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f97aab3b-ec3a-4b65-ab91-ab1948fd57a8`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 370–374.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem product_sdiff_diag : s ×ˢ s \ s.diag = s.offDiag := by
  rw [← diag_union_offDiag, union_comm, union_sdiff_self,
    sdiff_eq_self_of_disjoint (disjoint_diag_offDiag _).symm]
#align finset.product_sdiff_diag Finset.product_sdiff_diag

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Prod/Variant3430e0b5119c7d5a54f1e5d6d77bb19b14cb6b8753da99065a7aeade06689a57.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Prod/Variant3430e0b5119c7d5a54f1e5d6d77bb19b14cb6b8753da99065a7aeade06689a57.lean#L370).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f8acfa9846a52059432c84bca3b6fab226649f8e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
