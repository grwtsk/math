# LinearMap.exists_map_addHaar_eq_smul_addHaar'

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "5448254a016ec79892ec8dcc66fc4dcf3b5a5e21",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 44,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/69/694c28fa9da8a2dc4765fd129394d1f4b86ed10ce0502f9f21f509c7ae7745ee.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:4e8c5fb8-05a7-9bfe-193a-421dcf11d1a5",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:d3605032-9925-5abd-48fa-7f17e3985148",
  "kind": "theorem",
  "lexical_name": "LinearMap.exists_map_addHaar_eq_smul_addHaar'",
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
  "slug": "linearmap-exists-map-addhaar-eq-smul-addhaar--1f346bfb2de91fa803d208e1",
  "source": {
    "blob": "5448254a016ec79892ec8dcc66fc4dcf3b5a5e21",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 107,
    "line": 44,
    "path": "GRWTSK/Algebra/LinearAlgebra/Disintegration/Variant694c28fa9da8a2dc4765fd129394d1f4b86ed10ce0502f9f21f509c7ae7745ee.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:1f346bfb2de91fa803d208e1a4c0807434b22619913013061476404a4b4e3314",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Disintegration/Variant694c28fa9da8a2dc4765fd129394d1f4b86ed10ce0502f9f21f509c7ae7745ee.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d3605032-9925-5abd-48fa-7f17e3985148`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 44–107.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem LinearMap.exists_map_addHaar_eq_smul_addHaar' (h : Function.Surjective L) :
    ∃ (c : ℝ≥0∞), 0 < c ∧ c < ∞ ∧ μ.map L = (c * addHaar (univ : Set (LinearMap.ker L))) • ν := by
  /- This is true for the second projection in product spaces, as the projection of the Haar
  measure `μS.prod μT` is equal to the Haar measure `μT` multiplied by the total mass of `μS`. This
  is also true for linear equivalences, as they map Haar measure to Haar measure. The general case
  follows from these two and linear algebra, as `L` can be interpreted as the composition of the
  projection `P` on a complement `T` to its kernel `S`, together with a linear equivalence. -/
  have : FiniteDimensional 𝕜 E := .of_locallyCompactSpace 𝕜
  have : ProperSpace F := by
    rcases subsingleton_or_nontrivial E with hE | hE
    · have : Subsingleton F := Function.Surjective.subsingleton h
      infer_instance
    · have : ProperSpace 𝕜 := .of_locallyCompact_module 𝕜 E
      have : FiniteDimensional 𝕜 F := Module.Finite.of_surjective L h
      exact FiniteDimensional.proper 𝕜 F
  let S : Submodule 𝕜 E := LinearMap.ker L
  obtain ⟨T, hT⟩ : ∃ T : Submodule 𝕜 E, IsCompl S T := Submodule.exists_isCompl S
  let M : (S × T) ≃ₗ[𝕜] E := Submodule.prodEquivOfIsCompl S T hT
  have M_cont : Continuous M.symm := LinearMap.continuous_of_finiteDimensional _
  let P : S × T →ₗ[𝕜] T := LinearMap.snd 𝕜 S T
  have P_cont : Continuous P := LinearMap.continuous_of_finiteDimensional _
  have I : Function.Bijective (LinearMap.domRestrict L T) :=
    ⟨LinearMap.injective_domRestrict_iff.2 hT.disjoint.symm,
    (LinearMap.surjective_domRestrict_iff h).2 hT.symm.codisjoint⟩
  let L' : T ≃ₗ[𝕜] F := LinearEquiv.ofBijective (LinearMap.domRestrict L T) I
  have L'_cont : Continuous L' := LinearMap.continuous_of_finiteDimensional _
  have A : L = (L' : T →ₗ[𝕜] F).comp (P.comp (M.symm : E →ₗ[𝕜] (S × T))) := by
    ext x
    obtain ⟨y, z, hyz⟩ : ∃ (y : S) (z : T), M.symm x = (y, z) := ⟨_, _, rfl⟩
    have : x = M (y, z) := by
      rw [← hyz]; simp only [LinearEquiv.apply_symm_apply]
    simp [L', P, M, this]
  have I : μ.map L = ((μ.map M.symm).map P).map L' := by
    rw [Measure.map_map, Measure.map_map, A]
    · rfl
    · exact L'_cont.measurable.comp P_cont.measurable
    · exact M_cont.measurable
    · exact L'_cont.measurable
    · exact P_cont.measurable
  let μS : Measure S := addHaar
  let μT : Measure T := addHaar
  obtain ⟨c₀, c₀_pos, c₀_fin, h₀⟩ :
      ∃ c₀ : ℝ≥0∞, c₀ ≠ 0 ∧ c₀ ≠ ∞ ∧ μ.map M.symm = c₀ • μS.prod μT := by
    have : IsAddHaarMeasure (μ.map M.symm) :=
      M.toContinuousLinearEquiv.symm.isAddHaarMeasure_map μ
    refine ⟨addHaarScalarFactor (μ.map M.symm) (μS.prod μT), ?_, ENNReal.coe_ne_top,
      isAddLeftInvariant_eq_smul _ _⟩
    simpa only [ne_eq, ENNReal.coe_eq_zero] using
      (addHaarScalarFactor_pos_of_isAddHaarMeasure (μ.map M.symm) (μS.prod μT)).ne'
  have J : (μS.prod μT).map P = (μS univ) • μT := map_snd_prod
  obtain ⟨c₁, c₁_pos, c₁_fin, h₁⟩ : ∃ c₁ : ℝ≥0∞, c₁ ≠ 0 ∧ c₁ ≠ ∞ ∧ μT.map L' = c₁ • ν := by
    have : IsAddHaarMeasure (μT.map L') :=
      L'.toContinuousLinearEquiv.isAddHaarMeasure_map μT
    refine ⟨addHaarScalarFactor (μT.map L') ν, ?_, ENNReal.coe_ne_top,
      isAddLeftInvariant_eq_smul _ _⟩
    simpa only [ne_eq, ENNReal.coe_eq_zero] using
      (addHaarScalarFactor_pos_of_isAddHaarMeasure (μT.map L') ν).ne'
  refine ⟨c₀ * c₁, by simp [pos_iff_ne_zero, c₀_pos, c₁_pos],
    ENNReal.mul_lt_top c₀_fin.lt_top c₁_fin.lt_top, ?_⟩
  simp only [I, h₀, Measure.map_smul, J, smul_smul, h₁, P_cont.aemeasurable, L'_cont.aemeasurable]
  rw [mul_assoc, mul_comm _ c₁, ← mul_assoc]

/-- The image of an additive Haar measure under a surjective linear map is proportional to a given
additive Haar measure, with a positive (but maybe infinite) factor. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Disintegration/Variant694c28fa9da8a2dc4765fd129394d1f4b86ed10ce0502f9f21f509c7ae7745ee.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Disintegration/Variant694c28fa9da8a2dc4765fd129394d1f4b86ed10ce0502f9f21f509c7ae7745ee.lean#L44).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5448254a016ec79892ec8dcc66fc4dcf3b5a5e21` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
