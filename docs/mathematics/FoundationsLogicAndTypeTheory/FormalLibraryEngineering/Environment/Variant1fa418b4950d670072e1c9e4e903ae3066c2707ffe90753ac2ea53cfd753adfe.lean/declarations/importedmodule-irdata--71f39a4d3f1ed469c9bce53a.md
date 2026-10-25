# ImportedModule.irData?

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:a118d91b5e7d5a5dab471fe1a73ae5a60dcee17b4804a5cc05f3b79683e84fb3",
  "kind": "def",
  "lexical_name": "ImportedModule.irData?",
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
  "slug": "importedmodule-irdata--71f39a4d3f1ed469c9bce53a",
  "source": {
    "blob": "59e340aebe9944d1482e6aba5da1f8ec52a51fee",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 2062,
    "line": 2053,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Environment/Variant1fa418b4950d670072e1c9e4e903ae3066c2707ffe90753ac2ea53cfd753adfe.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:71f39a4d3f1ed469c9bce53a8340ade5c5b0399417b7ed475ddd50d0b9e02c45",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Environment/Variant1fa418b4950d670072e1c9e4e903ae3066c2707ffe90753ac2ea53cfd753adfe.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:a118d91b5e7d5a5dab471fe1a73ae5a60dcee17b4804a5cc05f3b79683e84fb3`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 2053–2062.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private def ImportedModule.irData? (self : ImportedModule) (loadIRSig : Bool := false) : Option ModuleData :=
  if self.irParts.isEmpty || !self.mainModule?.any (·.isModule) then
    self.mainModule?
  else
    -- leanir: for `import all` modules, use `.ir`; otherwise prefer `.ir.sig`
    if !loadIRSig || self.importAll then
      self.irParts.back?.map (·.1)
    else
      self.irParts[0]?.map (·.1)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Environment/Variant1fa418b4950d670072e1c9e4e903ae3066c2707ffe90753ac2ea53cfd753adfe.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Environment/Variant1fa418b4950d670072e1c9e4e903ae3066c2707ffe90753ac2ea53cfd753adfe.lean#L2053).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `59e340aebe9944d1482e6aba5da1f8ec52a51fee` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
