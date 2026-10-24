# Ico_diff_Ico_right

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "e95ee1379c20d60503ab4563e3c04342a4d274e6",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 896,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/82/82f67ade8a32d1316b0fcd244a2cc4759943843c3f2743db2fc1371df5ded114.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:7b4392a0-1e3d-88f0-6805-df0bc8d4df26",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:27744554-ef9e-978e-1914-b0e12b2c3a70",
  "kind": "theorem",
  "lexical_name": "Ico_diff_Ico_right",
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
  "slug": "ico-diff-ico-right--aae26b1b32bc20b5e62dff37",
  "source": {
    "blob": "e95ee1379c20d60503ab4563e3c04342a4d274e6",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 904,
    "line": 896,
    "path": "GRWTSK/Topology/GeneralTopology/Basic/Variant82f67ade8a32d1316b0fcd244a2cc4759943843c3f2743db2fc1371df5ded114.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:aae26b1b32bc20b5e62dff3780fbeef8d06a000c3518ecc1366c0ed8766b1de8",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Basic/Variant82f67ade8a32d1316b0fcd244a2cc4759943843c3f2743db2fc1371df5ded114.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:27744554-ef9e-978e-1914-b0e12b2c3a70`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 896–904.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem Ico_diff_Ico_right (a b c : α) : Ico a b \ Ico c b = Ico a (min b c) := by
  cases le_total b c with
  | inl h => rw [Ico_eq_empty_of_le h, sdiff_empty, min_eq_left h]
  | inr h =>
    ext x
    rw [mem_sdiff, mem_Ico, mem_Ico, mem_Ico, min_eq_right h, and_assoc, not_and', not_le]
    exact and_congr_right' ⟨fun hx => hx.2 hx.1, fun hx => ⟨hx.trans_le h, fun _ => hx⟩⟩

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Basic/Variant82f67ade8a32d1316b0fcd244a2cc4759943843c3f2743db2fc1371df5ded114.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Basic/Variant82f67ade8a32d1316b0fcd244a2cc4759943843c3f2743db2fc1371df5ded114.lean#L896).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e95ee1379c20d60503ab4563e3c04342a4d274e6` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
