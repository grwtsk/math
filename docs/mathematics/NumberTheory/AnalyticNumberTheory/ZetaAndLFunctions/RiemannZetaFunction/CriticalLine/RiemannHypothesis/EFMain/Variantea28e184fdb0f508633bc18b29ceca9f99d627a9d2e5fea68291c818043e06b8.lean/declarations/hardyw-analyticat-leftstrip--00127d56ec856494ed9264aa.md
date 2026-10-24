# hardyW_analyticAt_leftStrip

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:ec2265be-6200-c3ac-6918-7052d020722d",
  "kind": "lemma",
  "lexical_name": "hardyW_analyticAt_leftStrip",
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
  "slug": "hardyw-analyticat-leftstrip--00127d56ec856494ed9264aa",
  "source": {
    "blob": "c57fe5609c1aaa5a3bc3b3ed696432c9c6ecc7f2",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 110,
    "line": 72,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/EFMain/Variantea28e184fdb0f508633bc18b29ceca9f99d627a9d2e5fea68291c818043e06b8.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:00127d56ec856494ed9264aa852415d6f288c1b312abe0feee3f74ce577a09a2",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/EFMain/Variantea28e184fdb0f508633bc18b29ceca9f99d627a9d2e5fea68291c818043e06b8.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ec2265be-6200-c3ac-6918-7052d020722d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 72–110.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma hardyW_analyticAt_leftStrip {s : ℂ} (h1 : -1/2 < s.re) (h2 : s.re < 0) : AnalyticAt ℂ hardyW s := by
  have hne1 : s ≠ 1 := fun h => by rw [h] at h2; simp at h2; linarith
  have hA : ∀ m : ℕ, s / 2 ≠ -(m:ℂ) := by
    intro m h; have := congrArg Complex.re h; simp at this
    rcases Nat.eq_zero_or_pos m with rfl | hm
    · simp at this; linarith
    · have : (1:ℝ) ≤ m := by exact_mod_cast hm
      linarith
  have hB : ∀ m : ℕ, (1 - s) / 2 ≠ -(m:ℂ) := by
    intro m h; have := congrArg Complex.re h; simp at this
    have : (0:ℝ) ≤ m := Nat.cast_nonneg m; linarith
  have hopenL : IsOpen {z : ℂ | -1/2 < z.re ∧ z.re < 0} :=
    (isOpen_lt continuous_const Complex.continuous_re).inter (isOpen_lt Complex.continuous_re continuous_const)
  have hG : AnalyticAt ℂ Gammaℝ s := by
    refine Complex.analyticAt_iff_eventually_differentiableAt.mpr ?_
    filter_upwards [hopenL.mem_nhds (show s ∈ {z : ℂ | -1/2 < z.re ∧ z.re < 0} from ⟨h1, h2⟩)] with z hz
    refine differentiableAt_Gammaℝ_of_ne fun m h => ?_
    have := congrArg Complex.re h; simp at this
    rcases Nat.eq_zero_or_pos m with rfl | hm
    · simp at this; linarith [hz.2]
    · have : (1:ℝ) ≤ m := by exact_mod_cast hm
      linarith [hz.1]
  have hG1 : AnalyticAt ℂ (fun z => Gammaℝ (1 - z)) s := by
    have h : AnalyticAt ℂ Gammaℝ (1 - s) :=
      Zeta23.WeilEF.analyticAt_Gammaℝ (by simp; linarith)
    exact h.comp (analyticAt_const.sub analyticAt_id)
  have hχ : AnalyticAt ℂ chiFE s := by
    have : chiFE = fun z => Gammaℝ (1 - z) / Gammaℝ z := funext chiFE_def
    rw [this]; exact hG1.div hG (Gammaℝ_ne_zero_of_ne hA)
  have hχ0 : chiFE s ≠ 0 := div_ne_zero (Gammaℝ_ne_zero_of_ne hB) (Gammaℝ_ne_zero_of_ne hA)
  have hL2 : AnalyticAt ℂ L2 s := by
    have e : L2 = fun z => -(1/2) * (deriv chiFE z / chiFE z) := by funext z; rw [L2, logDeriv_apply]
    rw [e]; exact analyticAt_const.mul (hχ.deriv.div hχ hχ0)
  have e : hardyW = fun z => deriv riemannZeta z + L2 z * riemannZeta z := funext fun z => rfl
  rw [e]
  exact (analyticAt_deriv_riemannZeta hne1).add (hL2.mul (Hardy.analyticAt_riemannZeta hne1))

/-- **W(s) = −χ(s) W(1−s) at every point of the strip 1 < Re s < 3/2, real points included**
(Hardy.hardyW_eq_neg_chiFE_mul off ℝ, extended by continuity). -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/EFMain/Variantea28e184fdb0f508633bc18b29ceca9f99d627a9d2e5fea68291c818043e06b8.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/EFMain/Variantea28e184fdb0f508633bc18b29ceca9f99d627a9d2e5fea68291c818043e06b8.lean#L72).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c57fe5609c1aaa5a3bc3b3ed696432c9c6ecc7f2` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
