# exportCompiledEnvironment

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:5a86d2dab5c528acf80f29f84e117f8406582cc6041236adf2e16e377febe015",
  "kind": "def",
  "lexical_name": "exportCompiledEnvironment",
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
  "slug": "exportcompiledenvironment--73e7461e0dc9d250f324afb6",
  "source": {
    "blob": "be3658aab4b6949d8b10f5db5f1b91d77c1a86fa",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 252,
    "line": 226,
    "path": "GRWTSK/Algebra/LinearAlgebra/CompiledEnvironmentExport/Variant90b93246b23c124345d542c28b226f5456608c5c0ab80e5ae3bff3e1a0846215.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:73e7461e0dc9d250f324afb6b01d80430ea5a47484d05a49e224e404877fa9a5",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/CompiledEnvironmentExport/Variant90b93246b23c124345d542c28b226f5456608c5c0ab80e5ae3bff3e1a0846215.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:5a86d2dab5c528acf80f29f84e117f8406582cc6041236adf2e16e377febe015`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 226–252.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private def exportCompiledEnvironment : IO Export := do
  let root ← IO.currentDir
  let discovered ← match ← FormalSourceLocations.leanFiles root with
    | none => collectLeanModules root root
    | some files => do
        let files := files.filter fun file => !(file.components.contains ".lake")
        files.mapM fun file => FormalSourceLocations.logicalModuleName root file
  let modules := distinctSortedModules discovered
  let conflictModules : Array Name :=
    #[`Main, `Tests, `Tools.CompiledEnvironmentExport,
      `Tools.RhetoricalKernelManifest]
  let ordinary := modules.filter fun moduleName => !conflictModules.contains moduleName
  let mut records ← importBatch ordinary
  for moduleName in conflictModules do
    if modules.contains moduleName then
      records := records ++ (← importBatch #[moduleName])
  let sortedRecords := records.qsort recordLt
  return {
    schemaVersion := 4
    producer := "pinned Lean Environment.header.moduleData + reducible Meta.whnf traversal + PrettyPrinter.ppExprLegacy + collectAxioms"
    checkerVersion := Lean.versionString
    scope := "all compiled modules corresponding to repository Lean source files; records are identified by defining-module plus declaration-name, declarations include private/internal flags, exact sorted type-constant references, raw pinned-frontend normalized types, reducible-WHNF types recursively normalized through binder domains, sorted observed axiom closures, and checker version; each module also exposes its effective direct imports and extra compiler constant names for fail-closed downstream source/import-byte binding; reducible normalization is executable metadata rather than theorem authority and does not unfold semireducible, irreducible, or opaque definitions; source-byte digests, owner, and source span are supplied by deterministic external enrichment"
    modules := sortedRecords
  }

end CompiledEnvironmentExport

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/CompiledEnvironmentExport/Variant90b93246b23c124345d542c28b226f5456608c5c0ab80e5ae3bff3e1a0846215.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/CompiledEnvironmentExport/Variant90b93246b23c124345d542c28b226f5456608c5c0ab80e5ae3bff3e1a0846215.lean#L226).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `be3658aab4b6949d8b10f5db5f1b91d77c1a86fa` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
