# mkDecEqCmds

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:201b82818e1a03e306c370272d93072f6ee978dab08876e19c0ec99e469206a7",
  "kind": "def",
  "lexical_name": "mkDecEqCmds",
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
  "slug": "mkdeceqcmds--0d1a9b24ab459af964a8e11d",
  "source": {
    "blob": "c509e8f588d75bd6f9a06059aabafc1d9a54db23",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 208,
    "line": 201,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DecEq/Variant690927433eebce75ae83ea8498f18b5b1b0684b22d00aa32e5c319ae8fdbfc07.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:0d1a9b24ab459af964a8e11d49070997c1300beba8cfb314d3ec10f683cdf437",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DecEq/Variant690927433eebce75ae83ea8498f18b5b1b0684b22d00aa32e5c319ae8fdbfc07.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:201b82818e1a03e306c370272d93072f6ee978dab08876e19c0ec99e469206a7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 201–208.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def mkDecEqCmds (indVal : InductiveVal) : TermElabM (Array Syntax) := do
  let ctx ← mkContext ``DecidableEq "decEq" indVal.name
  let cmds := #[← mkAuxFunctions ctx] ++ (← mkInstanceCmds ctx `DecidableEq #[indVal.name] (useAnonCtor := false))
  trace[Elab.Deriving.decEq] "\n{cmds}"
  return cmds

open Command

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DecEq/Variant690927433eebce75ae83ea8498f18b5b1b0684b22d00aa32e5c319ae8fdbfc07.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DecEq/Variant690927433eebce75ae83ea8498f18b5b1b0684b22d00aa32e5c319ae8fdbfc07.lean#L201).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c509e8f588d75bd6f9a06059aabafc1d9a54db23` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
