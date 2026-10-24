# mkFunctor

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:ef223096011c0f9844434c4291074513f774e5749dc844aca8023a344231f0e4",
  "kind": "def",
  "lexical_name": "mkFunctor",
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
  "slug": "mkfunctor--44f0703b8bb0c93cdfe4095f",
  "source": {
    "blob": "1601309c99f49a2f8129829034c814d10e935aff",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 247,
    "line": 217,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant3546fa0e0a082485d74382b3d9794a2f33bf26fa7edb70a4145b39e32534dc2f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:44f0703b8bb0c93cdfe4095ffcb1e2e90b6592a95453366e05519083aec5fb8e",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant3546fa0e0a082485d74382b3d9794a2f33bf26fa7edb70a4145b39e32534dc2f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:ef223096011c0f9844434c4291074513f774e5749dc844aca8023a344231f0e4`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 217–247.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def mkFunctor (F : C ⥤ E) (G : D ⥤ E) (α : Prod.fst C D ⋙ F ⟶ Prod.snd C D ⋙ G) :
    C ⋆ D ⥤ E where
  obj X :=
    match X with
    | .left x => F.obj x
    | .right x => G.obj x
  map f :=
    homInduction
      (left := fun _ _ f ↦ F.map f)
      (right := fun _ _ g ↦ G.map g)
      (edge := fun c d ↦ α.app (c,d))
      f
  map_id x := by
    cases x
    · dsimp only [id_left, homInduction_left]
      simp
    · dsimp only [id_right, homInduction_right]
      simp
  map_comp {x y z} f g := by
    cases f <;> cases g
    · simp [← Functor.map_comp]
    · case left.edge f d => simpa using (α.naturality <| (Prod.sectL _ d).map f).symm
    · simp [← Functor.map_comp]
    · case edge.right c _ _ f => simpa using α.naturality <| (Prod.sectR c _).map f

section

variable (F : C ⥤ E) (G : D ⥤ E) (α : Prod.fst C D ⋙ F ⟶ Prod.snd C D ⋙ G)

-- As these equality of objects are definitional, they should be fine.
@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant3546fa0e0a082485d74382b3d9794a2f33bf26fa7edb70a4145b39e32534dc2f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant3546fa0e0a082485d74382b3d9794a2f33bf26fa7edb70a4145b39e32534dc2f.lean#L217).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1601309c99f49a2f8129829034c814d10e935aff` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
