# defPropLinter

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:3ddb152905fee81a3af9aabb35afb06db97981e3ff4d4b5d4214962c49c83361",
  "kind": "def",
  "lexical_name": "defPropLinter",
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
  "slug": "defproplinter--6fd0e3566e5969f89f0f1e34",
  "source": {
    "blob": "47f588e9a28199316f720bccdcaca980014cde35",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 59,
    "line": 44,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DefProp/Variant824404941608c792b3ee511696f424a77236839d03193364714ae28983db1727.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:6fd0e3566e5969f89f0f1e3420f6169f5dcbdb4316be5c005fcc98b31d7c8747",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DefProp/Variant824404941608c792b3ee511696f424a77236839d03193364714ae28983db1727.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:3ddb152905fee81a3af9aabb35afb06db97981e3ff4d4b5d4214962c49c83361`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 44–59.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def defPropLinter : Linter where run := withSetOptionIn fun _ => do
  unless getLinterValue linter.defProp (← getLinterOptions) do
    return
  if (← get).messages.hasErrors then
    return
  let env ← getEnv
  for t in ← getInfoTrees do
    for declName in getDeclsByBody t do
      let some info := env.find? declName | continue
      unless info.isDefinition do continue
      if info.hints.isAbbrev then continue
      let isPropType ← liftTermElabM <| isProp info.type
      if isPropType then
        logLintIf linter.defProp (← getRef) m!"\
          Definition `{.ofConstName declName}` is a proposition; use `theorem` instead of `def`"

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DefProp/Variant824404941608c792b3ee511696f424a77236839d03193364714ae28983db1727.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DefProp/Variant824404941608c792b3ee511696f424a77236839d03193364714ae28983db1727.lean#L44).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `47f588e9a28199316f720bccdcaca980014cde35` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
