# leftOp_comp

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:ab7ffc3f-e5ab-e704-64bc-27cfc8a150e7",
  "kind": "theorem",
  "lexical_name": "leftOp_comp",
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
  "slug": "leftop-comp--589fc5b0b7d6307b1450e57b",
  "source": {
    "blob": "6caf6fdd46a5db2a3c3fd5b19949de11c15c11b6",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 383,
    "line": 375,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Opposites/Varianta03f0e58367a13a21767790d3d8f65941d66fd139a8b2c732397cdeb4403d6ea.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:589fc5b0b7d6307b1450e57b0116f1bb4cbdf90d11a4b319bf1d2703095ce407",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Opposites/Varianta03f0e58367a13a21767790d3d8f65941d66fd139a8b2c732397cdeb4403d6ea.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ab7ffc3f-e5ab-e704-64bc-27cfc8a150e7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 375–383.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem leftOp_comp (α : F ⟶ G) (β : G ⟶ H) : NatTrans.leftOp (α ≫ β) =
    NatTrans.leftOp β ≫ NatTrans.leftOp α :=
  rfl
#align category_theory.nat_trans.left_op_comp CategoryTheory.NatTrans.leftOp_comp

/-- Given a natural transformation `α : F.leftOp ⟶ G.leftOp`, for `F G : C ⥤ Dᵒᵖ`,
taking `op` of each component gives a natural transformation `G ⟶ F`.
-/
@[simps]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Opposites/Varianta03f0e58367a13a21767790d3d8f65941d66fd139a8b2c732397cdeb4403d6ea.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Opposites/Varianta03f0e58367a13a21767790d3d8f65941d66fd139a8b2c732397cdeb4403d6ea.lean#L375).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6caf6fdd46a5db2a3c3fd5b19949de11c15c11b6` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
