# card_Ioo_eq_card_Ico_sub_one

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "b94b44cfed3401ef331b14e243dcd861589f1a9f",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 649,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/fc/fc0e3b6dd62e5818accd8564cc253dcacdbdf1729556867b68f98215e100abc5.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:a8fd6e61-ce0d-5afc-9889-00130fe57a75",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:88e4ce8f-e3a7-2fe9-7cef-7aeefb4128a5",
  "kind": "theorem",
  "lexical_name": "card_Ioo_eq_card_Ico_sub_one",
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
  "slug": "card-ioo-eq-card-ico-sub-one--5d1d28774748de76fa29fa1d",
  "source": {
    "blob": "b94b44cfed3401ef331b14e243dcd861589f1a9f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 654,
    "line": 649,
    "path": "GRWTSK/Topology/GeneralTopology/Basic/Variantfc0e3b6dd62e5818accd8564cc253dcacdbdf1729556867b68f98215e100abc5.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:5d1d28774748de76fa29fa1dd908075d991d887c811092d017088d6dd27521af",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Basic/Variantfc0e3b6dd62e5818accd8564cc253dcacdbdf1729556867b68f98215e100abc5.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:88e4ce8f-e3a7-2fe9-7cef-7aeefb4128a5`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 649–654.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem card_Ioo_eq_card_Ico_sub_one (a b : α) : #(Ioo a b) = #(Ico a b) - 1 := by
  by_cases h : a < b
  · rw [Ico_eq_cons_Ioo h, card_cons]
    exact (Nat.add_sub_cancel _ _).symm
  · rw [Ioo_eq_empty h, Ico_eq_empty h, card_empty, Nat.zero_sub]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Basic/Variantfc0e3b6dd62e5818accd8564cc253dcacdbdf1729556867b68f98215e100abc5.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Basic/Variantfc0e3b6dd62e5818accd8564cc253dcacdbdf1729556867b68f98215e100abc5.lean#L649).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b94b44cfed3401ef331b14e243dcd861589f1a9f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
