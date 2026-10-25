# eq_natCast_sub_of_add_eq_natCast

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "89f5dd50628292f4f2b74830e287e00d0ff215b4",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 442,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/da/da859df6f4ac3711c1e28d8aeb6e5b7a99ff55fe42a94447dc7b626c97ff5e7a.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:4f0a16cf-79fa-875d-bbee-32d7710cffe7",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:2e89312d-d748-8a36-a736-3d8b7df4d844",
  "kind": "theorem",
  "lexical_name": "eq_natCast_sub_of_add_eq_natCast",
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
  "slug": "eq-natcast-sub-of-add-eq-natcast--6979f16b45ad84b9898114f0",
  "source": {
    "blob": "89f5dd50628292f4f2b74830e287e00d0ff215b4",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 449,
    "line": 442,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/PartENat/Variantda859df6f4ac3711c1e28d8aeb6e5b7a99ff55fe42a94447dc7b626c97ff5e7a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:6979f16b45ad84b9898114f088d232d3a6ac4cb04eb62b84d5dfe1d5eefd68ed",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/PartENat/Variantda859df6f4ac3711c1e28d8aeb6e5b7a99ff55fe42a94447dc7b626c97ff5e7a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:2e89312d-d748-8a36-a736-3d8b7df4d844`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 442–449.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem eq_natCast_sub_of_add_eq_natCast {x y : PartENat} {n : ℕ} (h : x + y = n) :
    x = ↑(n - y.get (dom_of_le_natCast ((le_add_left le_rfl).trans_eq h))) := by
  lift x to ℕ using dom_of_le_natCast ((le_add_right le_rfl).trans_eq h)
  lift y to ℕ using dom_of_le_natCast ((le_add_left le_rfl).trans_eq h)
  rw [← Nat.cast_add, natCast_inj] at h
  rw [get_natCast, natCast_inj, eq_tsub_of_add_eq h]
#align part_enat.eq_coe_sub_of_add_eq_coe PartENat.eq_natCast_sub_of_add_eq_natCast

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/FoundationsLogicAndTypeTheory/PartENat/Variantda859df6f4ac3711c1e28d8aeb6e5b7a99ff55fe42a94447dc7b626c97ff5e7a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/PartENat/Variantda859df6f4ac3711c1e28d8aeb6e5b7a99ff55fe42a94447dc7b626c97ff5e7a.lean#L442).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `89f5dd50628292f4f2b74830e287e00d0ff215b4` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
