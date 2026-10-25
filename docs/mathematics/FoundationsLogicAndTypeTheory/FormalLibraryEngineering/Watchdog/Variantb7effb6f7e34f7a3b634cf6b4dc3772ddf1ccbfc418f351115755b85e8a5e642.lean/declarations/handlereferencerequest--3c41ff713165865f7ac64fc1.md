# handleReferenceRequest

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:0c11b6c4cf72c9ce6af2f9c7329e3a31dd6024c939d756ba514fe6a4d0f4a105",
  "kind": "def",
  "lexical_name": "handleReferenceRequest",
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
  "slug": "handlereferencerequest--3c41ff713165865f7ac64fc1",
  "source": {
    "blob": "dedb28154c483633b49a12d1689938209c1531c4",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1370,
    "line": 1349,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Watchdog/Variantb7effb6f7e34f7a3b634cf6b4dc3772ddf1ccbfc418f351115755b85e8a5e642.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:3c41ff713165865f7ac64fc16b57f58818e40ba433b19d8695ccb12c7d1e3602",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Watchdog/Variantb7effb6f7e34f7a3b634cf6b4dc3772ddf1ccbfc418f351115755b85e8a5e642.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:0c11b6c4cf72c9ce6af2f9c7329e3a31dd6024c939d756ba514fe6a4d0f4a105`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1349–1370.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
  def handleReferenceRequest α β [FromJson α] [ToJson β] (id : RequestID) (params : Json)
      (handler : α → ReaderT ReferenceRequestContext IO β) : ServerM Unit := do
    let ctx ← read
    let fileWorkerMods := (← ctx.fileWorkersRef.get).map fun _ fw => fw.doc.mod
    let references ← getReferences
    let _ ← ServerTask.IO.asTask <| ReaderT.run (ρ := ServerContext) (r := ctx) do
      try
        let params ← parseParams α params
        let result ← ReaderT.run (m := IO)
          (r := { fileWorkerMods, references : ReferenceRequestContext })
          <| handler params
        writeMessage { id, result : Response β }
      catch
        -- TODO Do fancier error handling, like in file worker?
        | e =>
          writeMessage {
            id := id
            code := ErrorCode.internalError
            message := s!"Failed to process request {id}: {e}"
            : ResponseError Unit
          }

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Watchdog/Variantb7effb6f7e34f7a3b634cf6b4dc3772ddf1ccbfc418f351115755b85e8a5e642.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Watchdog/Variantb7effb6f7e34f7a3b634cf6b4dc3772ddf1ccbfc418f351115755b85e8a5e642.lean#L1349).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `dedb28154c483633b49a12d1689938209c1531c4` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
