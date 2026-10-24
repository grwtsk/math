# HasFiniteFPowerSeriesOnBall.mk'

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "d01c2cbbbb1603fb244f1e2f3c0b6d2455b1946d",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 69,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/3f/3fe894680bc8cb092a783253217a8fd106e8337c741ee1bb95e3a5f41d5469a9.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:52fdd6dc-a6ed-bb8d-df6e-1728b9a5c5b6",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:7205052e-07f5-7b70-1685-4bf6ab8bf011",
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
  "slug": "hasfinitefpowerseriesonball-mk--df31b5400b6021c49f9d6b2b",
  "source": {
    "blob": "d01c2cbbbb1603fb244f1e2f3c0b6d2455b1946d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 81,
    "line": 69,
    "path": "GRWTSK/Topology/GeneralTopology/CPolynomialDef/Variant3fe894680bc8cb092a783253217a8fd106e8337c741ee1bb95e3a5f41d5469a9.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:df31b5400b6021c49f9d6b2b6cbfe4be1815f22d715cc57d650617fabfaf91a9",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/CPolynomialDef/Variant3fe894680bc8cb092a783253217a8fd106e8337c741ee1bb95e3a5f41d5469a9.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:7205052e-07f5-7b70-1685-4bf6ab8bf011`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 69–81.

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

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/CPolynomialDef/Variant3fe894680bc8cb092a783253217a8fd106e8337c741ee1bb95e3a5f41d5469a9.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/CPolynomialDef/Variant3fe894680bc8cb092a783253217a8fd106e8337c741ee1bb95e3a5f41d5469a9.lean#L69).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d01c2cbbbb1603fb244f1e2f3c0b6d2455b1946d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
