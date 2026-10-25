# elabPackageCommand

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:65e6e2d39745988985c256cc18e6bd18d3c8d2db0737198c0c1d13ea4be04e8d",
  "kind": "def",
  "lexical_name": "elabPackageCommand",
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
  "slug": "elabpackagecommand--0755a25c5254c37233553e49",
  "source": {
    "blob": "cca941b8bc58cb25278435431eec68d3d01dae53",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 53,
    "line": 30,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Package/Variantaf877d378ccdba807d269cb09a93ad6fea737b67906deb804fbdad1945121786.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:0755a25c5254c37233553e49ca36902dacc7a7a1fccfe9b7e67f78715cc81c53",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Package/Variantaf877d378ccdba807d269cb09a93ad6fea737b67906deb804fbdad1945121786.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:65e6e2d39745988985c256cc18e6bd18d3c8d2db0737198c0c1d13ea4be04e8d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 30–53.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def elabPackageCommand : CommandElab := fun stx => do
  let `(packageCommand|$(doc?)? $(attrs?)? package%$kw $[$nameStx?]? $cfg) := stx
    | throwErrorAt stx "ill-formed package declaration"
  withRef kw do
  let configId : Ident ← `(pkgConfig)
  let id ← mkConfigDeclIdent nameStx?
  let origName := Name.quoteFrom id id.getId
  let ⟨wsIdx, name⟩ := nameExt.getState (← getEnv)
  let baseName := match name with
    | .anonymous => origName
    | name => Name.quoteFrom id name
  let wsIdx := quote wsIdx
  let keyName := Syntax.mkCApp ``Name.num #[baseName, wsIdx]
  let ty := Syntax.mkCApp ``PackageConfig #[keyName, origName]
  elabConfig ``PackageConfig configId ty cfg
  let attr ← `(Term.attrInstance| «package»)
  let attrs := #[attr] ++ expandAttrs attrs?
  let id := mkIdentFrom id packageDeclName
  let decl ← `({baseName := $baseName, origName := $origName, keyName := $keyName, config := $configId})
  let cmd ← `($[$doc?]? @[$attrs,*] abbrev $id : PackageDecl := $decl)
  withMacroExpansion stx cmd <| elabCommand cmd
  let nameId := mkIdentFrom id <| packageDeclName.str "name"
  elabCommand <| ← `(
    @[deprecated "Use `__name__` instead." (since := "2025-09-18")]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Package/Variantaf877d378ccdba807d269cb09a93ad6fea737b67906deb804fbdad1945121786.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Package/Variantaf877d378ccdba807d269cb09a93ad6fea737b67906deb804fbdad1945121786.lean#L30).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `cca941b8bc58cb25278435431eec68d3d01dae53` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
