# ratio6_bound_xa

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:c3ee71c1-3097-25cd-084f-65f901f98270",
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
  "slug": "ratio6-bound-xa--a4047e830f978ed1fc0c9c81",
  "source": {
    "blob": "1497488f027732033fe8af0a05024403d34b5d20",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1555,
    "line": 1509,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/Ramanujan/Varianta18d14250a1e8aef6688590efa8158696b1db9a13215705c4d3ee5363ac6e7ad.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a4047e830f978ed1fc0c9c81324a5a498549bafbc03c150fbc0b160d018fb8b1",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/Ramanujan/Varianta18d14250a1e8aef6688590efa8158696b1db9a13215705c4d3ee5363ac6e7ad.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c3ee71c1-3097-25cd-084f-65f901f98270`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1509–1555.

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

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/Ramanujan/Varianta18d14250a1e8aef6688590efa8158696b1db9a13215705c4d3ee5363ac6e7ad.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/Ramanujan/Varianta18d14250a1e8aef6688590efa8158696b1db9a13215705c4d3ee5363ac6e7ad.lean#L1509).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1497488f027732033fe8af0a05024403d34b5d20` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
