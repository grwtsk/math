# getOriginalConstKind?

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:c998f717bc2223c93bcc82fbfc8894d1863747e137db0e6e29092f45b4c77769",
  "kind": "def",
  "lexical_name": "getOriginalConstKind?",
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
  "slug": "getoriginalconstkind--2f754b6a65ab402f4d3a8489",
  "source": {
    "blob": "add09c8e2a45cc9762c59f2ad14702e4897cdf39",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 42,
    "line": 33,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/OriginalConstKind/Variant1d6bdfda9deab30b568563751433eda8d2d566484c2af58a67643a620187586e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:2f754b6a65ab402f4d3a8489a55127500d28d364287af920a615ef59a0ea1297",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/OriginalConstKind/Variant1d6bdfda9deab30b568563751433eda8d2d566484c2af58a67643a620187586e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:c998f717bc2223c93bcc82fbfc8894d1863747e137db0e6e29092f45b4c77769`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 33–42.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
public def getOriginalConstKind? (env : Environment) (declName : Name) : Option ConstantKind := do
  -- Use `local` as for asynchronous decls from the current module, `findAsync?` below will yield
  -- the same result but potentially earlier (after `addConstAsync` instead of `addDecl`)
  privateConstKindsExt.find? (asyncMode := .local) env declName <|>
    (env.setExporting false |>.findAsync? declName).map (·.kind)

/--
Checks whether the declaration was originally declared as a definition; see also
`Lean.getOriginalConstKind?`. Returns `false` if the declaration was not found.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/OriginalConstKind/Variant1d6bdfda9deab30b568563751433eda8d2d566484c2af58a67643a620187586e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/OriginalConstKind/Variant1d6bdfda9deab30b568563751433eda8d2d566484c2af58a67643a620187586e.lean#L33).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `add09c8e2a45cc9762c59f2ad14702e4897cdf39` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
