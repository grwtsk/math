# Package.mkConfigString

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:fd93c9884865d1c8834e62b8bf086a8e2af11819374d4bba76dd8605b64002fd",
  "kind": "def",
  "lexical_name": "Package.mkConfigString",
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
  "slug": "package-mkconfigstring--245dbe40a6e1253c4a8fc24a",
  "source": {
    "blob": "a393d049246a991a51944af3678ad8ea7be1cf3d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 45,
    "line": 36,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Translate/Variant3a57a1a6ef0efc8c35659c96850182fbc9d825a579c7565973b13d0a0442d9d3.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:245dbe40a6e1253c4a8fc24ab8f7bd4db17348bc80d407705e70c603b9b56674",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Translate/Variant3a57a1a6ef0efc8c35659c96850182fbc9d825a579c7565973b13d0a0442d9d3.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:fd93c9884865d1c8834e62b8bf086a8e2af11819374d4bba76dd8605b64002fd`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 36–45.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
public def Package.mkConfigString (pkg : Package) (lang : ConfigLang) : LogIO String := do
  match lang with
  | .toml => pure <| ppTable pkg.mkTomlConfig
  | .lean => do
    let env ← importModulesUsingCache #[`Lake] {} 1024
    let pp := ppModule <| descopeTSyntax <| pkg.mkLeanConfig
    match (← pp.toIO {fileName := "", fileMap := default} {env} |>.toBaseIO) with
    | .ok (fmt, _) => pure <| (toString fmt).trimAscii.copy ++ "\n"
    | .error ex =>
      error s!"(internal) failed to pretty print Lean configuration: {ex.toString}"
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Translate/Variant3a57a1a6ef0efc8c35659c96850182fbc9d825a579c7565973b13d0a0442d9d3.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Translate/Variant3a57a1a6ef0efc8c35659c96850182fbc9d825a579c7565973b13d0a0442d9d3.lean#L36).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a393d049246a991a51944af3678ad8ea7be1cf3d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
