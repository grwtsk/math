# iso

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:b798cd63aabeb4ebd4ac51a039c91c1ef72a150934eb1d665be538e5ce828755",
  "kind": "def",
  "lexical_name": "iso",
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
  "slug": "iso--df940aadbef59fd8e4a3d4ea",
  "source": {
    "blob": "96a076cca26490ae73cb50f7a17b11ca11eb3dcc",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 146,
    "line": 135,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Localization/Variant89db4daa6d9de2ec0b88b4d54b7fb5dad4419458441d79fb5fd26c0a0d10f361.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:df940aadbef59fd8e4a3d4ea9aacd37ac22f69a50a8cf97ae2aa6132cca93e4d",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Localization/Variant89db4daa6d9de2ec0b88b4d54b7fb5dad4419458441d79fb5fd26c0a0d10f361.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:b798cd63aabeb4ebd4ac51a039c91c1ef72a150934eb1d665be538e5ce828755`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 135–146.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable def iso (a : A) :
    shiftFunctor D a ⋙ F' ≅ F' ⋙ shiftFunctor E a :=
  Localization.liftNatIso L W (L ⋙ shiftFunctor D a ⋙ F')
    (L ⋙ F' ⋙ shiftFunctor E a) _ _
      ((Functor.associator _ _ _).symm ≪≫
        isoWhiskerRight (L.commShiftIso a).symm F' ≪≫
        Functor.associator _ _ _ ≪≫
        isoWhiskerLeft _ (Lifting.iso L W F F') ≪≫
        F.commShiftIso a ≪≫
        isoWhiskerRight (Lifting.iso L W F F').symm _ ≪≫ Functor.associator _ _ _)

@[simp, reassoc]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Localization/Variant89db4daa6d9de2ec0b88b4d54b7fb5dad4419458441d79fb5fd26c0a0d10f361.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Localization/Variant89db4daa6d9de2ec0b88b4d54b7fb5dad4419458441d79fb5fd26c0a0d10f361.lean#L135).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `96a076cca26490ae73cb50f7a17b11ca11eb3dcc` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
