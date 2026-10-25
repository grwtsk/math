# Anonymous builtin_initialize

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:5ee4b7bbe765147373ce4cb1ae4fe8f10130c1e0229c421388fa293f2471c618",
  "kind": "builtin_initialize",
  "lexical_name": null,
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
  "slug": "builtin-initialize--46ed00b5ab93710990be9d87",
  "source": {
    "blob": "5d756bb1f00005c766763cd174ce05ae1dc70106",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 50,
    "line": 30,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Deprecated/Variant8c4081ce9b1680d514d939b490fa3971c7a18605d74d23c2d122a9b842b47513.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:46ed00b5ab93710990be9d876a2d921820f42b08d2dc577f940c1b468e294245",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Deprecated/Variant8c4081ce9b1680d514d939b490fa3971c7a18605d74d23c2d122a9b842b47513.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `builtin_initialize` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:5ee4b7bbe765147373ce4cb1ae4fe8f10130c1e0229c421388fa293f2471c618`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 30–50.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
builtin_initialize deprecatedAttr : ParametricAttribute DeprecationEntry ←
  registerParametricAttribute {
    name := `deprecated
    descr := "mark declaration as deprecated",
    getParam := fun declName stx => do
      let `(attr| deprecated $[$id?]? $[$text?]? $[(since := $since?)]?) := stx
        | throwError "Invalid `[deprecated]` attribute syntax"
      let newName? ← id?.mapM Elab.realizeGlobalConstNoOverloadWithInfo
      if newName? == some declName then
        throwError "Invalid `[deprecated]` attribute: `{.ofConstName declName true}` cannot be deprecated in favor of itself"
      if let some newName := newName? then
        recordExtraModUseFromDecl (isMeta := false) newName
      let text? := text?.map TSyntax.getString
      let since? := since?.map TSyntax.getString
      if id?.isNone && text?.isNone then
        logWarning "`[deprecated]` attribute should specify either a new name or a deprecation message"
      if since?.isNone then
        logWarning "`[deprecated]` attribute should specify the date or library version at which the deprecation was introduced, using `(since := \"...\")`"
      return { newName?, text?, since? }
  }

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Deprecated/Variant8c4081ce9b1680d514d939b490fa3971c7a18605d74d23c2d122a9b842b47513.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Deprecated/Variant8c4081ce9b1680d514d939b490fa3971c7a18605d74d23c2d122a9b842b47513.lean#L30).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5d756bb1f00005c766763cd174ce05ae1dc70106` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
