# final_of_final_costructuredArrowToOver

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "fd3e022c39b147e1629b38413cef6e6c2260accd",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 68,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/a0/a01038a659c0afac10ca81824b05edea0a3da0cc9193df6b41e8877b9f492ecf.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:c03280f6-2e66-0871-8a76-fd4c4e849447",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:5bc52210-a2b7-f503-e6d1-df56d87c3868",
  "kind": "theorem",
  "lexical_name": "final_of_final_costructuredArrowToOver",
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
  "slug": "final-of-final-costructuredarrowtoover--3d170d4aabbd9f42ce4b5fdd",
  "source": {
    "blob": "fd3e022c39b147e1629b38413cef6e6c2260accd",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 92,
    "line": 68,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Final/Varianta01038a659c0afac10ca81824b05edea0a3da0cc9193df6b41e8877b9f492ecf.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:3d170d4aabbd9f42ce4b5fdd80c4dc2c1985a29676e8d06e3a9bda40400ea6f3",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Final/Varianta01038a659c0afac10ca81824b05edea0a3da0cc9193df6b41e8877b9f492ecf.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:5bc52210-a2b7-f503-e6d1-df56d87c3868`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 68–92.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem final_of_final_costructuredArrowToOver (L : A ⥤ T) (R : B ⥤ T) [Final R]
    [hB : ∀ b : B, Final (CostructuredArrow.toOver L (R.obj b))] : Final L := by
  let sA : A ≌ AsSmall.{max u₁ u₂ u₃ v₁ v₂ v₃} A := AsSmall.equiv
  let sB : B ≌ AsSmall.{max u₁ u₂ u₃ v₁ v₂ v₃} B := AsSmall.equiv
  let sT : T ≌ AsSmall.{max u₁ u₂ u₃ v₁ v₂ v₃} T := AsSmall.equiv
  let L' := sA.inverse ⋙ L ⋙ sT.functor
  let R' := sB.inverse ⋙ R ⋙ sT.functor
  have (b) : (CostructuredArrow.toOver L' (R'.obj b)).Final := by
    dsimp only [L', R', CostructuredArrow.toOver] at hB ⊢
    let x := (sB.inverse ⋙ R ⋙ sT.functor).obj b
    let F'' : CostructuredArrow (sA.inverse ⋙ L ⋙ sT.functor) x ⥤ CostructuredArrow (𝟭 _) x :=
      map₂ (F := sA.inverse) (G := sT.inverse) (whiskerLeft (sA.inverse ⋙ L) sT.unit) (𝟙 _) ⋙
      pre L (𝟭 T) (R.obj _) ⋙ map₂ (F := sT.functor) (G := sT.functor) (𝟙 _) (𝟙 _)
    apply final_of_natIso (F := F'')
    have hsT (X) : sT.counitInv.app X = 𝟙 _ := rfl
    exact NatIso.ofComponents (fun X => CostructuredArrow.isoMk (Iso.refl _) (by simp [F'', hsT]))
  have := final_of_final_costructuredArrowToOver_small L' R'
  apply final_of_natIso (F := (sA.functor ⋙ L' ⋙ sT.inverse))
  exact (sA.functor.associator (sA.inverse ⋙ L ⋙ sT.functor) sT.inverse).symm ≪≫
    ((sA.functor.associator sA.inverse (L ⋙ sT.functor)).symm ≪≫
      isoWhiskerRight sA.unitIso.symm _ ≪≫ (L ⋙ sT.functor).leftUnitor).compInverseIso

end Functor

end CategoryTheory
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Final/Varianta01038a659c0afac10ca81824b05edea0a3da0cc9193df6b41e8877b9f492ecf.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Final/Varianta01038a659c0afac10ca81824b05edea0a3da0cc9193df6b41e8877b9f492ecf.lean#L68).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `fd3e022c39b147e1629b38413cef6e6c2260accd` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
