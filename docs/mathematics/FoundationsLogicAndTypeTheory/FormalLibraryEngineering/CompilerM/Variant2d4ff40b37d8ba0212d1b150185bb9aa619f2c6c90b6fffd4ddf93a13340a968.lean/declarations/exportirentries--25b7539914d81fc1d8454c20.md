# exportIREntries

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:46832af56906699c3aa106f5cf5879822a73614a23e00b0e3404fa77bc0ac299",
  "kind": "def",
  "lexical_name": "exportIREntries",
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
  "slug": "exportirentries--25b7539914d81fc1d8454c20",
  "source": {
    "blob": "d2abfa00cc93e086d17a4658ca5835364c9e6744",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 149,
    "line": 129,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CompilerM/Variant2d4ff40b37d8ba0212d1b150185bb9aa619f2c6c90b6fffd4ddf93a13340a968.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:25b7539914d81fc1d8454c20a0252a62700f76470be7766267203154bbb3aaf5",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CompilerM/Variant2d4ff40b37d8ba0212d1b150185bb9aa619f2c6c90b6fffd4ddf93a13340a968.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:46832af56906699c3aa106f5cf5879822a73614a23e00b0e3404fa77bc0ac299`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 129–149.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private def exportIREntries (env : Environment) : Array (Name × Array EnvExtensionEntry) :=
  let irDecls := declMapExt.getEntries env |>.foldl (init := #[]) fun decls decl => decls.push decl
  -- safety: cast to erased type
  let irEntries : Array EnvExtensionEntry := unsafe unsafeCast <| sortDecls irDecls

  -- save all initializers independent of meta/private. Non-meta initializers will only be used when
  -- .ir is actually loaded, and private ones iff visible.
  let initDecls : Array (Name × Name) :=
    (regularInitAttr.ext.exportEntriesFn env (regularInitAttr.ext.getState env)).private
  -- safety: cast to erased type
  let initDecls : Array EnvExtensionEntry := unsafe unsafeCast initDecls

  -- needed during initialization via interpreter
  let modPkg : Array (Option PkgId) := (modPkgExt.exportEntriesFn env (modPkgExt.getState env)).private
  -- safety: cast to erased type
  let modPkg : Array EnvExtensionEntry := unsafe unsafeCast modPkg

  #[(declMapExt.name, irEntries),
    (Lean.regularInitAttr.ext.name, initDecls),
    (modPkgExt.name, modPkg)]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CompilerM/Variant2d4ff40b37d8ba0212d1b150185bb9aa619f2c6c90b6fffd4ddf93a13340a968.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CompilerM/Variant2d4ff40b37d8ba0212d1b150185bb9aa619f2c6c90b6fffd4ddf93a13340a968.lean#L129).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d2abfa00cc93e086d17a4658ca5835364c9e6744` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
