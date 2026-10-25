# successIfFailWithMessage

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:3a51c6f2424bd2ae9614e36bf300805ef3a276da6858b38cae9de9ba84eb32b9",
  "kind": "def",
  "lexical_name": "successIfFailWithMessage",
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
  "slug": "successiffailwithmessage--8fc3d4eaf96452c2d35d7881",
  "source": {
    "blob": "7c86eba91cbd8088d26d859846720ce2f4ad2d71",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 65,
    "line": 40,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SuccessIfFailWithMsg/Variant5cfa790afc6a731a8bed7b3b017a0f1cc280486bfd3889a4e3b5aba4cf26d067.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:8fc3d4eaf96452c2d35d78811ef8a69409bbc451700c20bf487786b5dc6bdfbc",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SuccessIfFailWithMsg/Variant5cfa790afc6a731a8bed7b3b017a0f1cc280486bfd3889a4e3b5aba4cf26d067.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:3a51c6f2424bd2ae9614e36bf300805ef3a276da6858b38cae9de9ba84eb32b9`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 40–65.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def successIfFailWithMessage {s α : Type} {m : Type → Type} [Monad m] [MonadLiftT BaseIO m]
    [MonadLiftT MetaM m] [MonadBacktrack s m] [MonadError m] (msg : String) (tacs : m α)
    (msgref : Option Syntax := none) (ref : Option Syntax := none) : m Unit := do
  let s ← saveState
  let err ←
    try _ ← tacs; pure none
    catch err => pure (some (← err.toMessageData.toString))
  restoreState s
  if let some err := err then
    unless msg.trim == err.trim do
      if let .some msgref := msgref then
        let suggestion : TryThis.Suggestion :=
          { suggestion := s!"\"{err.trim}\""
            toCodeActionTitle? := .some (fun _ => "Update with tactic error message")}
        TryThis.addSuggestion msgref suggestion (header := "Update with tactic error message: ")

      if let some ref := ref then
        throwErrorAt ref "tactic '{ref}' failed, but got different error message:\n\n{err}"
      else
        throwError "tactic failed, but got different error message:\n\n{err}"
  else
    if let some ref := ref then
      throwErrorAt ref "tactic '{ref}' succeeded, but was expected to fail"
    else
      throwError "tactic succeeded, but was expected to fail"

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SuccessIfFailWithMsg/Variant5cfa790afc6a731a8bed7b3b017a0f1cc280486bfd3889a4e3b5aba4cf26d067.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SuccessIfFailWithMsg/Variant5cfa790afc6a731a8bed7b3b017a0f1cc280486bfd3889a4e3b5aba4cf26d067.lean#L40).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7c86eba91cbd8088d26d859846720ce2f4ad2d71` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
