# dottedName

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:3ac9a14fad5a748ef4287e209a6347942be0f7837dc6757959480b065f531113",
  "kind": "def",
  "lexical_name": "dottedName",
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
  "slug": "dottedname--f095f3a7cc07e3f35b25fe4d",
  "source": {
    "blob": "ce867751a679155507b1d9e10967ad479aa1662d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 129,
    "line": 116,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/ModelTheory/SurfaceSyntaxExportMain/Variant59dea58c7b2082e03f9fdddb3cc62150236a9bf34f2de1e1fc5d4349987e2f6e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:f095f3a7cc07e3f35b25fe4d3478f4be6178107e3c644ed9a9b7951d4ea6cf55",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/ModelTheory/SurfaceSyntaxExportMain/Variant59dea58c7b2082e03f9fdddb3cc62150236a9bf34f2de1e1fc5d4349987e2f6e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:3ac9a14fad5a748ef4287e209a6347942be0f7837dc6757959480b065f531113`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 116–129.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def dottedName (value : String) : Except String Name := do
  if value.toUTF8.size > 512 then
    throw "module name exceeds the 512-byte bound"
  let components := value.splitOn "."
  let validComponent := fun component : String =>
    match component.toList with
    | [] => false
    | first :: remaining => isIdFirst first && remaining.all isIdRest
  if components.isEmpty || components.any (fun component =>
      component.toUTF8.size > 128 || !validComponent component) then
    throw "module must be a dotted Lean name"
  pure <| components.foldl (fun name component => Name.str name component)
    Name.anonymous

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/ModelTheory/SurfaceSyntaxExportMain/Variant59dea58c7b2082e03f9fdddb3cc62150236a9bf34f2de1e1fc5d4349987e2f6e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/ModelTheory/SurfaceSyntaxExportMain/Variant59dea58c7b2082e03f9fdddb3cc62150236a9bf34f2de1e1fc5d4349987e2f6e.lean#L116).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ce867751a679155507b1d9e10967ad479aa1662d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
