# endpointPolynomial_full_overlap_integral

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "43ba870d8c981430d77cc302b53942adde471534",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 91,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/0e/0eba1181b914950a1a5dce37249d58aa4d984445833d8f9aca4e7d3248c851c7.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:65822605-afb9-f952-a749-2e8f04da9f40",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:a9f8f92c-30d2-15f8-bbb3-e8c29269d19e",
  "kind": "theorem",
  "lexical_name": "endpointPolynomial_full_overlap_integral",
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
  "slug": "endpointpolynomial-full-overlap-integral--2b761bfbd3cb85e00d3df877",
  "source": {
    "blob": "43ba870d8c981430d77cc302b53942adde471534",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 101,
    "line": 91,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/0eba1181b914950a1a5dEstimateSourceEdgeCorrelation/Variant0eba1181b914950a1a5dce37249d58aa4d984445833d8f9aca4e7d3248c851c7.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:2b761bfbd3cb85e00d3df877b21a75c21b2ef845a615e2deca84dc34c704dd23",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/0eba1181b914950a1a5dEstimateSourceEdgeCorrelation/Variant0eba1181b914950a1a5dce37249d58aa4d984445833d8f9aca4e7d3248c851c7.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a9f8f92c-30d2-15f8-bbb3-e8c29269d19e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 91–101.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem endpointPolynomial_full_overlap_integral (A : ℝ) (hA : 1 ≤ A) :
    (∫ r in (0 : ℝ)..2 * A, endpointPolynomial A r * endpointPolynomial A (2 * A-r)) =
      A^9 * sourceNormalization A := by
  have hA0 : 0 < A := by linarith
  have hZ := source_normalization_pos A hA
  have h := sourceCorrelation_upper_edge A (2 * A) hA (by linarith) le_rfl
  rw [sub_self, EstimateCorrelation.actual_correlation_at_zero A hA] at h
  field_simp [hA0.ne', hZ.ne'] at h
  simpa only [mul_comm A 2] using h.symm

/-- The exact endpoint integral has this explicit fixed polynomial majorant. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/0eba1181b914950a1a5dEstimateSourceEdgeCorrelation/Variant0eba1181b914950a1a5dce37249d58aa4d984445833d8f9aca4e7d3248c851c7.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/0eba1181b914950a1a5dEstimateSourceEdgeCorrelation/Variant0eba1181b914950a1a5dce37249d58aa4d984445833d8f9aca4e7d3248c851c7.lean#L91).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `43ba870d8c981430d77cc302b53942adde471534` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
