# disc_eq_regionBetween

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "3320ee7301be6bd4b2e1d6f4a0d308df9768592b",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 69,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/83/831aafe9cc0e54dc3a4d4d81d154d487ab0d0423e37becc9e887c15552b71fb0.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:210b71ca-c977-20ff-da7b-799f5539cae0",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:f411ac34-5cfb-b7eb-4352-4bea69fec6f9",
  "kind": "theorem",
  "lexical_name": "disc_eq_regionBetween",
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
  "slug": "disc-eq-regionbetween--60ffd2b85590f04d648f3b59",
  "source": {
    "blob": "3320ee7301be6bd4b2e1d6f4a0d308df9768592b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 84,
    "line": 69,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/AreaOfACircle/Variant831aafe9cc0e54dc3a4d4d81d154d487ab0d0423e37becc9e887c15552b71fb0.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:60ffd2b85590f04d648f3b593f1f75edb3ff15bd4b7111c9337b4f84bf0ab961",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/AreaOfACircle/Variant831aafe9cc0e54dc3a4d4d81d154d487ab0d0423e37becc9e887c15552b71fb0.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f411ac34-5cfb-b7eb-4352-4bea69fec6f9`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 69–84.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem disc_eq_regionBetween :
    disc r =
      regionBetween
        (fun x => -sqrt (r ^ 2 - x ^ 2)) (fun x => sqrt (r ^ 2 - x ^ 2)) (Ioc (-r) r) := by
  ext p
  simp only [disc, regionBetween, mem_setOf_eq, mem_Ioo, mem_Ioc, Pi.neg_apply]
  constructor <;> intro h
  · cases abs_lt_of_sq_lt_sq' (lt_of_add_lt_of_nonneg_left h (sq_nonneg p.2)) r.2 with
    | intro left right =>
      rw [add_comm, ← lt_sub_iff_add_lt] at h
      exact ⟨⟨left, right.le⟩, sq_lt.mp h⟩
  · rw [add_comm, ← lt_sub_iff_add_lt]
    exact sq_lt.mpr h.2
#align theorems_100.disc_eq_region_between Theorems100.disc_eq_regionBetween

/-- The disc is a `MeasurableSet`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/AreaOfACircle/Variant831aafe9cc0e54dc3a4d4d81d154d487ab0d0423e37becc9e887c15552b71fb0.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/AreaOfACircle/Variant831aafe9cc0e54dc3a4d4d81d154d487ab0d0423e37becc9e887c15552b71fb0.lean#L69).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3320ee7301be6bd4b2e1d6f4a0d308df9768592b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
