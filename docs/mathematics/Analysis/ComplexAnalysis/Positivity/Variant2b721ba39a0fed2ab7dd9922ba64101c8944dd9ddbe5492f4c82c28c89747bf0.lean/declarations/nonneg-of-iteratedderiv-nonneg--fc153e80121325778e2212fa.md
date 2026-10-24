# nonneg_of_iteratedDeriv_nonneg

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "b2ae7d9222a05a02fa0bb25f8d71eeca366e879a",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 47,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/2b/2b721ba39a0fed2ab7dd9922ba64101c8944dd9ddbe5492f4c82c28c89747bf0.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:dcedfbd5-a2a1-1fd5-76db-fd56fe3a5d9f",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:ad673535-de27-9edd-a8c4-bec55764919b",
  "kind": "theorem",
  "lexical_name": "nonneg_of_iteratedDeriv_nonneg",
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
  "slug": "nonneg-of-iteratedderiv-nonneg--fc153e80121325778e2212fa",
  "source": {
    "blob": "b2ae7d9222a05a02fa0bb25f8d71eeca366e879a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 56,
    "line": 47,
    "path": "GRWTSK/Analysis/ComplexAnalysis/Positivity/Variant2b721ba39a0fed2ab7dd9922ba64101c8944dd9ddbe5492f4c82c28c89747bf0.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:fc153e80121325778e2212fa266a94f8f0b2f0d8121f44ed5e93146ac74af288",
  "verification": {
    "reference": "docs/verification/Analysis/ComplexAnalysis/Positivity/Variant2b721ba39a0fed2ab7dd9922ba64101c8944dd9ddbe5492f4c82c28c89747bf0.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ad673535-de27-9edd-a8c4-bec55764919b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 47–56.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem nonneg_of_iteratedDeriv_nonneg {f : ℂ → ℂ} (hf : Differentiable ℂ f) {c : ℂ}
    (h : ∀ n, 0 ≤ iteratedDeriv n f c) ⦃z : ℂ⦄ (hz : c ≤ z) :
    0 ≤ f z := by
  refine hf.differentiableOn.nonneg_of_iteratedDeriv_nonneg (r := (z - c).re + 1) h hz ?_
  rw [← sub_nonneg] at hz
  rw [Metric.mem_ball, dist_eq, eq_re_of_ofReal_le hz]
  simpa only [Complex.norm_of_nonneg (nonneg_iff.mp hz).1] using lt_add_one _

/-- An entire function whose iterated derivatives at `c` are all nonnegative real (except
possibly the value itself) has values of the form `f c + nonneg. real` on the set `c + ℝ≥0`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/ComplexAnalysis/Positivity/Variant2b721ba39a0fed2ab7dd9922ba64101c8944dd9ddbe5492f4c82c28c89747bf0.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/ComplexAnalysis/Positivity/Variant2b721ba39a0fed2ab7dd9922ba64101c8944dd9ddbe5492f4c82c28c89747bf0.lean#L47).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b2ae7d9222a05a02fa0bb25f8d71eeca366e879a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
