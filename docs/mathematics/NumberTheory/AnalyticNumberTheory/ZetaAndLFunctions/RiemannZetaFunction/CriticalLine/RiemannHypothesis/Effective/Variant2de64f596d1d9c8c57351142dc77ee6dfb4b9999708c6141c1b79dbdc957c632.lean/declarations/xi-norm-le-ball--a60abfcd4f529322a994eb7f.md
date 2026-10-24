# xi_norm_le_ball

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:acd7cc3f-ea60-61e5-3475-d37177952af6",
  "kind": "theorem",
  "lexical_name": "xi_norm_le_ball",
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
  "slug": "xi-norm-le-ball--a60abfcd4f529322a994eb7f",
  "source": {
    "blob": "8a53c155d9d22710a053a3573734ed409642ac61",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 772,
    "line": 684,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Effective/Variant2de64f596d1d9c8c57351142dc77ee6dfb4b9999708c6141c1b79dbdc957c632.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a60abfcd4f529322a994eb7f0e1324d60be8797676ef0d85228e8d1b3efda24e",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Effective/Variant2de64f596d1d9c8c57351142dc77ee6dfb4b9999708c6141c1b79dbdc957c632.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:acd7cc3f-ea60-61e5-3475-d37177952af6`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 684–772.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem xi_norm_le_ball {s : ℂ} (hs : ‖s - (2:ℂ)‖ ≤ 1992/250) : ‖xi s‖ ≤ 32000 := by
  have hnorm_s : ‖s‖ ≤ 2 + 1992/250 := by
    calc ‖s‖ = ‖(s - 2) + 2‖ := by ring_nf
      _ ≤ ‖s - (2:ℂ)‖ + ‖(2:ℂ)‖ := norm_add_le _ _
      _ ≤ 1992/250 + 2 := by
          have h2 : ‖(2:ℂ)‖ = 2 := by norm_num
          linarith [h2 ▸ le_refl (‖(2:ℂ)‖)]
      _ = 2 + 1992/250 := by ring
  have hre_bounds : -6 ≤ s.re ∧ s.re ≤ 10 := by
    have h := Complex.abs_re_le_norm (s - 2)
    have hre2 : (s - 2).re = s.re - 2 := by simp
    rw [hre2] at h
    have := abs_le.mp (h.trans hs)
    constructor <;> linarith [this.1, this.2]
  rcases le_or_gt (1/2 : ℝ) s.re with hgt | hlt
  · -- right branch
    rcases eq_or_ne s 1 with rfl | hs1
    · -- ξ(1) = 1/2
      have : xi 1 = 1/2 := by
        unfold xi
        norm_num
      rw [this]
      rw [show ‖(1/2 : ℂ)‖ = 1/2 by norm_num]
      norm_num
    · have h := xi_norm_le_right hgt hs1 hre_bounds.2
      have hs1n : ‖s - 1‖ ≤ 1 + 1992/250 := by
        calc ‖s - 1‖ = ‖(s - 2) + 1‖ := by ring_nf
          _ ≤ ‖s - (2:ℂ)‖ + ‖(1:ℂ)‖ := norm_add_le _ _
          _ ≤ 1992/250 + 1 := by
              have h1 : ‖(1:ℂ)‖ = 1 := by norm_num
              linarith [h1 ▸ le_refl (‖(1:ℂ)‖)]
          _ = 1 + 1992/250 := by ring
      have hdiv : ‖s‖ / s.re ≤ (2 + 1992/250) / (1/2) := by
        have h1 : ‖s‖ / s.re ≤ ‖s‖ / (1/2) := by
          gcongr
        refine h1.trans ?_
        gcongr
      refine h.trans ?_
      calc ‖s‖ / 2 * 24 * (‖s - 1‖ * (1/2 + ‖s‖ / s.re) + 1)
          ≤ (2 + 1992/250) / 2 * 24
            * ((1 + 1992/250) * (1/2 + (2 + 1992/250) / (1/2)) + 1) := by
            gcongr <;> first | assumption | positivity
        _ ≤ 32000 := by norm_num
  · -- left branch: reflect through the functional equation
    rcases eq_or_ne s 0 with rfl | hs0
    · rw [← xi_one_sub 0]
      have h1 : (1:ℂ) - 0 = 1 := by norm_num
      rw [h1]
      have : xi 1 = 1/2 := by
        unfold xi
        norm_num
      rw [this, show ‖(1/2 : ℂ)‖ = 1/2 by norm_num]
      norm_num
    · rw [← xi_one_sub s]
      have hwre : (1/2 : ℝ) ≤ (1 - s).re := by
        simp only [Complex.sub_re, Complex.one_re]
        linarith
      have hwre10 : (1 - s).re ≤ 10 := by
        simp only [Complex.sub_re, Complex.one_re]
        linarith [hre_bounds.1]
      have hw1 : (1 : ℂ) - s ≠ 1 := by
        intro h
        exact hs0 (by linear_combination -h)
      have h := xi_norm_le_right hwre hw1 hwre10
      have hns : ‖s‖ ≤ 2 + 1992/250 := hnorm_s
      have hn1s : ‖(1:ℂ) - s‖ ≤ 3 + 1992/250 := by
        calc ‖(1:ℂ) - s‖ ≤ ‖(1:ℂ)‖ + ‖s‖ := norm_sub_le _ _
          _ ≤ 1 + (2 + 1992/250) := by
              have h1 : ‖(1:ℂ)‖ = 1 := by norm_num
              linarith [h1 ▸ le_refl (‖(1:ℂ)‖)]
          _ = 3 + 1992/250 := by ring
      have hmid : ‖(1:ℂ) - s - 1‖ = ‖s‖ := by
        rw [show (1:ℂ) - s - 1 = -s by ring, norm_neg]
      have hdivw : ‖(1:ℂ) - s‖ / (1 - s).re ≤ (3 + 1992/250) / (1/2) := by
        have h1 : ‖(1:ℂ) - s‖ / (1 - s).re ≤ ‖(1:ℂ) - s‖ / (1/2) := by
          gcongr
        refine h1.trans ?_
        gcongr
      refine h.trans ?_
      rw [hmid]
      calc ‖(1:ℂ) - s‖ / 2 * 24 * (‖s‖ * (1/2 + ‖(1:ℂ) - s‖ / (1 - s).re) + 1)
          ≤ (3 + 1992/250) / 2 * 24
            * ((2 + 1992/250) * (1/2 + (3 + 1992/250) / (1/2)) + 1) := by
            gcongr <;> first | assumption | positivity
        _ ≤ 32000 := by norm_num

set_option maxHeartbeats 1600000 in
/-- **E2(ii): the small-box count.**  For |t + 1/2| < 6, N(t, t+1] ≤ 144 (Jensen/Landau disk
for ξ at centre 2, radius 83/10, with the numeric ball bound ‖ξ‖ ≤ 32000 = 62000·‖ξ(2)‖·…). -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Effective/Variant2de64f596d1d9c8c57351142dc77ee6dfb4b9999708c6141c1b79dbdc957c632.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Effective/Variant2de64f596d1d9c8c57351142dc77ee6dfb4b9999708c6141c1b79dbdc957c632.lean#L684).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8a53c155d9d22710a053a3573734ed409642ac61` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
