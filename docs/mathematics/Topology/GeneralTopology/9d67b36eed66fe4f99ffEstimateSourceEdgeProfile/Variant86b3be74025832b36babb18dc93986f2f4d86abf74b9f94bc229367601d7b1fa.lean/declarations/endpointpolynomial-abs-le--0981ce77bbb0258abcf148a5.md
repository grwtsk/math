# endpointPolynomial_abs_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:5e479dbd-0d58-cfa8-8fb8-f4062abdaa21",
  "kind": "theorem",
  "lexical_name": "endpointPolynomial_abs_le",
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
  "slug": "endpointpolynomial-abs-le--0981ce77bbb0258abcf148a5",
  "source": {
    "blob": "8407bdecf96f875ff7e00fdf9a6fd59808e3d24e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 106,
    "line": 77,
    "path": "GRWTSK/Topology/GeneralTopology/9d67b36eed66fe4f99ffEstimateSourceEdgeProfile/Variant86b3be74025832b36babb18dc93986f2f4d86abf74b9f94bc229367601d7b1fa.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:0981ce77bbb0258abcf148a5dfc6eb26ce52a527228958906feb2981b0c5a65c",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/9d67b36eed66fe4f99ffEstimateSourceEdgeProfile/Variant86b3be74025832b36babb18dc93986f2f4d86abf74b9f94bc229367601d7b1fa.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:5e479dbd-0d58-cfa8-8fb8-f4062abdaa21`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 77–106.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem endpointPolynomial_abs_le (A r : ℝ) (hA : 1 ≤ A)
    (hr : 0 ≤ r) (hrA : r ≤ 2 * A) :
    |endpointPolynomial A r| ≤ 192*r^2 + 4*r^4 := by
  have hA0 : 0 < A := by linarith
  have hq0 : 0 ≤ r/A := div_nonneg hr hA0.le
  have hq2 : r/A ≤ 2 := (div_le_iff₀ hA0).2 hrA
  have hs : (1-r/A)^2 ≤ 1 := by nlinarith
  have hp : (2-r/A)^2 ≤ 4 := by nlinarith
  have hc : |7*(1-r/A)^2-1| ≤ 6 := by
    rw [abs_le]
    constructor <;> nlinarith [sq_nonneg (1-r/A)]
  have hi : |8*(7*(1-r/A)^2-1) - r^2*(2-r/A)^2/4| ≤ 48+r^2 := by
    calc
      _ ≤ |8*(7*(1-r/A)^2-1)| + |r^2*(2-r/A)^2/4| := abs_sub _ _
      _ = 8*|7*(1-r/A)^2-1| + r^2*(2-r/A)^2/4 := by
        rw [abs_mul, show |(8 : ℝ)| = 8 by norm_num,
          abs_of_nonneg (show 0 ≤ r^2*(2-r/A)^2/4 by positivity)]
      _ ≤ _ := by nlinarith [mul_le_mul_of_nonneg_left hp (sq_nonneg r)]
  unfold endpointPolynomial
  rw [abs_mul, abs_of_nonneg (show 0 ≤ r^2*(2-r/A)^2 by positivity)]
  calc
    _ ≤ r^2*(2-r/A)^2*(48+r^2) := mul_le_mul_of_nonneg_left hi (by positivity)
    _ ≤ 4*r^2*(48+r^2) := by
      exact mul_le_mul_of_nonneg_right
        (by nlinarith [mul_le_mul_of_nonneg_left hp (sq_nonneg r)]) (by positivity)
    _ = _ := by ring

end
end EstimateSourceEdgeProfile
end FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/9d67b36eed66fe4f99ffEstimateSourceEdgeProfile/Variant86b3be74025832b36babb18dc93986f2f4d86abf74b9f94bc229367601d7b1fa.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/9d67b36eed66fe4f99ffEstimateSourceEdgeProfile/Variant86b3be74025832b36babb18dc93986f2f4d86abf74b9f94bc229367601d7b1fa.lean#L77).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8407bdecf96f875ff7e00fdf9a6fd59808e3d24e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
