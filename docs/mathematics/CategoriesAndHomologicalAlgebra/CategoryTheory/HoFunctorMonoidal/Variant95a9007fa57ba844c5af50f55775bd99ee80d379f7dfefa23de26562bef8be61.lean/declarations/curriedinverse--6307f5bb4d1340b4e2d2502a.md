# curriedInverse

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:2a402c434efede85f391059f70f9abbf14d6c3cd33bb1e42c3d8d90e96cafc30",
  "kind": "def",
  "lexical_name": "curriedInverse",
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
  "slug": "curriedinverse--6307f5bb4d1340b4e2d2502a",
  "source": {
    "blob": "07f6eb399c3cb5eb6a473a46356053a5eb47838d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 166,
    "line": 154,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/HoFunctorMonoidal/Variant95a9007fa57ba844c5af50f55775bd99ee80d379f7dfefa23de26562bef8be61.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:6307f5bb4d1340b4e2d2502ab80d96e166b4491881d378d25d98af832846d4ee",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/HoFunctorMonoidal/Variant95a9007fa57ba844c5af50f55775bd99ee80d379f7dfefa23de26562bef8be61.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:2a402c434efede85f391059f70f9abbf14d6c3cd33bb1e42c3d8d90e96cafc30`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 154–166.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def curriedInverse : X.HomotopyCategory ⥤ Y.HomotopyCategory ⥤ (X ⊗ Y).HomotopyCategory :=
  lift (fun x ↦ lift (fun y ↦ mk (x, y)) (fun {y₀ y₁} e ↦ homMk (Edge.tensor (.id _) e)) (by simp)
    (fun {y₀ y₁ y₁ e₀₁ e₁₂ e₀₂ h} ↦ homMk_comp_homMk ((Edge.CompStruct.idCompId x).tensor h)))
    (fun {x₀ x₁} e ↦ mkNatTrans (fun y ↦ homMk (V := X ⊗ Y) (x₀ := (x₀, y))
      (x₁ := (x₁, y)) (e.tensor (.id y))) (fun y₀ y₁ e' ↦ by simp [square]))
    (by cat_disch) (fun {x₀ x₁ x₂ e₀₁ e₁₂ e₀₂} h ↦ by
      ext y
      obtain ⟨y, rfl⟩ := mk_surjective y
      simpa using homMk_comp_homMk (h.tensor (.idCompId y)))

variable (X Y) in
/-- The functor `X.HomotopyCategory × Y.HomotopyCategory ⥤ (X ⊗ Y).HomotopyCategory`
when `X` and `Y` are `2`-truncated simplicial sets. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/HoFunctorMonoidal/Variant95a9007fa57ba844c5af50f55775bd99ee80d379f7dfefa23de26562bef8be61.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/HoFunctorMonoidal/Variant95a9007fa57ba844c5af50f55775bd99ee80d379f7dfefa23de26562bef8be61.lean#L154).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `07f6eb399c3cb5eb6a473a46356053a5eb47838d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
