# Limits.exists_eq_isLimitMap_of_preservesColimit_yoneda

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:f280c783-6026-a9b5-3767-b827c6778788",
  "kind": "lemma",
  "lexical_name": "Limits.exists_eq_isLimitMap_of_preservesColimit_yoneda",
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
  "slug": "limits-exists-eq-islimitmap-of-preservescolimit-yoneda--204ed443aaa2914c7609c390",
  "source": {
    "blob": "c458c6d88c1f12663fa0a99f8eddecff3dc6c814",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 108,
    "line": 86,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/ConstructLimitMap/Variant2d1f36a0adff34cc2d9eb8f30c890215cd9ed8fc54836740484338d4960bb0c5.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:204ed443aaa2914c7609c39005b4e1aef603603887470d04a93e45c6a6f83897",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/ConstructLimitMap/Variant2d1f36a0adff34cc2d9eb8f30c890215cd9ed8fc54836740484338d4960bb0c5.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f280c783-6026-a9b5-3767-b827c6778788`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 86–108.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma Limits.exists_eq_isLimitMap_of_preservesColimit_yoneda
    {c : Cone D} {c' : Cone D'} (hc : IsLimit c) (hc' : IsLimit c') (f : c.pt ⟶ c'.pt)
    [IsCofiltered I] [IsCofiltered I']
    [∀ i : I', PreservesColimit D.op (yoneda.obj (D'.obj i))] :
    ∃ (J : Type (max u₂ u₃ v₁))
      (_ : Category.{max v₂ v₃} J) (_ : IsCofiltered J) (G : J ⥤ I) (G' : J ⥤ I')
      (_ : G.Initial) (_ : G'.Initial) (g : G ⋙ D ⟶ G' ⋙ D'),
      f = IsLimit.map (c.whisker _) ((Functor.Initial.isLimitWhiskerEquiv _ _).symm hc') g := by
  have := isCofiltered_costructuredArrow hc f
  have := Comma.isCofiltered_of_isCofiltered_costructuredArrow (left c) (right c' f)
  have := Comma.initial_fst_of_isCofiltered_costructuredArrow (left c) (right c' f)
  have := ConstructLimitMap.initial_snd hc f
  refine ⟨_, inferInstance, inferInstance, _, _, inferInstance, inferInstance,
    ConstructLimitMap.map f, ?_⟩
  apply ((Functor.Initial.isLimitWhiskerEquiv _ _).symm hc').hom_ext
  intro A
  rw [IsLimit.map_π]
  exact (Under.w A.hom).symm

set_option backward.defeqAttrib.useBackward true in
/-- A morphism `f` between filtered colimits, where every object of the source diagram is
presentable relative to the target diagram, is finally induced by a natural transformation of
diagrams.is induced by a natural transformation of diagrams. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/ConstructLimitMap/Variant2d1f36a0adff34cc2d9eb8f30c890215cd9ed8fc54836740484338d4960bb0c5.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/ConstructLimitMap/Variant2d1f36a0adff34cc2d9eb8f30c890215cd9ed8fc54836740484338d4960bb0c5.lean#L86).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c458c6d88c1f12663fa0a99f8eddecff3dc6c814` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
