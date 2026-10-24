# exists_removed_quotient

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:24ab4fd4-591a-a6f2-d0b3-8ddf6de29806",
  "kind": "theorem",
  "lexical_name": "exists_removed_quotient",
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
  "slug": "exists-removed-quotient--b3828aca09a5fbf8ee7074bd",
  "source": {
    "blob": "f2c4e83c3ba6f77c85034e3e7e570411827cccdb",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 201,
    "line": 122,
    "path": "GRWTSK/Analysis/Complex/FiniteBlaschkeRemoval.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b3828aca09a5fbf8ee7074bd224f639cb70c82bb8bef02e798e08bf262102ec0",
  "verification": {
    "reference": "docs/verification/Analysis/ComplexAnalysis/FiniteBlaschkeRemoval.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:24ab4fd4-591a-a6f2-d0b3-8ddf6de29806`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 122–201.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem exists_removed_quotient {ι : Type*} (S : Finset ι) (a : ι → ℂ) (m : ι → ℕ)
    (f : ℂ → ℂ) (ha : ∀ i ∈ S, ‖a i‖ ≤ 11 / 4)
    (hinj : Set.InjOn a (S : Set ι)) (hm : ∀ i ∈ S, 0 < m i)
    (hf : AnalyticOnNhd ℂ f (closedBall 0 (3 : ℝ)))
    (hlocal : ∀ i ∈ S, ∃ A : ℂ → ℂ, AnalyticAt ℂ A (a i) ∧ A (a i) ≠ 0 ∧
      f =ᶠ[𝓝 (a i)] fun w => (w - a i) ^ m i * A w)
    (hcover : ∀ w ∈ ball 0 (11 / 4 : ℝ), f w = 0 → ∃ i ∈ S, w = a i) :
    ∃ g : ℂ → ℂ, AnalyticOnNhd ℂ g (closedBall 0 (3 : ℝ)) ∧
      (∀ w ∈ ball 0 (11 / 4 : ℝ), g w ≠ 0) ∧
      (∀ w ∈ closedBall 0 (3 : ℝ), f w = g w * ∏ i ∈ S, (factor 3 (a i) w) ^ m i) ∧
      (∀ w ∈ closedBall 0 (3 : ℝ), (∀ i ∈ S, w ≠ a i) →
        g w = f w / (∏ i ∈ S, (factor 3 (a i) w) ^ m i)) := by
  classical
  let U : Set ℂ := closedBall 0 (3 : ℝ)
  let P : ℂ → ℂ := fun w => ∏ i ∈ S, (factor 3 (a i) w) ^ m i
  let F : ℂ → ℂ := fun w => f w / P w
  let g : ℂ → ℂ := toMeromorphicNFOn F U
  have hw_norm (w : ℂ) (hw : w ∈ U) : ‖w‖ ≤ 3 := by
    simpa only [U, Metric.mem_closedBall, dist_zero_right] using hw
  have hP (w : ℂ) (hw : w ∈ U) : AnalyticAt ℂ P w :=
    analyticAt_product S a m ha w (hw_norm w hw)
  have hF : MeromorphicOn F U := fun w hw =>
    (hf w hw).meromorphicAt.div (hP w hw).meromorphicAt
  have hroot (i : ι) (hi : i ∈ S) : AnalyticAt ℂ g (a i) ∧ g (a i) ≠ 0 := by
    obtain ⟨A, hA, hA0, he⟩ := hlocal i hi
    obtain ⟨d, hd, hd0, hPd⟩ := product_local_factorization S a m ha hinj i hi
    obtain ⟨hQ, hQ0, hQeq⟩ := quotient_germ_of_matching_power f P A d (a i) (m i)
      hA hA0 hd hd0 he hPd
    have hai : a i ∈ U := by
      change a i ∈ closedBall (0 : ℂ) (3 : ℝ)
      rw [Metric.mem_closedBall, dist_zero_right]
      linarith [ha i hi]
    have hgerm := normalForm_germ F (fun w => A w / d w) U (a i) hF hai hQ hQeq
    exact ⟨hQ.congr hgerm.symm, hgerm.eq_of_nhds.trans_ne hQ0⟩
  have hoff (w : ℂ) (hw : w ∈ U) (hne : ∀ i ∈ S, w ≠ a i) :
      AnalyticAt ℂ g w ∧ g w = f w / P w := by
    have hPn := product_ne_zero_off_roots S a m ha w (hw_norm w hw) hne
    have hraw : AnalyticAt ℂ F w := (hf w hw).div (hP w hw) hPn
    have he := normalForm_germ F F U w hF hw hraw Filter.EventuallyEq.rfl
    exact ⟨hraw.congr he.symm, he.eq_of_nhds⟩
  have hg : AnalyticOnNhd ℂ g U := by
    intro w hw
    by_cases hr : ∃ i ∈ S, w = a i
    · obtain ⟨i, hi, rfl⟩ := hr
      exact (hroot i hi).1
    · exact (hoff w hw (by simpa only [not_exists, not_and] using hr)).1
  refine ⟨g, hg, ?_, ?_, ?_⟩
  · intro w hw
    have hwU : w ∈ U := by
      change w ∈ closedBall (0 : ℂ) (3 : ℝ)
      rw [Metric.mem_closedBall, dist_zero_right]
      have hn : ‖w‖ < 11 / 4 := by simpa only [Metric.mem_ball, dist_zero_right] using hw
      linarith
    by_cases hr : ∃ i ∈ S, w = a i
    · obtain ⟨i, hi, rfl⟩ := hr
      exact (hroot i hi).2
    · have hn : ∀ i ∈ S, w ≠ a i := by simpa only [not_exists, not_and] using hr
      rw [(hoff w hwU hn).2]
      exact div_ne_zero (fun he => hr (hcover w hw he))
        (product_ne_zero_off_roots S a m ha w (hw_norm w hwU) hn)
  · intro w hw
    by_cases hr : ∃ i ∈ S, w = a i
    · obtain ⟨i, hi, rfl⟩ := hr
      obtain ⟨A, _hA, _hA0, he⟩ := hlocal i hi
      have hzero : f (a i) = 0 := by
        simpa only [sub_self, zero_pow (Nat.ne_of_gt (hm i hi)), zero_mul] using he.eq_of_nhds
      have hPzero : P (a i) = 0 := by
        apply Finset.prod_eq_zero hi
        simp [factor, Nat.ne_of_gt (hm i hi)]
      change f (a i) = g (a i) * P (a i)
      rw [hzero, hPzero, mul_zero]
    · have hn : ∀ i ∈ S, w ≠ a i := by simpa only [not_exists, not_and] using hr
      change f w = g w * P w
      rw [(hoff w hw hn).2, div_mul_cancel₀ _
        (product_ne_zero_off_roots S a m ha w (hw_norm w hw) hn)]
  · intro w hw hn
    exact (hoff w hw hn).2

end
end GRWTSK.Analysis.Complex.FiniteBlaschkeRemoval
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Analysis/ComplexAnalysis/FiniteBlaschkeRemoval.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/Complex/FiniteBlaschkeRemoval.lean#L122).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f2c4e83c3ba6f77c85034e3e7e570411827cccdb` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
