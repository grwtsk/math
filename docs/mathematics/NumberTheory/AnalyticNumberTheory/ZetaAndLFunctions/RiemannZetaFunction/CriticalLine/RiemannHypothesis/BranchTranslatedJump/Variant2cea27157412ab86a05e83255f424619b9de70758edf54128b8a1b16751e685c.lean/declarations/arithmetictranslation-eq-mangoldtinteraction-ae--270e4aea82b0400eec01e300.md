# arithmeticTranslation_eq_mangoldtInteraction_ae

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:175c3087-7535-f2f1-6865-cefc9556679a",
  "kind": "theorem",
  "lexical_name": "arithmeticTranslation_eq_mangoldtInteraction_ae",
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
  "slug": "arithmetictranslation-eq-mangoldtinteraction-ae--270e4aea82b0400eec01e300",
  "source": {
    "blob": "0eaa8ef6f20d2a855dca7eabac04adbe1decfcac",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 368,
    "line": 310,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/BranchTranslatedJump/Variant2cea27157412ab86a05e83255f424619b9de70758edf54128b8a1b16751e685c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:270e4aea82b0400eec01e300b7e46e98c8360d021df7360550a5aeb530ab637d",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/BranchTranslatedJump/Variant2cea27157412ab86a05e83255f424619b9de70758edf54128b8a1b16751e685c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:175c3087-7535-f2f1-6865-cefc9556679a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 310–368.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem arithmeticTranslation_eq_mangoldtInteraction_ae {A : ℝ} (hA : 0 < A) :
    mangoldtInteraction A (originalSourceState A) =ᵐ[volume]
      fun x ↦ (arithmeticTranslation A (q A) x : ℂ) := by
  have ht (t : ℝ) : translation t (originalSourceState A) =ᵐ[volume]
      fun x ↦ (q A (x - t) : ℂ) := by
    filter_upwards [translation_coe_ae t (originalSourceState A),
      (measurePreserving_sub_right volume t).quasiMeasurePreserving.ae
        (originalSourceState_coe_ae hA)] with x hx hy
    exact hx.trans hy
  have havg (m : ℕ) : symmetricTranslation (Real.log m) (originalSourceState A) =ᵐ[volume]
      fun x ↦ (1 / 2 : ℂ) * ((q A (x - Real.log m) : ℂ) + q A (x + Real.log m)) := by
    rw [symmetricTranslation_apply]
    filter_upwards [Lp.coeFn_smul (1 / 2 : ℂ)
      (translation (Real.log m) (originalSourceState A) +
        translation (-Real.log m) (originalSourceState A)),
      Lp.coeFn_add (translation (Real.log m) (originalSourceState A))
        (translation (-Real.log m) (originalSourceState A)), ht (Real.log m),
      ht (-Real.log m)] with x hs ha hp hn
    simp only [Pi.smul_apply, smul_eq_mul, Pi.add_apply] at hs ha
    rw [hs, ha, hp, hn]
    simp only [sub_neg_eq_add]
  have hterm (m : ℕ) (hm : 2 ≤ m) :
      (mangoldtCoefficient m : ℂ) •
        symmetricTranslation (Real.log m) (originalSourceState A) =ᵐ[volume]
      fun x ↦ ((ArithmeticFunction.vonMangoldt m / (2 * Real.sqrt m) *
        (q A (x + Real.log m) + q A (x - Real.log m)) : ℝ) : ℂ) := by
    filter_upwards [Lp.coeFn_smul (mangoldtCoefficient m : ℂ)
      (symmetricTranslation (Real.log m) (originalSourceState A)), havg m] with x hs ha
    simp only [Pi.smul_apply, smul_eq_mul] at hs
    rw [hs, ha, half_weight_eq_mangoldtCoefficient (by omega : 0 < m)]
    push_cast
    ring
  have hsum (s : Finset ℕ) (hs : ∀ m ∈ s, 2 ≤ m) :
      (∑ m ∈ s, (mangoldtCoefficient m : ℂ) •
        symmetricTranslation (Real.log m) (originalSourceState A) : ComplexL2) =ᵐ[volume]
      fun x ↦ ((∑ m ∈ s, ArithmeticFunction.vonMangoldt m / (2 * Real.sqrt m) *
        (q A (x + Real.log m) + q A (x - Real.log m)) : ℝ) : ℂ) := by
    classical
    induction s using Finset.induction_on with
    | empty =>
      simp only [Finset.sum_empty, Complex.ofReal_zero]
      filter_upwards [Lp.coeFn_zero ℂ 2 (volume : Measure ℝ)] with x hx
      exact hx
    | @insert m s hms ih =>
      have hmem : ∀ k ∈ s, 2 ≤ k := fun k hk ↦ hs k (Finset.mem_insert_of_mem hk)
      simp only [Finset.sum_insert hms]
      filter_upwards [Lp.coeFn_add
        ((mangoldtCoefficient m : ℂ) • symmetricTranslation (Real.log m) (originalSourceState A))
        (∑ k ∈ s, (mangoldtCoefficient k : ℂ) •
          symmetricTranslation (Real.log k) (originalSourceState A)),
        hterm m (hs m (Finset.mem_insert_self _ _)), ih hmem] with x ha hm hr
      simp only [Pi.add_apply] at ha
      rw [ha, hm, hr]
      push_cast
      rfl
  rw [mangoldtInteraction_apply]
  exact hsum (primePowerInventory (2 * A)) (fun _ hm ↦ (Finset.mem_Icc.mp hm).1)

/-- The complete arithmetic source is globally C¹ despite the unmatched second jump. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/BranchTranslatedJump/Variant2cea27157412ab86a05e83255f424619b9de70758edf54128b8a1b16751e685c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/BranchTranslatedJump/Variant2cea27157412ab86a05e83255f424619b9de70758edf54128b8a1b16751e685c.lean#L310).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0eaa8ef6f20d2a855dca7eabac04adbe1decfcac` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
