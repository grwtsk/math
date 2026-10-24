# norm_left_vertical_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:9c55b0d4-e215-26a7-8a2e-370d750c2bde",
  "kind": "theorem",
  "lexical_name": "norm_left_vertical_le",
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
  "slug": "norm-left-vertical-le--33d8d3e0e55f4a160c87a58c",
  "source": {
    "blob": "216d2cc455ed15f2e44489611b76a2efeabd6a35",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 107,
    "line": 96,
    "path": "GRWTSK/NumberTheory/Chebyshev/TentEdgeBounds.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:33d8d3e0e55f4a160c87a58c001563ed3135fdc63c03a09c5de0eca4c8266a6c",
  "verification": {
    "reference": "docs/verification/NumberTheory/Chebyshev/TentEdgeBounds.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:9c55b0d4-e215-26a7-8a2e-370d750c2bde`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 96–107.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem norm_left_vertical_le (x h : ℝ) (hh : 0 < h) (ha : 1 < x - h)
    (N : ℕ) (hN : 1 ≤ N) (T Q : ℝ) (hT : 0 ≤ T) (hQ : 0 ≤ Q)
    (hg : ∀ t ∈ Icc (-T) T,
      ‖-logDeriv riemannZeta ((leftEdge N : ℂ) + (t : ℂ) * Complex.I)‖ ≤ Q) :
    ‖vertical (integrand x h) (leftEdge N) T‖ ≤
      Q * (4 * Real.exp (-2 * (N : ℝ) * Real.log (x - h)) / h) * Real.pi := by
  change ‖vertical (fun z => -logDeriv riemannZeta z * tentKernel x h z) (leftEdge N) T‖ ≤ _
  simpa only [powerProfile_leftEdge] using norm_vertical_product_le
    (fun s => -logDeriv riemannZeta s) x h (leftEdge N) T Q hh ha
    (leftEdge_le_neg_two N hN) hT hQ (zeta_tent_left_intervalIntegrable x h hh ha N T) hg

/-- Both actual oriented corrections are bounded, with 2*pi and 2*pi*I normalized exactly. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/NumberTheory/Chebyshev/TentEdgeBounds.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Chebyshev/TentEdgeBounds.lean#L96).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `216d2cc455ed15f2e44489611b76a2efeabd6a35` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
