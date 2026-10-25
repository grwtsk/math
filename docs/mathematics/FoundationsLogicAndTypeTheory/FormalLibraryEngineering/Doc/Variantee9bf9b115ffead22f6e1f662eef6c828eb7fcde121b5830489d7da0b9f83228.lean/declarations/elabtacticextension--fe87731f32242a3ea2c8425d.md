# elabTacticExtension

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:ce33a25528c35a69d72e27bf6feddaef27c573d74b7191dc1cc43862e43956c2",
  "kind": "def",
  "lexical_name": "elabTacticExtension",
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
  "slug": "elabtacticextension--fe87731f32242a3ea2c8425d",
  "source": {
    "blob": "7cf39d3158c8a98809c1e5b81b937d062252ad5c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 34,
    "line": 20,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Doc/Variantee9bf9b115ffead22f6e1f662eef6c828eb7fcde121b5830489d7da0b9f83228.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:fe87731f32242a3ea2c8425de2c24ddfc84691c541fa62fc8b19bc9e15e3064f",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Doc/Variantee9bf9b115ffead22f6e1f662eef6c828eb7fcde121b5830489d7da0b9f83228.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:ce33a25528c35a69d72e27bf6feddaef27c573d74b7191dc1cc43862e43956c2`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 20–34.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
@[builtin_command_elab «tactic_extension»] def elabTacticExtension : CommandElab
  | `(«tactic_extension»|tactic_extension%$cmd $_) => do
    throwErrorAt cmd "Missing documentation comment"
  | `(«tactic_extension»|$docs:docComment tactic_extension $tac:ident) => do
    let tacName ← liftTermElabM <| realizeGlobalConstNoOverloadWithInfo tac

    if let some tgt' := alternativeOfTactic (← getEnv) tacName then
        throwErrorAt tac "`{.ofConstName tacName}` is an alternative form of `{.ofConstName tgt'}`"
    if !(isTactic (← getEnv) tacName) then
      throwErrorAt tac "`{.ofConstName tacName}` is not a tactic"

    modifyEnv (tacticDocExtExt.addEntry · (tacName, docs.getDocString))
    pure ()
  | _ => throwError "Malformed tactic extension command"

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Doc/Variantee9bf9b115ffead22f6e1f662eef6c828eb7fcde121b5830489d7da0b9f83228.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Doc/Variantee9bf9b115ffead22f6e1f662eef6c828eb7fcde121b5830489d7da0b9f83228.lean#L20).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7cf39d3158c8a98809c1e5b81b937d062252ad5c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
