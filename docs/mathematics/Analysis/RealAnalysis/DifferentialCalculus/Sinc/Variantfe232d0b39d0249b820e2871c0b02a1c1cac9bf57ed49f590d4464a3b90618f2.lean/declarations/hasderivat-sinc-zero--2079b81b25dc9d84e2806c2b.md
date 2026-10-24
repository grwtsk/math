# hasDerivAt_sinc_zero

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:1a052206-af70-40b6-3d97-5f22a99a9161",
  "kind": "theorem",
  "lexical_name": "hasDerivAt_sinc_zero",
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
  "slug": "hasderivat-sinc-zero--2079b81b25dc9d84e2806c2b",
  "source": {
    "blob": "78e8fd84f810480297e8cf6dde76757f78c946e3",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 132,
    "line": 97,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Sinc/Variantfe232d0b39d0249b820e2871c0b02a1c1cac9bf57ed49f590d4464a3b90618f2.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:2079b81b25dc9d84e2806c2b8aeb40f6538d87e9d4359b2fd087062bee97cf68",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/Sinc/Variantfe232d0b39d0249b820e2871c0b02a1c1cac9bf57ed49f590d4464a3b90618f2.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:1a052206-af70-40b6-3d97-5f22a99a9161`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 97–132.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem hasDerivAt_sinc_zero : HasDerivAt sinc 0 0 := by
  rw [hasDerivAt_iff_tendsto_slope]
  -- Need to show: Tendsto (slope sinc 0) (𝓝[≠] 0) (𝓝 0)
  rw [Metric.tendsto_nhdsWithin_nhds]
  intro ε hε
  use min 1 (ε * 4)
  constructor
  · positivity
  intro y hy_ne hy_dist
  simp only [slope, vsub_eq_sub, sinc_zero, smul_eq_mul, dist_eq_norm, sub_zero] at *
  by_cases hy : y = 0
  · exact absurd hy hy_ne
  rw [Real.norm_eq_abs] at hy_dist ⊢
  rw [abs_mul, abs_inv]
  rw [sinc_of_ne_zero hy, div_sub_one hy, abs_div]
  -- Goal: |y|⁻¹ * (|sin y - y| / |y|) < ε
  -- i.e., |sin y - y| / |y|² < ε
  have hy_le_1 : |y| ≤ 1 := (lt_min_iff.mp hy_dist).1.le
  have hy_abs_pos : 0 < |y| := abs_pos.mpr hy
  have hy_sq_pos : 0 < |y| ^ 2 := sq_pos_of_pos hy_abs_pos
  -- |sin y - y| ≤ |y|³/4
  have hbound : |sin y - y| ≤ |y| ^ 3 / 4 := abs_sin_sub_self_le y hy_le_1
  -- |y|⁻¹ * (|sin y - y| / |y|) = |sin y - y| / |y|² ≤ |y|³/4 / |y|² = |y|/4
  calc |y|⁻¹ * (|sin y - y| / |y|)
      = |sin y - y| / |y| ^ 2 := by rw [inv_mul_eq_div, div_div, sq]
    _ ≤ (|y| ^ 3 / 4) / |y| ^ 2 := by
        apply div_le_div_of_nonneg_right hbound
        exact hy_sq_pos.le
    _ = |y| / 4 := by
        have hy_ne : |y| ≠ 0 := ne_of_gt hy_abs_pos
        have hsq : y ^ 2 = |y| ^ 2 := (sq_abs y).symm
        field_simp [hy_ne]
    _ < ε := by
        have h_eps : |y| < ε * 4 := (lt_min_iff.mp hy_dist).2
        linarith

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/Sinc/Variantfe232d0b39d0249b820e2871c0b02a1c1cac9bf57ed49f590d4464a3b90618f2.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Sinc/Variantfe232d0b39d0249b820e2871c0b02a1c1cac9bf57ed49f590d4464a3b90618f2.lean#L97).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `78e8fd84f810480297e8cf6dde76757f78c946e3` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
