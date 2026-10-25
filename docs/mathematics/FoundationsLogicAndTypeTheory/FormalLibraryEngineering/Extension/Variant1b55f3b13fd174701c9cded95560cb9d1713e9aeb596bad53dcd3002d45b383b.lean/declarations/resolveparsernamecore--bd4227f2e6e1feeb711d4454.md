# resolveParserNameCore

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:46beeb0bfaa511137ddb82553dccf83586f78915427a7e238bd357a5b6d33062",
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
  "slug": "resolveparsernamecore--bd4227f2e6e1feeb711d4454",
  "source": {
    "blob": "82c790dd1d8158741e060af8300dea78c9c028ef",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 759,
    "line": 726,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Extension/Variant1b55f3b13fd174701c9cded95560cb9d1713e9aeb596bad53dcd3002d45b383b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:bd4227f2e6e1feeb711d44540a46afbc5b4a2cae865a3357ebb89af08eed366d",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Extension/Variant1b55f3b13fd174701c9cded95560cb9d1713e9aeb596bad53dcd3002d45b383b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:46beeb0bfaa511137ddb82553dccf83586f78915427a7e238bd357a5b6d33062`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 726–759.

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

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Extension/Variant1b55f3b13fd174701c9cded95560cb9d1713e9aeb596bad53dcd3002d45b383b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Extension/Variant1b55f3b13fd174701c9cded95560cb9d1713e9aeb596bad53dcd3002d45b383b.lean#L726).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `82c790dd1d8158741e060af8300dea78c9c028ef` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
