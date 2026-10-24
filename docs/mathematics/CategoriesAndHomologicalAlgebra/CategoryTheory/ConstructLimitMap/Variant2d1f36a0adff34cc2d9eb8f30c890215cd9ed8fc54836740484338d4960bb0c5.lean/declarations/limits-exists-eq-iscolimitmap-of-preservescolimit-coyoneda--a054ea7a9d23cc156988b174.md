# Limits.exists_eq_isColimitMap_of_preservesColimit_coyoneda

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:d5b420ef-1675-1c92-e5bd-42a7d6713a8d",
  "kind": "lemma",
  "lexical_name": "Limits.exists_eq_isColimitMap_of_preservesColimit_coyoneda",
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
  "slug": "limits-exists-eq-iscolimitmap-of-preservescolimit-coyoneda--a054ea7a9d23cc156988b174",
  "source": {
    "blob": "c458c6d88c1f12663fa0a99f8eddecff3dc6c814",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 140,
    "line": 109,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/ConstructLimitMap/Variant2d1f36a0adff34cc2d9eb8f30c890215cd9ed8fc54836740484338d4960bb0c5.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a054ea7a9d23cc156988b1740cd6415adca168efc75279f2488b75a921a9f8aa",
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

Occurrence: `result:d5b420ef-1675-1c92-e5bd-42a7d6713a8d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 109–140.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma Limits.exists_eq_isColimitMap_of_preservesColimit_coyoneda
    {c : Cocone D} {c' : Cocone D'} (hc : IsColimit c) (hc' : IsColimit c') (f : c.pt ⟶ c'.pt)
    [IsFiltered I] [IsFiltered I']
    [∀ i : I, PreservesColimit D' (coyoneda.obj (.op (D.obj i)))] :
    ∃ (J : Type (max u₂ u₃ v₁))
      (_ : Category.{max v₂ v₃} J) (_ : IsFiltered J) (G : J ⥤ I) (G' : J ⥤ I')
      (_ : G.Final) (_ : G'.Final) (g : G ⋙ D ⟶ G' ⋙ D'),
      f = IsColimit.map ((Functor.Final.isColimitWhiskerEquiv _ _).symm hc) (c'.whisker _) g := by
  have (i : Iᵒᵖ) : PreservesColimit D'.op.op (yoneda.obj (D.op.obj i)) := by
    suffices PreservesColimit (D'.op.op ⋙ unopUnop C) (coyoneda.obj (.op (D.obj i.unop))) from
      let iso : yoneda.obj (.op (D.obj i.unop)) ≅ unopUnop C ⋙ coyoneda.obj (.op (D.obj i.unop)) :=
        NatIso.ofComponents fun W ↦ (opEquiv _ _).toIso
      preservesColimit_of_natIso D'.op.op iso.symm
    rw [← Functor.Final.preservesColimit_comp_iff (opOp I')]
    let iso : opOp I' ⋙ D'.op.op ⋙ unopUnop C ≅ D' := .refl _
    exact preservesColimit_of_iso_diagram _ iso.symm
  obtain ⟨J, _, _, G, G', _, _, g, hg⟩ :=
    exists_eq_isLimitMap_of_preservesColimit_yoneda hc'.op hc.op f.op
  have := NatTrans.leftOp g
  refine ⟨Jᵒᵖ, inferInstance, inferInstance, G'.leftOp, G.leftOp, inferInstance, inferInstance,
    NatTrans.leftOp g, ?_⟩
  refine Quiver.Hom.op_inj ?_
  rw [hg]
  refine ((Functor.Initial.isLimitWhiskerEquiv G' c.op).symm hc.op).hom_ext fun k ↦ ?_
  rw [IsLimit.map_π]
  dsimp
  rw [← op_comp]
  simp [dsimp% ((Functor.Final.isColimitWhiskerEquiv G'.leftOp c).symm hc).ι_map]

end

end CategoryTheory
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/ConstructLimitMap/Variant2d1f36a0adff34cc2d9eb8f30c890215cd9ed8fc54836740484338d4960bb0c5.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/ConstructLimitMap/Variant2d1f36a0adff34cc2d9eb8f30c890215cd9ed8fc54836740484338d4960bb0c5.lean#L109).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c458c6d88c1f12663fa0a99f8eddecff3dc6c814` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
