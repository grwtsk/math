# loc_compact_t2_tot_disc_iff_tot_sep

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "84570ded902405cf49a43aa3f49b0fbf0e39081f",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 108,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/2f/2fd27ed4ca83d398c97218d270829f350a8bb19f412fd7f3c7f83da3f7ffa2b5.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:6711b452-aab2-113f-a436-637be7fb65bd",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:f7530c39-8971-ce02-8aba-91c3466c4364",
  "kind": "theorem",
  "lexical_name": "loc_compact_t2_tot_disc_iff_tot_sep",
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
  "slug": "loc-compact-t2-tot-disc-iff-tot-sep--4fe49ce774c6b7f1dd255bfe",
  "source": {
    "blob": "84570ded902405cf49a43aa3f49b0fbf0e39081f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 118,
    "line": 108,
    "path": "GRWTSK/Topology/GeneralTopology/Profinite/Variant2fd27ed4ca83d398c97218d270829f350a8bb19f412fd7f3c7f83da3f7ffa2b5.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:4fe49ce774c6b7f1dd255bfec9634889a2d2061445c268c28fd54f307a8d4591",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Profinite/Variant2fd27ed4ca83d398c97218d270829f350a8bb19f412fd7f3c7f83da3f7ffa2b5.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f7530c39-8971-ce02-8aba-91c3466c4364`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 108–118.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem loc_compact_t2_tot_disc_iff_tot_sep :
    TotallyDisconnectedSpace H ↔ TotallySeparatedSpace H := by
  constructor
  · intro h
    exact totallySeparatedSpace_of_t1_of_basis_clopen loc_compact_Haus_tot_disc_of_zero_dim
  apply TotallySeparatedSpace.totallyDisconnectedSpace

@[deprecated (since := "2024-12-18")] alias compact_t2_tot_disc_iff_tot_sep :=
  loc_compact_t2_tot_disc_iff_tot_sep

/-- A totally disconnected compact Hausdorff space is totally separated. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Profinite/Variant2fd27ed4ca83d398c97218d270829f350a8bb19f412fd7f3c7f83da3f7ffa2b5.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Profinite/Variant2fd27ed4ca83d398c97218d270829f350a8bb19f412fd7f3c7f83da3f7ffa2b5.lean#L108).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `84570ded902405cf49a43aa3f49b0fbf0e39081f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
