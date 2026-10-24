# nilpotent_iff_lowerCentralSeries

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "8e14d4b0d7bafda7bcbc82da04ff2817fef0073a",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 345,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/c6/c6c41c901ba8a148e04df1289526a8cb8d7523c6faef7b19069117567628c4fb.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:c460c3ef-5407-7af2-e110-f02bce088551",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:929949b1-dd34-1916-3b29-c5f3b45cf7df",
  "kind": "theorem",
  "lexical_name": "nilpotent_iff_lowerCentralSeries",
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
  "slug": "nilpotent-iff-lowercentralseries--76378834d5e5e5be25be697f",
  "source": {
    "blob": "8e14d4b0d7bafda7bcbc82da04ff2817fef0073a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 362,
    "line": 345,
    "path": "GRWTSK/Algebra/GroupTheory/Nilpotent/Variantc6c41c901ba8a148e04df1289526a8cb8d7523c6faef7b19069117567628c4fb.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:76378834d5e5e5be25be697f6218b7f56ed259a9d6cd95bfb2076f35427f47bd",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/Nilpotent/Variantc6c41c901ba8a148e04df1289526a8cb8d7523c6faef7b19069117567628c4fb.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:929949b1-dd34-1916-3b29-c5f3b45cf7df`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 345–362.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem nilpotent_iff_lowerCentralSeries : IsNilpotent G ↔ ∃ n, lowerCentralSeries G n = ⊥ := by
  rw [nilpotent_iff_finite_descending_central_series]
  constructor
  · rintro ⟨n, H, ⟨h0, hs⟩, hn⟩
    use n
    rw [eq_bot_iff, ← hn]
    exact descending_central_series_ge_lower H ⟨h0, hs⟩ n
  · rintro ⟨n, hn⟩
    exact ⟨n, lowerCentralSeries G, lowerCentralSeries_isDescendingCentralSeries, hn⟩

section Classical

variable [hG : IsNilpotent G]

variable (G) in
open scoped Classical in
/-- The nilpotency class of a nilpotent group is the smallest natural `n` such that
the `n`'th term of the upper central series is `G`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/Nilpotent/Variantc6c41c901ba8a148e04df1289526a8cb8d7523c6faef7b19069117567628c4fb.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/Nilpotent/Variantc6c41c901ba8a148e04df1289526a8cb8d7523c6faef7b19069117567628c4fb.lean#L345).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8e14d4b0d7bafda7bcbc82da04ff2817fef0073a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
