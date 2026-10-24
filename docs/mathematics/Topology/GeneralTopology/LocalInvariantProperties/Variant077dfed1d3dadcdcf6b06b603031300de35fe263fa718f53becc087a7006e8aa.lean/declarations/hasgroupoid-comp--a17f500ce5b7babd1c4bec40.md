# HasGroupoid.comp

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:09e01bb2-a666-54b9-444b-43d4ceed227e",
  "kind": "theorem",
  "lexical_name": "HasGroupoid.comp",
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
  "slug": "hasgroupoid-comp--a17f500ce5b7babd1c4bec40",
  "source": {
    "blob": "0e497d787ca2cb9e80a13f7df41c26cb91d46ff9",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 687,
    "line": 659,
    "path": "GRWTSK/Topology/GeneralTopology/LocalInvariantProperties/Variant077dfed1d3dadcdcf6b06b603031300de35fe263fa718f53becc087a7006e8aa.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a17f500ce5b7babd1c4bec4061964c90b5e5af472cdd40070e46b105a7e32c5b",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/LocalInvariantProperties/Variant077dfed1d3dadcdcf6b06b603031300de35fe263fa718f53becc087a7006e8aa.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:09e01bb2-a666-54b9-444b-43d4ceed227e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 659–687.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem HasGroupoid.comp
    (H : ∀ e ∈ G₂, LiftPropOn (IsLocalStructomorphWithinAt G₁) (e : H₂ → H₂) e.source) :
    @HasGroupoid H₁ _ H₃ _ (ChartedSpace.comp H₁ H₂ H₃) G₁ :=
  let _ := ChartedSpace.comp H₁ H₂ H₃ -- Porting note: need this to synthesize `ChartedSpace H₁ H₃`
  { compatible := by
      rintro _ _ ⟨e, he, f, hf, rfl⟩ ⟨e', he', f', hf', rfl⟩
      apply G₁.locality
      intro x hx
      simp only [mfld_simps] at hx
      have hxs : x ∈ f.symm ⁻¹' (e.symm ≫ₕ e').source := by simp only [hx, mfld_simps]
      have hxs' : x ∈ f.target ∩ f.symm ⁻¹' ((e.symm ≫ₕ e').source ∩ e.symm ≫ₕ e' ⁻¹' f'.source) :=
        by simp only [hx, mfld_simps]
      obtain ⟨φ, hφG₁, hφ, hφ_dom⟩ := LocalInvariantProp.liftPropOn_indep_chart
        (isLocalStructomorphWithinAt_localInvariantProp G₁) (G₁.subset_maximalAtlas hf)
        (G₁.subset_maximalAtlas hf') (H _ (G₂.compatible he he')) hxs' hxs
      simp_rw [← PartialHomeomorph.coe_trans, PartialHomeomorph.trans_assoc] at hφ
      simp_rw [PartialHomeomorph.trans_symm_eq_symm_trans_symm, PartialHomeomorph.trans_assoc]
      have hs : IsOpen (f.symm ≫ₕ e.symm ≫ₕ e' ≫ₕ f').source :=
        (f.symm ≫ₕ e.symm ≫ₕ e' ≫ₕ f').open_source
      refine ⟨_, hs.inter φ.open_source, ?_, ?_⟩
      · simp only [hx, hφ_dom, mfld_simps]
      · refine G₁.mem_of_eqOnSource (closedUnderRestriction' hφG₁ hs) ?_
        rw [PartialHomeomorph.restr_source_inter]
        refine PartialHomeomorph.Set.EqOn.restr_eqOn_source (hφ.mono ?_)
        mfld_set_tac }

end LocalStructomorph

end StructureGroupoid
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/LocalInvariantProperties/Variant077dfed1d3dadcdcf6b06b603031300de35fe263fa718f53becc087a7006e8aa.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/LocalInvariantProperties/Variant077dfed1d3dadcdcf6b06b603031300de35fe263fa718f53becc087a7006e8aa.lean#L659).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0e497d787ca2cb9e80a13f7df41c26cb91d46ff9` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
