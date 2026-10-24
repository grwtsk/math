# integral2_divergence_prod_of_hasFDerivAt_off_countable

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "d2a885d1694b6626480bed67067b9b6ca12a4f82",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 504,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/e0/e07631513d2abe819a868cb4da853f1f4c1c0719ed66b797de6f9a0f66447180.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:0726d547-b2ef-2fab-7768-bf007e7f2eab",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:a4b39343-928e-4610-074d-66e27b4317c9",
  "kind": "theorem",
  "lexical_name": "integral2_divergence_prod_of_hasFDerivAt_off_countable",
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
  "slug": "integral2-divergence-prod-of-hasfderivat-off-countable--324871997b8d5801b41670af",
  "source": {
    "blob": "d2a885d1694b6626480bed67067b9b6ca12a4f82",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 543,
    "line": 504,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/DivergenceTheorem/Variante07631513d2abe819a868cb4da853f1f4c1c0719ed66b797de6f9a0f66447180.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:324871997b8d5801b41670af3d43c022c82f51cae352dee50bc6ec63ec55ff0b",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/DivergenceTheorem/Variante07631513d2abe819a868cb4da853f1f4c1c0719ed66b797de6f9a0f66447180.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a4b39343-928e-4610-074d-66e27b4317c9`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 504–543.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem integral2_divergence_prod_of_hasFDerivAt_off_countable (f g : ℝ × ℝ → E)
    (f' g' : ℝ × ℝ → ℝ × ℝ →L[ℝ] E) (a₁ a₂ b₁ b₂ : ℝ) (s : Set (ℝ × ℝ)) (hs : s.Countable)
    (Hcf : ContinuousOn f ([[a₁, b₁]] ×ˢ [[a₂, b₂]]))
    (Hcg : ContinuousOn g ([[a₁, b₁]] ×ˢ [[a₂, b₂]]))
    (Hdf : ∀ x ∈ Ioo (min a₁ b₁) (max a₁ b₁) ×ˢ Ioo (min a₂ b₂) (max a₂ b₂) \ s,
      HasFDerivAt f (f' x) x)
    (Hdg : ∀ x ∈ Ioo (min a₁ b₁) (max a₁ b₁) ×ˢ Ioo (min a₂ b₂) (max a₂ b₂) \ s,
      HasFDerivAt g (g' x) x)
    (Hi : IntegrableOn (fun x => f' x (1, 0) + g' x (0, 1)) ([[a₁, b₁]] ×ˢ [[a₂, b₂]])) :
    (∫ x in a₁..b₁, ∫ y in a₂..b₂, f' (x, y) (1, 0) + g' (x, y) (0, 1)) =
      (((∫ x in a₁..b₁, g (x, b₂)) - ∫ x in a₁..b₁, g (x, a₂)) + ∫ y in a₂..b₂, f (b₁, y)) -
        ∫ y in a₂..b₂, f (a₁, y) := by
  wlog h₁ : a₁ ≤ b₁ generalizing a₁ b₁
  · specialize this b₁ a₁
    rw [uIcc_comm b₁ a₁, min_comm b₁ a₁, max_comm b₁ a₁] at this
    simp only [intervalIntegral.integral_symm b₁ a₁]
    refine (congr_arg Neg.neg (this Hcf Hcg Hdf Hdg Hi (le_of_not_le h₁))).trans ?_; abel
  wlog h₂ : a₂ ≤ b₂ generalizing a₂ b₂
  · specialize this b₂ a₂
    rw [uIcc_comm b₂ a₂, min_comm b₂ a₂, max_comm b₂ a₂] at this
    simp only [intervalIntegral.integral_symm b₂ a₂, intervalIntegral.integral_neg]
    refine (congr_arg Neg.neg (this Hcf Hcg Hdf Hdg Hi (le_of_not_le h₂))).trans ?_; abel
  simp only [uIcc_of_le h₁, uIcc_of_le h₂, min_eq_left, max_eq_right, h₁, h₂] at Hcf Hcg Hdf Hdg Hi
  calc
    (∫ x in a₁..b₁, ∫ y in a₂..b₂, f' (x, y) (1, 0) + g' (x, y) (0, 1)) =
        ∫ x in Icc a₁ b₁, ∫ y in Icc a₂ b₂, f' (x, y) (1, 0) + g' (x, y) (0, 1) := by
      simp only [intervalIntegral.integral_of_le, h₁, h₂,
        setIntegral_congr_set (Ioc_ae_eq_Icc (α := ℝ) (μ := volume))]
    _ = ∫ x in Icc a₁ b₁ ×ˢ Icc a₂ b₂, f' x (1, 0) + g' x (0, 1) := (setIntegral_prod _ Hi).symm
    _ = (((∫ x in a₁..b₁, g (x, b₂)) - ∫ x in a₁..b₁, g (x, a₂)) + ∫ y in a₂..b₂, f (b₁, y)) -
          ∫ y in a₂..b₂, f (a₁, y) := by
      rw [Icc_prod_Icc] at *
      apply integral_divergence_prod_Icc_of_hasFDerivAt_off_countable_of_le f g f' g'
        (a₁, a₂) (b₁, b₂) ⟨h₁, h₂⟩ s <;> assumption

@[deprecated (since := "2025-05-02")]
alias integral2_divergence_prod_of_hasFDerivWithinAt_off_countable :=
  integral2_divergence_prod_of_hasFDerivAt_off_countable

end MeasureTheory
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/DivergenceTheorem/Variante07631513d2abe819a868cb4da853f1f4c1c0719ed66b797de6f9a0f66447180.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/DivergenceTheorem/Variante07631513d2abe819a868cb4da853f1f4c1c0719ed66b797de6f9a0f66447180.lean#L504).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d2a885d1694b6626480bed67067b9b6ca12a4f82` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
