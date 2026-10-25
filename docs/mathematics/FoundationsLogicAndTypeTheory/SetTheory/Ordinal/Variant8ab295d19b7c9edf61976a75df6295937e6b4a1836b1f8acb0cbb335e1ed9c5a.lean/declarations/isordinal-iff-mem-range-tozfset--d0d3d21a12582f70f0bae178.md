# isOrdinal_iff_mem_range_toZFSet

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "43a404c00482ab749b6ebe5e7a4a928c83095b94",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 382,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/8a/8ab295d19b7c9edf61976a75df6295937e6b4a1836b1f8acb0cbb335e1ed9c5a.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:b8cb4b05-6fc2-6487-9de7-2356d30e735c",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:e3b4dbd8-dab9-b4a2-ebf4-ad40e3695209",
  "kind": "theorem",
  "lexical_name": "isOrdinal_iff_mem_range_toZFSet",
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
  "slug": "isordinal-iff-mem-range-tozfset--d0d3d21a12582f70f0bae178",
  "source": {
    "blob": "43a404c00482ab749b6ebe5e7a4a928c83095b94",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 391,
    "line": 382,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/SetTheory/Ordinal/Variant8ab295d19b7c9edf61976a75df6295937e6b4a1836b1f8acb0cbb335e1ed9c5a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d0d3d21a12582f70f0bae178d4fb7f0bd1ccdd15edfb7c9d35b27bd911aef23d",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/SetTheory/Ordinal/Variant8ab295d19b7c9edf61976a75df6295937e6b4a1836b1f8acb0cbb335e1ed9c5a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e3b4dbd8-dab9-b4a2-ebf4-ad40e3695209`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 382–391.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem isOrdinal_iff_mem_range_toZFSet {x : ZFSet.{u}} :
    IsOrdinal x ↔ x ∈ Set.range toZFSet.{u} := by
  refine ⟨fun h ↦ ?_, ?_⟩
  · rw [← h.toZFSet_rank_eq]
    exact Set.mem_range_self _
  · rintro ⟨a, rfl⟩
    exact isOrdinal_toZFSet a

/-- `Ordinal` is order-equivalent to the type of von Neumann ordinals. -/
@[simps apply symm_apply]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/SetTheory/Ordinal/Variant8ab295d19b7c9edf61976a75df6295937e6b4a1836b1f8acb0cbb335e1ed9c5a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/SetTheory/Ordinal/Variant8ab295d19b7c9edf61976a75df6295937e6b4a1836b1f8acb0cbb335e1ed9c5a.lean#L382).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `43a404c00482ab749b6ebe5e7a4a928c83095b94` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
