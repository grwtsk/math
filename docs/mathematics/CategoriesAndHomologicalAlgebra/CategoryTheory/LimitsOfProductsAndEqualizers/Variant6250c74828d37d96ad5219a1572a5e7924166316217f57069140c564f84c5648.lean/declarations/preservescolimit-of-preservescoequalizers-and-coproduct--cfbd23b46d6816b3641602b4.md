# preservesColimit_of_preservesCoequalizers_and_coproduct

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:4f37dc43-78e7-83df-5372-54e314766485",
  "kind": "lemma",
  "lexical_name": "preservesColimit_of_preservesCoequalizers_and_coproduct",
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
  "slug": "preservescolimit-of-preservescoequalizers-and-coproduct--cfbd23b46d6816b3641602b4",
  "source": {
    "blob": "25760eb77a0bbba6ede8a4dfe0d9d8d1619561f6",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 462,
    "line": 420,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/LimitsOfProductsAndEqualizers/Variant6250c74828d37d96ad5219a1572a5e7924166316217f57069140c564f84c5648.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:cfbd23b46d6816b3641602b48664459693ac02de56abb5153dd2434312f9e438",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/LimitsOfProductsAndEqualizers/Variant6250c74828d37d96ad5219a1572a5e7924166316217f57069140c564f84c5648.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:4f37dc43-78e7-83df-5372-54e314766485`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 420–462.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma preservesColimit_of_preservesCoequalizers_and_coproduct :
    PreservesColimitsOfShape J G where
  preservesColimit {K} := by
    let P := ∐ K.obj
    let Q := ∐ fun f : Σ p : J × J, p.fst ⟶ p.snd => K.obj f.1.1
    let s : Q ⟶ P := Sigma.desc fun f => K.map f.2 ≫ colimit.ι (Discrete.functor K.obj) ⟨_⟩
    let t : Q ⟶ P := Sigma.desc fun f => colimit.ι (Discrete.functor K.obj) ⟨f.1.1⟩
    let I := coequalizer s t
    let i : P ⟶ I := coequalizer.π s t
    apply preservesColimit_of_preserves_colimit_cocone
        (buildIsColimit s t (by simp [P, s]) (by simp [P, t]) (colimit.isColimit _)
          (colimit.isColimit _) (colimit.isColimit _))
    apply IsColimit.ofIsoColimit (buildIsColimit _ _ _ _ _ _ _) _
    · refine Cofan.mk (G.obj Q) fun j => G.map ?_
      apply Sigma.ι _ j
    -- fun j => G.map (Sigma.ι _ j)
    · exact Cofan.mk _ fun f => G.map (Sigma.ι _ f)
    · apply G.map s
    · apply G.map t
    · intro f
      dsimp [P, Q, s, Cofan.mk]
      simp only [← G.map_comp, colimit.ι_desc]
      congr
    · intro f
      dsimp [P, Q, t, Cofan.mk]
      simp only [← G.map_comp, colimit.ι_desc]
      dsimp
    · refine Cofork.ofπ (G.map i) ?_
      rw [← G.map_comp, ← G.map_comp]
      apply congrArg G.map
      apply coequalizer.condition
    · apply isColimitOfHasCoproductOfPreservesColimit
    · apply isColimitOfHasCoproductOfPreservesColimit
    · apply isColimitCoforkMapOfIsColimit
      apply coequalizerIsCoequalizer
    refine Cocones.ext (Iso.refl _) ?_
    intro j
    dsimp [P, Q, I, i]
    simp

end

/-- If G preserves coequalizers and finite coproducts, it preserves finite colimits. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/LimitsOfProductsAndEqualizers/Variant6250c74828d37d96ad5219a1572a5e7924166316217f57069140c564f84c5648.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/LimitsOfProductsAndEqualizers/Variant6250c74828d37d96ad5219a1572a5e7924166316217f57069140c564f84c5648.lean#L420).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `25760eb77a0bbba6ede8a4dfe0d9d8d1619561f6` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
