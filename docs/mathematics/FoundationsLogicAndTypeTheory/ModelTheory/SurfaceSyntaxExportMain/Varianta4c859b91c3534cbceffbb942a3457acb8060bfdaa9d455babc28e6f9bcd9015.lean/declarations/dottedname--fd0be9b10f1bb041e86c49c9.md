# dottedName

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:4729fce33638087cf0eec2332c41fd7789ca6cf3316bf6a687cb7e46fd7ff9b2",
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
  "slug": "dottedname--fd0be9b10f1bb041e86c49c9",
  "source": {
    "blob": "6a336016a14864955e8a238cb50f9683d76b7b65",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 129,
    "line": 116,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/ModelTheory/SurfaceSyntaxExportMain/Varianta4c859b91c3534cbceffbb942a3457acb8060bfdaa9d455babc28e6f9bcd9015.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:fd0be9b10f1bb041e86c49c9df6bc6a255cd1b868f04d65ac737ffad47df1b10",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/ModelTheory/SurfaceSyntaxExportMain/Varianta4c859b91c3534cbceffbb942a3457acb8060bfdaa9d455babc28e6f9bcd9015.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:4729fce33638087cf0eec2332c41fd7789ca6cf3316bf6a687cb7e46fd7ff9b2`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 116–129.

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

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/ModelTheory/SurfaceSyntaxExportMain/Varianta4c859b91c3534cbceffbb942a3457acb8060bfdaa9d455babc28e6f9bcd9015.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/ModelTheory/SurfaceSyntaxExportMain/Varianta4c859b91c3534cbceffbb942a3457acb8060bfdaa9d455babc28e6f9bcd9015.lean#L116).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6a336016a14864955e8a238cb50f9683d76b7b65` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
