# newNames

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:4e655a238b55f42186a4f08323e25c1584123d8c07d3dda2961da4c0bbeac21e",
  "kind": "def",
  "lexical_name": "newNames",
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
  "slug": "newnames--0ef4d1dbc9630397e1ff7960",
  "source": {
    "blob": "a374440b2c34e34cc91b727a79d9451f253e49f4",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 68,
    "line": 53,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DeprecateTo/Variant8bda9cc881b8403253b75ae833362d02759d7b5e4bdf07228d304a65514a1d8d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:0ef4d1dbc9630397e1ff79608e09657a9a231c0d2e8dcd983ef360af4ee4aae0",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DeprecateTo/Variant8bda9cc881b8403253b75ae833362d02759d7b5e4bdf07228d304a65514a1d8d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:4e655a238b55f42186a4f08323e25c1584123d8c07d3dda2961da4c0bbeac21e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 53–68.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def newNames (old new : Environment) : Array Name := Id.run do
  let mut diffs := #[]
  for (c, _) in new.constants.map₂.toList do
    unless old.constants.map₂.contains c do
      diffs := diffs.push c
  pure <| diffs.qsort (·.toString < ·.toString)

variable (newName : TSyntax `ident) in
/--
If the input command is a `theorem` or a `lemma`, then it replaces the name of the
resulting declaration with `newName` and it returns the old declaration name and the
command with the new name.

If the input command is neither a `theorem` nor a `lemma`, then it returns
`.missing` and the unchanged command.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DeprecateTo/Variant8bda9cc881b8403253b75ae833362d02759d7b5e4bdf07228d304a65514a1d8d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DeprecateTo/Variant8bda9cc881b8403253b75ae833362d02759d7b5e4bdf07228d304a65514a1d8d.lean#L53).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a374440b2c34e34cc91b727a79d9451f253e49f4` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
