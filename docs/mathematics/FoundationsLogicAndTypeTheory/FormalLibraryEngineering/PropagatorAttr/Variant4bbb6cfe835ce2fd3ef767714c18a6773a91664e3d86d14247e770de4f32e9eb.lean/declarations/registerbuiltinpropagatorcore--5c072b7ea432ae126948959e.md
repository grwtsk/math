# registerBuiltinPropagatorCore

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:bd6f93b47b1ab0ea1ce1a08e8ac8f9cab894a018cf3348a12ed9c4dcb0ad797c",
  "kind": "def",
  "lexical_name": "registerBuiltinPropagatorCore",
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
  "slug": "registerbuiltinpropagatorcore--5c072b7ea432ae126948959e",
  "source": {
    "blob": "77e0ab069bf9277ead3008e315199e06addd09d0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 34,
    "line": 27,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PropagatorAttr/Variant4bbb6cfe835ce2fd3ef767714c18a6773a91664e3d86d14247e770de4f32e9eb.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:5c072b7ea432ae126948959e8665b634d5034351248cb95b54fa975150e4828f",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PropagatorAttr/Variant4bbb6cfe835ce2fd3ef767714c18a6773a91664e3d86d14247e770de4f32e9eb.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:bd6f93b47b1ab0ea1ce1a08e8ac8f9cab894a018cf3348a12ed9c4dcb0ad797c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 27–34.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private def registerBuiltinPropagatorCore (declName : Name) (up : Bool) (proc : Propagator) : IO Unit := do
  unless (← initializing) do
    throw (IO.userError s!"invalid builtin `grind` propagator declaration, it can only be registered during initialization")
  if up then
    builtinPropagatorsRef.modify fun { up, down } => { up := up.insert declName proc, down }
  else
    builtinPropagatorsRef.modify fun { up, down } => { up, down := down.insert declName proc }

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PropagatorAttr/Variant4bbb6cfe835ce2fd3ef767714c18a6773a91664e3d86d14247e770de4f32e9eb.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PropagatorAttr/Variant4bbb6cfe835ce2fd3ef767714c18a6773a91664e3d86d14247e770de4f32e9eb.lean#L27).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `77e0ab069bf9277ead3008e315199e06addd09d0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
