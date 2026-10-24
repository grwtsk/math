# volume_eq_two_pow_mul_two_pi_pow_mul_integral

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:64409c1d-66c9-1b94-9c79-35b5ba37337b",
  "kind": "theorem",
  "lexical_name": "volume_eq_two_pow_mul_two_pi_pow_mul_integral",
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
  "slug": "volume-eq-two-pow-mul-two-pi-pow-mul-integral--9ac323f24459c8a819c018cb",
  "source": {
    "blob": "a9c0e9cd6115cde474d9fa7d3148a7ac2355186c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 469,
    "line": 443,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/PolarCoord/Variant778ca250bd768a12690f6c53887cdc0d1023d2d0291f8c21834f485a18e79a78.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:9ac323f24459c8a819c018cbbeb83098179724446442e7ac18ea51dd71193367",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/PolarCoord/Variant778ca250bd768a12690f6c53887cdc0d1023d2d0291f8c21834f485a18e79a78.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:64409c1d-66c9-1b94-9c79-35b5ba37337b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 443–469.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem volume_eq_two_pow_mul_two_pi_pow_mul_integral [NumberField K]
    (hA : normAtAllPlaces ⁻¹' (normAtAllPlaces '' A) = A) (hm : MeasurableSet A) :
    volume A = 2 ^ nrRealPlaces K * .ofReal (2 * π) ^ nrComplexPlaces K *
      ∫⁻ x in normAtAllPlaces '' A, ∏ w : {w // IsComplex w}, ENNReal.ofReal (x w.1) := by
  have hA₁ (x : mixedSpace K) : x ∈ A ↔ (fun w ↦ ‖x.1 w‖, x.2) ∈ A := by
    rw [← hA]
    simp_rw [Set.mem_preimage, Set.mem_image, normAtAllPlaces_norm_at_real_places]
  have hA₃ : normAtComplexPlaces ⁻¹' (normAtComplexPlaces '' (plusPart A)) = plusPart A := by
    refine subset_antisymm (fun x ⟨a, ha₁, ha₂⟩ ↦ ⟨?_, fun w ↦ ?_⟩) (Set.subset_preimage_image _ _)
    · rw [← hA, Set.mem_preimage, ← normAtAllPlaces_eq_of_normAtComplexPlaces_eq ha₂]
      exact Set.mem_image_of_mem normAtAllPlaces (Set.inter_subset_left ha₁)
    · have := funext_iff.mp ha₂ w
      rw [normAtComplexPlaces_apply_isReal, normAtComplexPlaces_apply_isReal] at this
      rw [← this]
      exact ha₁.2 w
  rw [volume_eq_two_pow_mul_volume_plusPart hA₁ hm, volume_eq_two_pi_pow_mul_integral hA₃
    (measurableSet_plusPart hm), ← mul_assoc]
  refine congr_arg (_ * _ * ·) <| setLIntegral_congr ?_
  rw [← volume_eq_two_pow_mul_two_pi_pow_mul_integral_aux hA]
  refine inter_ae_eq_left_of_ae_eq_univ <| ae_eq_univ.mpr
    <| Set.compl_iInter _ ▸ measure_iUnion_null_iff.mpr fun w ↦ ?_
  rw [show {x : realSpace K | x w.1 ≠ 0}ᶜ = {x | x w.1 = 0} by ext; simp]
  exact realSpace.volume_eq_zero w.1

end polarSpace

end NumberField.mixedEmbedding
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/PolarCoord/Variant778ca250bd768a12690f6c53887cdc0d1023d2d0291f8c21834f485a18e79a78.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/PolarCoord/Variant778ca250bd768a12690f6c53887cdc0d1023d2d0291f8c21834f485a18e79a78.lean#L443).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a9c0e9cd6115cde474d9fa7d3148a7ac2355186c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
