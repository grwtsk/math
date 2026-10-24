# coneEquivInverseObj

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:0dcad36c0f960d1381f0b03a4e0de07b59b2f89da6dce6afbe622f1985c0c27d",
  "kind": "def",
  "lexical_name": "coneEquivInverseObj",
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
  "slug": "coneequivinverseobj--6eac1969ef3a609d02bbfa9d",
  "source": {
    "blob": "e0c04d40d758060b20ae3b518f85c3b3fa6705e7",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 351,
    "line": 304,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/EqualizerProducts/Variantd96eb61296f85b42b7075027f033b9283133211b0ca932088146d4cee44a98bf.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:6eac1969ef3a609d02bbfa9d6eac9858400cc278fc22736dd00e7e803480f00a",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/EqualizerProducts/Variantd96eb61296f85b42b7075027f033b9283133211b0ca932088146d4cee44a98bf.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:0dcad36c0f960d1381f0b03a4e0de07b59b2f89da6dce6afbe622f1985c0c27d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 304–351.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def coneEquivInverseObj (c : Limits.Cone (SheafConditionEqualizerProducts.diagram F U)) :
    Limits.Cone ((diagram U).op ⋙ F) where
  pt := c.pt
  π :=
    { app := by
        intro x
        induction x using Opposite.rec' with | h x => ?_
        rcases x with (⟨i⟩ | ⟨i, j⟩)
        · exact c.π.app WalkingParallelPair.zero ≫ Pi.π _ i
        · exact c.π.app WalkingParallelPair.one ≫ Pi.π _ (i, j)
      naturality := by
        intro x y f
        induction x using Opposite.rec' with | h x => ?_
        induction y using Opposite.rec' with | h y => ?_
        have ef : f = f.unop.op := rfl
        revert ef
        generalize f.unop = f'
        rintro rfl
        rcases x with (⟨i⟩ | ⟨⟩) <;> rcases y with (⟨⟩ | ⟨j, j⟩) <;> rcases f' with ⟨⟩
        · dsimp
          erw [F.map_id]
          simp
        · dsimp
          simp only [Category.id_comp, Category.assoc]
          have h := c.π.naturality WalkingParallelPairHom.left
          dsimp [SheafConditionEqualizerProducts.leftRes] at h
          simp only [Category.id_comp] at h
          have h' := h =≫ Pi.π _ (i, j)
          rw [h']
          simp only [Category.assoc, limit.lift_π, Fan.mk_π_app]
          rfl
        · dsimp
          simp only [Category.id_comp, Category.assoc]
          have h := c.π.naturality WalkingParallelPairHom.right
          dsimp [SheafConditionEqualizerProducts.rightRes] at h
          simp only [Category.id_comp] at h
          have h' := h =≫ Pi.π _ (j, i)
          rw [h']
          simp
          rfl
        · dsimp
          erw [F.map_id]
          simp }
set_option linter.uppercaseLean3 false in
#align Top.presheaf.sheaf_condition_pairwise_intersections.cone_equiv_inverse_obj TopCat.Presheaf.SheafConditionPairwiseIntersections.coneEquivInverseObj

/-- Implementation of `SheafConditionPairwiseIntersections.coneEquiv`. -/
@[simps!]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/EqualizerProducts/Variantd96eb61296f85b42b7075027f033b9283133211b0ca932088146d4cee44a98bf.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/EqualizerProducts/Variantd96eb61296f85b42b7075027f033b9283133211b0ca932088146d4cee44a98bf.lean#L304).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e0c04d40d758060b20ae3b518f85c3b3fa6705e7` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
