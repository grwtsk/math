# leftAdjointLiftStructEquiv

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:77266a27fa7b0399a42188afba63f60341e78ab7b630c4e878d4f5540b4b4e7b",
  "kind": "def",
  "lexical_name": "leftAdjointLiftStructEquiv",
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
  "slug": "leftadjointliftstructequiv--f87f12ff76d335da7d155ccb",
  "source": {
    "blob": "a07af4cdbfc10eea3204aad39d02e66e2df7ad2b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 116,
    "line": 99,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Adjunction/Variantd8ed61a4761c0d4dbaea72cd5aae1498bda29f2c90bed954b92c2583c1cc41fc.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:f87f12ff76d335da7d155ccbcdd7c427047ff4a922a20587d4b83f8b9150edb1",
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

Occurrence: `declaration:77266a27fa7b0399a42188afba63f60341e78ab7b630c4e878d4f5540b4b4e7b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 99–116.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def leftAdjointLiftStructEquiv :
    sq.LiftStruct ≃ (sq.left_adjoint adj).LiftStruct where
  toFun l :=
    { l := (adj.homEquiv _ _).symm l.l
      fac_left := by rw [← adj.homEquiv_naturality_left_symm, l.fac_left]
      fac_right := by rw [← adj.homEquiv_naturality_right_symm, l.fac_right] }
  invFun l :=
    { l := (adj.homEquiv _ _) l.l
      fac_left := by
        rw [← adj.homEquiv_naturality_left, l.fac_left]
        apply (adj.homEquiv _ _).right_inv
      fac_right := by
        rw [← adj.homEquiv_naturality_right, l.fac_right]
        apply (adj.homEquiv _ _).right_inv }
  left_inv := by aesop_cat
  right_inv := by aesop_cat

/-- A (left) adjoint square has a lifting if and only if the original square has a lifting. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Adjunction/Variantd8ed61a4761c0d4dbaea72cd5aae1498bda29f2c90bed954b92c2583c1cc41fc.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Adjunction/Variantd8ed61a4761c0d4dbaea72cd5aae1498bda29f2c90bed954b92c2583c1cc41fc.lean#L99).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a07af4cdbfc10eea3204aad39d02e66e2df7ad2b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
