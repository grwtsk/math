# isDeniedPremise

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:dc8ec3269f91d52be5dc98516c25bf49e84bc47f487933633a2f9f484adb6eb1",
  "kind": "def",
  "lexical_name": "isDeniedPremise",
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
  "slug": "isdeniedpremise--0d932c59fd4f532355d59d62",
  "source": {
    "blob": "3e18afc9357aa3c4b8984eff5bfb18e439717a54",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 356,
    "line": 336,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant2070e1ce53687fe97d55b2d6a8bbac42e1589022f4bfc16c99b5ef01589c9f94.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:0d932c59fd4f532355d59d62dbbc0802e3013299ac9e798a5a956e908ad1dbc5",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant2070e1ce53687fe97d55b2d6a8bbac42e1589022f4bfc16c99b5ef01589c9f94.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:dc8ec3269f91d52be5dc98516c25bf49e84bc47f487933633a2f9f484adb6eb1`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 336–356.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def isDeniedPremise (env : Environment) (name : Name) (allowPrivate : Bool := false) : Bool := Id.run do
  if name == ``sorryAx then return true
  -- Allow private names through if allowPrivate is set (e.g., for currentFile selector)
  if name.isInternalDetail && !(allowPrivate && isPrivateName name) then return true
  if isInstanceReducibleCore env name then return true
  if Lean.Linter.isDeprecated env name then return true
  if (nameDenyListExt.getState env).any (fun p => name.anyS (· == p)) then return true
  if let some moduleIdx := env.getModuleIdxFor? name then
    let moduleName := env.header.moduleNames[moduleIdx.toNat]!
    if isDeniedModule env moduleName then
      return true
  let some ci := env.find? name | return true
  if let .const fnName _ := ci.type.getForallBody.getAppFn then
    if (typePrefixDenyListExt.getState env).any (fun p => p.isPrefixOf fnName) then return true
  return false

end DenyList

/--
The trivial premise selector, which returns no suggestions.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant2070e1ce53687fe97d55b2d6a8bbac42e1589022f4bfc16c99b5ef01589c9f94.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant2070e1ce53687fe97d55b2d6a8bbac42e1589022f4bfc16c99b5ef01589c9f94.lean#L336).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3e18afc9357aa3c4b8984eff5bfb18e439717a54` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
