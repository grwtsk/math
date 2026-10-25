# Anonymous initialize

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:ad10547bd6ddcb790717d85958a3bb28f2472d40ca151dd7501710a9b2f2104e",
  "kind": "initialize",
  "lexical_name": null,
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
  "slug": "initialize--0cdf456634cdc555c83fbca8",
  "source": {
    "blob": "6daa74e1a3280344d42143fb1a1054b965d10b2f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 74,
    "line": 68,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SetNotationForOrder/Variantb8ddf816d19c907c8e9d8d3a37d124793c3d395a3355586d706d71ff25b7af41.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:0cdf456634cdc555c83fbca8719d07a86dd1c369779cea059ccd51bfe8834192",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SetNotationForOrder/Variantb8ddf816d19c907c8e9d8d3a37d124793c3d395a3355586d706d71ff25b7af41.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `initialize` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:ad10547bd6ddcb790717d85958a3bb28f2472d40ca151dd7501710a9b2f2104e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 68–74.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
initialize
  registerBuiltinAttribute {
    name := `use_set_notation_for_order
    descr := "use set notation for order operations on this type"
    add declName _stx kind := mkUsesSetNotationForOrderInstance declName kind }

/-- Whether to use set notation for the given type or not. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SetNotationForOrder/Variantb8ddf816d19c907c8e9d8d3a37d124793c3d395a3355586d706d71ff25b7af41.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SetNotationForOrder/Variantb8ddf816d19c907c8e9d8d3a37d124793c3d395a3355586d706d71ff25b7af41.lean#L68).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6daa74e1a3280344d42143fb1a1054b965d10b2f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
