# getDeclsInPackage

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:ab47a7e6898f4b75d310f01bb67b7029c14b1ad7e71e6ec5354e28eeb6640bad",
  "kind": "def",
  "lexical_name": "getDeclsInPackage",
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
  "slug": "getdeclsinpackage--e00af033b9730b17f7847ea7",
  "source": {
    "blob": "c22cdb258576b0217a819ba616a6587b1487e025",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 269,
    "line": 260,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Frontend/Variantc220e1431d89e12fbe9ba483e0f1eceebb7f5fe811ffaea9049104266f1a105a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:e00af033b9730b17f7847ea72997385aaab5d287c3d585bd8e056e272cfb0919",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Frontend/Variantc220e1431d89e12fbe9ba483e0f1eceebb7f5fe811ffaea9049104266f1a105a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:ab47a7e6898f4b75d310f01bb67b7029c14b1ad7e71e6ec5354e28eeb6640bad`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 260–269.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def getDeclsInPackage (pkg : Name) : CoreM (Array Name) := do
  let env ← getEnv
  let mut decls ← getDeclsInCurrModule
  let modules := env.header.moduleNames.map (pkg.isPrefixOf ·)
  return env.constants.map₁.fold (init := decls) fun decls declName _ =>
    if modules[env.const2ModIdx[declName]?.get!]! then
      decls.push declName
    else decls

/-- The `in foo` config argument allows running the linter on a specified project. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Frontend/Variantc220e1431d89e12fbe9ba483e0f1eceebb7f5fe811ffaea9049104266f1a105a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Frontend/Variantc220e1431d89e12fbe9ba483e0f1eceebb7f5fe811ffaea9049104266f1a105a.lean#L260).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c22cdb258576b0217a819ba616a6587b1487e025` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
