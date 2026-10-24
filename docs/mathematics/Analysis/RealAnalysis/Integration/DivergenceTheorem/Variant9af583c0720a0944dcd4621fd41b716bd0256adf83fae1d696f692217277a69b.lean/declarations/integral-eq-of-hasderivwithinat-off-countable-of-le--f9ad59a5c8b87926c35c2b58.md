# integral_eq_of_hasDerivWithinAt_off_countable_of_le

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
      "line": 381,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/9a/9af583c0720a0944dcd4621fd41b716bd0256adf83fae1d696f692217277a69b.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:0c1d050f-8c0e-108c-4dd6-fa85782688bc",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:e8649471-00d7-505f-958e-d5461b05d885",
  "kind": "theorem",
  "lexical_name": "integral_eq_of_hasDerivWithinAt_off_countable_of_le",
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
  "slug": "integral-eq-of-hasderivwithinat-off-countable-of-le--f9ad59a5c8b87926c35c2b58",
  "source": {
    "blob": "58ec17365a5e7ed878f9f72700ae7154a0ae6054",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 417,
    "line": 381,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/DivergenceTheorem/Variant9af583c0720a0944dcd4621fd41b716bd0256adf83fae1d696f692217277a69b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f9ad59a5c8b87926c35c2b5895bb4c7138598fc994c412ca8c65bae20e6f7024",
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

Occurrence: `result:e8649471-00d7-505f-958e-d5461b05d885`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 381–417.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem integral_eq_of_hasDerivWithinAt_off_countable_of_le (f f' : ℝ → E) {a b : ℝ}
    (hle : a ≤ b) {s : Set ℝ} (hs : s.Countable) (Hc : ContinuousOn f (Icc a b))
    (Hd : ∀ x ∈ Ioo a b \ s, HasDerivAt f (f' x) x) (Hi : IntervalIntegrable f' volume a b) :
    ∫ x in a..b, f' x = f b - f a := by
  set e : ℝ ≃L[ℝ] ℝ¹ := (ContinuousLinearEquiv.funUnique (Fin 1) ℝ ℝ).symm
  have e_symm : ∀ x, e.symm x = x 0 := fun x => rfl
  set F' : ℝ → ℝ →L[ℝ] E := fun x => smulRight (1 : ℝ →L[ℝ] ℝ) (f' x)
  have hF' : ∀ x y, F' x y = y • f' x := fun x y => rfl
  calc
    ∫ x in a..b, f' x = ∫ x in Icc a b, f' x := by
      rw [intervalIntegral.integral_of_le hle, set_integral_congr_set_ae Ioc_ae_eq_Icc]
    _ = ∑ i : Fin 1,
          ((∫ x in Icc (e a ∘ i.succAbove) (e b ∘ i.succAbove),
              f (e.symm <| i.insertNth (e b i) x)) -
            ∫ x in Icc (e a ∘ i.succAbove) (e b ∘ i.succAbove),
              f (e.symm <| i.insertNth (e a i) x)) := by
      simp only [← interior_Icc] at Hd
      refine'
        integral_divergence_of_hasFDerivWithinAt_off_countable_of_equiv e _ _ (fun _ => f)
          (fun _ => F') s hs a b hle (fun _ => Hc) (fun x hx _ => Hd x hx) _ _ _
      · exact fun x y => (OrderIso.funUnique (Fin 1) ℝ).symm.le_iff_le
      · exact (volume_preserving_funUnique (Fin 1) ℝ).symm _
      · intro x; rw [Fin.sum_univ_one, hF', e_symm, Pi.single_eq_same, one_smul]
      · rw [intervalIntegrable_iff_integrable_Ioc_of_le hle] at Hi
        exact Hi.congr_set_ae Ioc_ae_eq_Icc.symm
    _ = f b - f a := by
      simp only [Fin.sum_univ_one, e_symm]
      have : ∀ c : ℝ, const (Fin 0) c = isEmptyElim := fun c => Subsingleton.elim _ _
      simp [this, volume_pi, Measure.pi_of_empty fun _ : Fin 0 => volume]
#align measure_theory.integral_eq_of_has_deriv_within_at_off_countable_of_le MeasureTheory.integral_eq_of_hasDerivWithinAt_off_countable_of_le

/-- **Fundamental theorem of calculus, part 2**. This version assumes that `f` is continuous on the
interval and is differentiable off a countable set `s`.

See also `measure_theory.interval_integral.integral_eq_sub_of_has_deriv_right` for a version that
only assumes right differentiability of `f`.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/DivergenceTheorem/Variant9af583c0720a0944dcd4621fd41b716bd0256adf83fae1d696f692217277a69b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/DivergenceTheorem/Variant9af583c0720a0944dcd4621fd41b716bd0256adf83fae1d696f692217277a69b.lean#L381).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `58ec17365a5e7ed878f9f72700ae7154a0ae6054` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
