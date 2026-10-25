# Entries.addConst

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:2766f04af32fc425d1c1a5702182a379d75841ab737f4a2a5a8d6678ca23aee0",
  "kind": "def",
  "lexical_name": "Entries.addConst",
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
  "slug": "entries-addconst--ca5d04404caefc478d16cc91",
  "source": {
    "blob": "602568f1498758ccd989769dc8aa40280d88206e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 172,
    "line": 136,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FindPremises/Variant574c2af3dfb480d3683f41b43f427a16509130c39b03d856d231cb061947ce5a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:ca5d04404caefc478d16cc9163e6588e054b7d94028716c41def9f45dc725304",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FindPremises/Variant574c2af3dfb480d3683f41b43f427a16509130c39b03d856d231cb061947ce5a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:2766f04af32fc425d1c1a5702182a379d75841ab737f4a2a5a8d6678ca23aee0`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 136–172.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def Entries.addConst (choice : Choice) (env : Environment) (entries : Entries)
    (name : Name) (cinfo : ConstantInfo) : MetaM Entries := do
  if cinfo.isUnsafe then return entries
  if blacklist env name then return entries
  setMCtx {}
  let (xs, _, e) ← forallMetaTelescope cinfo.type
  let mut { rw, grw, app, appAt } := entries
  -- apply
  if choice.app then
    if !isBadMatch e then
      app ← pushEntry app e ⟨.const name⟩
  -- apply at
  if choice.appAt then
    if let some x := xs.back? then
      let e ← inferType x
      if !isBadMatch e then
        appAt ← pushEntry appAt e ⟨.const name⟩
  if choice.rw || choice.grw then
    let mkApp2 rel lhs rhs := e | pure ()
    let .const relName _ := rel.getAppFn | pure ()
    -- rw
    if relName matches ``Iff | ``Eq then
      if choice.rw then
        if !isBadMatch lhs then
          rw ← pushEntry rw lhs ⟨.const name, false⟩
        if !isBadMatch rhs && (isBadMatch lhs || !isMVarSwap lhs rhs) then
          rw ← pushEntry rw rhs ⟨.const name, true⟩
    -- grw
    else
      if choice.grw then
        if !isBadMatch lhs then
          grw ← pushEntry grw lhs ⟨.const name, false, relName⟩
        if !isBadMatch rhs then
          grw ← pushEntry grw rhs ⟨.const name, true, relName⟩
  return { rw, grw, app, appAt }

/-- Given a free variable, compute what needs to be added to the various discrimination trees. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FindPremises/Variant574c2af3dfb480d3683f41b43f427a16509130c39b03d856d231cb061947ce5a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FindPremises/Variant574c2af3dfb480d3683f41b43f427a16509130c39b03d856d231cb061947ce5a.lean#L136).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `602568f1498758ccd989769dc8aa40280d88206e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
