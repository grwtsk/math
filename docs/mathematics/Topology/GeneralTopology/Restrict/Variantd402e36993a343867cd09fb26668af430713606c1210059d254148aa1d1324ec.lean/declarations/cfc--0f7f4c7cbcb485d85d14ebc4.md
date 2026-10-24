# cfc

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "e2c64f4e34fc652470fac9ca6b9e468838066640",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 240,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/d4/d402e36993a343867cd09fb26668af430713606c1210059d254148aa1d1324ec.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:47848c70-abbb-cf3e-0c30-ac0e848d487e",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:93a19df9-de3e-9d0f-2427-96d1b5ab3530",
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
  "slug": "cfc--0f7f4c7cbcb485d85d14ebc4",
  "source": {
    "blob": "e2c64f4e34fc652470fac9ca6b9e468838066640",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 287,
    "line": 240,
    "path": "GRWTSK/Topology/GeneralTopology/Restrict/Variantd402e36993a343867cd09fb26668af430713606c1210059d254148aa1d1324ec.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:0f7f4c7cbcb485d85d14ebc479e9985b3607b03cbaba121b12ec452bc8814af3",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Restrict/Variantd402e36993a343867cd09fb26668af430713606c1210059d254148aa1d1324ec.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:93a19df9-de3e-9d0f-2427-96d1b5ab3530`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 240–287.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
protected theorem cfc (f : C(S, R)) (halg : IsUniformEmbedding (algebraMap R S)) (h0 : p 0)
    (h : ∀ a, p a ↔ q a ∧ QuasispectrumRestricts a f) :
    NonUnitalContinuousFunctionalCalculus R A p where
  predicate_zero := h0
  compactSpace_quasispectrum a := by
    have := NonUnitalContinuousFunctionalCalculus.compactSpace_quasispectrum (R := S) a
    rw [← isCompact_iff_compactSpace] at this ⊢
    simpa using halg.isClosedEmbedding.isCompact_preimage this
  exists_cfc_of_predicate a ha := by
    refine ⟨((h a).mp ha).2.nonUnitalStarAlgHom (cfcₙHom ((h a).mp ha).1 (R := S)),
      ?hom_isClosedEmbedding, ?hom_id, ?hom_map_spectrum, ?predicate_hom⟩
    case hom_isClosedEmbedding =>
      exact ((h a).mp ha).2.isClosedEmbedding_nonUnitalStarAlgHom
        (cfcₙHom_isClosedEmbedding ((h a).mp ha).1) halg
    case hom_id => exact ((h a).mp ha).2.nonUnitalStarAlgHom_id <| cfcₙHom_id ((h a).mp ha).1
    case hom_map_spectrum =>
      intro g
      rw [nonUnitalStarAlgHom_apply]
      simp only [← @quasispectrum.preimage_algebraMap (R := R) S, cfcₙHom_map_quasispectrum]
      ext x
      constructor
      · rintro ⟨y, hy⟩
        have := congr_arg f hy
        simp only [nonUnitalStarAlgHom_postcomp_apply, NonUnitalStarAlgHom.coe_coe,
          Function.comp_apply, comp_apply, coe_mk, ContinuousMap.coe_mk, StarAlgHom.ofId_apply]
          at this
        rw [((h a).mp ha).2.left_inv _, ((h a).mp ha).2.left_inv _] at this
        exact ⟨_, this⟩
      · rintro ⟨y, rfl⟩
        rw [Set.mem_preimage]
        refine ⟨⟨algebraMap R S y, quasispectrum.algebraMap_mem S y.prop⟩, ?_⟩
        simp only [nonUnitalStarAlgHom_postcomp_apply, NonUnitalStarAlgHom.coe_coe,
          Function.comp_apply, comp_apply, coe_mk, ContinuousMap.coe_mk, StarAlgHom.ofId_apply]
        congr
        exact Subtype.ext (((h a).mp ha).2.left_inv y)
    case predicate_hom =>
      intro g
      rw [h]
      refine ⟨cfcₙHom_predicate _ _, ?_⟩
      refine { rightInvOn := fun s hs ↦ ?_, left_inv := ((h a).mp ha).2.left_inv }
      rw [nonUnitalStarAlgHom_apply,
        cfcₙHom_map_quasispectrum] at hs
      obtain ⟨r, rfl⟩ := hs
      simp [((h a).mp ha).2.left_inv _]

variable [NonUnitalContinuousFunctionalCalculus R A p]
variable [ContinuousMapZero.UniqueHom R A]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Restrict/Variantd402e36993a343867cd09fb26668af430713606c1210059d254148aa1d1324ec.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Restrict/Variantd402e36993a343867cd09fb26668af430713606c1210059d254148aa1d1324ec.lean#L240).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e2c64f4e34fc652470fac9ca6b9e468838066640` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
