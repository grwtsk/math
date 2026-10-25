# LocalDecl.ppAsBinder

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:71d191373262311d43457986cbaa035e3f6150f9508ce1331126527a17398fcd",
  "kind": "def",
  "lexical_name": "LocalDecl.ppAsBinder",
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
  "slug": "localdecl-ppasbinder--19f149d502008ea33abdfe2d",
  "source": {
    "blob": "4f82a75fb98aa055711043b2b440007a409ebe8e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 37,
    "line": 21,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PPBinder/Variant124b79cfc3347c07958e478805a481d65341d1d595cf5fdd2ce2522583e443f6.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:19f149d502008ea33abdfe2d9c2b2e65494c36b227e42bbf7ba0e470ebc975d2",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PPBinder/Variant124b79cfc3347c07958e478805a481d65341d1d595cf5fdd2ce2522583e443f6.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:71d191373262311d43457986cbaa035e3f6150f9508ce1331126527a17398fcd`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 21–37.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
protected def LocalDecl.ppAsBinder : LocalDecl → Option MessageData
  | .ldecl .. => none
  | .cdecl _ fvarId _ type binderInfo _ =>
    let (lBracket, rBracket) : String × String := match binderInfo with
      | .implicit       => ("{", "}")
      | .strictImplicit => ("⦃", "⦄")
      | .instImplicit   => ("[", "]")
      | .default        => ("(", ")")
    some <| .bracket lBracket m!"{mkFVar fvarId} : {type}" rBracket

/--
Pretty-prints a free variable and its type as a binder,
using the appropriate brackets given its `BinderInfo`. Example output: `{α : Type}`.

Returns `none` for let decls.
-/
@[inline]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PPBinder/Variant124b79cfc3347c07958e478805a481d65341d1d595cf5fdd2ce2522583e443f6.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PPBinder/Variant124b79cfc3347c07958e478805a481d65341d1d595cf5fdd2ce2522583e443f6.lean#L21).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4f82a75fb98aa055711043b2b440007a409ebe8e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
