# checkModuleNamePortability

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:239a1461abfc187363936f749ec726ae4e6eb4adc65f9346dea7f1f5236f1f2a",
  "kind": "def",
  "lexical_name": "checkModuleNamePortability",
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
  "slug": "checkmodulenameportability--a5522cad7c3670a412b2829d",
  "source": {
    "blob": "8a61a128c6776e9e4a45dcd160e7ab85b12e210c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 145,
    "line": 127,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Import/Variant0c3cd690fa35aedac1c8c2fdeef65962941fd96059557a715cebf5784a7ec0ea.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:a5522cad7c3670a412b2829dd1b0afa645a72d8e574215a6bddfecbfe8232e2a",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Import/Variant0c3cd690fa35aedac1c8c2fdeef65962941fd96059557a715cebf5784a7ec0ea.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:239a1461abfc187363936f749ec726ae4e6eb4adc65f9346dea7f1f5236f1f2a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 127–145.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def checkModuleNamePortability
    (mainModule : Name) (inputCtx : Parser.InputContext) (startPos : String.Pos.Raw)
    (messages : MessageLog) : MessageLog :=
  go mainModule messages
where
  go : Name → MessageLog → MessageLog
    | .anonymous, messages => messages
    | .str parent s, messages =>
      let messages := match checkComponentPortability s with
        | some reason => messages.add {
            fileName := inputCtx.fileName
            pos := inputCtx.fileMap.toPosition startPos
            severity := .error
            data := s!"module name '{mainModule}' is not portable: {reason}"
          }
        | none => messages
      go parent messages
    | .num parent _, messages => go parent messages

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Import/Variant0c3cd690fa35aedac1c8c2fdeef65962941fd96059557a715cebf5784a7ec0ea.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Import/Variant0c3cd690fa35aedac1c8c2fdeef65962941fd96059557a715cebf5784a7ec0ea.lean#L127).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8a61a128c6776e9e4a45dcd160e7ab85b12e210c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
