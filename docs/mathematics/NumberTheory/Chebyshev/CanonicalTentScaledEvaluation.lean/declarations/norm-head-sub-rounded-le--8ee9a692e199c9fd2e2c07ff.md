# norm_head_sub_rounded_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:f12454f4-9acd-69c4-ce50-f317cacedbdd",
  "kind": "theorem",
  "lexical_name": "norm_head_sub_rounded_le",
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
  "slug": "norm-head-sub-rounded-le--8ee9a692e199c9fd2e2c07ff",
  "source": {
    "blob": "e04f41137d2a85cc2490c9bc9d2c815b0d8a212b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 81,
    "line": 67,
    "path": "GRWTSK/NumberTheory/Chebyshev/CanonicalTentScaledEvaluation.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:8ee9a692e199c9fd2e2c07ffea265e5b5902c39d7c8024968a07785caf7e86ca",
  "verification": {
    "reference": "docs/verification/NumberTheory/Chebyshev/CanonicalTentScaledEvaluation.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f12454f4-9acd-69c4-ce50-f317cacedbdd`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 67–81.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem norm_head_sub_rounded_le (x h T : ℝ) (hh : 0 < h) (ha : 1 < x - h)
    (inputs : ∀ z : ↥(heightHead T), PointInput x h z.1.1)
    (rounded : ℂ) (roundingError : ℝ)
    (hround : ‖scaledHead x h T inputs - rounded‖ ≤ roundingError) :
    ‖(∑ z ∈ heightHead T, (multiplicity z : ℂ) * tentKernel x h z.1) - rounded‖ ≤
      scaledHeadError x h T inputs + roundingError := by
  calc
    _ = ‖((∑ z ∈ heightHead T, (multiplicity z : ℂ) * tentKernel x h z.1) -
        scaledHead x h T inputs) + (scaledHead x h T inputs - rounded)‖ := by
      congr 1
      ring
    _ ≤ _ := (norm_add_le _ _).trans
      (add_le_add (norm_head_sub_scaled_le x h T hh ha inputs) hround)

/-- No supplied full-head enclosure; coordinate proofs and the strict margin remain. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/NumberTheory/Chebyshev/CanonicalTentScaledEvaluation.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Chebyshev/CanonicalTentScaledEvaluation.lean#L67).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e04f41137d2a85cc2490c9bc9d2c815b0d8a212b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
