# unop

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:1959a0ab2c21979f27ac65a08d031cf4737d59d51b919727d0fd3d27166dc7fa",
  "kind": "def",
  "lexical_name": "unop",
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
  "slug": "unop--e3c55a0fd4df1e0bd15c8321",
  "source": {
    "blob": "8596add7e8cb44914359b559206dcba9ec135059",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 715,
    "line": 704,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Exact/Variantbdd1c2c29607dff135826e3f3d0285aa3063d03a6f473d99e8ddbafd1874a4d1.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:e3c55a0fd4df1e0bd15c832147a06f448d7e3f670f1b1c7173e9efa97dc055c5",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Exact/Variantbdd1c2c29607dff135826e3f3d0285aa3063d03a6f473d99e8ddbafd1874a4d1.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:1959a0ab2c21979f27ac65a08d031cf4737d59d51b919727d0fd3d27166dc7fa`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 704–715.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def unop {S : ShortComplex Cᵒᵖ} (h : Splitting S) : Splitting S.unop where
  r := h.s.unop
  s := h.r.unop
  f_r := Quiver.Hom.op_inj (by simp)
  s_g := Quiver.Hom.op_inj (by simp)
  id := Quiver.Hom.op_inj (by
    simp only [unop_X₂, Opposite.op_unop, unop_X₁, unop_f, unop_X₃, unop_g, op_add,
      op_comp, Quiver.Hom.op_unop, op_id, ← h.id]
    abel)

/-- The isomorphism `S.X₂ ≅ S.X₁ ⊞ S.X₃` induced by a splitting of the short complex `S`. -/
@[simps]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Exact/Variantbdd1c2c29607dff135826e3f3d0285aa3063d03a6f473d99e8ddbafd1874a4d1.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Exact/Variantbdd1c2c29607dff135826e3f3d0285aa3063d03a6f473d99e8ddbafd1874a4d1.lean#L704).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8596add7e8cb44914359b559206dcba9ec135059` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
