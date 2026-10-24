# coconeOfCoconeUncurryIsColimit

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:34c8ed2273362ec69c7f7fc9d500113a841ec2ac6598579d0b92a7b439c714f5",
  "kind": "def",
  "lexical_name": "coconeOfCoconeUncurryIsColimit",
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
  "slug": "coconeofcoconeuncurryiscolimit--d9535963ebcca32939bd9d89",
  "source": {
    "blob": "0866a25508c63c4c36ff19353cc633c2d3652778",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 296,
    "line": 259,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Fubini/Variantdaa6d3cacf7a73c2b15d1913cb8978b2280e87c973dd4b9d048678729b09ed4d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:d9535963ebcca32939bd9d8930b8cf452496a3794249f29365520e752e2be97b",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Fubini/Variantdaa6d3cacf7a73c2b15d1913cb8978b2280e87c973dd4b9d048678729b09ed4d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:34c8ed2273362ec69c7f7fc9d500113a841ec2ac6598579d0b92a7b439c714f5`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 259–296.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def coconeOfCoconeUncurryIsColimit {D : DiagramOfCocones F} (Q : ∀ j, IsColimit (D.obj j))
    {c : Cocone (uncurry.obj F)} (P : IsColimit c) : IsColimit (coconeOfCoconeUncurry Q c) where
  desc s :=
    P.desc
      { pt := s.pt
        ι :=
          { app := fun p => (D.obj p.1).ι.app p.2 ≫ s.ι.app p.1
            naturality := fun p p' f => by
              dsimp; simp only [Category.id_comp, Category.assoc]
              rcases p with ⟨j, k⟩
              rcases p' with ⟨j', k'⟩
              rcases f with ⟨fj, fk⟩
              dsimp
              slice_lhs 2 3 => rw [(D.obj j').ι.naturality]
              simp only [Functor.const_obj_map, Category.id_comp, Category.assoc]
              have w := (D.map fj).w k
              dsimp at w
              slice_lhs 1 2 => rw [← w]
              have n := s.ι.naturality fj
              dsimp at n
              simp only [Category.comp_id] at n
              rw [← n]
              simp } }
  fac s j := by
    apply (Q j).hom_ext
    intro k
    simp
  uniq s m w := by
    refine P.uniq
      { pt := s.pt
        ι := _ } m ?_
    rintro ⟨j, k⟩
    dsimp
    rw [← w j]
    simp

/-- If `coconeOfCoconeUncurry Q c` is a colimit cocone then `c` is in fact a colimit
cocone. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Fubini/Variantdaa6d3cacf7a73c2b15d1913cb8978b2280e87c973dd4b9d048678729b09ed4d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Fubini/Variantdaa6d3cacf7a73c2b15d1913cb8978b2280e87c973dd4b9d048678729b09ed4d.lean#L259).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0866a25508c63c4c36ff19353cc633c2d3652778` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
