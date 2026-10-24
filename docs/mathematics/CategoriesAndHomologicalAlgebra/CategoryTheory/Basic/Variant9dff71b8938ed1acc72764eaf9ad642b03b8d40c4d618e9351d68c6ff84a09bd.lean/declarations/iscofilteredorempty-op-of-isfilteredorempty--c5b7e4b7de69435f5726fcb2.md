# isCofilteredOrEmpty_op_of_isFilteredOrEmpty

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:3d0729b32b0c3163ba5a3a10ee706eaf7bf81531de963d35b3d9a0a6ce87e23a",
  "kind": "instance",
  "lexical_name": "isCofilteredOrEmpty_op_of_isFilteredOrEmpty",
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
  "slug": "iscofilteredorempty-op-of-isfilteredorempty--c5b7e4b7de69435f5726fcb2",
  "source": {
    "blob": "c891fe6e95a4d22625d5806faf9b94a2c6d485fc",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 844,
    "line": 834,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant9dff71b8938ed1acc72764eaf9ad642b03b8d40c4d618e9351d68c6ff84a09bd.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:c5b7e4b7de69435f5726fcb2aa20f40475924125756ad041a0206be50221abf7",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant9dff71b8938ed1acc72764eaf9ad642b03b8d40c4d618e9351d68c6ff84a09bd.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:3d0729b32b0c3163ba5a3a10ee706eaf7bf81531de963d35b3d9a0a6ce87e23a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 834–844.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance isCofilteredOrEmpty_op_of_isFilteredOrEmpty [IsFilteredOrEmpty C] :
    IsCofilteredOrEmpty Cᵒᵖ where
  cone_objs X Y :=
    ⟨op (IsFiltered.max X.unop Y.unop), (IsFiltered.leftToMax _ _).op,
      (IsFiltered.rightToMax _ _).op, trivial⟩
  cone_maps X Y f g :=
    ⟨op (IsFiltered.coeq f.unop g.unop), (IsFiltered.coeqHom _ _).op, by
      rw [show f = f.unop.op by simp, show g = g.unop.op by simp, ← op_comp, ← op_comp]
      congr 1
      exact IsFiltered.coeq_condition f.unop g.unop⟩

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant9dff71b8938ed1acc72764eaf9ad642b03b8d40c4d618e9351d68c6ff84a09bd.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant9dff71b8938ed1acc72764eaf9ad642b03b8d40c4d618e9351d68c6ff84a09bd.lean#L834).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c891fe6e95a4d22625d5806faf9b94a2c6d485fc` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
