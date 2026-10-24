# HasFiniteFPowerSeriesOnBall.mk'

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:6f52e73e-b520-fa22-ab29-5b4ccf7c3e74",
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
  "slug": "hasfinitefpowerseriesonball-mk--73b8dfa59084fcee9acf931d",
  "source": {
    "blob": "fa7e1c740894a3be648b71ad686c0f7b11e831b6",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 82,
    "line": 70,
    "path": "GRWTSK/Topology/GeneralTopology/CPolynomialDef/Variantb988c3b1aff7ad71ec6aacc483d5ecb10920bf9765c983d0f937569ede009783.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:73b8dfa59084fcee9acf931d1b2a0a02666b25a355db4216535337a35e37d40c",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/CPolynomialDef/Variantb988c3b1aff7ad71ec6aacc483d5ecb10920bf9765c983d0f937569ede009783.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:6f52e73e-b520-fa22-ab29-5b4ccf7c3e74`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 70–82.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem HasFiniteFPowerSeriesOnBall.mk' {f : E → F} {p : FormalMultilinearSeries 𝕜 E F} {x : E}
    {n : ℕ} {r : ℝ≥0∞} (finite : ∀ (m : ℕ), n ≤ m → p m = 0) (pos : 0 < r)
    (sum_eq : ∀ y ∈ EMetric.ball 0 r, (∑ i ∈ Finset.range n, p i fun _ ↦ y) = f (x + y)) :
    HasFiniteFPowerSeriesOnBall f p x n r where
  r_le := p.radius_eq_top_of_eventually_eq_zero (Filter.eventually_atTop.mpr ⟨n, finite⟩) ▸ le_top
  r_pos := pos
  hasSum hy := sum_eq _ hy ▸ hasSum_sum_of_ne_finset_zero fun m hm ↦ by
    rw [Finset.mem_range, not_lt] at hm; rw [finite m hm]; rfl
  finite := finite

/-- Given a function `f : E → F`, a formal multilinear series `p` and `n : ℕ`, we say that
`f` has `p` as a finite power series around `x` if `f (x + y) = ∑' pₙ yⁿ` for all `y` in a
neighborhood of `0`and `pₙ = 0` for `n ≤ m`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/CPolynomialDef/Variantb988c3b1aff7ad71ec6aacc483d5ecb10920bf9765c983d0f937569ede009783.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/CPolynomialDef/Variantb988c3b1aff7ad71ec6aacc483d5ecb10920bf9765c983d0f937569ede009783.lean#L70).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `fa7e1c740894a3be648b71ad686c0f7b11e831b6` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
