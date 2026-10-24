# exists_le_const_mul_norm_intervalIntegral_of_nonneg_of_antitoneOn

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:5c9b4a47-ddcd-80f4-74ab-a60d81f563b7",
  "kind": "theorem",
  "lexical_name": "exists_le_const_mul_norm_intervalIntegral_of_nonneg_of_antitoneOn",
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
  "slug": "exists-le-const-mul-norm-intervalintegral-of-nonneg-of-antitoneon--8718874ffae66a157a2e0b0e",
  "source": {
    "blob": "29c357cf0e2b1d9bde45be61d96d6a760bf04d8b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 242,
    "line": 211,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/MeanValue/Variant4b6829306f6237fc39fdb05b8d0e19cc7440bf066ba83d038350cb24a9d7dab1.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:8718874ffae66a157a2e0b0e9f96a946a8ec967efbde4cdf5284e8d426390662",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/MeanValue/Variant4b6829306f6237fc39fdb05b8d0e19cc7440bf066ba83d038350cb24a9d7dab1.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:5c9b4a47-ddcd-80f4-74ab-a60d81f563b7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 211–242.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem exists_le_const_mul_norm_intervalIntegral_of_nonneg_of_antitoneOn
    (hab : a ≤ b) (hf : 0 ≤ f b) (hf_mon : AntitoneOn f (Icc a b))
    (hg : IntervalIntegrable g volume a b) :
    ∃ ξ ∈ Icc a b, ‖∫ x in a..b, f x • g x‖ ≤ f a * ‖∫ x in a..ξ, g x‖ := by
  have hfa := hf.trans (hf_mon.mapsTo_Icc ⟨le_rfl, hab⟩).1
  -- If `E` is not complete, every Bochner integral below vanishes and the claim is trivial
  by_cases hE : CompleteSpace E
  swap
  · exact ⟨a, ⟨le_rfl, hab⟩, by simp [intervalIntegral, integral_of_not_completeSpace hE]⟩
  -- Reduce to the scalar-valued theorem by applying a linear functional witnessing the norm
  obtain ⟨L, hL_norm, hLI⟩ := exists_dual_vector'' ℝ (∫ x in a..b, f x • g x)
  obtain ⟨ξ, hξ, hξ_eq⟩ :=
    exists_eq_const_mul_intervalIntegral_of_nonneg_of_antitoneOn hab hf hf_mon
      (g := fun x ↦ L (g x)) (intervalIntegrable_iff.2 <| L.integrable_comp hg.def')
  refine ⟨ξ, hξ, ?_⟩
  have hfg_interval : IntervalIntegrable (fun x ↦ f x • g x) volume a b :=
    intervalIntegrable_iff.2 <| hg.def'.smul_of_top_right <|
      (hf_mon.memLp_isCompact isCompact_Icc).mono_measure <|
        Measure.restrict_mono_set volume (uIcc_of_le hab ▸ uIoc_subset_uIcc)
  have hg_aξ := hg.mono_set <| uIcc_subset_uIcc_left (by rwa [uIcc_of_le hab])
  calc
    ‖∫ x in a..b, f x • g x‖ = L (∫ x in a..b, f x • g x) := hLI.symm
    _ = ∫ x in a..b, f x * L (g x) := by rw [← L.intervalIntegral_comp_comm hfg_interval]; simp
    _ = f a * ∫ x in a..ξ, L (g x) := hξ_eq
    _ = f a * L (∫ x in a..ξ, g x) := by rw [L.intervalIntegral_comp_comm hg_aξ]
    _ ≤ f a * ‖∫ x in a..ξ, g x‖ := mul_le_mul_of_nonneg_left
      ((le_abs_self _).trans <| by simpa using
        (L.le_of_opNorm_le hL_norm (∫ x in a..ξ, g x))) hfa

/-- An inequality version of the second mean value theorem for interval integrals
for vector-valued functions with a nonnegative monotone weight.
Monotone variant of `exists_le_const_mul_norm_intervalIntegral_of_nonneg_of_antitoneOn`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/MeanValue/Variant4b6829306f6237fc39fdb05b8d0e19cc7440bf066ba83d038350cb24a9d7dab1.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/MeanValue/Variant4b6829306f6237fc39fdb05b8d0e19cc7440bf066ba83d038350cb24a9d7dab1.lean#L211).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `29c357cf0e2b1d9bde45be61d96d6a760bf04d8b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
