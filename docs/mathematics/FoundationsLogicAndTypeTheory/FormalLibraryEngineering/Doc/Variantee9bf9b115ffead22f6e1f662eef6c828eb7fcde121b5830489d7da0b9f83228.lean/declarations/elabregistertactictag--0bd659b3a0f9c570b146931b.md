# elabRegisterTacticTag

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:954e9d35727e68d248c9ad2c6b9d97fad13dcc7dee5af3048500f7d133ddc199",
  "kind": "def",
  "lexical_name": "elabRegisterTacticTag",
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
  "slug": "elabregistertactictag--0bd659b3a0f9c570b146931b",
  "source": {
    "blob": "7cf39d3158c8a98809c1e5b81b937d062252ad5c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 45,
    "line": 35,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Doc/Variantee9bf9b115ffead22f6e1f662eef6c828eb7fcde121b5830489d7da0b9f83228.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:0bd659b3a0f9c570b146931b8e2a19ca942c2b6490ea48fb11ca2c67c7836e72",
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

Occurrence: `declaration:954e9d35727e68d248c9ad2c6b9d97fad13dcc7dee5af3048500f7d133ddc199`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 35–45.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
@[builtin_command_elab «register_tactic_tag»] def elabRegisterTacticTag : CommandElab
  | `(«register_tactic_tag»|$[$doc:docComment]? register_tactic_tag $tag:ident $user:str) => do
    let docstring ← doc.mapM getDocStringText
    modifyEnv (knownTacticTagExt.addEntry · (tag.getId, user.getString, docstring))
  | _ => throwError "Malformed 'register_tactic_tag' command"

/--
Computes a table that heuristically maps parser syntax kinds to their first tokens by inspecting the
Pratt parsing tables for the `tactic syntax kind. If a custom name is provided for the tactic, then
it is returned instead.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Doc/Variantee9bf9b115ffead22f6e1f662eef6c828eb7fcde121b5830489d7da0b9f83228.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Doc/Variantee9bf9b115ffead22f6e1f662eef6c828eb7fcde121b5830489d7da0b9f83228.lean#L35).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7cf39d3158c8a98809c1e5b81b937d062252ad5c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
