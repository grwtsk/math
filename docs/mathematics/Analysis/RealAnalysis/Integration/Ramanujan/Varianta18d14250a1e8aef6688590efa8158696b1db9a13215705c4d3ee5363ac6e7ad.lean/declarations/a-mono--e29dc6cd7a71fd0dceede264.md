# a_mono

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:0756a519-6ddf-15c2-7417-8dcab02e13cf",
  "kind": "theorem",
  "lexical_name": "a_mono",
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
  "slug": "a-mono--e29dc6cd7a71fd0dceede264",
  "source": {
    "blob": "1497488f027732033fe8af0a05024403d34b5d20",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 955,
    "line": 919,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/Ramanujan/Varianta18d14250a1e8aef6688590efa8158696b1db9a13215705c4d3ee5363ac6e7ad.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e29dc6cd7a71fd0dceede2647cf3f2f368bd374a2019b3b3493cc6c8e2f191b2",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/Ramanujan/Varianta18d14250a1e8aef6688590efa8158696b1db9a13215705c4d3ee5363ac6e7ad.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:0756a519-6ddf-15c2-7417-8dcab02e13cf`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 919–955.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem a_mono : AntitoneOn a (Set.Ici xₐ) := by
  intro x hx y hy hxy
  simp only [Set.mem_Ici] at hx hy
  have hxa3 : xₐ ≥ exp 3000 := by
    unfold xₐ
    exact exp_le_exp.mpr (by norm_num)
  have hx3 := le_trans hxa3 hx; have hy3 := le_trans hxa3 hy
  have neg : ∀ z ≥ exp 3000, ∀ lo hi : ℝ, hi ≤ exp 3000 → ¬(z ∈ Set.Ico lo hi) :=
    fun z hz _ _ hhi h ↦ absurd (Set.mem_Ico.mp h).2 (not_lt.mpr (le_trans hhi hz))
  have h599 : (599 : ℝ) ≤ exp 3000 := by linarith [add_one_le_exp (3000 : ℝ)]
  have h58 := exp_le_exp.mpr (show (58 : ℝ) ≤ 3000 by norm_num)
  have h1169 := exp_le_exp.mpr (show (1169 : ℝ) ≤ 3000 by norm_num)
  have h2000 := exp_le_exp.mpr (show (2000 : ℝ) ≤ 3000 by norm_num)
  have ha_eq : ∀ z ≥ exp 3000, a z = admissible_bound (379.7 * 5.573412 ^ 5) 6.52 1.89 5.573412 z := by
    intro z hz
    have hlog : 0 < log z := log_pos (by linarith [add_one_le_exp (3000 : ℝ)])
    have hdiv : 0 < log z / 5.573412 := by positivity
    unfold a admissible_bound
    simp only [neg z hz _ _ h599, neg z hz _ _ h58, neg z hz _ _ h1169,
      neg z hz _ _ h2000, neg z hz _ _ le_rfl, ite_false, sqrt_eq_rpow]
    have h_pow : (log z) ^ (5 : ℕ) = 5.573412 ^ (5 : ℕ) * (log z / 5.573412) ^ (5 : ℕ) := by
      rw [show log z = 5.573412 * (log z / 5.573412) from by field_simp]; ring
    have h_rpow : (log z / 5.573412) ^ (5 : ℕ) * (log z / 5.573412) ^ (1.52 : ℝ) =
        (log z / 5.573412) ^ (6.52 : ℝ) := by
      rw [← rpow_natCast (log z / 5.573412) 5, ← rpow_add hdiv]; push_cast; norm_num
    rw [h_pow]
    conv_lhs =>
      rw [show ∀ (a b c d e : ℝ), a * b * (c * d * e) = c * a * (b * d) * e from by intros; ring]
    rw [h_rpow]
  change a y ≤ a x
  rw [ha_eq x hx3, ha_eq y hy3]
  exact admissible_bound.mono _ _ _ _ (by positivity) (by positivity) (by positivity) (by positivity)
    (Set.mem_Ici.mpr (le_trans (show exp (5.573412 * (2 * 6.52 / 1.89) ^ 2) ≤ xₐ from by
      unfold xₐ; exact exp_le_exp.mpr (by norm_num)) hx))
    (Set.mem_Ici.mpr (le_trans (show exp (5.573412 * (2 * 6.52 / 1.89) ^ 2) ≤ xₐ from by
      unfold xₐ; exact exp_le_exp.mpr (by norm_num)) hy)) hxy

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/Ramanujan/Varianta18d14250a1e8aef6688590efa8158696b1db9a13215705c4d3ee5363ac6e7ad.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/Ramanujan/Varianta18d14250a1e8aef6688590efa8158696b1db9a13215705c4d3ee5363ac6e7ad.lean#L919).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1497488f027732033fe8af0a05024403d34b5d20` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
