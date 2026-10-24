# G_mul_cpow_integrable_vseg_lower

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:ab28b592-e112-0505-3b44-72ec37c6efe2",
  "kind": "lemma",
  "lexical_name": "G_mul_cpow_integrable_vseg_lower",
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
  "slug": "g-mul-cpow-integrable-vseg-lower--9ca4642fde474bb080e0261d",
  "source": {
    "blob": "46d07824909f05f0ffe5b70a4f74a8f7078179e3",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1809,
    "line": 1761,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/CH2/Variant04d2846d4699a4b555dd3721d3efff047f35c60e1d7af99ccdc6110fb25f3490.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:9ca4642fde474bb080e0261ddb565f34370e664016a6cbbb40863e75dc2de87f",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/CH2/Variant04d2846d4699a4b555dd3721d3efff047f35c60e1d7af99ccdc6110fb25f3490.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ab28b592-e112-0505-3b44-72ec37c6efe2`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1761–1809.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private lemma G_mul_cpow_integrable_vseg_lower (l : LadderParams)
    (hG : ∀ s, G s = G_circ s + (Real.sign s.im : ℂ) * G_star s)
    (hG_circ_mero : MeromorphicOn G_circ l.R) (hG_star_mero : MeromorphicOn G_star l.R)
    (hx₀ : 1 ≤ x₀)
    (hG_nopoles_lower : ∀ s ∈ l.Rboundary, s.im ≤ 0 → 0 ≤ meromorphicOrderAt (G_circ - G_star) s)
    (hx : x₀ < x) (a b : ℝ) (ha_ge_negT : -l.T ≤ a) (hab : a ≤ b) (hb_nonpos : b ≤ 0) :
    IntervalIntegrable (fun t : ℝ ↦ (G (1 + t * Complex.I) * (x : ℂ) ^ (1 + t * Complex.I)) * Complex.I) volume a b := by
  let H_lower := fun (t : ℝ) ↦
    toMeromorphicNFOn (G_circ - G_star) l.R ((1:ℂ) + t * Complex.I) * ((x : ℂ) ^ ((1:ℂ) + t * Complex.I)) * Complex.I
  have hb_gen : b ≤ l.T := hb_nonpos.trans l.hT.le
  have h_mem_ae : ∀ᵐ (t : ℝ) ∂MeasureTheory.volume.restrict (Set.uIoc a b), t < 0 := by
    have h_uIoc : Set.uIoc a b = Set.Ioc a b := Set.uIoc_of_le hab
    rw [h_uIoc]
    have h1 : ∀ t ∈ Set.Ioc a b, ¬(t < 0) ↔ t = 0 := by
      intro t ht; constructor
      · intro h_not_lt; exact le_antisymm (hb_nonpos.trans' ht.2) (not_lt.mp h_not_lt)
      · intro h_eq; rw [h_eq]; simp
    have h2 : {t ∈ Set.Ioc a b | ¬(t < 0)} ⊆ {0} := by
      intro t ht; rw [Set.mem_singleton_iff]; exact (h1 t ht.1).mp ht.2
    have h3 : MeasureTheory.volume {t ∈ Set.Ioc a b | ¬(t < 0)} = 0 := measure_mono_null h2 (MeasureTheory.measure_singleton 0)
    rw [MeasureTheory.ae_restrict_iff' measurableSet_Ioc, MeasureTheory.ae_iff]
    have h4 : {a_1 | ¬(a_1 ∈ Set.Ioc a b → a_1 < 0)} = {t ∈ Set.Ioc a b | ¬(t < 0)} := by
      ext t; simp only [Set.mem_Ioc, Set.mem_setOf_eq]; tauto
    rw [h4]
    exact h3
  have h_ae : (fun t : ℝ ↦ G ((1:ℂ) + t * Complex.I) * (x : ℂ) ^ ((1:ℂ) + t * Complex.I) * Complex.I) =ᵐ[MeasureTheory.volume.restrict (Set.uIoc a b)] H_lower := by
    filter_upwards [ae_eq_NF_vseg l hab ha_ge_negT hb_gen (hG_circ_mero.sub hG_star_mero), h_mem_ae] with t ht_NF ht_lt
    dsimp [H_lower]
    rw [hG, show (Real.sign ((1:ℂ) + t * Complex.I).im : ℂ) = -1 by simp [Real.sign_of_neg ht_lt]]
    simpa [sub_eq_add_neg] using
      congrArg (fun z => z * (x : ℂ) ^ ((1 : ℂ) + t * Complex.I) * Complex.I) ht_NF
  refine IntervalIntegrable.congr_ae ?_ h_ae.symm
  refine ContinuousOn.intervalIntegrable ?_
  rw [Set.uIcc_of_le hab]
  have h_cont_sum_NF : ContinuousOn (toMeromorphicNFOn (G_circ - G_star) l.R) (l.Rboundary ∩ {s | s.im ≤ 0}) :=
    continuousOn_toMeromorphicNFOn_subset l
      (Set.Subset.trans Set.inter_subset_left (LadderParams.Rboundary_subset_R l))
      (hG_circ_mero.sub hG_star_mero) (fun s hs => hG_nopoles_lower s hs.1 hs.2)
  have h_maps_rb : Set.MapsTo (fun t : ℝ ↦ 1 + t * Complex.I) (Set.Icc a b) (l.Rboundary ∩ {s | s.im ≤ 0}) := by
    intro t ht
    refine ⟨mapsTo_vseg_Rboundary l ha_ge_negT hb_gen ht, ?_⟩
    simp only [Complex.add_im, Complex.one_im, Complex.mul_im, Complex.ofReal_im, Complex.I_im,
      Complex.ofReal_re, Complex.I_re, mul_one, add_zero, mul_zero, zero_add, Set.mem_setOf_eq]
    linarith [ht.2]
  exact (ContinuousOn.comp h_cont_sum_NF (Continuous.continuousOn (by fun_prop)) h_maps_rb).mul
    (continuousOn_cpow_vertical_path hx₀ hx 1 _) |>.mul_const Complex.I

/-- The conjugate-symmetry (Schwarz reflection) condition `F(s̄) = conj (F s)` assumed of `F` in
Proposition 5.2; it makes the derived odd part `G⋆` satisfy `ConjAntisymm`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/CH2/Variant04d2846d4699a4b555dd3721d3efff047f35c60e1d7af99ccdc6110fb25f3490.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/CH2/Variant04d2846d4699a4b555dd3721d3efff047f35c60e1d7af99ccdc6110fb25f3490.lean#L1761).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `46d07824909f05f0ffe5b70a4f74a8f7078179e3` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
