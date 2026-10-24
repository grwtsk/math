# cfc

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:518828bc-fb60-0a6f-f0f6-523462572aef",
  "kind": "theorem",
  "lexical_name": "cfc",
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
  "slug": "cfc--eefb80e57f8b620687c0ba4a",
  "source": {
    "blob": "8d7eb2a460f8a8377a0910c0cd9de199ea269891",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 149,
    "line": 105,
    "path": "GRWTSK/Topology/GeneralTopology/Restrict/Variant30b9216be3a709913240470f2e7dc48deeb456fb58b0900e51bcb8d250e7a544.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:eefb80e57f8b620687c0ba4a60de6d310b9fb48571f473d180fde0acea8d4b94",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Restrict/Variant30b9216be3a709913240470f2e7dc48deeb456fb58b0900e51bcb8d250e7a544.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:518828bc-fb60-0a6f-f0f6-523462572aef`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 105–149.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
protected theorem cfc (f : C(S, R)) (halg : IsUniformEmbedding (algebraMap R S)) (h0 : p 0)
    (h : ∀ a, p a ↔ q a ∧ SpectrumRestricts a f) :
    ContinuousFunctionalCalculus R A p where
  predicate_zero := h0
  spectrum_nonempty a ha := ((h a).mp ha).2.image ▸
    (ContinuousFunctionalCalculus.spectrum_nonempty a ((h a).mp ha).1 |>.image f)
  compactSpace_spectrum a := by
    have := ContinuousFunctionalCalculus.compactSpace_spectrum (R := S) a
    rw [← isCompact_iff_compactSpace] at this ⊢
    simpa using halg.isClosedEmbedding.isCompact_preimage this
  exists_cfc_of_predicate a ha := by
    refine ⟨((h a).mp ha).2.starAlgHom (cfcHom ((h a).mp ha).1 (R := S)),
      ?hom_isClosedEmbedding, ?hom_id, ?hom_map_spectrum, ?predicate_hom⟩
    case hom_isClosedEmbedding =>
      exact ((h a).mp ha).2.isClosedEmbedding_starAlgHom
        (cfcHom_isClosedEmbedding ((h a).mp ha).1) halg
    case hom_id => exact ((h a).mp ha).2.starAlgHom_id <| cfcHom_id ((h a).mp ha).1
    case hom_map_spectrum =>
      intro g
      rw [SpectrumRestricts.starAlgHom_apply]
      simp only [← @spectrum.preimage_algebraMap (R := R) S, cfcHom_map_spectrum]
      ext x
      constructor
      · rintro ⟨y, hy⟩
        have := congr_arg f hy
        simp only [ContinuousMap.coe_mk, ContinuousMap.comp_apply, StarAlgHom.ofId_apply] at this
        rw [((h a).mp ha).2.left_inv _, ((h a).mp ha).2.left_inv _] at this
        exact ⟨_, this⟩
      · rintro ⟨y, rfl⟩
        rw [Set.mem_preimage]
        refine ⟨⟨algebraMap R S y, spectrum.algebraMap_mem S y.prop⟩, ?_⟩
        simp only [ContinuousMap.coe_mk, ContinuousMap.comp_apply, StarAlgHom.ofId_apply]
        congr
        exact Subtype.ext (((h a).mp ha).2.left_inv y)
    case predicate_hom =>
      intro g
      rw [h]
      refine ⟨cfcHom_predicate _ _, ?_⟩
      refine .of_rightInvOn (((h a).mp ha).2.left_inv) fun s hs ↦ ?_
      rw [SpectrumRestricts.starAlgHom_apply, cfcHom_map_spectrum] at hs
      obtain ⟨r, rfl⟩ := hs
      simp [((h a).mp ha).2.left_inv _]

variable [ContinuousFunctionalCalculus R A p] [ContinuousMap.UniqueHom R A]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Restrict/Variant30b9216be3a709913240470f2e7dc48deeb456fb58b0900e51bcb8d250e7a544.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Restrict/Variant30b9216be3a709913240470f2e7dc48deeb456fb58b0900e51bcb8d250e7a544.lean#L105).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8d7eb2a460f8a8377a0910c0cd9de199ea269891` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
