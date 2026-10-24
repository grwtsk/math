# IsGreatest.norm_cfcₙ

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:d302e26b-6223-d80d-1b4d-0203ded4c189",
  "kind": "lemma",
  "lexical_name": "IsGreatest.norm_cfcₙ",
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
  "slug": "isgreatest-norm-cfc--e3e1ea0aa5cf8ae6b1a6af5b",
  "source": {
    "blob": "693ea544e88868f98e768c35112832f9c22ba3d4",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 275,
    "line": 261,
    "path": "GRWTSK/Topology/MetricTopology/Isometric/Variantd35ad20e5d784ca3bcbe0708ef3309967a059d378cf83d2c0b302f6a9aa47d2e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e3e1ea0aa5cf8ae6b1a6af5b61a97f1a0ed66ceb28b1522924befa54c87c7fd4",
  "verification": {
    "reference": "docs/verification/Topology/MetricTopology/Isometric/Variantd35ad20e5d784ca3bcbe0708ef3309967a059d378cf83d2c0b302f6a9aa47d2e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d302e26b-6223-d80d-1b4d-0203ded4c189`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 261–275.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma IsGreatest.norm_cfcₙ (f : 𝕜 → 𝕜) (a : A)
    (hf : ContinuousOn f (σₙ 𝕜 a) := by cfc_cont_tac) (hf₀ : f 0 = 0 := by cfc_zero_tac)
    (ha : p a := by cfc_tac) : IsGreatest ((fun x ↦ ‖f x‖) '' σₙ 𝕜 a) ‖cfcₙ f a‖ := by
  obtain ⟨x, hx⟩ := NonUnitalContinuousFunctionalCalculus.isCompact_quasispectrum a
      |>.image_of_continuousOn hf.norm |>.exists_isGreatest <|
      (quasispectrum.nonempty 𝕜 a).image _
  obtain ⟨x, hx', rfl⟩ := hx.1
  convert hx
  rw [cfcₙ_apply f a, norm_cfcₙHom a _]
  apply le_antisymm
  · apply ContinuousMap.norm_le _ (norm_nonneg _) |>.mpr
    rintro ⟨y, hy⟩
    exact hx.2 ⟨y, hy, rfl⟩
  · exact le_trans (by simp) <| ContinuousMap.norm_coe_le_norm _ (⟨x, hx'⟩ : σₙ 𝕜 a)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/MetricTopology/Isometric/Variantd35ad20e5d784ca3bcbe0708ef3309967a059d378cf83d2c0b302f6a9aa47d2e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/MetricTopology/Isometric/Variantd35ad20e5d784ca3bcbe0708ef3309967a059d378cf83d2c0b302f6a9aa47d2e.lean#L261).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `693ea544e88868f98e768c35112832f9c22ba3d4` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
