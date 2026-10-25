# reducibleType

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:5497b3c3d4455ee0ff15ab78d1226161198a88ea8fc1b4b24a374f2af4a17d43",
  "kind": "def",
  "lexical_name": "reducibleType",
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
  "slug": "reducibletype--c684d19f80ff05d7f4e4519c",
  "source": {
    "blob": "a0e3b94328d181ff8f590834202b535b4e2c6ebc",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 152,
    "line": 133,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CompiledEnvironmentExport/Variantc2221e8bc9afdb8ac46b4edb40d7992d0d23cf6ffeffcfabb8d92a60265b1f87.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:c684d19f80ff05d7f4e4519ccbe64b904e0e025eb04c949b5ff9572f3ac5c64f",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CompiledEnvironmentExport/Variantc2221e8bc9afdb8ac46b4edb40d7992d0d23cf6ffeffcfabb8d92a60265b1f87.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:5497b3c3d4455ee0ff15ab78d1226161198a88ea8fc1b4b24a374f2af4a17d43`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 133–152.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private def reducibleType (env : Environment) (info : ConstantInfo) : IO String := do
  let coreContext : Core.Context :=
    { fileName := "<compiled-environment-export>"
      fileMap := default
      options := normalizationOptions
      maxHeartbeats := 0 }
  let coreState : Core.State := { env := env }
  let action : MetaM Expr :=
    Meta.withTransparency .reducible <| reducibleWhnfTree info.type
  let (normalized, _, _) ← Meta.MetaM.toIO action coreContext coreState
  let format ← PrettyPrinter.ppExprLegacy env {} {} normalizationOptions normalized
  return format.pretty

/--
Sort and deduplicate serialized names by their JSON string representation.

`Name.lt` is an internal structural order and is not necessarily the same as
the lexicographic order consumed by downstream JSON validators.  Applying the
serialization boundary first makes the evidence contract explicit and stable.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CompiledEnvironmentExport/Variantc2221e8bc9afdb8ac46b4edb40d7992d0d23cf6ffeffcfabb8d92a60265b1f87.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CompiledEnvironmentExport/Variantc2221e8bc9afdb8ac46b4edb40d7992d0d23cf6ffeffcfabb8d92a60265b1f87.lean#L133).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a0e3b94328d181ff8f590834202b535b4e2c6ebc` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
