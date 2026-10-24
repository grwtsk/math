# isometric_cfc

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:56b64fa2-c9de-a9e9-66f7-2f450544f3e2",
  "kind": "theorem",
  "lexical_name": "isometric_cfc",
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
  "slug": "isometric-cfc--4c92cf7b407be2c5997f3529",
  "source": {
    "blob": "693ea544e88868f98e768c35112832f9c22ba3d4",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 217,
    "line": 184,
    "path": "GRWTSK/Topology/MetricTopology/Isometric/Variantd35ad20e5d784ca3bcbe0708ef3309967a059d378cf83d2c0b302f6a9aa47d2e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:4c92cf7b407be2c5997f35292b85ce1340867b545eeb5b187944cbdbf98c0cd7",
  "verification": {
    "reference": "docs/verification/Topology/MetricTopology/Isometric/Variantd35ad20e5d784ca3bcbe0708ef3309967a059d378cf83d2c0b302f6a9aa47d2e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:56b64fa2-c9de-a9e9-66f7-2f450544f3e2`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 184–217.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
protected theorem isometric_cfc (f : C(S, R)) (halg : Isometry (algebraMap R S)) (h0 : p 0)
    (h : ∀ a, p a ↔ q a ∧ SpectrumRestricts a f) :
    IsometricContinuousFunctionalCalculus R A p where
  toContinuousFunctionalCalculus := SpectrumRestricts.cfc f halg.isUniformEmbedding h0 h
  isometric a ha := by
    obtain ⟨ha', haf⟩ := h a |>.mp ha
    have _inst (a : A) : CompactSpace (σ R a) := by
      rw [← isCompact_iff_compactSpace, ← spectrum.preimage_algebraMap S]
      exact halg.isClosedEmbedding.isCompact_preimage <|
        ContinuousFunctionalCalculus.isCompact_spectrum a
    have := SpectrumRestricts.cfc f halg.isUniformEmbedding h0 h
    rw [cfcHom_eq_restrict f halg.isUniformEmbedding ha ha' haf]
    refine .of_dist_eq fun g₁ g₂ ↦ ?_
    simp only [starAlgHom_apply, isometry_cfcHom a ha' |>.dist_eq]
    refine le_antisymm ?_ ?_
    all_goals refine ContinuousMap.dist_le dist_nonneg |>.mpr fun x ↦ ?_
    · simpa [halg.dist_eq] using ContinuousMap.dist_apply_le_dist _
    · let x' : σ S a := Subtype.map (algebraMap R S) (fun _ ↦ spectrum.algebraMap_mem S) x
      apply le_of_eq_of_le ?_ <| ContinuousMap.dist_apply_le_dist x'
      simp only [ContinuousMap.comp_apply, ContinuousMap.coe_mk, StarAlgHom.ofId_apply,
        halg.dist_eq, x']
      congr!
      all_goals ext; exact haf.left_inv _ |>.symm

end SpectrumRestricts

end Unital

/-! ### Isometric continuous functional calculus for non-unital algebras -/

section NonUnital

/-- An extension of the `NonUnitalContinuousFunctionalCalculus` requiring that `cfcₙHom` is an
isometry. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/MetricTopology/Isometric/Variantd35ad20e5d784ca3bcbe0708ef3309967a059d378cf83d2c0b302f6a9aa47d2e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/MetricTopology/Isometric/Variantd35ad20e5d784ca3bcbe0708ef3309967a059d378cf83d2c0b302f6a9aa47d2e.lean#L184).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `693ea544e88868f98e768c35112832f9c22ba3d4` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
