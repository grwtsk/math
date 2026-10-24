# isDiscrete_tfae

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "deb0ba0adcbda9749960c136f060d75f4aee1723",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 240,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/ae/aea8b8bd87418dd1fb9c19db1e86c804b1e8406fc96d89173b3fb640568f61fa.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:58d66a57-327e-53e5-fd65-15da77777592",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:258c697e-9ade-920f-5024-d4015f9abccd",
  "kind": "theorem",
  "lexical_name": "isDiscrete_tfae",
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
  "slug": "isdiscrete-tfae--e4db7fa58ac8806cc9f7bfce",
  "source": {
    "blob": "deb0ba0adcbda9749960c136f060d75f4aee1723",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 274,
    "line": 240,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Characterization/Variantaea8b8bd87418dd1fb9c19db1e86c804b1e8406fc96d89173b3fb640568f61fa.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e4db7fa58ac8806cc9f7bfce281a95f84eb27671cbdc3eea8a251be221e697f8",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Characterization/Variantaea8b8bd87418dd1fb9c19db1e86c804b1e8406fc96d89173b3fb640568f61fa.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:258c697e-9ade-920f-5024-d4015f9abccd`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 240–274.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem isDiscrete_tfae (M : LightCondMod.{u} R) :
    TFAE
    [ M.IsDiscrete
    , IsIso ((LightCondensed.discreteUnderlyingAdj _).counit.app M)
    , (LightCondensed.discrete _).essImage M
    , (LightCondMod.LocallyConstant.functor R).essImage M
    , IsIso ((LightCondMod.LocallyConstant.adjunction R).counit.app M)
    , ∀ S : LightProfinite.{u}, Nonempty
        (IsColimit <| M.val.mapCocone (coconeRightOpOfCone S.asLimitCone))
    ] := by
  tfae_have 1 ↔ 2 := Sheaf.isConstant_iff_isIso_counit_app _ _ _
  tfae_have 1 ↔ 3 := ⟨fun ⟨h⟩ ↦ h, fun h ↦ ⟨h⟩⟩
  tfae_have 1 ↔ 4 := Sheaf.isConstant_iff_mem_essImage _
    LightProfinite.isTerminalPUnit (adjunction R) _
  tfae_have 1 ↔ 5 :=
    have : (functor R).Faithful := inferInstance
    have : (functor R).Full := inferInstance
    -- These `have` statements above shouldn't be needed, but they are.
    Sheaf.isConstant_iff_isIso_counit_app' _ LightProfinite.isTerminalPUnit (adjunction R) _
  tfae_have 6 → 1 := by
    intro h
    rw [isDiscrete_iff_isDiscrete_forget, ((LightCondSet.isDiscrete_tfae _).out 0 5:)]
    intro S
    letI : PreservesFilteredColimitsOfSize.{0, 0} (forget (ModuleCat R)) :=
      preservesFilteredColimitsOfSize_shrink.{0, u, 0, u} _
    exact ⟨isColimitOfPreserves (forget (ModuleCat R)) (h S).some⟩
  tfae_have 1 → 6 := by
    intro h S
    rw [isDiscrete_iff_isDiscrete_forget, ((LightCondSet.isDiscrete_tfae _).out 0 5:)] at h
    letI : ReflectsFilteredColimitsOfSize.{0, 0} (forget (ModuleCat R)) :=
      reflectsFilteredColimitsOfSize_shrink.{0, u, 0, u} _
    exact ⟨isColimitOfReflects (forget (ModuleCat R)) (h S).some⟩
  tfae_finish

end LightCondMod
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Characterization/Variantaea8b8bd87418dd1fb9c19db1e86c804b1e8406fc96d89173b3fb640568f61fa.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Characterization/Variantaea8b8bd87418dd1fb9c19db1e86c804b1e8406fc96d89173b3fb640568f61fa.lean#L240).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `deb0ba0adcbda9749960c136f060d75f4aee1723` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
