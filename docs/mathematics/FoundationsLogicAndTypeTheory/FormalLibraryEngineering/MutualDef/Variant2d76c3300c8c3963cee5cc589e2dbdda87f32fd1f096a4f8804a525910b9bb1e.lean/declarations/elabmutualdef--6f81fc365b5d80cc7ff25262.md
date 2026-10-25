# elabMutualDef

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:d6ba2f801034773b8ecbed2404723c777dcb271385579799d0271adb9a69d526",
  "kind": "def",
  "lexical_name": "elabMutualDef",
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
  "slug": "elabmutualdef--6f81fc365b5d80cc7ff25262",
  "source": {
    "blob": "95524f4693dae3016627447f92c8871548cdca73",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1580,
    "line": 1526,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MutualDef/Variant2d76c3300c8c3963cee5cc589e2dbdda87f32fd1f096a4f8804a525910b9bb1e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:6f81fc365b5d80cc7ff25262dec6b210c4412196ecf1b19fc162cf3296811d2e",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MutualDef/Variant2d76c3300c8c3963cee5cc589e2dbdda87f32fd1f096a4f8804a525910b9bb1e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:d6ba2f801034773b8ecbed2404723c777dcb271385579799d0271adb9a69d526`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1526–1580.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def elabMutualDef (ds : Array Syntax) : CommandElabM Unit := do
  let opts ← getOptions
  let headerPromises ← ds.mapM fun _ => IO.Promise.new
  let snap? := (← read).snap?
  let mut views := #[]
  let mut defs := #[]
  let mut reusedAllHeaders := true
  for h : i in *...ds.size, headerPromise in headerPromises do
    let d := ds[i]
    let modifiers ← elabModifiers ⟨d[0]⟩
    if ds.size > 1 && modifiers.isNonrec then
      throwErrorAt d "invalid use of 'nonrec' modifier in 'mutual' block"
    let mut view ←
      withExporting (isExporting := modifiers.visibility.isInferredPublic (← getEnv)) do
        mkDefView modifiers d[1]
    if view.kind != .example && view.value matches `(declVal| := rfl) then
      view := view.markDefEq
    let fullHeaderRef := mkNullNode #[d[0], view.headerRef]
    if let some snap := snap? then
      view := { view with headerSnap? := some {
        old? := do
          -- transitioning from `Context.snap?` to `DefView.headerSnap?` invariant: if the
          -- elaboration context and state are unchanged, and the syntax of this as well as all
          -- previous headers is unchanged, then the elaboration result for this header (which
          -- includes state from elaboration of previous headers!) should be unchanged.
          guard reusedAllHeaders
          let old ← snap.old?
          -- blocking wait, `HeadersParsedSnapshot` (and hopefully others) should be quick
          let old ← old.val.get.toTyped? DefsParsedSnapshot
          let oldParsed ← old.defs[i]?
          guard <| fullHeaderRef.eqWithInfoAndTraceReuse opts oldParsed.fullHeaderRef
          -- no syntax guard to store, we already did the necessary checks
          return ⟨.missing, oldParsed.headerProcessedSnap⟩
        new := headerPromise
      } }
      if snap.old?.isSome && (view.headerSnap?.bind (·.old?)).isNone then
        snap.old?.forM (·.val.cancelRec)
      let cancelTk? := (← read).cancelTk?
      defs := defs.push {
        fullHeaderRef
        headerProcessedSnap := { stx? := d, task := headerPromise.resultD default, cancelTk? }
      }
      reusedAllHeaders := reusedAllHeaders && view.headerSnap?.any (·.old?.isSome)
    views := views.push view
  let defsParsedSnap := { defs, diagnostics := .empty : DefsParsedSnapshot }
  if let some snap := snap? then
    -- no non-fatal diagnostics at this point
    snap.new.resolve <| .ofTyped defsParsedSnap
  let sc ← getScope
  -- use hash of all names as stable quot context
  withInitQuotContext (some (hash (views.map (·.declId[0].getId)))) do
  runTermElabM fun vars => do
    Term.elabMutualDef vars sc views
    Term.logGoalsAccomplishedSnapshotTask views defsParsedSnap

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MutualDef/Variant2d76c3300c8c3963cee5cc589e2dbdda87f32fd1f096a4f8804a525910b9bb1e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MutualDef/Variant2d76c3300c8c3963cee5cc589e2dbdda87f32fd1f096a4f8804a525910b9bb1e.lean#L1526).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `95524f4693dae3016627447f92c8871548cdca73` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
