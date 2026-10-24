# addCommGroup'

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:df015c48b4794e2ea4419cae4b8fa9f5c5249939c7d558ba2c40d770debd242c",
  "kind": "def",
  "lexical_name": "addCommGroup'",
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
  "slug": "addcommgroup--2aa214408889dd2d78769dca",
  "source": {
    "blob": "f195bb716ca5dbb9b6e2a5f98175fe9485e86bb0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 252,
    "line": 232,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Preadditive/Variante54d38a671f284d70334f0002993ec8599d99c322cf5ff8c48c63c8bec7a2750.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:2aa214408889dd2d78769dcac044d7aa81a29ca3815fc28f04e128dccbcd6ed5",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Preadditive/Variante54d38a671f284d70334f0002993ec8599d99c322cf5ff8c48c63c8bec7a2750.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:df015c48b4794e2ea4419cae4b8fa9f5c5249939c7d558ba2c40d770debd242c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 232–252.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable def addCommGroup' : AddCommGroup (L.obj X ⟶ L.obj Y) := by
  letI : Zero (L.obj X ⟶ L.obj Y) := ⟨L.map 0⟩
  letI : Add (L.obj X ⟶ L.obj Y) := ⟨add' W⟩
  letI : Neg (L.obj X ⟶ L.obj Y) := ⟨neg' W⟩
  exact
    { add_assoc := add'_assoc _
      add_zero := add'_zero _
      add_comm := add'_comm _
      zero_add := zero_add' _
      neg_add_cancel := neg'_add'_self _
      nsmul := nsmulRec
      zsmul := zsmulRec }

variable {X Y}

variable {L}
variable {X' Y' Z' : D} (eX : L.obj X ≅ X') (eY : L.obj Y ≅ Y') (eZ : L.obj Z ≅ Z')

/-- The bijection `(X' ⟶ Y') ≃ (L.obj X ⟶ L.obj Y)` induced by isomorphisms
`eX : L.obj X ≅ X'` and `eY : L.obj Y ≅ Y'`. -/
@[simps]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Preadditive/Variante54d38a671f284d70334f0002993ec8599d99c322cf5ff8c48c63c8bec7a2750.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Preadditive/Variante54d38a671f284d70334f0002993ec8599d99c322cf5ff8c48c63c8bec7a2750.lean#L232).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f195bb716ca5dbb9b6e2a5f98175fe9485e86bb0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
