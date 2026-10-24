# mertens_step

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "dd5cc13ad2b370435d0c41571df10828d325d823",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 140,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/8e/8eda53f464fbd2ebf358761049ca1f696e50bd270a59487ae1e4a42e850bf9c0.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:c62515d5-dc17-bd11-248a-6bf044035638",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:431472fd-01cb-b34c-a071-325be272474a",
  "kind": "theorem",
  "lexical_name": "mertens_step",
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
  "slug": "mertens-step--98cc578f24b29ab3991e41eb",
  "source": {
    "blob": "dd5cc13ad2b370435d0c41571df10828d325d823",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 183,
    "line": 140,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Abel/Variant8eda53f464fbd2ebf358761049ca1f696e50bd270a59487ae1e4a42e850bf9c0.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:98cc578f24b29ab3991e41ebed504991dfbeb7df1f68e8b67b04e8739c5265c6",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Abel/Variant8eda53f464fbd2ebf358761049ca1f696e50bd270a59487ae1e4a42e850bf9c0.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:431472fd-01cb-b34c-a071-325be272474a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 140–183.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem mertens_step {y : ℝ} (hy : 0 ≤ y) {f f' : ℝ → ℝ}
    (hf : ∀ u ∈ Icc 0 y, HasDerivAt f (f' u) u) (hf' : ContinuousOn f' (Icc 0 y)) :
    |(∑ n ∈ Ioc 0 ⌊Real.exp y⌋₊, Λ n / n * f (Real.log n)) - ∫ u in (0:ℝ)..y, f u|
      ≤ KM * (|f y| + ∫ u in (0:ℝ)..y, |f' u|) := by
  set x : ℝ := Real.exp y with hxdef
  have hx : 1 ≤ x := by rw [hxdef]; exact Real.one_le_exp hy
  have huIcc : uIcc 1 x = Icc 1 x := uIcc_of_le hx
  have hpos : ∀ t ∈ Icc (1:ℝ) x, 0 < t := fun t ht => lt_of_lt_of_le one_pos ht.1
  have hmaps : ∀ t ∈ Icc (1:ℝ) x, Real.log t ∈ Icc 0 y := fun t ht =>
    ⟨Real.log_nonneg ht.1, (Real.log_le_iff_le_exp (hpos t ht)).mpr ht.2⟩
  have himg : Real.log '' (uIcc 1 x) ⊆ Icc 0 y := by
    rw [huIcc]; rintro _ ⟨t, ht, rfl⟩; exact hmaps t ht
  have hfc : ContinuousOn f (Icc 0 y) := fun u hu => (hf u hu).continuousAt.continuousWithinAt
  have hlog' : ∀ t ∈ uIcc (1:ℝ) x, HasDerivAt Real.log t⁻¹ t := fun t ht =>
    Real.hasDerivAt_log (hpos t (huIcc ▸ ht)).ne'
  have hinvc : ContinuousOn (fun t : ℝ => t⁻¹) (uIcc 1 x) := by
    rw [huIcc]; exact continuousOn_inv₀.mono fun t ht => (hpos t ht).ne'
  -- g := f ∘ log
  have hg : ∀ t ∈ Icc 1 x, HasDerivAt (fun t => f (Real.log t)) (f' (Real.log t) * t⁻¹) t :=
    fun t ht => (hf _ (hmaps t ht)).comp t (Real.hasDerivAt_log (hpos t ht).ne')
  have hg' : ContinuousOn (fun t => f' (Real.log t) * t⁻¹) (Icc 1 x) := by
    refine ContinuousOn.mul ?_ (huIcc ▸ hinvc)
    exact hf'.comp (fun t ht => (Real.continuousAt_log (hpos t ht).ne').continuousWithinAt) hmaps
  have hmain := abel_mertens_t hx hg hg'
  -- substitute t = e^u in the two integrals
  have hsub1 : ∫ t in (1:ℝ)..x, f (Real.log t) / t = ∫ u in (0:ℝ)..y, f u := by
    have h := intervalIntegral.integral_comp_mul_deriv' hlog' hinvc (hfc.mono himg)
    simp only [Function.comp, Real.log_one, hxdef, Real.log_exp] at h
    rw [← hxdef] at h
    simpa [div_eq_mul_inv] using h
  have hsub2 : ∫ t in (1:ℝ)..x, |f' (Real.log t) * t⁻¹| = ∫ u in (0:ℝ)..y, |f' u| := by
    have h := intervalIntegral.integral_comp_mul_deriv' hlog' hinvc ((hf'.abs).mono himg)
    simp only [Function.comp, Real.log_one, hxdef, Real.log_exp] at h
    rw [← hxdef] at h
    rw [← h]
    refine intervalIntegral.integral_congr fun t ht => ?_
    have ht' : 0 < t := hpos t (huIcc ▸ ht)
    simp only [abs_mul, abs_inv, abs_of_pos ht']
  have hfy : f (Real.log x) = f y := by rw [hxdef, Real.log_exp]
  rw [hsub1, hsub2, hfy] at hmain
  exact hmain

end XiPrime
end Zeta23
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Abel/Variant8eda53f464fbd2ebf358761049ca1f696e50bd270a59487ae1e4a42e850bf9c0.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Abel/Variant8eda53f464fbd2ebf358761049ca1f696e50bd270a59487ae1e4a42e850bf9c0.lean#L140).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `dd5cc13ad2b370435d0c41571df10828d325d823` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
