# coneOfConeUncurryIsLimit

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:ecf50d65e76341a40d5239a483795e11de2f8780f72c9503af9d90ce73d2563e",
  "kind": "def",
  "lexical_name": "coneOfConeUncurryIsLimit",
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
  "slug": "coneofconeuncurryislimit--d0904d71078fc3a377fabf09",
  "source": {
    "blob": "8a203a49b24faf9425fbf273d9fdfa91eabd41fd",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 162,
    "line": 114,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Fubini/Variant7be21cd24d780e93e5a2d7258d8677ba7420e3cc74b25f97a1b4e6ef4d1e1340.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:d0904d71078fc3a377fabf096caeb4fe161abc18d717cc6b5b7267915cbdfa8b",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Fubini/Variant7be21cd24d780e93e5a2d7258d8677ba7420e3cc74b25f97a1b4e6ef4d1e1340.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:ecf50d65e76341a40d5239a483795e11de2f8780f72c9503af9d90ce73d2563e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 114–162.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def coneOfConeUncurryIsLimit {D : DiagramOfCones F} (Q : ∀ j, IsLimit (D.obj j))
    {c : Cone (uncurry.obj F)} (P : IsLimit c) : IsLimit (coneOfConeUncurry Q c) where
  lift s :=
    P.lift
      { pt := s.pt
        π :=
          { app := fun p => s.π.app p.1 ≫ (D.obj p.1).π.app p.2
            naturality := fun p p' f => by
              dsimp; simp only [Category.id_comp, Category.assoc]
              rcases p with ⟨j, k⟩
              rcases p' with ⟨j', k'⟩
              rcases f with ⟨fj, fk⟩
              dsimp
              slice_rhs 3 4 => rw [← NatTrans.naturality]
              slice_rhs 2 3 => rw [← (D.obj j).π.naturality]
              simp only [Functor.const_obj_map, Category.id_comp, Category.assoc]
              have w := (D.map fj).w k'
              dsimp at w
              rw [← w]
              have n := s.π.naturality fj
              dsimp at n
              simp only [Category.id_comp] at n
              rw [n]
              simp } }
  fac s j := by
    apply (Q j).hom_ext
    intro k
    simp
  uniq s m w := by
    refine' P.uniq
      { pt := s.pt
        π := _ } m _
    rintro ⟨j, k⟩
    dsimp
    rw [← w j]
    simp
#align category_theory.limits.cone_of_cone_uncurry_is_limit CategoryTheory.Limits.coneOfConeUncurryIsLimit

section

variable (F)

variable [HasLimitsOfShape K C]

/-- Given a functor `F : J ⥤ K ⥤ C`, with all needed limits,
we can construct a diagram consisting of the limit cone over each functor `F.obj j`,
and the universal cone morphisms between these.
-/
@[simps]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Fubini/Variant7be21cd24d780e93e5a2d7258d8677ba7420e3cc74b25f97a1b4e6ef4d1e1340.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Fubini/Variant7be21cd24d780e93e5a2d7258d8677ba7420e3cc74b25f97a1b4e6ef4d1e1340.lean#L114).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8a203a49b24faf9425fbf273d9fdfa91eabd41fd` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
