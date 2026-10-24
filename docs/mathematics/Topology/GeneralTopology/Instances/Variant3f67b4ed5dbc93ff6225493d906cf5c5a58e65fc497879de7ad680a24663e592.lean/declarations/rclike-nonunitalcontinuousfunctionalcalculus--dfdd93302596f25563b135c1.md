# RCLike.nonUnitalContinuousFunctionalCalculus

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "0cbdf1ff20c30af0073cf851a2f0988e8c522e45",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 128,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/3f/3f67b4ed5dbc93ff6225493d906cf5c5a58e65fc497879de7ad680a24663e592.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:e95ce382-e2ed-de9c-1505-b42d61cdaca9",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:fc59fc03-1816-66ee-d63a-e0888efc0f1c",
  "kind": "theorem",
  "lexical_name": "RCLike.nonUnitalContinuousFunctionalCalculus",
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
  "slug": "rclike-nonunitalcontinuousfunctionalcalculus--dfdd93302596f25563b135c1",
  "source": {
    "blob": "0cbdf1ff20c30af0073cf851a2f0988e8c522e45",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 157,
    "line": 128,
    "path": "GRWTSK/Topology/GeneralTopology/Instances/Variant3f67b4ed5dbc93ff6225493d906cf5c5a58e65fc497879de7ad680a24663e592.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:dfdd93302596f25563b135c16f64c689694b0b353c0b7609b4322810f1d94002",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Instances/Variant3f67b4ed5dbc93ff6225493d906cf5c5a58e65fc497879de7ad680a24663e592.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:fc59fc03-1816-66ee-d63a-e0888efc0f1c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 128–157.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem RCLike.nonUnitalContinuousFunctionalCalculus :
    NonUnitalContinuousFunctionalCalculus 𝕜 A p where
  predicate_zero := by
    rw [← hp₁, Unitization.inr_zero 𝕜]
    exact cfc_predicate_zero 𝕜
  exists_cfc_of_predicate a ha := by
    let ψ : C(σₙ 𝕜 a, 𝕜)₀ →⋆ₙₐ[𝕜] A := comp (inrRangeEquiv 𝕜 A).symm.toNonUnitalStarAlgHom <|
      codRestrict (cfcₙAux hp₁ a ha) _ (cfcₙAux_mem_range_inr hp₁ a ha)
    have coe_ψ (f : C(σₙ 𝕜 a, 𝕜)₀) : ψ f = cfcₙAux hp₁ a ha f :=
      congr_arg Subtype.val <| (inrRangeEquiv 𝕜 A).apply_symm_apply
        ⟨cfcₙAux hp₁ a ha f, cfcₙAux_mem_range_inr hp₁ a ha f⟩
    refine ⟨ψ, ?continuous, ?injective, ?map_id, fun f ↦ ?map_spec, fun f ↦ ?isStarNormal⟩
    case continuous =>
      rw [isometry_inr (𝕜 := 𝕜) |>.isEmbedding.continuous_iff]
      have := continuous_cfcₙAux hp₁ a ha
      simp only [coe_comp, StarAlgEquiv.toNonUnitalStarAlgHom_apply, Function.comp_def,
        inrRangeEquiv_symm_apply, coe_codRestrict, ψ]
      fun_prop
    case injective =>
      have h₁ : Function.Injective ⇑(codRestrict (cfcₙAux hp₁ a ha) _
          (cfcₙAux_mem_range_inr hp₁ a ha)) :=
        (Set.injective_codRestrict _).mpr (cfcₙAux_injective hp₁ a ha)
      simpa only [ψ] using! (inrRangeEquiv 𝕜 A).symm.injective.comp h₁
    case map_id => exact inr_injective (R := 𝕜) <| coe_ψ _ ▸ cfcₙAux_id hp₁ a ha
    case map_spec =>
      exact quasispectrum_eq_spectrum_inr' 𝕜 𝕜 (ψ f) ▸ coe_ψ _ ▸ spec_cfcₙAux hp₁ a ha f
    case isStarNormal => exact hp₁.mp <| coe_ψ _ ▸ cfcHom_predicate (R := 𝕜) (hp₁.mpr ha) _

open Unitization in
open scoped NonUnitalContinuousFunctionalCalculus in
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Instances/Variant3f67b4ed5dbc93ff6225493d906cf5c5a58e65fc497879de7ad680a24663e592.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Instances/Variant3f67b4ed5dbc93ff6225493d906cf5c5a58e65fc497879de7ad680a24663e592.lean#L128).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0cbdf1ff20c30af0073cf851a2f0988e8c522e45` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
