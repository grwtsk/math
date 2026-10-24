# exists_open_superset_measure_lt_top'

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "fc07583ec7858ca76ed495cb0d8f84a6e1c665fd",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 485,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/5e/5ea288bdea270e16d015c1c7f95222525eff634eb3f94341654ffbf16920780e.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:c926ba4f-38c9-0d36-bce0-d63f2737fe3d",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:2402e423-064f-91b6-70d1-0fb8d32ba776",
  "kind": "theorem",
  "lexical_name": "exists_open_superset_measure_lt_top'",
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
  "slug": "exists-open-superset-measure-lt-top--69c2dc2db23723fae41b2c50",
  "source": {
    "blob": "fc07583ec7858ca76ed495cb0d8f84a6e1c665fd",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 501,
    "line": 485,
    "path": "GRWTSK/Analysis/MeasureTheory/Finite/Variant5ea288bdea270e16d015c1c7f95222525eff634eb3f94341654ffbf16920780e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:69c2dc2db23723fae41b2c50d3a31d5024bf7387d546097d612e2877ad1254f1",
  "verification": {
    "reference": "docs/verification/Analysis/MeasureTheory/Finite/Variant5ea288bdea270e16d015c1c7f95222525eff634eb3f94341654ffbf16920780e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:2402e423-064f-91b6-70d1-0fb8d32ba776`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 485–501.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem exists_open_superset_measure_lt_top' (h : IsCompact s)
    (hμ : ∀ x ∈ s, μ.FiniteAtFilter (𝓝 x)) : ∃ U ⊇ s, IsOpen U ∧ μ U < ∞ := by
  refine IsCompact.induction_on h ?_ ?_ ?_ ?_
  · use ∅
    simp [Superset]
  · rintro s t hst ⟨U, htU, hUo, hU⟩
    exact ⟨U, hst.trans htU, hUo, hU⟩
  · rintro s t ⟨U, hsU, hUo, hU⟩ ⟨V, htV, hVo, hV⟩
    refine
      ⟨U ∪ V, union_subset_union hsU htV, hUo.union hVo,
        (measure_union_le _ _).trans_lt <| ENNReal.add_lt_top.2 ⟨hU, hV⟩⟩
  · intro x hx
    rcases (hμ x hx).exists_mem_basis (nhds_basis_opens _) with ⟨U, ⟨hx, hUo⟩, hU⟩
    exact ⟨U, nhdsWithin_le_nhds (hUo.mem_nhds hx), U, Subset.rfl, hUo, hU⟩

/-- If `s` is a compact set and `μ` is a locally finite measure, then `s` admits an open superset of
finite measure. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/MeasureTheory/Finite/Variant5ea288bdea270e16d015c1c7f95222525eff634eb3f94341654ffbf16920780e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/MeasureTheory/Finite/Variant5ea288bdea270e16d015c1c7f95222525eff634eb3f94341654ffbf16920780e.lean#L485).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `fc07583ec7858ca76ed495cb0d8f84a6e1c665fd` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
