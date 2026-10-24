# integral_divergence_of_hasFDerivWithinAt_off_countable

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "58ec17365a5e7ed878f9f72700ae7154a0ae6054",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 268,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/9a/9af583c0720a0944dcd4621fd41b716bd0256adf83fae1d696f692217277a69b.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:e2dab6cb-f535-c63d-5d5f-84578dbd645f",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:773760b5-c826-1cbb-5f53-33ffbc692769",
  "kind": "theorem",
  "lexical_name": "integral_divergence_of_hasFDerivWithinAt_off_countable",
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
  "slug": "integral-divergence-of-hasfderivwithinat-off-countable--fb8fd380bb48dca2b12f740c",
  "source": {
    "blob": "58ec17365a5e7ed878f9f72700ae7154a0ae6054",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 300,
    "line": 268,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/DivergenceTheorem/Variant9af583c0720a0944dcd4621fd41b716bd0256adf83fae1d696f692217277a69b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:fb8fd380bb48dca2b12f740c734781b90371d3f05296c09b83713920fae5a4e5",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/DivergenceTheorem/Variant9af583c0720a0944dcd4621fd41b716bd0256adf83fae1d696f692217277a69b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:773760b5-c826-1cbb-5f53-33ffbc692769`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 268–300.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem integral_divergence_of_hasFDerivWithinAt_off_countable (hle : a ≤ b)
    (f : ℝⁿ⁺¹ → Eⁿ⁺¹)
    (f' : ℝⁿ⁺¹ → ℝⁿ⁺¹ →L[ℝ] Eⁿ⁺¹)
    (s : Set ℝⁿ⁺¹) (hs : s.Countable) (Hc : ContinuousOn f (Icc a b))
    (Hd : ∀ x ∈ (Set.pi univ fun i => Ioo (a i) (b i)) \ s, HasFDerivAt f (f' x) x)
    (Hi : IntegrableOn (fun x => ∑ i, f' x (e i) i) (Icc a b)) :
    (∫ x in Icc a b, ∑ i, f' x (e i) i) =
      ∑ i : Fin (n + 1), ((∫ x in face i, f (frontFace i x) i) -
        ∫ x in face i, f (backFace i x) i) := by
  rcases em (∃ i, a i = b i) with (⟨i, hi⟩ | hne)
  · -- First we sort out the trivial case `∃ i, a i = b i`.
    rw [volume_pi, ← set_integral_congr_set_ae Measure.univ_pi_Ioc_ae_eq_Icc]
    have hi' : Ioc (a i) (b i) = ∅ := Ioc_eq_empty hi.not_lt
    have : (pi Set.univ fun j => Ioc (a j) (b j)) = ∅ := univ_pi_eq_empty hi'
    rw [this, integral_empty, sum_eq_zero]
    rintro j -
    rcases eq_or_ne i j with (rfl | hne)
    · simp [hi]
    · rcases Fin.exists_succAbove_eq hne with ⟨i, rfl⟩
      have : Icc (a ∘ j.succAbove) (b ∘ j.succAbove) =ᵐ[volume] (∅ : Set ℝⁿ)
      · rw [ae_eq_empty, Real.volume_Icc_pi, prod_eq_zero (Finset.mem_univ i)]
        simp [hi]
      rw [set_integral_congr_set_ae this, set_integral_congr_set_ae this, integral_empty,
        integral_empty, sub_self]
  · -- In the non-trivial case `∀ i, a i < b i`, we apply a lemma we proved above.
    have hlt : ∀ i, a i < b i := fun i => (hle i).lt_of_ne fun hi => hne ⟨i, hi⟩
    exact integral_divergence_of_hasFDerivWithinAt_off_countable_aux₂ ⟨a, b, hlt⟩ f f' s hs Hc
      Hd Hi
#align measure_theory.integral_divergence_of_has_fderiv_within_at_off_countable MeasureTheory.integral_divergence_of_hasFDerivWithinAt_off_countable

/-- **Divergence theorem** for a family of functions `f : Fin (n + 1) → ℝⁿ⁺¹ → E`. See also
`MeasureTheory.integral_divergence_of_hasFDerivWithinAt_off_countable'` for a version formulated
in terms of a vector-valued function `f : ℝⁿ⁺¹ → Eⁿ⁺¹`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/DivergenceTheorem/Variant9af583c0720a0944dcd4621fd41b716bd0256adf83fae1d696f692217277a69b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/DivergenceTheorem/Variant9af583c0720a0944dcd4621fd41b716bd0256adf83fae1d696f692217277a69b.lean#L268).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `58ec17365a5e7ed878f9f72700ae7154a0ae6054` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
