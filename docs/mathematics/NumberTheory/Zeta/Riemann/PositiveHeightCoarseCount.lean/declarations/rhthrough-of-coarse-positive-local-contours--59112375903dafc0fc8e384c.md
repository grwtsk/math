# rhThrough_of_coarse_positive_local_contours

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:1b5559c1-700a-ab17-151f-a74f5e1586c6",
  "kind": "theorem",
  "lexical_name": "rhThrough_of_coarse_positive_local_contours",
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
  "slug": "rhthrough-of-coarse-positive-local-contours--59112375903dafc0fc8e384c",
  "source": {
    "blob": "91ceef34cfbd920994350b568fca10b220d69829",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 132,
    "line": 108,
    "path": "GRWTSK/NumberTheory/Zeta/Riemann/PositiveHeightCoarseCount.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:59112375903dafc0fc8e384ce71ac307beee7f2c054baf032d1dad28b882f4c2",
  "verification": {
    "reference": "docs/verification/NumberTheory/Zeta/Riemann/PositiveHeightCoarseCount.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:1b5559c1-700a-ab17-151f-a74f5e1586c6`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 108–132.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem rhThrough_of_coarse_positive_local_contours (N : ℕ) (hN : 2 ≤ N)
    (known : Finset ZeroPoint)
    (center : ZeroPoint → ℂ) (radius : ZeroPoint → ℝ)
    (lower : ZeroPoint → ℕ)
    (knownSubset : known ⊆ positiveHeightHead (N : ℝ))
    (centered : ∀ z ∈ known, (center z).re = 1 / 2)
    (analytic : ∀ z ∈ known,
      AnalyticOnNhd ℂ riemannZeta (closedBall (center z) (radius z)))
    (inside : ∀ z ∈ known, z.1 ∈ ball (center z) (radius z))
    (isolated : ∀ z ∈ known, ∀ w ∈ closedBall (center z) (radius z),
      riemannZeta w = 0 → w = z.1)
    (contourLower : ∀ z ∈ known, (lower z : ℝ) ≤
      ((2 * (Real.pi : ℂ) * Complex.I)⁻¹ *
        (∮ w in C(center z, radius z), deriv riemannZeta w / riemannZeta w)).re)
    (strict : coarsePositiveUpper N < (∑ z ∈ known, lower z) + 2) : RHThrough N := by
  apply rhThrough_of_coarse_positive_weighted_inventory N hN known lower knownSubset ?_ ?_ strict
  · intro z hz
    exact (centered_isolated_zero_geometry z (center z) (radius z) (centered z hz)
      (analytic z hz) (inside z hz) (isolated z hz)).1
  · intro z hz
    exact contour_credit_le_multiplicity z (center z) (radius z) (lower z)
      (analytic z hz) (inside z hz) (isolated z hz) (contourLower z hz)

/-- A coarse-credit supplier at every height at least two would imply RH.
The larger height max(N,2) is eliminated separately for each target N; no global inventory is chosen. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/Zeta/Riemann/PositiveHeightCoarseCount.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Zeta/Riemann/PositiveHeightCoarseCount.lean#L108).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `91ceef34cfbd920994350b568fca10b220d69829` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
