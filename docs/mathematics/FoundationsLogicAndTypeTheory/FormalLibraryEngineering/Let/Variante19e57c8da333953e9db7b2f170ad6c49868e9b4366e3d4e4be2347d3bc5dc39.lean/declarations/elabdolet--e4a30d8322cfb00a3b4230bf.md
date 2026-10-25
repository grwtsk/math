# elabDoLet

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:af8b2eeb8180a57701e81cea35908ed2fc1d1c6bd64e7a4f393386fae4e70ea5",
  "kind": "def",
  "lexical_name": "elabDoLet",
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
  "slug": "elabdolet--e4a30d8322cfb00a3b4230bf",
  "source": {
    "blob": "25c53116c1ba748743253f8a5568092c1708ab83",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 210,
    "line": 206,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Let/Variante19e57c8da333953e9db7b2f170ad6c49868e9b4366e3d4e4be2347d3bc5dc39.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:e4a30d8322cfb00a3b4230bf26f01c32be19104afe8c7349dfe3d1ee70cfb7a5",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Let/Variante19e57c8da333953e9db7b2f170ad6c49868e9b4366e3d4e4be2347d3bc5dc39.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:af8b2eeb8180a57701e81cea35908ed2fc1d1c6bd64e7a4f393386fae4e70ea5`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 206–210.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
@[builtin_doElem_elab Lean.Parser.Term.doLet] def elabDoLet : DoElab := fun stx dec => do
  let `(doLet| let%$tk $[mut%$mutTk?]? $config:letConfig $decl:letDecl) := stx | throwUnsupportedSyntax
  let config ← getLetConfigAndCheckMut config mutTk?
  elabDoLetOrReassign config (.let mutTk?) decl tk dec

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Let/Variante19e57c8da333953e9db7b2f170ad6c49868e9b4366e3d4e4be2347d3bc5dc39.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Let/Variante19e57c8da333953e9db7b2f170ad6c49868e9b4366e3d4e4be2347d3bc5dc39.lean#L206).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `25c53116c1ba748743253f8a5568092c1708ab83` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
