# buildEntries

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:c0fb81f33e04151a90e7fa107d31b31012772a6861cc1417b249cdebfa8929ad",
  "kind": "def",
  "lexical_name": "buildEntries",
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
  "slug": "buildentries--bc6487d3c5a138df8261273f",
  "source": {
    "blob": "7fa2710c3cff8908cb4a56a97acf1c0aafd448ea",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 81,
    "line": 48,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/ExportCrossrefs/Variant9f7bd3ba26eed28fcd03e7765a6c9c95af069d205f84b73d61d8c5b414392685.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:bc6487d3c5a138df8261273f7623faea7b963d3258ee253c562827d1db808bb7",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/ExportCrossrefs/Variant9f7bd3ba26eed28fcd03e7765a6c9c95af069d205f84b73d61d8c5b414392685.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:c0fb81f33e04151a90e7fa107d31b31012772a6861cc1417b249cdebfa8929ad`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 48–81.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def buildEntries (env : Environment) : Array Json := Id.run do
  let mut byDecl : Std.HashMap Name (Array Tag) := {}
  let (localTags, importedTags) := PersistentEnvExtension.getState tagExt env
  for tags in importedTags do
    for tag in tags do
      byDecl := byDecl.alter tag.declName fun val? => val?.getD #[] |>.push tag
  for tag in localTags do
    byDecl := byDecl.alter tag.declName fun val? => val?.getD #[] |>.push tag
  let sorted := byDecl.toArray.qsort fun a b => a.1.toString < b.1.toString
  sorted.map fun (decl, tags) =>
    -- Canonical ref order (by database, then id) keeps the published file stable.
    let tags := tags.qsort fun a b =>
      (compare a.database b.database).then (compare a.tag b.tag) |>.isLT
    let refs : Array Json := tags.map fun t =>
      json% { db : $(t.database.shortName), id : $(t.tag), comment : $(t.comment) }
    let (mod, line) := declLocation env decl |>.getD ("", 0)
    json% { decl : $(decl.toString), module : $(mod), line : $(line), refs : $(refs) }

end ExportCrossRefs

open ExportCrossRefs in
-- TODO: consider moving to `importModules`, or managing with `lake`
-- (see also environment linter internals, which may eventually do the latter)
run_cmd do
  let entries := buildEntries (← getEnv)
  let now := (Std.Time.DateTime.ofTimestamp (← Std.Time.Timestamp.now) .UTC).toISO8601String
  let json := json% {
    generated :  $(now.trimAscii.toString),
    commit : $((← IO.getEnv "CROSSREFS_COMMIT").getD "unknown"),
    entries : $(entries)
  }
  let path := (← IO.getEnv "CROSSREFS_OUT").getD "crossrefs.json"
  IO.FS.writeFile path (json.pretty ++ "\n")
  logInfo m!"Wrote {entries.size} cross-reference entries to {path}"
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/ExportCrossrefs/Variant9f7bd3ba26eed28fcd03e7765a6c9c95af069d205f84b73d61d8c5b414392685.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/ExportCrossrefs/Variant9f7bd3ba26eed28fcd03e7765a6c9c95af069d205f84b73d61d8c5b414392685.lean#L48).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7fa2710c3cff8908cb4a56a97acf1c0aafd448ea` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
