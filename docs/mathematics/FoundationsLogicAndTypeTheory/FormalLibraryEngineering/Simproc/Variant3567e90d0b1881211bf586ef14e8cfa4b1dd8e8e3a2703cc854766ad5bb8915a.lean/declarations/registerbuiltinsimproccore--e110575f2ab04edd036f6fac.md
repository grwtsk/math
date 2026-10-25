# registerBuiltinSimprocCore

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:125ac83fe6cb1655aefbb003901e95b1e3a84107478312fe9c93421154ce754b",
  "kind": "def",
  "lexical_name": "registerBuiltinSimprocCore",
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
  "slug": "registerbuiltinsimproccore--e110575f2ab04edd036f6fac",
  "source": {
    "blob": "0ad940daf61f35aa2ef047582ba0c9c3aa907223",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 99,
    "line": 92,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Simproc/Variant3567e90d0b1881211bf586ef14e8cfa4b1dd8e8e3a2703cc854766ad5bb8915a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:e110575f2ab04edd036f6facb20136f3105709c806af7edf05493d746a076554",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Simproc/Variant3567e90d0b1881211bf586ef14e8cfa4b1dd8e8e3a2703cc854766ad5bb8915a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:125ac83fe6cb1655aefbb003901e95b1e3a84107478312fe9c93421154ce754b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 92–99.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def registerBuiltinSimprocCore (declName : Name) (key : Array SimpTheoremKey) (proc : Sum Simproc DSimproc) : IO Unit := do
  unless (← initializing) do
    throw (IO.userError s!"Invalid builtin simproc declaration: It can only be registered during initialization")
  if (← builtinSimprocDeclsRef.get).keys.contains declName then
    throw (IO.userError s!"Invalid builtin simproc declaration `{privateToUserName declName}`: This builtin simproc has already been declared")
  builtinSimprocDeclsRef.modify fun { keys, procs } =>
    { keys := keys.insert declName key, procs := procs.insert declName proc }

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Simproc/Variant3567e90d0b1881211bf586ef14e8cfa4b1dd8e8e3a2703cc854766ad5bb8915a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Simproc/Variant3567e90d0b1881211bf586ef14e8cfa4b1dd8e8e3a2703cc854766ad5bb8915a.lean#L92).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0ad940daf61f35aa2ef047582ba0c9c3aa907223` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
