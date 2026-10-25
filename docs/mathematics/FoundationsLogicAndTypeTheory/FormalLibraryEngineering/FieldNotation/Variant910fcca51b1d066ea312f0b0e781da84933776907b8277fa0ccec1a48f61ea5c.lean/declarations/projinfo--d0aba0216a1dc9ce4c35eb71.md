# projInfo

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:a884251a8d76f7dd0562a4fe01e847e1b501c18c0189f729c1d07a0fdf9d82b2",
  "kind": "def",
  "lexical_name": "projInfo",
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
  "slug": "projinfo--d0aba0216a1dc9ce4c35eb71",
  "source": {
    "blob": "f0167df68da7e63354c0a316102a9c15e51ab122",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 48,
    "line": 32,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FieldNotation/Variant910fcca51b1d066ea312f0b0e781da84933776907b8277fa0ccec1a48f61ea5c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:d0aba0216a1dc9ce4c35eb71844e2869082bd8867bd8e35efd700abfff3641ed",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FieldNotation/Variant910fcca51b1d066ea312f0b0e781da84933776907b8277fa0ccec1a48f61ea5c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:a884251a8d76f7dd0562a4fe01e847e1b501c18c0189f729c1d07a0fdf9d82b2`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 32–48.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private def projInfo (c : Name) : MetaM (Option (Name × Nat × Bool × Bool × Bool)) := do
  let env ← getEnv
  let .str s field := c | return none
  let field := Name.mkSimple field
  let some structInfo := getStructureInfo? env s | return none
  let isFromClass := isClass env s
  let info ← getConstInfoInduct s
  if let some fieldInfo := getFieldInfo? env s field then
    return (field, info.numParams, true, fieldInfo.subobject?.isSome, isFromClass)
  else if structInfo.parentInfo.any (·.projFn == c) then
    return (field, info.numParams, false, true, isFromClass)
  else
    return none

/--
Checks that `e` is an application of a constant that equals `baseName`, taking into consideration private name mangling.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FieldNotation/Variant910fcca51b1d066ea312f0b0e781da84933776907b8277fa0ccec1a48f61ea5c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FieldNotation/Variant910fcca51b1d066ea312f0b0e781da84933776907b8277fa0ccec1a48f61ea5c.lean#L32).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f0167df68da7e63354c0a316102a9c15e51ab122` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
