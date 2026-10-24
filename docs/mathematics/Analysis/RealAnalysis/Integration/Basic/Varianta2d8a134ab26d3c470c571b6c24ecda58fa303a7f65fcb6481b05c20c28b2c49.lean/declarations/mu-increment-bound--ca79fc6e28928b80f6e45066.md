# mu_increment_bound

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:439b356c-27e0-1613-cd39-523585c6119f",
  "kind": "lemma",
  "lexical_name": "mu_increment_bound",
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
  "slug": "mu-increment-bound--ca79fc6e28928b80f6e45066",
  "source": {
    "blob": "7f5598539f46f75f1cb8a084bcef17c567c1e3c8",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1088,
    "line": 1043,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/Basic/Varianta2d8a134ab26d3c470c571b6c24ecda58fa303a7f65fcb6481b05c20c28b2c49.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ca79fc6e28928b80f6e45066d2f3648cf30ea34a06af83483bcceb425f3f266e",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/Basic/Varianta2d8a134ab26d3c470c571b6c24ecda58fa303a7f65fcb6481b05c20c28b2c49.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:439b356c-27e0-1613-cd39-523585c6119f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1043–1088.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma mu_increment_bound (hΓ : Zeta23.GammaFacts) :
    ∃ K : ℝ, 0 ≤ K ∧ ∀ t : ℝ, 2 ≤ t → ∀ r : ℝ,
      |Zeta23.mu (t + r) - Zeta23.mu t| ≤ (K * |r| + 10 * r ^ 2) / t := by
  obtain ⟨C₁, hC₁⟩ := hΓ.deriv_bound
  obtain ⟨M, hM0, hM⟩ := mu_linear_bound hΓ
  refine ⟨max (2 * |C₁|) (4 * M), le_max_of_le_right (by positivity), fun t ht r => ?_⟩
  have ht0 : 0 < t := by linarith
  rw [le_div_iff₀ ht0]
  rcases le_or_gt |r| (t / 2) with hr | hr
  · -- mean value theorem on [t/2, 3t/2]
    have hmvt : ‖Zeta23.mu (t + r) - Zeta23.mu t‖ ≤ (2 * |C₁| / t) * ‖(t + r) - t‖ := by
      apply Convex.norm_image_sub_le_of_norm_deriv_le (s := Set.Icc (t / 2) (3 * t / 2))
      · intro x _; exact hΓ.smooth.contDiffAt.differentiableAt (by simp)
      · intro x hx
        have hx1 : 1 ≤ |x| := by rw [abs_of_pos (by linarith [hx.1])]; linarith [hx.1]
        calc ‖deriv Zeta23.mu x‖ = |deriv Zeta23.mu x| := Real.norm_eq_abs _
          _ ≤ C₁ / |x| := hC₁ x hx1
          _ ≤ |C₁| / |x| := by gcongr; exact le_abs_self _
          _ ≤ |C₁| / (t / 2) := by
              apply div_le_div_of_nonneg_left (abs_nonneg _) (by linarith)
              rw [abs_of_pos (by linarith [hx.1])]; exact hx.1
          _ = 2 * |C₁| / t := by field_simp
      · exact convex_Icc _ _
      · constructor <;> linarith
      · constructor <;> linarith [le_abs_self r, neg_abs_le r]
    simp only [add_sub_cancel_left, Real.norm_eq_abs] at hmvt
    calc |Zeta23.mu (t + r) - Zeta23.mu t| * t ≤ (2 * |C₁| / t * |r|) * t := by gcongr
      _ = 2 * |C₁| * |r| := by field_simp
      _ ≤ max (2 * |C₁|) (4 * M) * |r| + 10 * r ^ 2 := by
          nlinarith [le_max_left (2 * |C₁|) (4 * M), abs_nonneg r, sq_nonneg r]
  · -- |r| > t/2: crude bound, absorbed using t < 2|r|
    have h1 : |Zeta23.mu (t + r) - Zeta23.mu t| ≤ 2 * M + 5 * |r| := by
      calc |Zeta23.mu (t + r) - Zeta23.mu t| ≤ |Zeta23.mu (t + r)| + |Zeta23.mu t| := abs_sub _ _
        _ ≤ (M + |t + r|) + (M + |t|) := add_le_add (hM _) (hM _)
        _ ≤ (M + (|t| + |r|)) + (M + |t|) := by linarith [abs_add_le t r]
        _ = 2 * M + 2 * |t| + |r| := by ring
        _ ≤ 2 * M + 5 * |r| := by rw [abs_of_pos ht0]; linarith
    calc |Zeta23.mu (t + r) - Zeta23.mu t| * t ≤ (2 * M + 5 * |r|) * t := by gcongr
      _ ≤ (2 * M + 5 * |r|) * (2 * |r|) := by gcongr; linarith
      _ = 4 * M * |r| + 10 * |r| ^ 2 := by ring
      _ = 4 * M * |r| + 10 * r ^ 2 := by rw [sq_abs]
      _ ≤ max (2 * |C₁|) (4 * M) * |r| + 10 * r ^ 2 := by
          nlinarith [le_max_right (2 * |C₁|) (4 * M), abs_nonneg r]

/-- [eq:PiPfacts] shifted (§5.2: `|Π_X(τ)| ≤ 6√X/T for |τ−τ_k| ≤ T/2`, and the tail absorbed via
`(2|r|/t)² > 1`): for `t ≥ 2` and all `r`, `|Π_X(t+r)| ≤ 6√X/t + 12√X r²/t²`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/Basic/Varianta2d8a134ab26d3c470c571b6c24ecda58fa303a7f65fcb6481b05c20c28b2c49.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/Basic/Varianta2d8a134ab26d3c470c571b6c24ecda58fa303a7f65fcb6481b05c20c28b2c49.lean#L1043).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7f5598539f46f75f1cb8a084bcef17c567c1e3c8` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
