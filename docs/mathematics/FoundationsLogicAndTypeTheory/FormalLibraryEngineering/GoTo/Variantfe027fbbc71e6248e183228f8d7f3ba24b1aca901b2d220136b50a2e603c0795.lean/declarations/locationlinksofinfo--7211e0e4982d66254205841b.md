# locationLinksOfInfo

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:67494d2d7e7fa5d44bfce27137d637a9f0770adf6cd58559e1c11cded5f54703",
  "kind": "def",
  "lexical_name": "locationLinksOfInfo",
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
  "slug": "locationlinksofinfo--7211e0e4982d66254205841b",
  "source": {
    "blob": "71e3d83a52e2418df471d9f5a0f040e59ab995b7",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 350,
    "line": 318,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/GoTo/Variantfe027fbbc71e6248e183228f8d7f3ba24b1aca901b2d220136b50a2e603c0795.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:7211e0e4982d66254205841b6159d0cefb89f88fa9dc826de14140a067874fcb",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/GoTo/Variantfe027fbbc71e6248e183228f8d7f3ba24b1aca901b2d220136b50a2e603c0795.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:67494d2d7e7fa5d44bfce27137d637a9f0770adf6cd58559e1c11cded5f54703`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 318–350.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def locationLinksOfInfo (doc : DocumentMeta) (kind : GoToKind) (ictx : InfoWithCtx)
    (infoTree? : Option InfoTree := none) : IO (Array LeanLocationLink) := do
  let ctx : GoToContext := {
    doc
    kind
    infoTree?
    originInfo? := some ictx.info
    children := ictx.children
  }
  GoToM.run ctx ictx.ctx ictx.info.lctx do
    let ll ←
      match ictx.info with
      | .ofTermInfo ti =>
        locationLinksFromTermInfo ti
      | .ofDelabTermInfo dti =>
        locationLinksFromDelabTermInfo dti
      | .ofFieldInfo fi =>
        locationLinksFromFieldInfo fi
      | .ofOptionInfo oi =>
        locationLinksFromOptionInfo oi
      | .ofCommandInfo cci =>
        locationLinksFromCommandInfo cci
      | .ofErrorNameInfo eni =>
        locationLinksFromErrorNameInfo eni
      | .ofDocElabInfo dei =>
        locationLinksFromDecl dei.name
      | _ =>
        pure #[]
    if kind == .declaration || ll.isEmpty then
      return ll ++ (← locationLinksDefault)
    return ll

end Lean.Server
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/GoTo/Variantfe027fbbc71e6248e183228f8d7f3ba24b1aca901b2d220136b50a2e603c0795.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/GoTo/Variantfe027fbbc71e6248e183228f8d7f3ba24b1aca901b2d220136b50a2e603c0795.lean#L318).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `71e3d83a52e2418df471d9f5a0f040e59ab995b7` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
