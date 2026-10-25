# loadToml

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:e65f557613decbd22aee4aa0bca2145a0cdce4c21652efecec8c07aa32bec4e7",
  "kind": "def",
  "lexical_name": "loadToml",
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
  "slug": "loadtoml--ca92ff08e8d4107c4d554f57",
  "source": {
    "blob": "b1338f64d1afabcaf5a34be3d1af0973f26ef784",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 48,
    "line": 28,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Load/Variant617a44824d9379a1464510a3371c4f5900da9fd3fef5607723925cfcfc3a4225.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:ca92ff08e8d4107c4d554f57bf1f8573222784597c7604b7eb37536d74013411",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Load/Variant617a44824d9379a1464510a3371c4f5900da9fd3fef5607723925cfcfc3a4225.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:e65f557613decbd22aee4aa0bca2145a0cdce4c21652efecec8c07aa32bec4e7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 28–48.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
public def loadToml (ictx : InputContext) : EIO MessageLog Table := do
  let env ←
    match (← mkEmptyEnvironment.toBaseIO) with
    | .ok env => pure env
    | .error e => throw <| MessageLog.empty.add <| mkMessageNoPos ictx <|
      m!"failed to initialize TOML environment: {e}"
  let s := toml.fn.run ictx { env, options := {} } {} (mkParserState ictx.inputString)
  if let some errorMsg := s.errorMsg then
    throw <|  MessageLog.empty.add <| mkParserErrorMessage ictx s errorMsg
  else if ictx.atEnd s.pos then
    let act := elabToml ⟨s.stxStack.back⟩
    match (← act.run {fileName := ictx.fileName, fileMap := ictx.fileMap} {env} |>.toBaseIO) with
    | .ok (t, s) =>
      if s.messages.hasErrors then
        throw s.messages
      else
        return t
    | .error e =>
      throw <| MessageLog.empty.add <| mkExceptionMessage ictx e
  else
    throw <| MessageLog.empty.add <| mkParserErrorMessage ictx s {expected := ["end of input"]}
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Load/Variant617a44824d9379a1464510a3371c4f5900da9fd3fef5607723925cfcfc3a4225.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Load/Variant617a44824d9379a1464510a3371c4f5900da9fd3fef5607723925cfcfc3a4225.lean#L28).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b1338f64d1afabcaf5a34be3d1af0973f26ef784` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
