# exists_quotient

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:070c30c2-b84b-702b-3040-248362d4f30d",
  "kind": "theorem",
  "lexical_name": "exists_quotient",
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
  "slug": "exists-quotient--d9cd9dcde2421b69ade92482",
  "source": {
    "blob": "c645d73e82ae986ce00f2b249ca17dfbe65f93cc",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 121,
    "line": 57,
    "path": "GRWTSK/Analysis/Complex/FiniteLinearRemoval.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d9cd9dcde2421b69ade92482c38bdcb46d37c607eff7a5b0049e1ceabf9ed4e2",
  "verification": {
    "reference": "docs/verification/Analysis/ComplexAnalysis/FiniteLinearRemoval.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:070c30c2-b84b-702b-3040-248362d4f30d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 57–121.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem exists_quotient {ι : Type*} [Fintype ι] (a : ι → ℂ) (m : ι → ℕ)
    (f : ℂ → ℂ) (U : Set ℂ) (hinj : Function.Injective a) (hm : ∀ i, 0 < m i)
    (ha : ∀ i, a i ∈ U) (hf : AnalyticOnNhd ℂ f U)
    (hlocal : ∀ i, ∃ A : ℂ → ℂ, AnalyticAt ℂ A (a i) ∧ A (a i) ≠ 0 ∧
      f =ᶠ[𝓝 (a i)] fun w => (w-a i) ^ m i * A w)
    (hcover : ∀ w ∈ U, f w = 0 → ∃ i, w = a i) :
    ∃ q : ℂ → ℂ, AnalyticOnNhd ℂ q U ∧ (∀ w ∈ U, q w ≠ 0) ∧
      (∀ w ∈ U, f w = q w * product a m w) ∧
      (∀ w ∈ U, (∀ i, w ≠ a i) → q w = f w / product a m w) := by
  classical
  let P := product a m
  let raw : ℂ → ℂ := fun w => f w / P w
  let q : ℂ → ℂ := toMeromorphicNFOn raw U
  have hraw : MeromorphicOn raw U := fun w hw =>
    (hf w hw).meromorphicAt.div (product_analytic a m w).meromorphicAt
  have hgerm (w : ℂ) (hw : w ∈ U) (g : ℂ → ℂ) (hg : AnalyticAt ℂ g w)
      (he : raw =ᶠ[𝓝[≠] w] g) : q =ᶠ[𝓝 w] g := by
    apply ((meromorphicNFOn_toMeromorphicNFOn raw U hw).eventuallyEq_nhdsNE_iff_eventuallyEq_nhds
      hg.meromorphicNFAt).mp
    exact (hraw.toMeromorphicNFOn_eq_self_on_nhdsNE hw).trans he
  have hroot (i : ι) : AnalyticAt ℂ q (a i) ∧ q (a i) ≠ 0 := by
    obtain ⟨A, hA, hA0, he⟩ := hlocal i
    obtain ⟨d, hd, hd0, hPd⟩ := local_product a m hinj i
    have hQ : AnalyticAt ℂ (fun w => A w/d w) (a i) := hA.div hd hd0
    have heq : raw =ᶠ[𝓝[≠] (a i)] (fun w => A w/d w) := by
      filter_upwards [he.filter_mono nhdsWithin_le_nhds, self_mem_nhdsWithin] with w hw hwi
      change f w / product a m w = A w/d w
      rw [hw, hPd w]
      exact mul_div_mul_left (A w) (d w) (pow_ne_zero _ (sub_ne_zero.mpr hwi))
    have hqg := hgerm (a i) (ha i) _ hQ heq
    exact ⟨hQ.congr hqg.symm, hqg.eq_of_nhds.trans_ne (div_ne_zero hA0 hd0)⟩
  have hoff (w : ℂ) (hw : w ∈ U) (hn : ∀ i, w ≠ a i) :
      AnalyticAt ℂ q w ∧ q w = raw w := by
    have hr : AnalyticAt ℂ raw w := (hf w hw).div (product_analytic a m w) (product_nonzero a m hn)
    have he := hgerm w hw raw hr Filter.EventuallyEq.rfl
    exact ⟨hr.congr he.symm, he.eq_of_nhds⟩
  refine ⟨q, ?_, ?_, ?_, ?_⟩
  · intro w hw
    by_cases hr : ∃ i, w = a i
    · obtain ⟨i, rfl⟩ := hr; exact (hroot i).1
    · exact (hoff w hw (by simpa only [not_exists] using hr)).1
  · intro w hw
    by_cases hr : ∃ i, w = a i
    · obtain ⟨i, rfl⟩ := hr; exact (hroot i).2
    · have hn : ∀ i, w ≠ a i := by simpa only [not_exists] using hr
      rw [(hoff w hw hn).2]
      exact div_ne_zero (fun hz => hr (hcover w hw hz)) (product_nonzero a m hn)
  · intro w hw
    by_cases hr : ∃ i, w = a i
    · obtain ⟨i, rfl⟩ := hr
      obtain ⟨A, _, _, he⟩ := hlocal i
      have hf0 : f (a i) = 0 := by
        simpa only [sub_self, zero_pow (Nat.ne_of_gt (hm i)), zero_mul] using he.eq_of_nhds
      have hP0 : product a m (a i) = 0 := by
        apply Finset.prod_eq_zero (Finset.mem_univ i)
        simp [Nat.ne_of_gt (hm i)]
      rw [hf0, hP0, mul_zero]
    · have hn : ∀ i, w ≠ a i := by simpa only [not_exists] using hr
      rw [(hoff w hw hn).2]
      exact (div_mul_cancel₀ _ (product_nonzero a m hn)).symm
  · intro w hw hn
    exact (hoff w hw hn).2

end
end GRWTSK.Analysis.Complex.FiniteLinearRemoval
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Analysis/ComplexAnalysis/FiniteLinearRemoval.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/Complex/FiniteLinearRemoval.lean#L57).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c645d73e82ae986ce00f2b249ca17dfbe65f93cc` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
