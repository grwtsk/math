# publishDiagnostics

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:456e2e7283ac1ae352b4ba3dc98a735d72226a36310c957c20d521c4c91170a2",
  "kind": "def",
  "lexical_name": "publishDiagnostics",
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
  "slug": "publishdiagnostics--5156fe30572262edb196c147",
  "source": {
    "blob": "e46f44a1599800a6bd6bedb8db9729235d37f49e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 164,
    "line": 131,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Utils/Variantb0c639a32c740e9fe0681b995c55e33812364c4421dd577aa7b85531122f406e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:5156fe30572262edb196c14746f85381d0cbb0fb2f3b57047fb6d92014ad7c56",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Utils/Variantb0c639a32c740e9fe0681b995c55e33812364c4421dd577aa7b85531122f406e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:456e2e7283ac1ae352b4ba3dc98a735d72226a36310c957c20d521c4c91170a2`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 131–164.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def publishDiagnostics (doc : EditableDocumentCore) (incrementalDiagnosticSupport : Bool)
    (writeDiagnostics : JsonRpc.Notification Lsp.PublishDiagnosticsParams → BaseIO Unit) :
    BaseIO Unit := do
  -- The mutex must be held across both the state update and the write to ensure that concurrent
  -- publishers (e.g. the reporter task and the main thread) cannot interleave their state reads
  -- and writes, which would reorder incremental/non-incremental messages and corrupt client state.
  doc.diagnosticsMutex.atomically do
    let ds ← get
    let useIncremental := incrementalDiagnosticSupport && ds.isIncremental
    let stickyDiags ← ds.stickyDiagsRef.get
    let diags := ds.diags
    let publishedDiagsAmount := ds.publishedDiagsAmount
    set <| { ds with publishedDiagsAmount := diags.size, isIncremental := true }
    let (diagsToSend, isIncremental) :=
      if useIncremental then
        let newDiags := diags.foldl (init := #[]) (start := publishedDiagsAmount) fun acc d =>
          acc.push d.toDiagnostic
        (newDiags, true)
      else
        let allDiags := stickyDiags.foldl (init := #[]) fun acc d =>
          acc.push d.toDiagnostic
        let allDiags := diags.foldl (init := allDiags) fun acc d =>
          acc.push d.toDiagnostic
        (allDiags, false)
    let isIncremental? :=
      if incrementalDiagnosticSupport then
        some isIncremental
      else
        none
    writeDiagnostics <| mkPublishDiagnosticsNotification doc.meta diagsToSend isIncremental?

end EditableDocumentCore

/-- `EditableDocumentCore` with reporter task. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Utils/Variantb0c639a32c740e9fe0681b995c55e33812364c4421dd577aa7b85531122f406e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Utils/Variantb0c639a32c740e9fe0681b995c55e33812364c4421dd577aa7b85531122f406e.lean#L131).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e46f44a1599800a6bd6bedb8db9729235d37f49e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
