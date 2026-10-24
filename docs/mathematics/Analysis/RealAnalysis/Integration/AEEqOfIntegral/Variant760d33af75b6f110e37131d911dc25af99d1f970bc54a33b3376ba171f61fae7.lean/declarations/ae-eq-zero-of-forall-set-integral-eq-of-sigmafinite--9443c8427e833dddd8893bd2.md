# ae_eq_zero_of_forall_set_integral_eq_of_sigmaFinite

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:5e717c96-0331-10ae-3aac-79d29633787d",
  "kind": "theorem",
  "lexical_name": "ae_eq_zero_of_forall_set_integral_eq_of_sigmaFinite",
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
  "slug": "ae-eq-zero-of-forall-set-integral-eq-of-sigmafinite--9443c8427e833dddd8893bd2",
  "source": {
    "blob": "73607fe8a34e63c62707f8d1cd49d5970d967941",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 430,
    "line": 417,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/AEEqOfIntegral/Variant760d33af75b6f110e37131d911dc25af99d1f970bc54a33b3376ba171f61fae7.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:9443c8427e833dddd8893bd2bdad59b32d72b6e8d423a74db2b66c96f99f35a9",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/AEEqOfIntegral/Variant760d33af75b6f110e37131d911dc25af99d1f970bc54a33b3376ba171f61fae7.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:5e717c96-0331-10ae-3aac-79d29633787d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 417–430.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem ae_eq_zero_of_forall_set_integral_eq_of_sigmaFinite [SigmaFinite μ] {f : α → E}
    (hf_int_finite : ∀ s, MeasurableSet s → μ s < ∞ → IntegrableOn f s μ)
    (hf_zero : ∀ s : Set α, MeasurableSet s → μ s < ∞ → ∫ x in s, f x ∂μ = 0) : f =ᵐ[μ] 0 := by
  let S := spanningSets μ
  rw [← @Measure.restrict_univ _ _ μ, ← iUnion_spanningSets μ, EventuallyEq, ae_iff,
    Measure.restrict_apply' (MeasurableSet.iUnion (measurable_spanningSets μ))]
  rw [Set.inter_iUnion, measure_iUnion_null_iff]
  intro n
  have h_meas_n : MeasurableSet (S n) := measurable_spanningSets μ n
  have hμn : μ (S n) < ∞ := measure_spanningSets_lt_top μ n
  rw [← Measure.restrict_apply' h_meas_n]
  exact ae_eq_zero_restrict_of_forall_set_integral_eq_zero hf_int_finite hf_zero h_meas_n hμn.ne
#align measure_theory.ae_eq_zero_of_forall_set_integral_eq_of_sigma_finite MeasureTheory.ae_eq_zero_of_forall_set_integral_eq_of_sigmaFinite

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/AEEqOfIntegral/Variant760d33af75b6f110e37131d911dc25af99d1f970bc54a33b3376ba171f61fae7.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/AEEqOfIntegral/Variant760d33af75b6f110e37131d911dc25af99d1f970bc54a33b3376ba171f61fae7.lean#L417).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `73607fe8a34e63c62707f8d1cd49d5970d967941` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
