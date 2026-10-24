# formatTable

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:f62fdc6812553ccbebb17fb40d9d7f8dc5b37f6047981fd12cc08dccefed5868",
  "kind": "def",
  "lexical_name": "formatTable",
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
  "slug": "formattable--fe94d32a97b4ca4e51169282",
  "source": {
    "blob": "eec944517e7909458d36472eb46690250376d9d8",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 71,
    "line": 36,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/FormatTable/Variant665196913ed52cb9f2e12419331685bad38b78f3daab36d4ddbd39f6ebaaea46.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:fe94d32a97b4ca4e511692827385c2eec95a1e8ec95eb122565dffff6cf237db",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/FormatTable/Variant665196913ed52cb9f2e12419331685bad38b78f3daab36d4ddbd39f6ebaaea46.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:f62fdc6812553ccbebb17fb40d9d7f8dc5b37f6047981fd12cc08dccefed5868`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 36–71.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def formatTable (headers : Array String) (table : Array (Array String))
    (alignments : Option (Array Alignment) := none) :
    String := Id.run do
  -- If no alignments are provided, default to left alignment for all columns.
  let alignments := alignments.getD (Array.replicate headers.size Alignment.left)
  -- Escape all vertical bar characters inside a table cell,
  -- otherwise these could get interpreted as starting a new row or column.
  let escapedHeaders := headers.map (fun header => header.replace "|" "\\|")
  let escapedTable := table.map (fun row => row.map (fun cell => cell.replace "|" "\\|"))
  -- Compute the maximum width of each column.
  let mut widths := escapedHeaders.map (·.length)
  for row in escapedTable do
    for i in [0:widths.size] do
      widths := widths.set! i (max widths[i]! ((row[i]?.map (·.length)).getD 0))
  -- Pad each cell with spaces to match the column width.
  let paddedHeaders := escapedHeaders.mapIdx fun i h => h.rightpad widths[i]!
  let paddedTable := escapedTable.map fun row => row.mapIdx fun i cell =>
    cell.justify alignments[i]! widths[i]!
  -- Construct the lines of the table
  let headerLine := "| " ++ String.intercalate " | " (paddedHeaders.toList) ++ " |"
  -- Construct the separator line, with colons to indicate alignment
  let separatorLine :=
    "| "
    ++ String.intercalate " | "
        (((widths.zip alignments).map fun ⟨w, a⟩ =>
              match w, a with
              | 0, _ => ""
              | 1, _ => "-"
              | _ + 2, Alignment.left => ":" ++ String.replicate (w-1) '-'
              | _ + 2, Alignment.right => String.replicate (w-1) '-' ++ ":"
              | _ + 2, Alignment.center => ":" ++ String.replicate (w-2) '-' ++ ":"
              ).toList)
    ++ " |"
  let rowLines := paddedTable.map (fun row => "| " ++ String.intercalate " | " (row.toList) ++ " |")
  -- Return the table
  return String.intercalate "\n" (headerLine :: separatorLine :: rowLines.toList)
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/FormatTable/Variant665196913ed52cb9f2e12419331685bad38b78f3daab36d4ddbd39f6ebaaea46.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/FormatTable/Variant665196913ed52cb9f2e12419331685bad38b78f3daab36d4ddbd39f6ebaaea46.lean#L36).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `eec944517e7909458d36472eb46690250376d9d8` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
