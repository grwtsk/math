# toNonUnital

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:1bdb67d356afabf830c655cc11ecb92d243acd8003d426094bb0a913caed4fc3",
  "kind": "instance",
  "lexical_name": "toNonUnital",
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
  "slug": "tononunital--a9a37c9ac9443af4e359976c",
  "source": {
    "blob": "693ea544e88868f98e768c35112832f9c22ba3d4",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 637,
    "line": 613,
    "path": "GRWTSK/Topology/MetricTopology/Isometric/Variantd35ad20e5d784ca3bcbe0708ef3309967a059d378cf83d2c0b302f6a9aa47d2e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:a9a37c9ac9443af4e359976caea06379ed971b6e47e56c1ad5d5d947d0089c08",
  "verification": {
    "reference": "docs/verification/Topology/MetricTopology/Isometric/Variantd35ad20e5d784ca3bcbe0708ef3309967a059d378cf83d2c0b302f6a9aa47d2e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:1bdb67d356afabf830c655cc11ecb92d243acd8003d426094bb0a913caed4fc3`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 613–637.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance toNonUnital : NonUnitalIsometricContinuousFunctionalCalculus 𝕜 A p where
  isometric a ha := by
    have : CompactSpace (σₙ 𝕜 a) := by
      have h_cpct : CompactSpace (spectrum 𝕜 a) := inferInstance
      simp only [← isCompact_iff_compactSpace, quasispectrum_eq_spectrum_union_zero] at h_cpct ⊢
      exact h_cpct |>.union isCompact_singleton
    rw [cfcₙHom_eq_cfcₙHom_of_cfcHom, cfcₙHom_of_cfcHom]
    refine isometry_cfcHom a |>.comp ?_
    simp only [MulHom.coe_coe, NonUnitalStarAlgHom.coe_toNonUnitalAlgHom,
      NonUnitalStarAlgHom.coe_coe]
    refine AddMonoidHomClass.isometry_of_norm _ fun f ↦ ?_
    let ι : C(σ 𝕜 a, σₙ 𝕜 a) := ⟨_, continuous_inclusion <| spectrum_subset_quasispectrum 𝕜 a⟩
    show ‖(f : C(σₙ 𝕜 a, 𝕜)).comp ι‖ = ‖(f : C(σₙ 𝕜 a, 𝕜))‖
    apply le_antisymm (ContinuousMap.norm_le _ (by positivity) |>.mpr ?_)
      (ContinuousMap.norm_le _ (by positivity) |>.mpr ?_)
    · rintro ⟨x, hx⟩
      exact (f : C(σₙ 𝕜 a, 𝕜)).norm_coe_le_norm ⟨x, spectrum_subset_quasispectrum 𝕜 a hx⟩
    · rintro ⟨x, hx⟩
      obtain (rfl | hx') : x = 0 ∨ x ∈ σ 𝕜 a := by
        simpa [quasispectrum_eq_spectrum_union_zero] using hx
      · show ‖f 0‖ ≤ _
        simp
      · exact (f : C(σₙ 𝕜 a, 𝕜)).comp ι |>.norm_coe_le_norm ⟨x, hx'⟩

end IsometricContinuousFunctionalCalculus
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/MetricTopology/Isometric/Variantd35ad20e5d784ca3bcbe0708ef3309967a059d378cf83d2c0b302f6a9aa47d2e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/MetricTopology/Isometric/Variantd35ad20e5d784ca3bcbe0708ef3309967a059d378cf83d2c0b302f6a9aa47d2e.lean#L613).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `693ea544e88868f98e768c35112832f9c22ba3d4` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
