# copyrightHeaderChecks

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:8fec1a55c05745dc7c465f1864b4c00e0f33e42c249875697ab16ee4b2cbc575",
  "kind": "def",
  "lexical_name": "copyrightHeaderChecks",
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
  "slug": "copyrightheaderchecks--b89df62b0f549ee3bf9056c6",
  "source": {
    "blob": "a86b3801096f9e9e4ccbc14812656a5ab5953baf",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 214,
    "line": 152,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Header/Variantb763e1d6181a84df44d3f3d2c1442ed71ff39f17c745bf5f8da0c0385f437c77.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:b89df62b0f549ee3bf9056c6695339f09d9aaa09773af8af2250cde9dc340980",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Header/Variantb763e1d6181a84df44d3f3d2c1442ed71ff39f17c745bf5f8da0c0385f437c77.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:8fec1a55c05745dc7c465f1864b4c00e0f33e42c249875697ab16ee4b2cbc575`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 152–214.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def copyrightHeaderChecks (copyright : String) : Array (Syntax × String) := Id.run do
  -- First, we merge lines ending in `,`: two spaces after the line-break are ok,
  -- but so is only one or none.  We take care of *not* adding more consecutive spaces, though.
  -- This is to allow the copyright or authors' lines to span several lines.
  let preprocessCopyright := (copyright.replace ",\n  " ", ").replace ",\n" ","
  -- Filter out everything after the first isolated `-/`.
  let pieces := preprocessCopyright.splitOn "\n-/"
  let copyright := (pieces.getD 0 "") ++ "\n-/"
  let stdText (s : String) :=
    s!"Malformed or missing copyright header: `{s}` should be alone on its own line."
  let mut output := #[]
  if (pieces.getD 1 "\n").take 1 != "\n" then
    output := output.push (toSyntax copyright "-/", s!"{stdText "-/"}")
  let lines := copyright.splitOn "\n"
  let closeComment := lines.getLastD ""
  match lines with
  | openComment :: copyrightAuthor :: license :: authorsLines =>
    -- The header should start and end with blank comments.
    match openComment, closeComment with
    | "/-", "-/" => output := output
    | "/-", _    =>
      output := output.push (toSyntax copyright closeComment, s!"{stdText "-/"}")
    | _, _       =>
      output := output.push (toSyntax copyright openComment, s!"{stdText ("/".push '-')}")
    -- Validate the first copyright line.
    let copStart := "Copyright (c) 20"
    let copStop := ". All rights reserved."
    if !copyrightAuthor.startsWith copStart then
      output := output.push
        (toSyntax copyright (copyrightAuthor.take copStart.length),
         s!"Copyright line should start with 'Copyright (c) YYYY'")
    if !copyrightAuthor.endsWith copStop then
      output := output.push
        (toSyntax copyright (copyrightAuthor.takeRight copStop.length),
         s!"Copyright line should end with '. All rights reserved.'")
    -- Validate the authors line(s). The last line is the closing comment: trim that off right away.
    let authorsLines := authorsLines.dropLast
    -- Complain about a missing authors line.
    if authorsLines.length == 0 then
      output := output.push (toSyntax copyright "-/", s!"Copyright too short!")
    else
    -- If the list of authors spans multiple lines, all but the last line should end with a trailing
    -- comma. This excludes e.g. other comments in the copyright header.
    let authorsLine := "\n".intercalate authorsLines
    let authorsStart := (("\n".intercalate [openComment, copyrightAuthor, license, ""])).endPos
    if authorsLines.length > 1 && !authorsLines.dropLast.all (·.endsWith ",") then
      output := output.push ((toSyntax copyright authorsLine),
        "If an authors line spans multiple lines, \
        each line but the last must end with a trailing comma")
    output := output.append (authorsLineChecks authorsLine authorsStart)
    let expectedLicense := "Released under Apache 2.0 license as described in the file LICENSE."
    if license != expectedLicense then
      output := output.push (toSyntax copyright license,
        s!"Second copyright line should be \"{expectedLicense}\"")
  | _ =>
    output := output.push (toSyntax copyright "-/", s!"Copyright too short!")
  return output

/--
`isInMathlib modName` returns `true` if `Mathlib.lean` imports the file `modName` and `false`
otherwise.
This is used by the `Header` linter as a heuristic of whether it should inspect the file or not.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Header/Variantb763e1d6181a84df44d3f3d2c1442ed71ff39f17c745bf5f8da0c0385f437c77.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Header/Variantb763e1d6181a84df44d3f3d2c1442ed71ff39f17c745bf5f8da0c0385f437c77.lean#L152).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a86b3801096f9e9e4ccbc14812656a5ab5953baf` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
