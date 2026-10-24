# smooth_nonpositive_pairing_unbounded

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:4604a0eb-3131-5908-7144-02d3c45dc03b",
  "kind": "theorem",
  "lexical_name": "smooth_nonpositive_pairing_unbounded",
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
  "slug": "smooth-nonpositive-pairing-unbounded--ab7315919548dff5849b011c",
  "source": {
    "blob": "265bb8962661722f7787df6b119db52308f0894b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 92,
    "line": 42,
    "path": "GRWTSK/Analysis/NegativeAbelKernel/Variante7af4a6070d9a331ecc43c8d33ab01d313fb334cf3c301d22a24c7de2ddd0aba.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ab7315919548dff5849b011ca9d6a4fad1e0462f5b5d8c3650b63589111503d9",
  "verification": {
    "reference": "docs/verification/Analysis/NegativeAbelKernel/Variante7af4a6070d9a331ecc43c8d33ab01d313fb334cf3c301d22a24c7de2ddd0aba.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:4604a0eb-3131-5908-7144-02d3c45dc03b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 42–92.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem smooth_nonpositive_pairing_unbounded {K : ℝ → ℝ} (hK : Continuous K)
    (hK0 : K 0 < 0) (Q : ℝ) :
    ∃ F : ℝ → ℝ, ContDiff ℝ (↑(⊤ : ℕ∞)) F ∧ HasCompactSupport F ∧ (∀ x, F x ≤ 0) ∧
      Integrable (fun x ↦ F x * K x) ∧ Q < ∫ x, F x * K x := by
  have hevent : ∀ᶠ x in 𝓝 (0 : ℝ), K x < 0 := hK.continuousAt.eventually_lt_const hK0
  obtain ⟨r, hr, hlocal⟩ := Metric.eventually_nhds_iff.mp hevent
  let phi : ContDiffBump (0 : ℝ) :=
    ⟨r / 2, r, by linarith, by linarith⟩
  have hphi0 : phi 0 = 1 := phi.one_of_mem_closedBall (by
    simp only [Metric.mem_closedBall, dist_self]
    exact phi.rIn_pos.le)
  have hn : ∀ x, 0 ≤ phi x * (-K x) := by
    intro x
    by_cases hx : phi x = 0
    · rw [hx, zero_mul]
    · have hxball : x ∈ Metric.ball (0 : ℝ) r := by
        have hs : x ∈ Function.support phi := hx
        rw [phi.support_eq] at hs
        exact hs
      exact mul_nonneg phi.nonneg (neg_nonneg.mpr (hlocal (Metric.mem_ball.mp hxball)).le)
  have hc : Continuous (fun x ↦ phi x * (-K x)) :=
    (phi.contDiff (n := 0)).continuous.mul hK.neg
  have hs : HasCompactSupport (fun x ↦ phi x * (-K x)) := phi.hasCompactSupport.mul_right
  have hJ : 0 < ∫ x, phi x * (-K x) :=
    hc.integral_pos_of_hasCompactSupport_nonneg_nonzero hs hn (by
      rw [hphi0, one_mul]
      exact (neg_pos.mpr hK0).ne')
  let J : ℝ := ∫ x, phi x * (-K x)
  let c : ℝ := (|Q| + 1) / J
  have hc0 : 0 < c := div_pos (by positivity) hJ
  let F : ℝ → ℝ := fun x ↦ -c * phi x
  have hFs : HasCompactSupport F := phi.hasCompactSupport.mul_left
  have hFc : ContDiff ℝ (↑(⊤ : ℕ∞)) F :=
    (contDiff_const : ContDiff ℝ (↑(⊤ : ℕ∞)) (fun _ : ℝ ↦ -c)).mul (phi.contDiff (n := ⊤))
  have hFi : Integrable (fun x ↦ F x * K x) :=
    (hFc.continuous.mul hK).integrable_of_hasCompactSupport hFs.mul_right
  have hvalue : (∫ x, F x * K x) = |Q| + 1 := by
    have heq : (fun x ↦ F x * K x) = fun x ↦ c * (phi x * (-K x)) := by
      funext x
      dsimp [F]
      ring
    rw [heq, integral_const_mul]
    change c * J = |Q| + 1
    dsimp [c]
    exact div_mul_cancel₀ _ hJ.ne'
  refine ⟨F, hFc, hFs, ?_, hFi, ?_⟩
  · intro x
    exact mul_nonpos_of_nonpos_of_nonneg (neg_nonpos.mpr hc0.le) phi.nonneg
  · rw [hvalue]
    exact (le_abs_self Q).trans_lt (lt_add_one _)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Analysis/NegativeAbelKernel/Variante7af4a6070d9a331ecc43c8d33ab01d313fb334cf3c301d22a24c7de2ddd0aba.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/NegativeAbelKernel/Variante7af4a6070d9a331ecc43c8d33ab01d313fb334cf3c301d22a24c7de2ddd0aba.lean#L42).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `265bb8962661722f7787df6b119db52308f0894b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
