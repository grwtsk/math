# handleCodeActionResolve

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:96ead8545d665497cab38068edbd71c4e5b99195c61647deeb26eba6ef378230",
  "kind": "def",
  "lexical_name": "handleCodeActionResolve",
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
  "slug": "handlecodeactionresolve--d49f7b2fcec6dbfbfe8eac7f",
  "source": {
    "blob": "ceaeb7111a95a99dac4c22902f2e07a715a51183",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 179,
    "line": 159,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variantd1761ffe657dbf214821aa6cb51ef58f6d00658185df6fdcf2f06b24bc8503fa.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:d49f7b2fcec6dbfbfe8eac7fd2ae8c59e6d008dcc7e27a9db80d9a1a4870a404",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variantd1761ffe657dbf214821aa6cb51ef58f6d00658185df6fdcf2f06b24bc8503fa.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:96ead8545d665497cab38068edbd71c4e5b99195c61647deeb26eba6ef378230`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 159–179.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def handleCodeActionResolve (param : CodeAction) : RequestM (RequestTask CodeAction) := do
  let doc ← readDoc
  let some data := param.data?
    | throw (RequestError.invalidParams "Expected a data field on CodeAction.")
  let data ← RequestM.parseRequestParams CodeActionResolveData data
  let pos := doc.meta.text.lspPosToUtf8Pos data.params.range.end
  withWaitFindSnap doc (fun s => s.endPos ≥ pos)
    (notFoundX := throw <| RequestError.internalError "snapshot not found")
    fun snap => do
      let cap ← match (← builtinCodeActionProviders.get).find? data.providerName with
        | some cap => pure cap
        | none     => RequestM.runCoreM snap <| evalCodeActionProvider data.providerName
      let cas ← cap data.params snap
      let some ca := cas[data.providerResultIndex]?
        | throw <| RequestError.internalError s!"Failed to resolve code action index {data.providerResultIndex}."
      let some lazy := ca.lazy?
        -- Eager code action - return unchanged
        | return param
      let r ← liftM lazy
      return r

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variantd1761ffe657dbf214821aa6cb51ef58f6d00658185df6fdcf2f06b24bc8503fa.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variantd1761ffe657dbf214821aa6cb51ef58f6d00658185df6fdcf2f06b24bc8503fa.lean#L159).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ceaeb7111a95a99dac4c22902f2e07a715a51183` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
