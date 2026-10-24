# CommSq.isColimitEquivIsColimitCokernelCofork

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:9247d70494d6d23dfb1cd96c0423b3aad3830f629b22170e7f5f1a219ae55a44",
  "kind": "def",
  "lexical_name": "CommSq.isColimitEquivIsColimitCokernelCofork",
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
  "slug": "commsq-iscolimitequiviscolimitcokernelcofork--edf96a5747cc338700a5149d",
  "source": {
    "blob": "18bb3541a8c82092bcdf9a8518988e1ff7008144",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 111,
    "line": 64,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/CommSq/Variant058d8e3b22924089a36cdd5d750078281455184ae6cb811214a91e030ba0b8b7.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:edf96a5747cc338700a5149ddadc5972c8d86ae0a15fcbe0a864d41d3ccebe9a",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/CommSq/Variant058d8e3b22924089a36cdd5d750078281455184ae6cb811214a91e030ba0b8b7.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:9247d70494d6d23dfb1cd96c0423b3aad3830f629b22170e7f5f1a219ae55a44`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 64–111.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable def CommSq.isColimitEquivIsColimitCokernelCofork (sq : CommSq f g inl inr) :
    IsColimit (PushoutCocone.mk _ _ sq.w) ≃ IsColimit sq.cokernelCofork where
  toFun h :=
    Cofork.IsColimit.mk _
      (fun s ↦ PushoutCocone.IsColimit.desc h
        (biprod.inl ≫ s.π) (biprod.inr ≫ s.π) (by
          rw [← sub_eq_zero, ← assoc, ← assoc, ← Preadditive.sub_comp]
          convert s.condition <;> aesop_cat))
      (fun s ↦ by
        dsimp
        ext
        · simp only [biprod.inl_desc_assoc]
          apply PushoutCocone.IsColimit.inl_desc h
        · simp only [biprod.inr_desc_assoc]
          apply PushoutCocone.IsColimit.inr_desc h)
      (fun s m hm ↦ by
        apply PushoutCocone.IsColimit.hom_ext h
        · replace hm := biprod.inl ≫= hm
          dsimp at hm ⊢
          simp only [biprod.inl_desc_assoc] at hm
          rw [hm]
          symm
          apply PushoutCocone.IsColimit.inl_desc h
        · replace hm := biprod.inr ≫= hm
          dsimp at hm ⊢
          simp only [biprod.inr_desc_assoc] at hm
          rw [hm]
          symm
          apply PushoutCocone.IsColimit.inr_desc h)
  invFun h :=
    PushoutCocone.IsColimit.mk _
      (fun s ↦ h.desc (CokernelCofork.ofπ (biprod.desc s.inl s.inr)
          (by simp [s.condition])))
      (fun s ↦ by simpa using biprod.inl ≫=
                h.fac (CokernelCofork.ofπ (biprod.desc s.inl s.inr)
                  (by simp [s.condition])) .one)
      (fun s ↦ by simpa using biprod.inr ≫=
                h.fac (CokernelCofork.ofπ (biprod.desc s.inl s.inr)
                  (by simp [s.condition])) .one)
      (fun s m hm₁ hm₂ ↦ by
        apply Cofork.IsColimit.hom_ext h
        convert (h.fac (CokernelCofork.ofπ (biprod.desc s.inl s.inr)
          (by simp [s.condition])) .one).symm
        aesop_cat)
  left_inv _ := Subsingleton.elim _ _
  right_inv _ := Subsingleton.elim _ _

/-- The colimit cokernel cofork attached to a pushout square. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/CommSq/Variant058d8e3b22924089a36cdd5d750078281455184ae6cb811214a91e030ba0b8b7.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/CommSq/Variant058d8e3b22924089a36cdd5d750078281455184ae6cb811214a91e030ba0b8b7.lean#L64).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `18bb3541a8c82092bcdf9a8518988e1ff7008144` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
