# resolveParserNameCore

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:e3b009095cf0047fac16a9dd0d63b0479af37844f1814eeac1c2df7b18fc6113",
  "kind": "def",
  "lexical_name": "resolveParserNameCore",
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
  "slug": "resolveparsernamecore--44a92c415e98b895d0b0bfcf",
  "source": {
    "blob": "8df994b39cd63eb47910c8816869e2a4091eb510",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 767,
    "line": 734,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Extension/Variant6529b44e8beb89eee4ecb9817a36248294cf625f857798fdbd1b50f9774544bf.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:44a92c415e98b895d0b0bfcfe3ad27bdde5b242962963ab07bd43879e164d15d",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Extension/Variant6529b44e8beb89eee4ecb9817a36248294cf625f857798fdbd1b50f9774544bf.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:e3b009095cf0047fac16a9dd0d63b0479af37844f1814eeac1c2df7b18fc6113`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 734–767.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private def resolveParserNameCore (env : Environment) (opts : Options) (currNamespace : Name)
    (openDecls : List OpenDecl) (ident : Ident) : List ParserResolution := Id.run do
  let ⟨.ident (val := val) (preresolved := pre) ..⟩ := ident | return []

  let rec isParser (name : Name) : Option Bool :=
    (env.find? name).bind fun ci =>
      match ci.type with
      | .const ``Parser _ | .const ``TrailingParser _ => some false
      | .const ``ParserDescr _ | .const ``TrailingParserDescr _ => some true
      | _ => none

  for pre in pre do
    if let .decl n [] := pre then
      if let some isDescr := isParser n then
        return [.parser n isDescr]

  let erased := val.eraseMacroScopes

  if isParserCategory env erased then
    return [.category erased]

  let resolved ← ResolveName.resolveGlobalName env opts currNamespace openDecls val |>.filterMap fun
    | (name, []) => (isParser name).map fun isDescr => .parser name isDescr
    | _ => none
  unless resolved.isEmpty do
    return resolved

  -- Aliases are considered global declarations and so should be tried after scope-aware resolution
  if let some alias := aliasExtension.getState env |>.find? erased then
    return [.alias alias]

  return []

/-- Resolve the given parser name and return a list of candidates. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Extension/Variant6529b44e8beb89eee4ecb9817a36248294cf625f857798fdbd1b50f9774544bf.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Extension/Variant6529b44e8beb89eee4ecb9817a36248294cf625f857798fdbd1b50f9774544bf.lean#L734).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8df994b39cd63eb47910c8816869e2a4091eb510` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
