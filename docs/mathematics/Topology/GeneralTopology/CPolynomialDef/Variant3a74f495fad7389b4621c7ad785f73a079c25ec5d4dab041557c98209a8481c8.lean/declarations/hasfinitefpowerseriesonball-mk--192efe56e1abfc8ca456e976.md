# HasFiniteFPowerSeriesOnBall.mk'

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:9dc08a71-3d26-08d3-46ba-92daff6010b8",
  "kind": "theorem",
  "lexical_name": "HasFiniteFPowerSeriesOnBall.mk'",
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
  "slug": "hasfinitefpowerseriesonball-mk--192efe56e1abfc8ca456e976",
  "source": {
    "blob": "650a469cdcfe97723fc63b3d9b6cfa1e43ff4ad1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 89,
    "line": 77,
    "path": "GRWTSK/Topology/GeneralTopology/CPolynomialDef/Variant3a74f495fad7389b4621c7ad785f73a079c25ec5d4dab041557c98209a8481c8.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:192efe56e1abfc8ca456e976d8f4a29741b78bf8dc4b324161bb23f9706fb253",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/CPolynomialDef/Variant3a74f495fad7389b4621c7ad785f73a079c25ec5d4dab041557c98209a8481c8.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:9dc08a71-3d26-08d3-46ba-92daff6010b8`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 77–89.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem HasFiniteFPowerSeriesOnBall.mk' {f : E → F} {p : FormalMultilinearSeries 𝕜 E F} {x : E}
    {n : ℕ} {r : ℝ≥0∞} (finite : ∀ (m : ℕ), n ≤ m → p m = 0) (pos : 0 < r)
    (sum_eq : ∀ y ∈ Metric.eball 0 r, (∑ i ∈ Finset.range n, p i fun _ ↦ y) = f (x + y)) :
    HasFiniteFPowerSeriesOnBall f p x n r where
  r_le := p.radius_eq_top_of_eventually_eq_zero (Filter.eventually_atTop.mpr ⟨n, finite⟩) ▸ le_top
  r_pos := pos
  hasSum hy := sum_eq _ hy ▸ hasSum_sum_of_ne_finset_zero fun m hm ↦ by
    rw [Finset.mem_range, not_lt] at hm; rw [finite m hm]; rfl
  finite := finite

/-- Given a function `f : E → F`, a formal multilinear series `p` and `n : ℕ`, we say that
`f` has `p` as a finite power series around `x` if `f (x + y) = ∑' pₙ yⁿ` for all `y` in a
neighborhood of `0` and `pₙ = 0` for `n ≤ m`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/CPolynomialDef/Variant3a74f495fad7389b4621c7ad785f73a079c25ec5d4dab041557c98209a8481c8.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/CPolynomialDef/Variant3a74f495fad7389b4621c7ad785f73a079c25ec5d4dab041557c98209a8481c8.lean#L77).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `650a469cdcfe97723fc63b3d9b6cfa1e43ff4ad1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
