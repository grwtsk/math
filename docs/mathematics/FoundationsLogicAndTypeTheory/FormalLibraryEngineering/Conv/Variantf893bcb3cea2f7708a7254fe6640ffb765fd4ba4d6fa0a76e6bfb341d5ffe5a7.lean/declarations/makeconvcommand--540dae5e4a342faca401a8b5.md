# makeConvCommand

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:2629f89b968148c4727d1c5b65f6264e8db7c6068f444e8a1841cab8c2f84d1a",
  "kind": "def",
  "lexical_name": "makeConvCommand",
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
  "slug": "makeconvcommand--540dae5e4a342faca401a8b5",
  "source": {
    "blob": "97de46c5f778c078a4af38597d8e4947c30a08c5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 398,
    "line": 384,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Conv/Variantf893bcb3cea2f7708a7254fe6640ffb765fd4ba4d6fa0a76e6bfb341d5ffe5a7.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:540dae5e4a342faca401a8b5b921d48f14279ff7d0f9fdd4479384562d0fd851",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Conv/Variantf893bcb3cea2f7708a7254fe6640ffb765fd4ba4d6fa0a76e6bfb341d5ffe5a7.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:2629f89b968148c4727d1c5b65f6264e8db7c6068f444e8a1841cab8c2f84d1a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 384–398.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def makeConvCommand : MakeConvCommandParams → RequestM (RequestTask (Option InsertEnterResponse))
  | ⟨cursorPos, ⟨ctx⟩, ⟨mvarId, .target subexprPos⟩⟩ =>
    RequestM.withWaitFindSnapAtPos cursorPos fun snap => do
      let doc ← RequestM.readDoc
      let cursorPos := doc.meta.text.lspPosToUtf8Pos cursorPos
      ctx.runMetaM {} do
        let md ← mvarId.getDecl
        let lctx := md.lctx |>.sanitizeNames.run' {options := (← getOptions)}
        Meta.withLCtx lctx md.localInstances do
          insertEnter subexprPos md.type snap.stx cursorPos doc
  | _ => pure (RequestTask.pure none)

open ProofWidgets

@[widget_module]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Conv/Variantf893bcb3cea2f7708a7254fe6640ffb765fd4ba4d6fa0a76e6bfb341d5ffe5a7.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Conv/Variantf893bcb3cea2f7708a7254fe6640ffb765fd4ba4d6fa0a76e6bfb341d5ffe5a7.lean#L384).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `97de46c5f778c078a4af38597d8e4947c30a08c5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
