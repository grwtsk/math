# SubsetElabAux.

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:c0fba22c25c1d0b6e7ac23a445699eb90fb34ee88cf48c4d5d2c4a2128c8807f",
  "kind": "opaque",
  "lexical_name": "SubsetElabAux.",
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
  "slug": "subsetelabaux--ee4e4dc8228065d5a88a584c",
  "source": {
    "blob": "6daa74e1a3280344d42143fb1a1054b965d10b2f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 137,
    "line": 128,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SetNotationForOrder/Variantb8ddf816d19c907c8e9d8d3a37d124793c3d395a3355586d706d71ff25b7af41.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:ee4e4dc8228065d5a88a584ced68631732d4a5d4cb9fa68b8a2579f7b76cbb3e",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SetNotationForOrder/Variantb8ddf816d19c907c8e9d8d3a37d124793c3d395a3355586d706d71ff25b7af41.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `opaque` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:c0fba22c25c1d0b6e7ac23a445699eb90fb34ee88cf48c4d5d2c4a2128c8807f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 128–137.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
public opaque SubsetElabAux.{u} {α : Type u} : α → α → Prop

/-- Elaborate a notation like `a ⊆ b` by elaborating `a` and `b`, and then deciding
based on their type whether to return `a ⊆ b` or `a ≤ b`.
Use `a ≤ b` whenever `useSetNotationFor` returns true for the type.
If the type is not known, elaboration of this term is postponed.

We assume that `le` and `sub` are names for declarations of exactly the form
`decl.{u} {α : Type u} [Cls.{u} α] (a b : α) : Prop`, and that likewise `leCls` and `subCls` are
names for declarations of exactly the form  `Cls.{u} (α : Type u) : Type u`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SetNotationForOrder/Variantb8ddf816d19c907c8e9d8d3a37d124793c3d395a3355586d706d71ff25b7af41.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SetNotationForOrder/Variantb8ddf816d19c907c8e9d8d3a37d124793c3d395a3355586d706d71ff25b7af41.lean#L128).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6daa74e1a3280344d42143fb1a1054b965d10b2f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
