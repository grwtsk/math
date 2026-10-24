# commShift_adjunction_op_int

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:a24640adb1bd59ea63b1104f86e1ba78246b181aacdb755bce720a595950be3c",
  "kind": "instance",
  "lexical_name": "commShift_adjunction_op_int",
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
  "slug": "commshift-adjunction-op-int--67ebe0a598738c71427d5746",
  "source": {
    "blob": "8fcb439a21a56c7325397635cb79c641600c88e4",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 78,
    "line": 56,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Functor/Variantdb2dd529e54a057e6cc94cf50a78363c4eadfab0ec276df3317dff0a4f61773f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:67ebe0a598738c71427d5746d9805b4a05783651a60d13805e58f4c819e71d24",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Functor/Variantdb2dd529e54a057e6cc94cf50a78363c4eadfab0ec276df3317dff0a4f61773f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:a24640adb1bd59ea63b1104f86e1ba78246b181aacdb755bce720a595950be3c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 56–78.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable scoped instance commShift_adjunction_op_int {G : D ⥤ C} [G.CommShift ℤ] (adj : F ⊣ G)
    [Adjunction.CommShift adj ℤ] : Adjunction.CommShift adj.op ℤ := by
  have eq : adj.op = PullbackShift.adjunction
    (AddMonoidHom.mk' (fun (n : ℤ) => -n) (by intros; lia))
      (OppositeShift.adjunction ℤ adj) := by
    ext x
    dsimp [PullbackShift.adjunction, NatTrans.PullbackShift.natIsoId,
      NatTrans.PullbackShift.natIsoComp, PullbackShift.functor, PullbackShift.natTrans,
      OppositeShift.adjunction, OppositeShift.natTrans, NatTrans.OppositeShift.natIsoId,
      NatTrans.OppositeShift.natIsoComp, OppositeShift.functor]
    rw [unop_id]
    simp
  rw [eq]
  exact inferInstanceAs (Adjunction.CommShift (PullbackShift.adjunction
    (AddMonoidHom.mk' (fun (n : ℤ) => -n) (by intros; lia))
      (OppositeShift.adjunction ℤ adj)) ℤ)

end Pretriangulated.Opposite

namespace Functor

set_option backward.isDefEq.respectTransparency false in -- Needed in map_opShiftFunctorEquivalence_counitIso_hom_app_unop
@[reassoc]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Functor/Variantdb2dd529e54a057e6cc94cf50a78363c4eadfab0ec276df3317dff0a4f61773f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Functor/Variantdb2dd529e54a057e6cc94cf50a78363c4eadfab0ec276df3317dff0a4f61773f.lean#L56).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8fcb439a21a56c7325397635cb79c641600c88e4` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
