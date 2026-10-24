# isRatCondKernelCDFAux_preCDF

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:1edf2e33-4d29-96f3-d927-08fa59746a69",
  "kind": "lemma",
  "lexical_name": "isRatCondKernelCDFAux_preCDF",
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
  "slug": "isratcondkernelcdfaux-precdf--24c1f545899e81477b7fb452",
  "source": {
    "blob": "bd149b39a23f97725d9f6f82209f8dace9845ea5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 238,
    "line": 209,
    "path": "GRWTSK/Analysis/MeasureTheory/CondCDF/Variante9f87fd986454def9f2429a4e1fbf764e8afbcfc59c273b3f9a57d6b53d90035.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:24c1f545899e81477b7fb4520699ccfad2550bd88f4634075ac12945114c2718",
  "verification": {
    "reference": "docs/verification/Analysis/MeasureTheory/CondCDF/Variante9f87fd986454def9f2429a4e1fbf764e8afbcfc59c273b3f9a57d6b53d90035.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:1edf2e33-4d29-96f3-d927-08fa59746a69`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 209–238.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma isRatCondKernelCDFAux_preCDF (ρ : Measure (α × ℝ)) [IsFiniteMeasure ρ] :
    IsRatCondKernelCDFAux (fun p r ↦ (preCDF ρ r p.2).toReal)
      (Kernel.const Unit ρ) (Kernel.const Unit ρ.fst) where
  measurable := measurable_preCDF'.comp measurable_snd
  mono' a r r' hrr' := by
    filter_upwards [monotone_preCDF ρ, preCDF_le_one ρ] with a h₁ h₂
    exact ENNReal.toReal_mono ((h₂ _).trans_lt ENNReal.one_lt_top).ne (h₁ hrr')
  nonneg' _ q := by simp
  le_one' a q := by
    simp only [Kernel.const_apply, forall_const]
    filter_upwards [preCDF_le_one ρ] with a ha
    refine ENNReal.toReal_le_of_le_ofReal zero_le_one ?_
    simp [ha]
  tendsto_integral_of_antitone a s _ hs_tendsto := by
    simp_rw [Kernel.const_apply, integral_preCDF_fst ρ]
    have h := ρ.tendsto_IicSnd_atBot MeasurableSet.univ
    rw [← ENNReal.toReal_zero]
    have h0 : Tendsto ENNReal.toReal (𝓝 0) (𝓝 0) :=
      ENNReal.continuousAt_toReal ENNReal.zero_ne_top
    exact h0.comp (h.comp hs_tendsto)
  tendsto_integral_of_monotone a s _ hs_tendsto := by
    simp_rw [Kernel.const_apply, integral_preCDF_fst ρ]
    have h := ρ.tendsto_IicSnd_atTop MeasurableSet.univ
    have h0 : Tendsto ENNReal.toReal (𝓝 (ρ.fst univ)) (𝓝 (ρ.fst.real univ)) :=
      ENNReal.continuousAt_toReal (measure_ne_top _ _)
    exact h0.comp (h.comp hs_tendsto)
  integrable _ q := integrable_preCDF ρ q
  setIntegral a s hs q := by rw [Kernel.const_apply, Kernel.const_apply,
    setIntegral_preCDF_fst _ _ hs, measureReal_def, measureReal_def, Measure.IicSnd_apply _ _ hs]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/MeasureTheory/CondCDF/Variante9f87fd986454def9f2429a4e1fbf764e8afbcfc59c273b3f9a57d6b53d90035.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/MeasureTheory/CondCDF/Variante9f87fd986454def9f2429a4e1fbf764e8afbcfc59c273b3f9a57d6b53d90035.lean#L209).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `bd149b39a23f97725d9f6f82209f8dace9845ea5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
