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
      "line": 125,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/ae/aea8b8bd87418dd1fb9c19db1e86c804b1e8406fc96d89173b3fb640568f61fa.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:249acd9d-30ca-056a-5b3c-d64ee11394b9",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:8dcf438b-bf54-5467-4b6d-f19dc39a2547",
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
  "slug": "isdiscrete-tfae--852d90cc46ad7bd092802e2f",
  "source": {
    "blob": "deb0ba0adcbda9749960c136f060d75f4aee1723",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 173,
    "line": 125,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Characterization/Variantaea8b8bd87418dd1fb9c19db1e86c804b1e8406fc96d89173b3fb640568f61fa.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:852d90cc46ad7bd092802e2f80a3ecb8b2a993d5b13565f761eedf3e4f8dd0d4",
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

Occurrence: `result:8dcf438b-bf54-5467-4b6d-f19dc39a2547`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 125–173.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem isDiscrete_tfae (M : CondensedMod.{u} R) :
    TFAE
    [ M.IsDiscrete
    , IsIso ((Condensed.discreteUnderlyingAdj _).counit.app M)
    , (Condensed.discrete _).essImage M
    , (CondensedMod.LocallyConstant.functor R).essImage M
    , IsIso ((CondensedMod.LocallyConstant.adjunction R).counit.app M)
    , Sheaf.IsConstant (coherentTopology Profinite)
        ((Condensed.ProfiniteCompHaus.equivalence _).inverse.obj M)
    , ∀ S : Profinite.{u}, Nonempty
        (IsColimit <| (profiniteToCompHaus.op ⋙ M.val).mapCocone S.asLimitCone.op)
    ] := by
  tfae_have 1 ↔ 2 := Sheaf.isConstant_iff_isIso_counit_app _ _ _
  tfae_have 1 ↔ 3 := ⟨fun ⟨h⟩ ↦ h, fun h ↦ ⟨h⟩⟩
  tfae_have 1 ↔ 4 := Sheaf.isConstant_iff_mem_essImage _ CompHaus.isTerminalPUnit (adjunction R) _
  tfae_have 1 ↔ 5 :=
    have : (functor R).Faithful := inferInstance
    have : (functor R).Full := inferInstance
    -- These `have` statements above shouldn't be needed, but they are.
    Sheaf.isConstant_iff_isIso_counit_app' _ CompHaus.isTerminalPUnit (adjunction R) _
  tfae_have 1 ↔ 6 :=
    (Sheaf.isConstant_iff_of_equivalence (coherentTopology Profinite)
      (coherentTopology CompHaus) profiniteToCompHaus Profinite.isTerminalPUnit
      CompHaus.isTerminalPUnit _).symm
  tfae_have 7 → 1 := by
    intro h
    rw [isDiscrete_iff_isDiscrete_forget, ((CondensedSet.isDiscrete_tfae _).out 0 6:)]
    intro S
    letI : PreservesFilteredColimitsOfSize.{u, u} (forget (ModuleCat R)) :=
      preservesFilteredColimitsOfSize_shrink.{u, u + 1, u, u + 1} _
    exact ⟨isColimitOfPreserves (forget (ModuleCat R)) (h S).some⟩
  tfae_have 1 → 7 := by
    intro h S
    rw [isDiscrete_iff_isDiscrete_forget, ((CondensedSet.isDiscrete_tfae _).out 0 6:)] at h
    letI : ReflectsFilteredColimitsOfSize.{u, u} (forget (ModuleCat R)) :=
      reflectsFilteredColimitsOfSize_shrink.{u, u + 1, u, u + 1} _
    exact ⟨isColimitOfReflects (forget (ModuleCat R)) (h S).some⟩
  tfae_finish

end CondensedMod

namespace LightCondensed

variable {C : Type*} [Category C] [HasWeakSheafify (coherentTopology LightProfinite.{u}) C]

/--
A light condensed object is *discrete* if it is constant as a sheaf, i.e. isomorphic to a constant
sheaf.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Characterization/Variantaea8b8bd87418dd1fb9c19db1e86c804b1e8406fc96d89173b3fb640568f61fa.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Characterization/Variantaea8b8bd87418dd1fb9c19db1e86c804b1e8406fc96d89173b3fb640568f61fa.lean#L125).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `deb0ba0adcbda9749960c136f060d75f4aee1723` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
