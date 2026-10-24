# rightAdjointLiftStructEquiv

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:274c260563117ac5978746eb3c4d0d7cb6d0d6d43239337631b22de387ec7e56",
  "kind": "def",
  "lexical_name": "rightAdjointLiftStructEquiv",
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
  "slug": "rightadjointliftstructequiv--9d3dbd58f3063904dd2f84b4",
  "source": {
    "blob": "a07af4cdbfc10eea3204aad39d02e66e2df7ad2b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 71,
    "line": 55,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Adjunction/Variantd8ed61a4761c0d4dbaea72cd5aae1498bda29f2c90bed954b92c2583c1cc41fc.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:9d3dbd58f3063904dd2f84b45fea890d3ed3f219219750ba1f1d9585bd02729d",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Adjunction/Variantd8ed61a4761c0d4dbaea72cd5aae1498bda29f2c90bed954b92c2583c1cc41fc.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:274c260563117ac5978746eb3c4d0d7cb6d0d6d43239337631b22de387ec7e56`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 55–71.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def rightAdjointLiftStructEquiv : sq.LiftStruct ≃ (sq.right_adjoint adj).LiftStruct where
  toFun l :=
    { l := adj.homEquiv _ _ l.l
      fac_left := by rw [← adj.homEquiv_naturality_left, l.fac_left]
      fac_right := by rw [← Adjunction.homEquiv_naturality_right, l.fac_right] }
  invFun l :=
    { l := (adj.homEquiv _ _).symm l.l
      fac_left := by
        rw [← Adjunction.homEquiv_naturality_left_symm, l.fac_left]
        apply (adj.homEquiv _ _).left_inv
      fac_right := by
        rw [← Adjunction.homEquiv_naturality_right_symm, l.fac_right]
        apply (adj.homEquiv _ _).left_inv }
  left_inv := by aesop_cat
  right_inv := by aesop_cat

/-- A square has a lifting if and only if its (right) adjoint square has a lifting. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Adjunction/Variantd8ed61a4761c0d4dbaea72cd5aae1498bda29f2c90bed954b92c2583c1cc41fc.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Adjunction/Variantd8ed61a4761c0d4dbaea72cd5aae1498bda29f2c90bed954b92c2583c1cc41fc.lean#L55).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a07af4cdbfc10eea3204aad39d02e66e2df7ad2b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
