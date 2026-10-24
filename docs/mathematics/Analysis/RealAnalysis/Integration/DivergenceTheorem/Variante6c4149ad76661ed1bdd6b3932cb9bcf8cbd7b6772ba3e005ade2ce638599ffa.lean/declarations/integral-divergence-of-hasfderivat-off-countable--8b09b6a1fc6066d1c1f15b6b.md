# integral_divergence_of_hasFDerivAt_off_countable

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:f938d684-c8c6-74a7-46f2-22775ce4df1c",
  "kind": "theorem",
  "lexical_name": "integral_divergence_of_hasFDerivAt_off_countable",
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
  "slug": "integral-divergence-of-hasfderivat-off-countable--8b09b6a1fc6066d1c1f15b6b",
  "source": {
    "blob": "69c4d46311e36fe8a25ea9b759d8fefa63035017",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 308,
    "line": 275,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/DivergenceTheorem/Variante6c4149ad76661ed1bdd6b3932cb9bcf8cbd7b6772ba3e005ade2ce638599ffa.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:8b09b6a1fc6066d1c1f15b6bd57e5499efc1d1ae447c248fdeeb649b85577f58",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/DivergenceTheorem/Variante6c4149ad76661ed1bdd6b3932cb9bcf8cbd7b6772ba3e005ade2ce638599ffa.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f938d684-c8c6-74a7-46f2-22775ce4df1c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 275–308.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem integral_divergence_of_hasFDerivAt_off_countable (hle : a ≤ b)
    (f : ℝⁿ⁺¹ → Eⁿ⁺¹) (f' : ℝⁿ⁺¹ → ℝⁿ⁺¹ →L[ℝ] Eⁿ⁺¹)
    (s : Set ℝⁿ⁺¹) (hs : s.Countable) (Hc : ContinuousOn f (Icc a b))
    (Hd : ∀ x ∈ (Set.pi univ fun i => Ioo (a i) (b i)) \ s, HasFDerivAt f (f' x) x)
    (Hi : IntegrableOn (fun x => ∑ i, f' x (e i) i) (Icc a b)) :
    (∫ x in Icc a b, ∑ i, f' x (e i) i) =
      ∑ i : Fin (n + 1),
        ((∫ x in face i, f (frontFace i x) i) - ∫ x in face i, f (backFace i x) i) := by
  rcases em (∃ i, a i = b i) with (⟨i, hi⟩ | hne)
  · -- First we sort out the trivial case `∃ i, a i = b i`.
    rw [volume_pi, ← setIntegral_congr_set Measure.univ_pi_Ioc_ae_eq_Icc]
    have hi' : Ioc (a i) (b i) = ∅ := Ioc_eq_empty hi.not_lt
    have : (pi Set.univ fun j => Ioc (a j) (b j)) = ∅ := univ_pi_eq_empty hi'
    rw [this, setIntegral_empty, sum_eq_zero]
    rintro j -
    rcases eq_or_ne i j with (rfl | hne)
    · simp [hi]
    · rcases Fin.exists_succAbove_eq hne with ⟨i, rfl⟩
      have : Icc (a ∘ j.succAbove) (b ∘ j.succAbove) =ᵐ[volume] (∅ : Set ℝⁿ) := by
        rw [ae_eq_empty, Real.volume_Icc_pi, prod_eq_zero (Finset.mem_univ i)]
        simp [hi]
      rw [setIntegral_congr_set this, setIntegral_congr_set this, setIntegral_empty,
        setIntegral_empty, sub_self]
  · -- In the non-trivial case `∀ i, a i < b i`, we apply a lemma we proved above.
    have hlt : ∀ i, a i < b i := fun i => (hle i).lt_of_ne fun hi => hne ⟨i, hi⟩
    exact integral_divergence_of_hasFDerivAt_off_countable_aux₂ ⟨a, b, hlt⟩ f f' s hs Hc Hd Hi

@[deprecated (since := "2025-05-02")]
alias integral_divergence_of_hasFDerivWithinAt_off_countable :=
  integral_divergence_of_hasFDerivAt_off_countable

/-- **Divergence theorem** for a family of functions `f : Fin (n + 1) → ℝⁿ⁺¹ → E`. See also
`MeasureTheory.integral_divergence_of_hasFDerivWithinAt_off_countable'` for a version formulated
in terms of a vector-valued function `f : ℝⁿ⁺¹ → Eⁿ⁺¹`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/DivergenceTheorem/Variante6c4149ad76661ed1bdd6b3932cb9bcf8cbd7b6772ba3e005ade2ce638599ffa.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/DivergenceTheorem/Variante6c4149ad76661ed1bdd6b3932cb9bcf8cbd7b6772ba3e005ade2ce638599ffa.lean#L275).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `69c4d46311e36fe8a25ea9b759d8fefa63035017` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
