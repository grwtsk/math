# writeDeclarationAudit

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:4567924fd0eefd0203d687e9678d1f9602c0f7311c0b0e96bf4683b4b4b1e0f2",
  "kind": "def",
  "lexical_name": "writeDeclarationAudit",
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
  "slug": "writedeclarationaudit--d14d011692a8b6be2b2b5aed",
  "source": {
    "blob": "22b9342e6f2ad8a7e29ef7614f55f94226ac76e3",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 182,
    "line": 145,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LeanKernelCheck/Variant68c1d1fdec16c8f6c91f25b2a2172213d4fd223f8634983b1853693c61dda5f1.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:d14d011692a8b6be2b2b5aed0f06f2185aaec5b83fe59b82e333b46eb3a2b4b3",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LeanKernelCheck/Variant68c1d1fdec16c8f6c91f25b2a2172213d4fd223f8634983b1853693c61dda5f1.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:4567924fd0eefd0203d687e9678d1f9602c0f7311c0b0e96bf4683b4b4b1e0f2`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 145–182.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private def writeDeclarationAudit
    (environment : Environment)
    (input : FilePath)
    (fileMap : FileMap)
    (declarationName : Name)
    (output : FilePath) : IO Unit := do
  let information ←
    environment.find? declarationName |>.getDM <|
      throw <| IO.userError s!"audit declaration is absent: {declarationName}"
  let directNames :=
    nameSetArray information.getUsedConstantsAsSet
  let closureNames :=
    nameSetArray <|
      dependencyClosure environment directNames.toList
  let coreContext : Core.Context := {
    fileName := input.toString
    fileMap := fileMap
  }
  let axiomResult ←
    Lean.Core.CoreM.toIO
      (collectAxioms declarationName)
      coreContext
      { env := environment }
  let axioms : Array Name := axiomResult.1
  let audit : DeclarationAudit := {
    schema := "mathematics/lean-declaration-audit/1"
    checker := "surface_lean_kernel_check"
    declarationName := declarationName.toString
    declarationKind := constantKind information
    declarationTypeRepr := reprStr information.type
    declarationValueRepr :=
      information.value? (allowOpaque := true)
        |>.map reprStr
        |>.getD ""
    directDependencies :=
      directNames.map Name.toString |>.qsort (· < ·)
    dependencyClosure :=
      closureNames.map Name.toString |>.qsort (· < ·)
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LeanKernelCheck/Variant68c1d1fdec16c8f6c91f25b2a2172213d4fd223f8634983b1853693c61dda5f1.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LeanKernelCheck/Variant68c1d1fdec16c8f6c91f25b2a2172213d4fd223f8634983b1853693c61dda5f1.lean#L145).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `22b9342e6f2ad8a7e29ef7614f55f94226ac76e3` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
