# elabAttr

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:69a8dd53032aeb84959b404d99d2348b7a1d25e7b415be0b4b934063952dc140",
  "kind": "def",
  "lexical_name": "elabAttr",
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
  "slug": "elabattr--23deb458bf739b616d504d8b",
  "source": {
    "blob": "9a3b68089070640e92b23478c261cabde3f0d218",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 86,
    "line": 57,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Attributes/Variant1d5c426b55aa01a710fb2dca9135b34e355d590cff7050b3296641a78338635b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:23deb458bf739b616d504d8b26ab3b2dc12873380e2ee0659869e5b603d9116c",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Attributes/Variant1d5c426b55aa01a710fb2dca9135b34e355d590cff7050b3296641a78338635b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:69a8dd53032aeb84959b404d99d2348b7a1d25e7b415be0b4b934063952dc140`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 57–86.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def elabAttr [Monad m] [MonadEnv m] [MonadResolveName m] [MonadError m] [MonadMacroAdapter m] [MonadRecDepth m] [MonadTrace m] [MonadOptions m] [AddMessageContext m] [MonadLiftT IO m] [MonadFinally m] (attrInstance : Syntax) : m Attribute := do
  -- Resolving the attribute itself can be done in the private scope; running the attribute handler
  -- will later be done in a scope determined by `applyAttributesCore`.
  withoutExporting do
    /- attrInstance     := ppGroup $ leading_parser attrKind >> attrParser -/
    let attrKind ← liftMacroM <| toAttributeKind attrInstance[0]
    let attr := attrInstance[1]
    let attr ← liftMacroM <| expandMacros attr
    let attrName ← if attr.getKind == ``Parser.Attr.simple then
      pure attr[0].getId.eraseMacroScopes
    else match attr.getKind with
      | .str _ s => pure <| Name.mkSimple s
      | _ => throwErrorAt attr  "Unknown attribute"
    let .ok _impl := getAttributeImpl (← getEnv) attrName
      | throwError "Unknown attribute `[{attrName}]`"
    if let .ok impl := getAttributeImpl (← getEnv) attrName then
      if regularInitAttr.getParam? (← getEnv) impl.ref |>.isSome then  -- skip `builtin_initialize` attributes
        -- Reject attribute uses where the implementation's module has been loaded for IR only as
        -- this would make it `inServer`-dependent and confused shake as well (#13599).
        if let some idx := (← getEnv).getModuleIdxFor? impl.ref then
          let env ← getEnv
          if env.header.modules[idx]?.any (!·.hasData) then
            let modName := env.header.modules[idx]!.module
            throwError m!"Cannot use attribute `[{attrName}]`: module `{modName}` is loaded for IR \
              only (reached as a private `meta` dependency). Add an import of `{modName}`."
        recordExtraModUseFromDecl (isMeta := true) impl.ref
    /- The `AttrM` does not have sufficient information for expanding macros in `args`.
      So, we expand them before here before we invoke the attributer handlers implemented using `AttrM`. -/
    return { kind := attrKind, name := attrName, stx := attr }

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Attributes/Variant1d5c426b55aa01a710fb2dca9135b34e355d590cff7050b3296641a78338635b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Attributes/Variant1d5c426b55aa01a710fb2dca9135b34e355d590cff7050b3296641a78338635b.lean#L57).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9a3b68089070640e92b23478c261cabde3f0d218` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
