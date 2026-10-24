# tensorLeftAdjunction

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:fa23a0fa423805851434d060f9bbb01b896d3a90d9a552d63b75ef2ab82a9a51",
  "kind": "def",
  "lexical_name": "tensorLeftAdjunction",
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
  "slug": "tensorleftadjunction--0c8139fa37a3ab2390ca4995",
  "source": {
    "blob": "951ff3764d4702e47edc3d43733b97a86d445921",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 348,
    "line": 340,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant28ac6188d7015db0ee316dd9e459751fe399b852b5892e205e1973de6812310f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:0c8139fa37a3ab2390ca49950bb456773c4e83c779c3027114c668d348056903",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant28ac6188d7015db0ee316dd9e459751fe399b852b5892e205e1973de6812310f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:fa23a0fa423805851434d060f9bbb01b896d3a90d9a552d63b75ef2ab82a9a51`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 340–348.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def tensorLeftAdjunction (Y Y' : C) [ExactPairing Y Y'] : tensorLeft Y' ⊣ tensorLeft Y :=
  Adjunction.mkOfHomEquiv
    { homEquiv := fun X Z => tensorLeftHomEquiv X Y Y' Z
      homEquiv_naturality_left_symm := fun f g => tensorLeftHomEquiv_symm_naturality f g
      homEquiv_naturality_right := fun f g => tensorLeftHomEquiv_naturality f g }

/-- If `Y Y'` have an exact pairing,
then the functor `tensor_right Y` is left adjoint to `tensor_right Y'`.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant28ac6188d7015db0ee316dd9e459751fe399b852b5892e205e1973de6812310f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant28ac6188d7015db0ee316dd9e459751fe399b852b5892e205e1973de6812310f.lean#L340).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `951ff3764d4702e47edc3d43733b97a86d445921` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
