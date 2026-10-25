# getCompletionKindForDecl

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:b455e08d5ab15e62bb5225015328965b1b23af079465c47ad4b4275e03b5adca",
  "kind": "def",
  "lexical_name": "getCompletionKindForDecl",
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
  "slug": "getcompletionkindfordecl--621dec7ddab5033d767c5e9f",
  "source": {
    "blob": "f90b6a511683e756ab49162c96c0bf890e18c937",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 54,
    "line": 31,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/EligibleHeaderDecls/Variant2fa7851a6351d9d819d2c13cf16754fb7488560a5689bda1b1856753407efaa0.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:621dec7ddab5033d767c5e9f1799f52dcfb88aa0203bcf6692dfb24a8e796030",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/EligibleHeaderDecls/Variant2fa7851a6351d9d819d2c13cf16754fb7488560a5689bda1b1856753407efaa0.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:b455e08d5ab15e62bb5225015328965b1b23af079465c47ad4b4275e03b5adca`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 31–54.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def getCompletionKindForDecl (constInfo : ConstantInfo)
    : MetaM Lsp.CompletionItemKind := do
  let env ← getEnv
  if constInfo.isCtor then
    return .constructor
  else if constInfo.isInductive then
    if isClass env constInfo.name then
      return .class
    else if (← isEnumType constInfo.name) then
      return .enum
    else
      return .struct
  else if wasOriginallyTheorem env constInfo.name then
    return .event
  else if (← isProjectionFn constInfo.name) then
    return .field
  else
    let isFunction : Bool ← withTheReader Core.Context ({ · with maxHeartbeats := 0 }) do
      return (← whnf constInfo.type).isForall
    if isFunction then
      return .function
    else
      return .constant

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/EligibleHeaderDecls/Variant2fa7851a6351d9d819d2c13cf16754fb7488560a5689bda1b1856753407efaa0.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/EligibleHeaderDecls/Variant2fa7851a6351d9d819d2c13cf16754fb7488560a5689bda1b1856753407efaa0.lean#L31).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f90b6a511683e756ab49162c96c0bf890e18c937` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
