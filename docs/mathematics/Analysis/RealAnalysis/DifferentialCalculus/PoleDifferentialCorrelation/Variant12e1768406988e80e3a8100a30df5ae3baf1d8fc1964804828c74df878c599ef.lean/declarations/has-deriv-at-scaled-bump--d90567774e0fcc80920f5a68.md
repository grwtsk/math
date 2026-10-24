# has_deriv_at_scaled_bump

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "7bc2ef396d31fd9257473b8da5c55961453dedcd",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 350,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/12/12e1768406988e80e3a8100a30df5ae3baf1d8fc1964804828c74df878c599ef.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:8a5d6c29-2162-4e39-48f0-686eeb8d09e3",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:8bbf6fff-f704-d064-2d0d-5cfa2ab83d5b",
  "kind": "theorem",
  "lexical_name": "has_deriv_at_scaled_bump",
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
  "slug": "has-deriv-at-scaled-bump--d90567774e0fcc80920f5a68",
  "source": {
    "blob": "7bc2ef396d31fd9257473b8da5c55961453dedcd",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 362,
    "line": 350,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/PoleDifferentialCorrelation/Variant12e1768406988e80e3a8100a30df5ae3baf1d8fc1964804828c74df878c599ef.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d90567774e0fcc80920f5a683955c396f2648f21f4aa3d9f33e983e1867138fe",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/PoleDifferentialCorrelation/Variant12e1768406988e80e3a8100a30df5ae3baf1d8fc1964804828c74df878c599ef.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:8bbf6fff-f704-d064-2d0d-5cfa2ab83d5b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 350–362.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem has_deriv_at_scaled_bump (A t : ℝ) (hA : 0 < A) :
    HasDerivAt (scaledBump A) ((Icc (-A) A).indicator (firstInterior A) t) t := by
  rw [scaledBump_eq_indicator A hA]
  apply CorrelationRegularity.indicator_hasDerivAt (bumpInterior_hasDerivAt A)
  intro x hx
  rw [frontier_Icc (by linarith : -A ≤ A), mem_insert_iff, mem_singleton_iff] at hx
  rcases hx with hx | hx <;> rw [hx]
  · exact ⟨(bumpInterior_endpoints A (ne_of_gt hA)).1,
      (firstInterior_endpoints A (ne_of_gt hA)).1⟩
  · exact ⟨(bumpInterior_endpoints A (ne_of_gt hA)).2,
      (firstInterior_endpoints A (ne_of_gt hA)).2⟩

/-- The concrete weak second derivative is also the ordinary global second derivative. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/PoleDifferentialCorrelation/Variant12e1768406988e80e3a8100a30df5ae3baf1d8fc1964804828c74df878c599ef.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/PoleDifferentialCorrelation/Variant12e1768406988e80e3a8100a30df5ae3baf1d8fc1964804828c74df878c599ef.lean#L350).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7bc2ef396d31fd9257473b8da5c55961453dedcd` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
