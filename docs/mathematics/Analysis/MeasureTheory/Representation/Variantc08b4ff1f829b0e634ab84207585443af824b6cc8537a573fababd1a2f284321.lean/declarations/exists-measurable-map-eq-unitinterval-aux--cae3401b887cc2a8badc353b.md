# exists_measurable_map_eq_unitInterval_aux

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:e3601f57-9b82-327f-df5f-68a8b51393db",
  "kind": "lemma",
  "lexical_name": "exists_measurable_map_eq_unitInterval_aux",
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
  "slug": "exists-measurable-map-eq-unitinterval-aux--cae3401b887cc2a8badc353b",
  "source": {
    "blob": "efdba3d1226626136b1af1106c42d2bbc7799ae1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 118,
    "line": 54,
    "path": "GRWTSK/Analysis/MeasureTheory/Representation/Variantc08b4ff1f829b0e634ab84207585443af824b6cc8537a573fababd1a2f284321.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:cae3401b887cc2a8badc353be429568a5e1e02b6eece7cbdd3d74693b8880b28",
  "verification": {
    "reference": "docs/verification/Analysis/MeasureTheory/Representation/Variantc08b4ff1f829b0e634ab84207585443af824b6cc8537a573fababd1a2f284321.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e3601f57-9b82-327f-df5f-68a8b51393db`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 54–118.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private lemma exists_measurable_map_eq_unitInterval_aux (κ : Kernel X I) [IsMarkovKernel κ] :
    ∃ (f : X → I → I), Measurable (uncurry f) ∧ ∀ a, volume.map (f a) = κ a := by
  let f := fun s (t : I) ↦ sSup {x | (κ s).real (Icc 0 x) < t}
  have measurable_f : Measurable (uncurry f) := by
    refine measurable_of_Ioi fun a ↦ ?_
    simp only [preimage, uncurry, mem_Ioi]
    have h_monotone s : Monotone (fun x ↦ (κ s).real (Icc 0 x)) :=
      fun x y hxy ↦ measureReal_mono (by gcongr)
    have sSup_eq_iUnion_rat : {x : X × I | a < f x.1 x.2} =
        ⋃ (q : ℚ) (hqI : ↑q ∈ I) (_ : a < (q : ℝ)), {e | (κ e.1).real (Icc 0 ⟨q, hqI⟩) < e.2} := by
      ext e
      simp_all only [lt_sSup_iff, mem_ofPred_eq, Subtype.exists, mem_Icc, Rat.cast_nonneg,
        mem_iUnion, exists_prop, exists_and_left, f]
      constructor
      · rintro ⟨y, hyI, y_mem, (hy : a.1 < y)⟩
        obtain ⟨q, hqa, hqy⟩ := exists_rat_btwn hy
        refine ⟨q, hqa, ⟨?_, hqy.le.trans hyI.2⟩, lt_of_lt_of_le' y_mem (h_monotone e.1 hqy.le)⟩
        simp [← Rat.cast_nonneg (K := ℝ), a.2.1.trans hqa.le]
      · intro he
        obtain ⟨q, hqa, hqI, h⟩ := he
        refine ⟨q, ⟨by simp [hqI.1], hqI.2⟩, h, ?_⟩
        change a.1 < q
        simp [hqa]
    rw [sSup_eq_iUnion_rat]
    refine MeasurableSet.iUnion (fun b ↦ MeasurableSet.iUnion
      (fun bI ↦ MeasurableSet.iUnion (fun _ ↦ ?_)))
    refine measurableSet_lt ?_ measurable_snd.subtype_val
    simp_rw [measureReal_def]
    have hκ := κ.measurable_coe (s := Icc 0 ⟨b, bI⟩) measurableSet_Icc
    fun_prop
  refine ⟨f, measurable_f, fun a ↦ (volume.map (f a)).ext_of_Iic (κ a) fun x ↦ ?_⟩
  have Iic_to_Icc : Iic x = Icc 0 x := by ext; simp
  have κ_in_I : ((κ a).real (Icc 0 x)) ∈ I := ⟨measureReal_nonneg, measureReal_le_one⟩
  simp_rw [volume.map_apply measurable_f.of_uncurry_left measurableSet_Iic, preimage,
    mem_Iic, Iic_to_Icc, ← ofReal_measureReal (measure_ne_top (κ a) _), ← volume_Iic ⟨_, κ_in_I⟩]
  congr with ξ
  constructor
  · intro (hξ : f a ξ ≤ x)
    change ξ ≤ (κ a).real (Icc 0 x)
    by_cases hx : x = 1
    · simp [hx, ← univ_eq_Icc, ξ.2.2]
    let g := fun y ↦ (κ a).real (Icc 0 y)
    let nebot : NeBot (𝓝[>] x) := by
      refine nhdsGT_neBot_of_exists_gt ?_
      use 1
      exact lt_of_le_of_ne x.2.2 hx
    refine le_of_tendsto_of_tendsto (b := 𝓝[>] x) (g := g) continuousWithinAt_const ?_ ?_
    · let h := cdf ((κ a).map Subtype.val)
      have h_continuousWithinAt := continuousWithinAt_Ioi_iff_Ici.mpr (h.right_continuous x)
      simp_rw [g, ← unitInterval.cdf_eq_real (κ a)]
      exact h_continuousWithinAt.comp (Continuous.continuousWithinAt (by fun_prop)) (fun y hy ↦ hy)
    · refine eventually_nhdsWithin_of_forall fun y hy ↦ ?_
      by_contra! h
      simp only [sSup_le_iff, f] at hξ
      specialize hξ y h
      grind
  · intro (hξ : ξ ≤ (κ a).real (Icc 0 x))
    simp only [sSup_le_iff, f]
    intro c hc
    by_contra! h
    have h_lt : ¬ (κ a).real (Icc 0 x) ≤ (κ a).real (Icc 0 c) := not_le.mpr (lt_of_le_of_lt' hξ hc)
    refine h_lt ?_
    gcongr
    simp

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/MeasureTheory/Representation/Variantc08b4ff1f829b0e634ab84207585443af824b6cc8537a573fababd1a2f284321.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/MeasureTheory/Representation/Variantc08b4ff1f829b0e634ab84207585443af824b6cc8537a573fababd1a2f284321.lean#L54).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `efdba3d1226626136b1af1106c42d2bbc7799ae1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
