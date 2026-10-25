# registerBuiltinSimprocCore

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:c79df5a1927b8253641dc9fcebfd8228472b82e5f1482769000e28320894994e",
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
  "slug": "registerbuiltinsimproccore--ba2cfb931f30e25edcc0d48e",
  "source": {
    "blob": "88ca097b6a393a8c73c5d394e02597a7390f354a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 91,
    "line": 84,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Simproc/Variant67742fdfa2334d588ecb9b8252c9ee26d3150f130945a0866420fecfc27e1e02.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:ba2cfb931f30e25edcc0d48e8a6e0d89e05b0b6a9627faf2cc2b513e52c90c90",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Simproc/Variant67742fdfa2334d588ecb9b8252c9ee26d3150f130945a0866420fecfc27e1e02.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:c79df5a1927b8253641dc9fcebfd8228472b82e5f1482769000e28320894994e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 84–91.

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

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Simproc/Variant67742fdfa2334d588ecb9b8252c9ee26d3150f130945a0866420fecfc27e1e02.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Simproc/Variant67742fdfa2334d588ecb9b8252c9ee26d3150f130945a0866420fecfc27e1e02.lean#L84).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `88ca097b6a393a8c73c5d394e02597a7390f354a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
