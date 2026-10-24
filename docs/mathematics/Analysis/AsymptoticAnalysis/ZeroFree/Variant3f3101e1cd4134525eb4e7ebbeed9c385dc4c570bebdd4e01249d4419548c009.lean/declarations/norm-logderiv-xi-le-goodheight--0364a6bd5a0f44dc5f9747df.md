# norm_logDeriv_xi_le_goodHeight

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:6f83b389-8d62-4e0a-46c7-9b59278fc809",
  "kind": "theorem",
  "lexical_name": "norm_logDeriv_xi_le_goodHeight",
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
  "slug": "norm-logderiv-xi-le-goodheight--0364a6bd5a0f44dc5f9747df",
  "source": {
    "blob": "0ae0a2fe106d4d5a5bcb06102dc2f0a602bda9e8",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 657,
    "line": 605,
    "path": "GRWTSK/Analysis/AsymptoticAnalysis/ZeroFree/Variant3f3101e1cd4134525eb4e7ebbeed9c385dc4c570bebdd4e01249d4419548c009.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:0364a6bd5a0f44dc5f9747df20fd975f0ea6762613f02b89b5252de25db8a870",
  "verification": {
    "reference": "docs/verification/Analysis/AsymptoticAnalysis/ZeroFree/Variant3f3101e1cd4134525eb4e7ebbeed9c385dc4c570bebdd4e01249d4419548c009.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:6f83b389-8d62-4e0a-46c7-9b59278fc809`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 605–657.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem norm_logDeriv_xi_le_goodHeight : ∃ C : ℝ, 0 < C ∧ ∀ (L R : ℝ), 1 ≤ L → 1 ≤ R →
    (∀ p : ℂ, (p.im = R ∨ p.im = -R) → 1 / 2 ≤ p.re → p.re ≤ 2 →
      riemannZeta p ≠ 0 ∧ ‖logDeriv riemannZeta p‖ ≤ L) →
    ∀ w : ℂ, (w.im = R ∨ w.im = -R) → -1 / 2 ≤ w.re → w.re ≤ 3 / 2 →
      ‖logDeriv xi w‖ ≤ C * (L + Real.log (2 + R)) := by
  obtain ⟨CΓ, hCΓ, hΓ⟩ := Zeta23.WeilEF.norm_logDeriv_Gammaℝ_le
  refine ⟨CΓ + 3, by positivity, fun L R hL hR hgood => ?_⟩
  -- the right half 1/2 ≤ Re w ≤ 3/2 first
  have aux : ∀ w : ℂ, (w.im = R ∨ w.im = -R) → 1 / 2 ≤ w.re → w.re ≤ 3 / 2 →
      ‖logDeriv xi w‖ ≤ (CΓ + 3) * (L + Real.log (2 + R)) := by
    intro w him h1 h2
    have habs : |w.im| = R := by
      rcases him with h | h
      · rw [h, abs_of_pos (by linarith)]
      · rw [h, abs_neg, abs_of_pos (by linarith)]
    have hw0 : 0 < w.re := by linarith
    have hw1 : w ≠ 1 := fun h => by
      rw [h, Complex.one_im] at habs; rw [← habs] at hR; simp at hR; linarith
    obtain ⟨hζne, hζb⟩ := hgood w him h1 (by linarith)
    rw [logDeriv_xi_eq hw0 hw1 hζne, Lfn]
    have hnorm : R ≤ ‖w‖ := habs ▸ Complex.abs_im_le_norm w
    have hn1 : ‖1 / w‖ ≤ 1 := by
      rw [norm_div, norm_one, div_le_one (by linarith)]; linarith
    have hn2 : ‖1 / (w - 1)‖ ≤ 1 := by
      have : R ≤ ‖w - 1‖ := by
        have := Complex.abs_im_le_norm (w - 1)
        rwa [Complex.sub_im, Complex.one_im, sub_zero, habs] at this
      rw [norm_div, norm_one, div_le_one (by linarith)]; linarith
    have hG : ‖logDeriv Gammaℝ w‖ ≤ CΓ * Real.log (2 + R) := by
      have := hΓ w.re w.im h1 h2
      rwa [Complex.re_add_im, habs] at this
    have hlog0 : 0 ≤ Real.log (2 + R) := Real.log_nonneg (by linarith)
    calc ‖logDeriv Gammaℝ w + 1 / w + 1 / (w - 1) + logDeriv riemannZeta w‖
        ≤ ‖logDeriv Gammaℝ w‖ + ‖1 / w‖ + ‖1 / (w - 1)‖ + ‖logDeriv riemannZeta w‖ := by
          refine (norm_add_le _ _).trans (add_le_add ((norm_add_le _ _).trans
            (add_le_add (norm_add_le _ _) le_rfl)) le_rfl)
      _ ≤ CΓ * Real.log (2 + R) + 1 + 1 + L := by linarith
      _ ≤ (CΓ + 3) * (L + Real.log (2 + R)) := by nlinarith
  intro w him h1 h2
  rcases le_or_gt (1 / 2 : ℝ) w.re with hre | hre
  · exact aux w him hre h2
  · -- reflect: ξ′/ξ(w) = −ξ′/ξ(1 − w)
    have e : logDeriv xi w = -logDeriv xi (1 - w) := by
      rw [← logDeriv_xi_one_sub (1 - w), sub_sub_cancel]
    rw [e, norm_neg]
    apply aux (1 - w)
    · rcases him with h | h
      · right; simp [h]
      · left; simp [h]
    · simp; linarith
    · simp; linarith

/-- lower-left corner of the square contour [1 − R, R] × [−R, R]. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/AsymptoticAnalysis/ZeroFree/Variant3f3101e1cd4134525eb4e7ebbeed9c385dc4c570bebdd4e01249d4419548c009.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/AsymptoticAnalysis/ZeroFree/Variant3f3101e1cd4134525eb4e7ebbeed9c385dc4c570bebdd4e01249d4419548c009.lean#L605).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0ae0a2fe106d4d5a5bcb06102dc2f0a602bda9e8` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
