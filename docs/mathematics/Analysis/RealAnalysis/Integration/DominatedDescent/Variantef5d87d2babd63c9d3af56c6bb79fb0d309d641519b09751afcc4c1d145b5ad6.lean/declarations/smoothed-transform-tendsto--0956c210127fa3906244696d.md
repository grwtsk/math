# smoothed_transform_tendsto

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:c1c3bef6-b66f-c125-0be2-fe081e56733c",
  "kind": "theorem",
  "lexical_name": "smoothed_transform_tendsto",
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
  "slug": "smoothed-transform-tendsto--0956c210127fa3906244696d",
  "source": {
    "blob": "dae7e7a5878d2154e587f9c6f03c41af611b1678",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 207,
    "line": 197,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/DominatedDescent/Variantef5d87d2babd63c9d3af56c6bb79fb0d309d641519b09751afcc4c1d145b5ad6.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:0956c210127fa3906244696d688915b2121303f1e05881277cbd1bc0f18a2732",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/DominatedDescent/Variantef5d87d2babd63c9d3af56c6bb79fb0d309d641519b09751afcc4c1d145b5ad6.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c1c3bef6-b66f-c125-0be2-fe081e56733c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 197–207.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private theorem smoothed_transform_tendsto {ι : Type*} {l : Filter ι}
    (A : ℝ) (hA : 1 ≤ A) (ε : ι → ℝ) (hε : ∀ i, 0 < ε i)
    (hlim : Tendsto ε l (𝓝 0)) (z : ℂ) :
    Tendsto (fun i ↦ smoothedBilateralTransform A (ε i) (hε i) z) l
      (𝓝 (bilateralTransform A z)) := by
  simp_rw [smoothed_bilateral_transform A _ hA]
  simpa only [mul_one] using
    (multiplier_tendsto_one z ε hε hlim).const_mul (bilateralTransform A z)

/-- Z2.7 zero-side descent: uniform sixth-power domination permits passage of
the entire occurrence sum through `ε → 0+`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/DominatedDescent/Variantef5d87d2babd63c9d3af56c6bb79fb0d309d641519b09751afcc4c1d145b5ad6.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/DominatedDescent/Variantef5d87d2babd63c9d3af56c6bb79fb0d309d641519b09751afcc4c1d145b5ad6.lean#L197).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `dae7e7a5878d2154e587f9c6f03c41af611b1678` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
