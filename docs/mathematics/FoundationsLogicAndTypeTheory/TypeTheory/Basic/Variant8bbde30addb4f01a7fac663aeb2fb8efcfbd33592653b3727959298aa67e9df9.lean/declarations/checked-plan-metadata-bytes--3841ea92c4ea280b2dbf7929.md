# checked_plan_metadata_bytes

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "a8b3a6d4b49d802384aee91bf4bf3acca75cc2be",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 432,
      "path": "GRWTSK/SourceCorpus/Noeaaeue/Variants/systems/taxonomy/integration/formal/lean/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/PlanResources/Basic.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:c8847fa0-b210-46a1-dec9-b8dfb0d0ce44",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:bc84527d-ef01-c2b1-5dc4-cf0b6e659cb7",
  "kind": "theorem",
  "lexical_name": "checked_plan_metadata_bytes",
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
  "slug": "checked-plan-metadata-bytes--3841ea92c4ea280b2dbf7929",
  "source": {
    "blob": "a8b3a6d4b49d802384aee91bf4bf3acca75cc2be",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 441,
    "line": 432,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/TypeTheory/Basic/Variant8bbde30addb4f01a7fac663aeb2fb8efcfbd33592653b3727959298aa67e9df9.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:3841ea92c4ea280b2dbf792909aac384806a0b0e9f214b34777421f0a3acadbd",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/TypeTheory/Basic/Variant8bbde30addb4f01a7fac663aeb2fb8efcfbd33592653b3727959298aa67e9df9.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_SOURCE_DEPENDENCY"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:bc84527d-ef01-c2b1-5dc4-cf0b6e659cb7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 432–441.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem checked_plan_metadata_bytes (plan : Plan) (checked : planWithin plan = true) :
    ((inventories plan).map fun inventory => inventory.files.sum).sum ≤ 20 * maxTotalBytes := by
  have every := checked_plan_all_inventory_bounds plan checked
  have bound := sum_le_length_mul ((inventories plan).map fun inventory => inventory.files.sum) maxTotalBytes (by
    intro cost member
    obtain ⟨inventory, present, rfl⟩ := List.mem_map.mp member
    exact ((inventoryWithin_exact _).mp (every inventory present)).2.2.2.2)
  simp only [List.length_map] at bound
  exact Nat.le_trans bound (Nat.mul_le_mul_right _ (checked_plan_readset_count plan checked))

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_SOURCE_DEPENDENCY`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/TypeTheory/Basic/Variant8bbde30addb4f01a7fac663aeb2fb8efcfbd33592653b3727959298aa67e9df9.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/TypeTheory/Basic/Variant8bbde30addb4f01a7fac663aeb2fb8efcfbd33592653b3727959298aa67e9df9.lean#L432).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a8b3a6d4b49d802384aee91bf4bf3acca75cc2be` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
