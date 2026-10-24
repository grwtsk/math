# unop_functor_op_obj_map

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:94eabc45-8834-97a1-b0a8-1e9cfa1fea05",
  "kind": "theorem",
  "lexical_name": "unop_functor_op_obj_map",
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
  "slug": "unop-functor-op-obj-map--e786261b0f479b1f9ee47f9b",
  "source": {
    "blob": "8be7952462399ca66a3752e77ebf4287c38bb416",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 101,
    "line": 87,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Const/Variant3d73d156a52fd9515ed8c73ea0e7a3eb2ed7bcb973e1954d0a30c4918137d0c5.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e786261b0f479b1f9ee47f9be7e6024d4e8c1711339f69b078b5c7ac65867fe8",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Const/Variant3d73d156a52fd9515ed8c73ea0e7a3eb2ed7bcb973e1954d0a30c4918137d0c5.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:94eabc45-8834-97a1-b0a8-1e9cfa1fea05`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 87–101.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem unop_functor_op_obj_map (X : Cᵒᵖ) {j₁ j₂ : J} (f : j₁ ⟶ j₂) :
    (unop ((Functor.op (const J)).obj X)).map f = 𝟙 (unop X) :=
  rfl

end const

section

variable {D : Type u₃} [Category.{v₃} D]

set_option backward.defeqAttrib.useBackward true in
/-- These are actually equal, of course, but not definitionally equal
  (the equality requires `F.map (𝟙 _) = 𝟙 _`). A natural isomorphism is
  more convenient than an equality between functors (compare id_to_iso). -/
@[simps]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Const/Variant3d73d156a52fd9515ed8c73ea0e7a3eb2ed7bcb973e1954d0a30c4918137d0c5.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Const/Variant3d73d156a52fd9515ed8c73ea0e7a3eb2ed7bcb973e1954d0a30c4918137d0c5.lean#L87).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8be7952462399ca66a3752e77ebf4287c38bb416` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
