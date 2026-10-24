# ratio6_bound_xa

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:132900d8-386f-4bc7-bd15-4036591f4328",
  "kind": "lemma",
  "lexical_name": "ratio6_bound_xa",
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
  "slug": "ratio6-bound-xa--aa86f31cfd140300055e58ed",
  "source": {
    "blob": "b6ca87b02f4d071369a6450567252419632f736d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1555,
    "line": 1509,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/SqPiLtE3bf4b1c9656/Variant7ec54b8ea0878c6aaa463fc29aee43c5002268defa78f207c2d5b309afc92259.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:aa86f31cfd140300055e58edf75e3ebe391293400694bfb8ff880e19be8d5024",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/SqPiLtE3bf4b1c9656/Variant7ec54b8ea0878c6aaa463fc29aee43c5002268defa78f207c2d5b309afc92259.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:132900d8-386f-4bc7-bd15-4036591f4328`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1509–1555.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private lemma ratio6_bound_xa (x : ℝ) (hxax : xₐ ≤ x) : xₐ / log xₐ ^ 6 ≤ x / log x ^ 6 := by
  have h2xa : 2 ≤ xₐ := two_le_xₐ
  have hxapos : 0 < xₐ := xₐ_pos
  have hxpos : 0 < x := lt_of_lt_of_le hxapos hxax
  have h1xa : 1 < xₐ := one_lt_xₐ
  have h1x : 1 < x := lt_of_lt_of_le h1xa hxax
  have hlogapos : 0 < log xₐ := log_xₐ_pos
  have hlogpos : 0 < log x := log_pos h1x
  have hlogxa_le : log xₐ ≤ log x := log_le_log hxapos hxax
  have hlogxa_ge12 : 12 ≤ log xₐ := by
    rw [log_xₐ_val]
    norm_num
  have hlogx_ge12 : 12 ≤ log x := le_trans hlogxa_ge12 hlogxa_le
  have hh : log xₐ - 6 * log (log xₐ) ≤ log x - 6 * log (log x) := by
    have hmono6 : MonotoneOn (fun y : ℝ => y - 6 * log y) (Set.Ici 6) := by
      refine monotoneOn_of_deriv_nonneg (convex_Ici 6) ?_ ?_ ?_
      · exact continuousOn_id.sub (continuousOn_const.mul
          (continuousOn_log.mono (by intro y hy; exact ne_of_gt (lt_of_lt_of_le (by norm_num) (Set.mem_Ici.mp hy)))))
      · intro y hy
        rw [interior_Ici] at hy
        refine DifferentiableAt.differentiableWithinAt ?_
        exact ((hasDerivAt_id y).sub
          ((Real.hasDerivAt_log (show y ≠ 0 by linarith [Set.mem_Ioi.mp hy])).const_mul 6)).differentiableAt
      · intro y hy
        rw [interior_Ici] at hy
        have hypos : 0 < y := by linarith [Set.mem_Ioi.mp hy]
        have hderiv : deriv (fun y : ℝ => y - 6 * log y) y = 1 - 6 * y⁻¹ :=
          ((hasDerivAt_id y).sub
            ((Real.hasDerivAt_log (show y ≠ 0 by linarith [hypos])).const_mul 6)).deriv
        rw [hderiv]
        have hyge6 : 6 ≤ y := le_of_lt (Set.mem_Ioi.mp hy)
        have hyinv : 6 * y⁻¹ ≤ 1 := by
          have hdiv : 6 / y ≤ 1 := (div_le_iff₀ hypos).2 (by simpa using hyge6)
          simpa [div_eq_mul_inv] using hdiv
        nlinarith
    have hlogxa_ge6 : 6 ≤ log xₐ := le_trans (by norm_num) hlogxa_ge12
    have hlogx_ge6 : 6 ≤ log x := le_trans (by norm_num) hlogx_ge12
    exact hmono6 (Set.mem_Ici.mpr hlogxa_ge6) (Set.mem_Ici.mpr hlogx_ge6) hlogxa_le
  rw [← log_le_log_iff (by positivity) (by positivity)]
  have hleft : log (xₐ / log xₐ ^ 6) = log xₐ - 6 * log (log xₐ) := by
    rw [log_div hxapos.ne' (pow_ne_zero _ hlogapos.ne'), log_pow]
    ring
  have hright : log (x / log x ^ 6) = log x - 6 * log (log x) := by
    rw [log_div hxpos.ne' (pow_ne_zero _ hlogpos.ne'), log_pow]
    ring
  linarith

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/SqPiLtE3bf4b1c9656/Variant7ec54b8ea0878c6aaa463fc29aee43c5002268defa78f207c2d5b309afc92259.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/SqPiLtE3bf4b1c9656/Variant7ec54b8ea0878c6aaa463fc29aee43c5002268defa78f207c2d5b309afc92259.lean#L1509).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b6ca87b02f4d071369a6450567252419632f736d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
