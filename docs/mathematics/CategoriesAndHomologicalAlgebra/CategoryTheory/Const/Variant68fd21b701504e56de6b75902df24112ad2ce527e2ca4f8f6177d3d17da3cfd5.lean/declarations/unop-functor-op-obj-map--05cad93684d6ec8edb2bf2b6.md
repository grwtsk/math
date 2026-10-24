# unop_functor_op_obj_map

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:d83fbe46-74bc-8508-5423-2eb40e46cda4",
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
  "slug": "unop-functor-op-obj-map--05cad93684d6ec8edb2bf2b6",
  "source": {
    "blob": "03fa32c596e099b5c01d6394b6c6f31647b32b5d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 92,
    "line": 79,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Const/Variant68fd21b701504e56de6b75902df24112ad2ce527e2ca4f8f6177d3d17da3cfd5.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:05cad93684d6ec8edb2bf2b648c35d60a535aa2c8f7da4a5dee44be1dff06bd5",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Const/Variant68fd21b701504e56de6b75902df24112ad2ce527e2ca4f8f6177d3d17da3cfd5.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d83fbe46-74bc-8508-5423-2eb40e46cda4`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 79–92.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem unop_functor_op_obj_map (X : Cᵒᵖ) {j₁ j₂ : J} (f : j₁ ⟶ j₂) :
    (unop ((Functor.op (const J)).obj X)).map f = 𝟙 (unop X) :=
  rfl

end const

section

variable {D : Type u₃} [Category.{v₃} D]

/-- These are actually equal, of course, but not definitionally equal
  (the equality requires F.map (𝟙 _) = 𝟙 _). A natural isomorphism is
  more convenient than an equality between functors (compare id_to_iso). -/
@[simps]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Const/Variant68fd21b701504e56de6b75902df24112ad2ce527e2ca4f8f6177d3d17da3cfd5.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Const/Variant68fd21b701504e56de6b75902df24112ad2ce527e2ca4f8f6177d3d17da3cfd5.lean#L79).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `03fa32c596e099b5c01d6394b6c6f31647b32b5d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
