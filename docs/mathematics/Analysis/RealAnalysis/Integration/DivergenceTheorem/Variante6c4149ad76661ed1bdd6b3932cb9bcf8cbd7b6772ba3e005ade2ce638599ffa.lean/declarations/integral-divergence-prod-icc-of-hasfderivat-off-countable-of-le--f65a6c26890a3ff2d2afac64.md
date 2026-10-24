# integral_divergence_prod_Icc_of_hasFDerivAt_off_countable_of_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:04bab5d2-136e-8dd3-1a9b-8f319d3f1501",
  "kind": "theorem",
  "lexical_name": "integral_divergence_prod_Icc_of_hasFDerivAt_off_countable_of_le",
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
  "slug": "integral-divergence-prod-icc-of-hasfderivat-off-countable-of-le--f65a6c26890a3ff2d2afac64",
  "source": {
    "blob": "69c4d46311e36fe8a25ea9b759d8fefa63035017",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 511,
    "line": 458,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/DivergenceTheorem/Variante6c4149ad76661ed1bdd6b3932cb9bcf8cbd7b6772ba3e005ade2ce638599ffa.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f65a6c26890a3ff2d2afac64edf9172f8e1b2623b5b213834e2ab830ab8fa820",
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

Occurrence: `result:04bab5d2-136e-8dd3-1a9b-8f319d3f1501`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 458–511.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem integral_divergence_prod_Icc_of_hasFDerivAt_off_countable_of_le (f g : ℝ × ℝ → E)
    (f' g' : ℝ × ℝ → ℝ × ℝ →L[ℝ] E) (a b : ℝ × ℝ) (hle : a ≤ b) (s : Set (ℝ × ℝ)) (hs : s.Countable)
    (Hcf : ContinuousOn f (Icc a b)) (Hcg : ContinuousOn g (Icc a b))
    (Hdf : ∀ x ∈ Ioo a.1 b.1 ×ˢ Ioo a.2 b.2 \ s, HasFDerivAt f (f' x) x)
    (Hdg : ∀ x ∈ Ioo a.1 b.1 ×ˢ Ioo a.2 b.2 \ s, HasFDerivAt g (g' x) x)
    (Hi : IntegrableOn (fun x => f' x (1, 0) + g' x (0, 1)) (Icc a b)) :
    (∫ x in Icc a b, f' x (1, 0) + g' x (0, 1)) =
      (((∫ x in a.1..b.1, g (x, b.2)) - ∫ x in a.1..b.1, g (x, a.2)) +
          ∫ y in a.2..b.2, f (b.1, y)) -
        ∫ y in a.2..b.2, f (a.1, y) :=
  let e : (ℝ × ℝ) ≃L[ℝ] ℝ² := (ContinuousLinearEquiv.finTwoArrow ℝ ℝ).symm
  calc
    (∫ x in Icc a b, f' x (1, 0) + g' x (0, 1)) =
        ∑ i : Fin 2,
          ((∫ x in Icc (e a ∘ i.succAbove) (e b ∘ i.succAbove),
              ![f, g] i (e.symm <| i.insertNth (e b i) x)) -
            ∫ x in Icc (e a ∘ i.succAbove) (e b ∘ i.succAbove),
              ![f, g] i (e.symm <| i.insertNth (e a i) x)) := by
      refine integral_divergence_of_hasFDerivAt_off_countable_of_equiv e ?_ ?_ ![f, g]
        ![f', g'] s hs a b hle ?_ (fun x hx => ?_) _ ?_ Hi
      · exact fun x y => (OrderIso.finTwoArrowIso ℝ).symm.le_iff_le
      · exact (volume_preserving_finTwoArrow ℝ).symm _
      · exact Fin.forall_fin_two.2 ⟨Hcf, Hcg⟩
      · rw [Icc_prod_eq, interior_prod_eq, interior_Icc, interior_Icc] at hx
        exact Fin.forall_fin_two.2 ⟨Hdf x hx, Hdg x hx⟩
      · intro x; rw [Fin.sum_univ_two]; rfl
    _ = ((∫ y in Icc a.2 b.2, f (b.1, y)) - ∫ y in Icc a.2 b.2, f (a.1, y)) +
          ((∫ x in Icc a.1 b.1, g (x, b.2)) - ∫ x in Icc a.1 b.1, g (x, a.2)) := by
      have : ∀ (a b : ℝ¹) (f : ℝ¹ → E),
          ∫ x in Icc a b, f x = ∫ x in Icc (a 0) (b 0), f fun _ => x := fun a b f ↦ by
        convert (((volume_preserving_funUnique (Fin 1) ℝ).symm _).setIntegral_preimage_emb
          (MeasurableEquiv.measurableEmbedding _) f _).symm
        exact ((OrderIso.funUnique (Fin 1) ℝ).symm.preimage_Icc a b).symm
      simp only [Fin.sum_univ_two, this]
      rfl
    _ = (((∫ x in a.1..b.1, g (x, b.2)) - ∫ x in a.1..b.1, g (x, a.2)) +
            ∫ y in a.2..b.2, f (b.1, y)) - ∫ y in a.2..b.2, f (a.1, y) := by
      simp only [intervalIntegral.integral_of_le hle.1, intervalIntegral.integral_of_le hle.2,
        setIntegral_congr_set (Ioc_ae_eq_Icc (α := ℝ) (μ := volume))]
      abel

@[deprecated (since := "2025-05-02")]
alias integral_divergence_prod_Icc_of_hasFDerivWithinAt_off_countable_of_le :=
  integral_divergence_prod_Icc_of_hasFDerivAt_off_countable_of_le

/-- **Divergence theorem** for functions on the plane. It is formulated in terms of two functions
`f g : ℝ × ℝ → E` and iterated integral `∫ x in a₁..b₁, ∫ y in a₂..b₂, _`, where
`a₁ a₂ b₁ b₂ : ℝ`. When thinking of `f` and `g` as the two coordinates of a single function
`F : ℝ × ℝ → E × E` and when `E = ℝ`, this is the usual statement that the integral of the
divergence of `F` inside the rectangle with vertices `(aᵢ, bⱼ)`, `i, j =1,2`, equals the integral of
the normal derivative of `F` along the boundary.

See also `MeasureTheory.integral_divergence_prod_Icc_of_hasFDerivAt_off_countable_of_le`
for a version that uses an integral over `Icc a b`, where `a b : ℝ × ℝ`, `a ≤ b`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/DivergenceTheorem/Variante6c4149ad76661ed1bdd6b3932cb9bcf8cbd7b6772ba3e005ade2ce638599ffa.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/DivergenceTheorem/Variante6c4149ad76661ed1bdd6b3932cb9bcf8cbd7b6772ba3e005ade2ce638599ffa.lean#L458).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `69c4d46311e36fe8a25ea9b759d8fefa63035017` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
