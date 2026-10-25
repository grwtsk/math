# Decl.expandResetReuse

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:44cd83373859e3a877fb2f7620b7c43631f7ad0478b86e73f8ce3a961dc734dc",
  "kind": "def",
  "lexical_name": "Decl.expandResetReuse",
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
  "slug": "decl-expandresetreuse--9d38e9ddff68727b12120cb4",
  "source": {
    "blob": "de4ab29caa792acf3b7bf0a2e1c601672f6463fd",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 378,
    "line": 371,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ExpandResetReuse/Variant90d7ba0c57820f319458ede06ac3c2f22c3e6a71a50284dec99cb5964a4fc5d3.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:9d38e9ddff68727b12120cb49255a9ee5707a24f8f611db59a4ea724ee83b945",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ExpandResetReuse/Variant90d7ba0c57820f319458ede06ac3c2f22c3e6a71a50284dec99cb5964a4fc5d3.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:44cd83373859e3a877fb2f7620b7c43631f7ad0478b86e73f8ce3a961dc734dc`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 371–378.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def Decl.expandResetReuse (decl : Decl .impure) : CompilerM (Decl .impure) := do
  if (← getConfig).resetReuse then
    let value ← decl.value.mapCodeM (·.expandResetReuse #[] decl.type)
    let decl := { decl with value }
    return decl
  else
    return decl

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ExpandResetReuse/Variant90d7ba0c57820f319458ede06ac3c2f22c3e6a71a50284dec99cb5964a4fc5d3.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ExpandResetReuse/Variant90d7ba0c57820f319458ede06ac3c2f22c3e6a71a50284dec99cb5964a4fc5d3.lean#L371).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `de4ab29caa792acf3b7bf0a2e1c601672f6463fd` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
