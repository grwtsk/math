# isStronglyProgressive_min_stopping_time

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:8d89d3ee-a6f2-d8cb-ef41-d1760c23a678",
  "kind": "theorem",
  "lexical_name": "isStronglyProgressive_min_stopping_time",
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
  "slug": "isstronglyprogressive-min-stopping-time--0d9798025d544b1baa8bf78e",
  "source": {
    "blob": "b25a083f6a1b210f988357fb835770c3f90b68da",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 994,
    "line": 946,
    "path": "GRWTSK/Analysis/MeasureTheory/Stopping/Variant38d608b4f30295c1fe84e336ecc0e5ee90c064a531bf7e142bbd73d5100a8c39.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:0d9798025d544b1baa8bf78e309bc315e019b1401b1e4b89ee982634dd40873f",
  "verification": {
    "reference": "docs/verification/Analysis/MeasureTheory/Stopping/Variant38d608b4f30295c1fe84e336ecc0e5ee90c064a531bf7e142bbd73d5100a8c39.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:8d89d3ee-a6f2-d8cb-ef41-d1760c23a678`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 946–994.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem isStronglyProgressive_min_stopping_time [PseudoMetrizableSpace ι]
    (hτ : IsStoppingTime f τ) :
    IsStronglyProgressive f fun i ω ↦ (min (i : WithTop ι) (τ ω)).untopA := by
  refine fun i ↦ (Measurable.untopA ?_).stronglyMeasurable
  let m_prod : MeasurableSpace (Set.Iic i × Ω) := Subtype.instMeasurableSpace.prod (f i)
  let m_set : ∀ t : Set (Set.Iic i × Ω), MeasurableSpace t := fun _ =>
    @Subtype.instMeasurableSpace (Set.Iic i × Ω) _ m_prod
  let s := {p : Set.Iic i × Ω | τ p.2 ≤ i}
  have hs : MeasurableSet[m_prod] s := @measurable_snd (Set.Iic i) Ω _ (f i) _ (hτ i)
  have h_meas_fst : ∀ t : Set (Set.Iic i × Ω),
      Measurable[m_set t] fun x : t => ((x : Set.Iic i × Ω).fst : ι) :=
    fun t => (@measurable_subtype_coe (Set.Iic i × Ω) m_prod _).fst.subtype_val
  refine measurable_of_restrict_of_restrict_compl hs ?_ ?_
  · refine Measurable.min (h_meas_fst s).withTop_coe ?_
    refine measurable_of_Iic fun j ↦ ?_
    cases j with
    | top => simp
    | coe j =>
      have h_set_eq : (fun x : s => τ (x : Set.Iic i × Ω).snd) ⁻¹' Set.Iic j =
          (fun x : s => (x : Set.Iic i × Ω).snd) ⁻¹' {ω | τ ω ≤ min i j} := by
        ext1 ω
        simp only [Set.mem_preimage, Set.mem_Iic, coe_min, le_inf_iff,
          Set.preimage_ofPred_eq, Set.mem_ofPred_eq, iff_and_self]
        exact fun _ => ω.prop
      rw [h_set_eq]
      suffices h_meas : @Measurable _ _ (m_set s) (f i) fun x : s ↦ (x : Set.Iic i × Ω).snd from
        h_meas (f.mono (min_le_left _ _) _ (hτ.measurableSet_le (min i j)))
      exact measurable_snd.comp (@measurable_subtype_coe _ m_prod _)
  · let sc := sᶜ
    suffices h_min_eq_left :
      (fun x : sc => min (↑(x : Set.Iic i × Ω).fst) (τ (x : Set.Iic i × Ω).snd)) = fun x : sc =>
        ↑(x : Set.Iic i × Ω).fst by
      simp +unfoldPartialApp only [sc, Set.domRestrict, h_min_eq_left]
      exact (h_meas_fst _).withTop_coe
    ext1 ω
    rw [min_eq_left]
    have hx_fst_le : ↑(ω : Set.Iic i × Ω).fst ≤ i := (ω : Set.Iic i × Ω).fst.prop
    by_cases h : τ (ω : Set.Iic i × Ω).2 = ⊤
    · simp [h]
    · lift τ (ω : Set.Iic i × Ω).2 to ι using h with t ht
      norm_cast
      refine hx_fst_le.trans (le_of_lt ?_)
      convert! ω.prop
      simp only [sc, s, not_le, Set.mem_compl_iff, Set.mem_ofPred_eq, ← ht]
      norm_cast

@[deprecated (since := "2026-04-24")]
alias progMeasurable_min_stopping_time := isStronglyProgressive_min_stopping_time

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/MeasureTheory/Stopping/Variant38d608b4f30295c1fe84e336ecc0e5ee90c064a531bf7e142bbd73d5100a8c39.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/MeasureTheory/Stopping/Variant38d608b4f30295c1fe84e336ecc0e5ee90c064a531bf7e142bbd73d5100a8c39.lean#L946).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b25a083f6a1b210f988357fb835770c3f90b68da` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
