# sum_toClosedBall_le_logCounting

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:3738c675-4af2-c9d1-fb73-832dc1bf0e3a",
  "kind": "theorem",
  "lexical_name": "sum_toClosedBall_le_logCounting",
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
  "slug": "sum-toclosedball-le-logcounting--1fa4d16f4728e75d0cdc2ae6",
  "source": {
    "blob": "8e72d74008844a6a344e67c6f83a260d8362a838",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 361,
    "line": 262,
    "path": "GRWTSK/Analysis/ComplexAnalysis/Basic/Variant9d353add645c55355ff034490f5adfe06c7b7ee1a2bf0bacbde5f329630fe28e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:1fa4d16f4728e75d0cdc2ae63998e96879742777937e006a3c2fcc9dc39bccb5",
  "verification": {
    "reference": "docs/verification/Analysis/ComplexAnalysis/Basic/Variant9d353add645c55355ff034490f5adfe06c7b7ee1a2bf0bacbde5f329630fe28e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:3738c675-4af2-c9d1-fb73-832dc1bf0e3a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 262–361.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem sum_toClosedBall_le_logCounting {D : Function.locallyFinsupp ℂ ℤ} {ρ r : ℝ}
    (hD : 0 ≤ D) (hρ : 1 ≤ ρ) (hρr : ρ < r) :
    (∑ᶠ z, (D.toClosedBall ρ z : ℝ)) * Real.log (r / ρ) ≤ D.logCounting r := by
  have hr₀ : (0 : ℝ) < r := by linarith
  have habsρ : |ρ| = ρ := abs_of_pos (by linarith)
  have habsr : |r| = r := abs_of_pos hr₀
  have hD' : ∀ z, 0 ≤ D z := (by simpa using (le_def.1 hD) ·)
  -- `toClosedBall` inherits nonnegativity
  have hpos {s : ℝ} {z : ℂ} : 0 ≤ D.toClosedBall s z := by
    simpa using le_def.1 (map_nonneg (toClosedBall s) hD) z
  -- The common finite index set
  have hfin : ((D.toClosedBall r).support).Finite :=
    finiteSupport _ (isCompact_closedBall 0 |r|)
  set t : Finset ℂ := insert 0 hfin.toFinset with ht_def
  have hmem {z : ℂ} : D.toClosedBall r z ≠ 0 → z ∈ t :=
    fun hz ↦ Finset.mem_insert_of_mem (hfin.mem_toFinset.2 hz)
  have hmemρ : ∀ z : ℂ, D.toClosedBall ρ z ≠ 0 → z ∈ t := by
    intro z hz
    by_cases h : z ∈ closedBall (0 : ℂ) |ρ|
    · apply hmem
      rw [toClosedBall_eval_within _ (by
        rw [mem_closedBall_zero_iff, habsr]
        exact le_trans (by rwa [mem_closedBall_zero_iff, habsρ] at h) hρr.le)]
      rwa [toClosedBall_eval_within _ h] at hz
    · exact absurd (apply_eq_zero_of_notMem _ h) hz
  -- Rewrite both sides as finite sums over `t`
  have hRHS : D.logCounting r
      = (∑ z ∈ t, (D.toClosedBall r z : ℝ) * Real.log (r * ‖z‖⁻¹)) + (D 0 : ℝ) * Real.log r := by
    simp only [logCounting, AddMonoidHom.coe_mk, ZeroHom.coe_mk]
    congr 1
    apply finsum_eq_sum_of_support_subset
    intro z hz
    simp only [mem_support, ne_eq] at hz
    apply hmem
    intro h
    simp [h] at hz
  rw [finsum_eq_sum_of_support_subset _ (by aesop), hRHS, Finset.sum_mul]
  -- Compare the sums term by term
  have key : ∀ z ∈ t, (D.toClosedBall ρ z : ℝ) * Real.log (r / ρ)
      ≤ (D.toClosedBall r z : ℝ) * Real.log (r * ‖z‖⁻¹)
        + (if z = 0 then (D 0 : ℝ) * Real.log r else 0) := by
    intro z hz
    by_cases hz0 : z = 0
    · subst hz0
      rw [ite_eq_left rfl, toClosedBall_eval_within _ (by simp),
        toClosedBall_eval_within _ (by simp)]
      simp only [norm_zero, inv_zero, mul_zero, log_zero, mul_zero, zero_add]
      apply mul_le_mul_of_nonneg_left _ (by exact_mod_cast hD' 0)
      apply Real.log_le_log (by positivity)
      exact div_le_self hr₀.le hρ
    · rw [ite_eq_right hz0, add_zero]
      by_cases hzρ : z ∈ closedBall (0 : ℂ) |ρ|
      · have hz_norm : ‖z‖ ≤ ρ := by rwa [mem_closedBall_zero_iff, habsρ] at hzρ
        have hz_pos : (0 : ℝ) < ‖z‖ := norm_pos_iff.2 hz0
        have : z ∈ closedBall 0 |r| := by
          rw [mem_closedBall_zero_iff, habsr]
          exact hz_norm.trans hρr.le
        rw [toClosedBall_eval_within _ hzρ, toClosedBall_eval_within _ this]
        apply mul_le_mul_of_nonneg_left _ (by exact_mod_cast hD' z)
        rw [div_eq_mul_inv]
        apply Real.log_le_log (by positivity)
        gcongr
      · rw [locallyFinsuppWithin.apply_eq_zero_of_notMem _ hzρ, Int.cast_zero, zero_mul]
        by_cases hzr : D.toClosedBall r z = 0
        · simp [hzr]
        · apply mul_nonneg (by exact_mod_cast hpos)
          have hz_le : ‖z‖ ≤ r := by
            rw [← mem_closedBall_zero_iff, ← habsr]
            exact toClosedBall_support_subset_closedBall (r := r) D (mem_support.2 hzr)
          apply Real.log_nonneg
          rw [← div_eq_mul_inv, le_div_iff₀ (norm_pos_iff.2 hz0)]
          simpa using hz_le
  calc ∑ z ∈ t, (D.toClosedBall ρ z : ℝ) * Real.log (r / ρ)
      ≤ ∑ z ∈ t, ((D.toClosedBall r z : ℝ) * Real.log (r * ‖z‖⁻¹)
          + (if z = 0 then (D 0 : ℝ) * Real.log r else 0)) := Finset.sum_le_sum key
    _ = (∑ z ∈ t, (D.toClosedBall r z : ℝ) * Real.log (r * ‖z‖⁻¹)) + (D 0 : ℝ) * Real.log r := by
        rw [Finset.sum_add_distrib, Finset.sum_ite_eq' t 0 (fun _ ↦ (D 0 : ℝ) * Real.log r),
          ite_eq_left (Finset.mem_insert_self 0 hfin.toFinset)]

end Function.locallyFinsuppWithin

/-!
## The Logarithmic Counting Function of a Meromorphic Function
-/

namespace ValueDistribution

variable
  {𝕜 : Type*} [NontriviallyNormedField 𝕜] [ProperSpace 𝕜]
  {E : Type*} [NormedAddCommGroup E] [NormedSpace 𝕜 E]
  {f g : 𝕜 → E} {a : WithTop E} {a₀ : E}

variable (f a) in
/--
The logarithmic counting function of a meromorphic function.

If `f : 𝕜 → E` is meromorphic and `a : WithTop E` is any value, this is a logarithmically weighted
measure of the number of times the function `f` takes a given value `a` within the disk `∣z∣ ≤ r`,
taking multiplicities into account.  In the special case where `a = ⊤`, it counts the poles of `f`.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/ComplexAnalysis/Basic/Variant9d353add645c55355ff034490f5adfe06c7b7ee1a2bf0bacbde5f329630fe28e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/ComplexAnalysis/Basic/Variant9d353add645c55355ff034490f5adfe06c7b7ee1a2bf0bacbde5f329630fe28e.lean#L262).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8e72d74008844a6a344e67c6f83a260d8362a838` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
