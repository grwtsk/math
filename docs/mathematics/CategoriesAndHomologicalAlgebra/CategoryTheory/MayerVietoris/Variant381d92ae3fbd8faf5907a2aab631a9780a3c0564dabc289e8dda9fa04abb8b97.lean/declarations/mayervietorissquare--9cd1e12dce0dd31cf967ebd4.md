# mayerVietorisSquare

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:c94474cd9ce3d55847177cea9f84624240e41c34cdd09a3cfbaf1036d01d865f",
  "kind": "def",
  "lexical_name": "mayerVietorisSquare",
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
  "slug": "mayervietorissquare--9cd1e12dce0dd31cf967ebd4",
  "source": {
    "blob": "df11ee0aa973db7c32e3e017173d6ac00ae2ca38",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 80,
    "line": 67,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/MayerVietoris/Variant381d92ae3fbd8faf5907a2aab631a9780a3c0564dabc289e8dda9fa04abb8b97.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:9cd1e12dce0dd31cf967ebd4ab78b4ed959a38905eaec8da1d3e42e523c4d7f3",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/MayerVietoris/Variant381d92ae3fbd8faf5907a2aab631a9780a3c0564dabc289e8dda9fa04abb8b97.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:c94474cd9ce3d55847177cea9f84624240e41c34cdd09a3cfbaf1036d01d865f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 67–80.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable def mayerVietorisSquare (U V : Opens T) :
    (Opens.grothendieckTopology T).MayerVietorisSquare :=
  mayerVietorisSquare'
    { X₁ := U ⊓ V
      X₂ := U
      X₃ := V
      X₄ := U ⊔ V
      f₁₂ := homOfLE inf_le_left
      f₁₃ := homOfLE inf_le_right
      f₂₄ := homOfLE le_sup_left
      f₃₄ := homOfLE le_sup_right
      fac := Subsingleton.elim _ _ } rfl rfl

end Opens
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/MayerVietoris/Variant381d92ae3fbd8faf5907a2aab631a9780a3c0564dabc289e8dda9fa04abb8b97.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/MayerVietoris/Variant381d92ae3fbd8faf5907a2aab631a9780a3c0564dabc289e8dda9fa04abb8b97.lean#L67).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `df11ee0aa973db7c32e3e017173d6ac00ae2ca38` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
