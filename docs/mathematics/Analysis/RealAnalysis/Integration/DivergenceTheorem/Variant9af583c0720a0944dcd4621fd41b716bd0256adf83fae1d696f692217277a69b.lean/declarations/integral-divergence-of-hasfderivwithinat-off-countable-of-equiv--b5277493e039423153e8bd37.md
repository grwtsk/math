# integral_divergence_of_hasFDerivWithinAt_off_countable_of_equiv

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
      "line": 319,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/9a/9af583c0720a0944dcd4621fd41b716bd0256adf83fae1d696f692217277a69b.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:d837866b-342b-1eae-16b4-1bbdaf6a648a",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:66452721-481f-c865-f3d4-18791c53a008",
  "kind": "theorem",
  "lexical_name": "integral_divergence_of_hasFDerivWithinAt_off_countable_of_equiv",
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
  "slug": "integral-divergence-of-hasfderivwithinat-off-countable-of-equiv--b5277493e039423153e8bd37",
  "source": {
    "blob": "58ec17365a5e7ed878f9f72700ae7154a0ae6054",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 380,
    "line": 319,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/DivergenceTheorem/Variant9af583c0720a0944dcd4621fd41b716bd0256adf83fae1d696f692217277a69b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b5277493e039423153e8bd37b3398cbf19a2e210b2270a191534697e215febc5",
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

Occurrence: `result:66452721-481f-c865-f3d4-18791c53a008`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 319–380.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem integral_divergence_of_hasFDerivWithinAt_off_countable_of_equiv {F : Type*}
    [NormedAddCommGroup F] [NormedSpace ℝ F] [PartialOrder F] [MeasureSpace F] [BorelSpace F]
    (eL : F ≃L[ℝ] ℝⁿ⁺¹) (he_ord : ∀ x y, eL x ≤ eL y ↔ x ≤ y)
    (he_vol : MeasurePreserving eL volume volume) (f : Fin (n + 1) → F → E)
    (f' : Fin (n + 1) → F → F →L[ℝ] E) (s : Set F) (hs : s.Countable) (a b : F) (hle : a ≤ b)
    (Hc : ∀ i, ContinuousOn (f i) (Icc a b))
    (Hd : ∀ x ∈ interior (Icc a b) \ s, ∀ (i), HasFDerivAt (f i) (f' i x) x) (DF : F → E)
    (hDF : ∀ x, DF x = ∑ i, f' i x (eL.symm <| e i)) (Hi : IntegrableOn DF (Icc a b)) :
    ∫ x in Icc a b, DF x =
      ∑ i : Fin (n + 1),
        ((∫ x in Icc (eL a ∘ i.succAbove) (eL b ∘ i.succAbove),
            f i (eL.symm <| i.insertNth (eL b i) x)) -
          ∫ x in Icc (eL a ∘ i.succAbove) (eL b ∘ i.succAbove),
            f i (eL.symm <| i.insertNth (eL a i) x)) :=
  have he_emb : MeasurableEmbedding eL := eL.toHomeomorph.toMeasurableEquiv.measurableEmbedding
  have hIcc : eL ⁻¹' Icc (eL a) (eL b) = Icc a b := by
    ext1 x; simp only [Set.mem_preimage, Set.mem_Icc, he_ord]
  have hIcc' : Icc (eL a) (eL b) = eL.symm ⁻¹' Icc a b := by rw [← hIcc, eL.symm_preimage_preimage]
  calc
    ∫ x in Icc a b, DF x = ∫ x in Icc a b, ∑ i, f' i x (eL.symm <| e i) := by simp only [hDF]
    _ = ∫ x in Icc (eL a) (eL b), ∑ i, f' i (eL.symm x) (eL.symm <| e i) := by
      rw [← he_vol.set_integral_preimage_emb he_emb]
      simp only [hIcc, eL.symm_apply_apply]
    _ = ∑ i : Fin (n + 1),
          ((∫ x in Icc (eL a ∘ i.succAbove) (eL b ∘ i.succAbove),
              f i (eL.symm <| i.insertNth (eL b i) x)) -
            ∫ x in Icc (eL a ∘ i.succAbove) (eL b ∘ i.succAbove),
              f i (eL.symm <| i.insertNth (eL a i) x)) := by
      refine integral_divergence_of_hasFDerivWithinAt_off_countable' (eL a) (eL b)
        ((he_ord _ _).2 hle) (fun i x => f i (eL.symm x))
        (fun i x => f' i (eL.symm x) ∘L (eL.symm : ℝⁿ⁺¹ →L[ℝ] F)) (eL.symm ⁻¹' s)
        (hs.preimage eL.symm.injective) ?_ ?_ ?_
      · exact fun i => (Hc i).comp eL.symm.continuousOn hIcc'.subset
      · refine' fun x hx i => (Hd (eL.symm x) ⟨_, hx.2⟩ i).comp x eL.symm.hasFDerivAt
        rw [← hIcc]
        refine' preimage_interior_subset_interior_preimage eL.continuous _
        simpa only [Set.mem_preimage, eL.apply_symm_apply, ← pi_univ_Icc,
          interior_pi_set (@finite_univ (Fin _) _), interior_Icc] using hx.1
      · rw [← he_vol.integrableOn_comp_preimage he_emb, hIcc]
        simp [← hDF, (· ∘ ·), Hi]
#align measure_theory.integral_divergence_of_has_fderiv_within_at_off_countable_of_equiv MeasureTheory.integral_divergence_of_hasFDerivWithinAt_off_countable_of_equiv

end

open scoped Interval

open ContinuousLinearMap (smulRight)


local macro:arg t:term:max noWs "¹" : term => `(Fin 1 → $t)
local macro:arg t:term:max noWs "²" : term => `(Fin 2 → $t)

/-- **Fundamental theorem of calculus, part 2**. This version assumes that `f` is continuous on the
interval and is differentiable off a countable set `s`.

See also

* `interval_integral.integral_eq_sub_of_has_deriv_right_of_le` for a version that only assumes right
differentiability of `f`;

* `MeasureTheory.integral_eq_of_has_deriv_within_at_off_countable` for a version that works both
  for `a ≤ b` and `b ≤ a` at the expense of using unordered intervals instead of `Set.Icc`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/DivergenceTheorem/Variant9af583c0720a0944dcd4621fd41b716bd0256adf83fae1d696f692217277a69b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/DivergenceTheorem/Variant9af583c0720a0944dcd4621fd41b716bd0256adf83fae1d696f692217277a69b.lean#L319).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `58ec17365a5e7ed878f9f72700ae7154a0ae6054` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
