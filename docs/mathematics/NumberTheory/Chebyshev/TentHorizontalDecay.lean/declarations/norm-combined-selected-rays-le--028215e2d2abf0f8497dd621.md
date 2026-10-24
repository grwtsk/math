# norm_combined_selected_rays_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:42880ec9-b23d-f01e-07a7-b5abc9b6a999",
  "kind": "theorem",
  "lexical_name": "norm_combined_selected_rays_le",
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
  "slug": "norm-combined-selected-rays-le--028215e2d2abf0f8497dd621",
  "source": {
    "blob": "c539089a3178194f9cbfe0f29a545d481067428b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 133,
    "line": 120,
    "path": "GRWTSK/NumberTheory/Chebyshev/TentHorizontalDecay.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:028215e2d2abf0f8497dd6214a72dca2d12316dec085e993e102b7dedfbe1e7e",
  "verification": {
    "reference": "docs/verification/NumberTheory/Chebyshev/TentHorizontalDecay.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:42880ec9-b23d-f01e-07a7-b5abc9b6a999`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 120–133.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem norm_combined_selected_rays_le (x h : ℝ) (hh : 0 < h) (ha : 1 < x - h)
    (N : ℕ) (hN : 2 ≤ N) :
    ‖(horizontalRay x h (separatedHeight N) - horizontalRay x h (-separatedHeight N)) /
      (((2 * Real.pi : ℝ) : ℂ) * Complex.I)‖ ≤ selectedRayBudget x h N / Real.pi := by
  have hb := norm_combined_horizontalRays_le x h (separatedHeight N) (stripBudget N)
    hh ha (separatedHeight_pos N) (separatedHeight_avoids N) (stripBudget_nonneg N)
    (fun y hy σ hσ => by simpa only [norm_neg] using
      norm_logDeriv_fixedStrip N hN σ y hσ hy)
  convert hb using 1
  unfold selectedRayBudget
  ring

end
end GRWTSK.NumberTheory.Chebyshev.TentHorizontalDecay
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/NumberTheory/Chebyshev/TentHorizontalDecay.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Chebyshev/TentHorizontalDecay.lean#L120).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c539089a3178194f9cbfe0f29a545d481067428b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
