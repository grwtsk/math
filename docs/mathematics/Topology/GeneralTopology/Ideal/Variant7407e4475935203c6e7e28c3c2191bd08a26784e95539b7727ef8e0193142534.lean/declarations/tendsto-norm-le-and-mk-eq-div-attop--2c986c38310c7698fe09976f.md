# tendsto_norm_le_and_mk_eq_div_atTop

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "cc960910b0e064b7e1886a6811e46602a9254dc9",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 73,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/74/7407e4475935203c6e7e28c3c2191bd08a26784e95539b7727ef8e0193142534.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:18c0a611-89a2-0f93-855d-07b6f89033bd",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:3207e054-033a-f333-a6d3-d298b3e0dcf4",
  "kind": "theorem",
  "lexical_name": "tendsto_norm_le_and_mk_eq_div_atTop",
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
  "slug": "tendsto-norm-le-and-mk-eq-div-attop--2c986c38310c7698fe09976f",
  "source": {
    "blob": "cc960910b0e064b7e1886a6811e46602a9254dc9",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 120,
    "line": 73,
    "path": "GRWTSK/Topology/GeneralTopology/Ideal/Variant7407e4475935203c6e7e28c3c2191bd08a26784e95539b7727ef8e0193142534.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:2c986c38310c7698fe09976f24f69f412839b2bb6a4935734a26f57451c0fcfb",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Ideal/Variant7407e4475935203c6e7e28c3c2191bd08a26784e95539b7727ef8e0193142534.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:3207e054-033a-f333-a6d3-d298b3e0dcf4`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 73–120.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem tendsto_norm_le_and_mk_eq_div_atTop :
    Tendsto (fun s : ℝ ↦
      (Nat.card {I : (Ideal (𝓞 K))⁰ //
        absNorm (I : Ideal (𝓞 K)) ≤ s ∧ ClassGroup.mk0 I = C} : ℝ) / s) atTop
          (𝓝 ((2 ^ nrRealPlaces K * (2 * π) ^ nrComplexPlaces K * regulator K) /
            (torsionOrder K *  Real.sqrt |discr K|))) := by
  classical
  have h₁ : ∀ s : ℝ,
    {x | x ∈ toMixed K ⁻¹' fundamentalCone K ∧ mixedEmbedding.norm (toMixed K x) ≤ s} =
      toMixed K ⁻¹' {x | x ∈ fundamentalCone K ∧ mixedEmbedding.norm x ≤ s} := fun _ ↦ rfl
  have h₂ : {x | x ∈ fundamentalCone K ∧ mixedEmbedding.norm x ≤ 1} = normLeOne K := by ext; simp
  obtain ⟨J, hJ⟩ := ClassGroup.mk0_surjective C⁻¹
  have h₃ : (absNorm J.1 : ℝ) ≠ 0 := (Nat.cast_ne_zero.mpr (absNorm_ne_zero_of_nonZeroDivisors J))
  convert ((ZLattice.covolume.tendsto_card_le_div'
    (ZLattice.comap ℝ (mixedEmbedding.idealLattice K (FractionalIdeal.mk0 K J))
      (toMixed K).toLinearMap)
    (F := fun x ↦ mixedEmbedding.norm (toMixed K x))
    (X := (toMixed K)⁻¹' (fundamentalCone K)) (fun _ _ _ h ↦ ?_) (fun _ _ h ↦ ?_)
    (isBounded_normLeOne K) ?_ ?_).mul (tendsto_const_nhds
      (x := (absNorm (J : Ideal (𝓞 K)) : ℝ) * (torsionOrder K : ℝ)⁻¹))).comp
    (tendsto_id.atTop_mul_const' <| Nat.cast_pos.mpr (absNorm_pos_of_nonZeroDivisors J))
    using 2 with s
  · simp_rw [Ideal.tendsto_norm_le_and_mk_eq_div_atTop_aux₁ K hJ, id_eq,
      Nat.card_congr (Ideal.tendsto_norm_le_and_mk_eq_div_atTop_aux₂ K),
      ← card_isPrincipal_dvd_norm_le, Function.comp_def, Nat.cast_mul, div_eq_mul_inv, mul_inv,
      ← mul_assoc, mul_comm _ (torsionOrder K : ℝ)⁻¹, mul_comm _ (torsionOrder K : ℝ), mul_assoc]
    rw [inv_mul_cancel_left₀ (Nat.cast_ne_zero.mpr (torsionOrder_ne_zero K)), inv_mul_cancel₀ h₃,
      mul_one]
  · rw [h₁, h₂, MeasureTheory.measureReal_def, (volumePreserving_toMixed K).measure_preimage
      (measurableSet_normLeOne K).nullMeasurableSet, volume_normLeOne, ZLattice.covolume_comap
      _ _ _ (volumePreserving_toMixed K), covolume_idealLattice, ENNReal.toReal_mul,
      ENNReal.toReal_mul, ENNReal.toReal_pow, ENNReal.toReal_pow, ENNReal.toReal_ofNat,
      ENNReal.coe_toReal, NNReal.coe_real_pi, ENNReal.toReal_ofReal (regulator_pos K).le,
      FractionalIdeal.coe_mk0, FractionalIdeal.coeIdeal_absNorm, Rat.cast_natCast, div_eq_mul_inv,
      div_eq_mul_inv, mul_inv, mul_inv, mul_inv, inv_pow, inv_inv]
    ring_nf
    rw [mul_inv_cancel_right₀ h₃]
  · rwa [Set.mem_preimage, map_smul, smul_mem_iff_mem h.ne']
  · dsimp only
    rw [map_smul, mixedEmbedding.norm_smul, euclidean.finrank, abs_of_nonneg h]
  · exact (toMixed K).continuous.measurable (measurableSet_normLeOne K)
  · rw [h₁, ← (toMixed K).coe_toHomeomorph, ← Homeomorph.preimage_frontier,
      (toMixed K).coe_toHomeomorph, (volumePreserving_toMixed K).measure_preimage
      measurableSet_frontier.nullMeasurableSet, h₂, volume_frontier_normLeOne]

/--
The limit of the number of nonzero integral ideals of norm `≤ s` divided by `s` when `s → +∞`.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Ideal/Variant7407e4475935203c6e7e28c3c2191bd08a26784e95539b7727ef8e0193142534.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Ideal/Variant7407e4475935203c6e7e28c3c2191bd08a26784e95539b7727ef8e0193142534.lean#L73).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `cc960910b0e064b7e1886a6811e46602a9254dc9` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
