# modulesOSForbidden

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:41f808ce97d4659b0a4c73afe0cf700a6da2a9415b2e7debb2a1bf779a5fecb1",
  "kind": "def",
  "lexical_name": "modulesOSForbidden",
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
  "slug": "modulesosforbidden--0220003b9413d268e982a257",
  "source": {
    "blob": "c1377f1cb945abaea478a46bb415c58b677d01fc",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 659,
    "line": 607,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/TextBased/Varianta2bc2edba192f7fcd0908303fa7dbc1d82db9bdb34c00c576c52e3d13def07fb.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:0220003b9413d268e982a2573e8db6df5c429046e3375e2576afe46d4c8bfda5",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/TextBased/Varianta2bc2edba192f7fcd0908303fa7dbc1d82db9bdb34c00c576c52e3d13def07fb.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:41f808ce97d4659b0a4c73afe0cf700a6da2a9415b2e7debb2a1bf779a5fecb1`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 607–659.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
public def modulesOSForbidden (opts : LinterOptions) (modules : Array Lean.Name) : IO Nat := do
  unless getLinterValue linter.modulesForbiddenWindows opts do return 0
  let forbiddenNames := [
    "CON", "PRN", "AUX", "NUL", "COM1", "COM2", "COM3", "COM4", "COM5", "COM6", "COM7", "COM8",
    "COM9", "COM¹", "COM²", "COM³", "LPT1", "LPT2", "LPT3", "LPT4", "LPT5", "LPT6", "LPT7", "LPT8",
    "LPT9", "LPT¹", "LPT²", "LPT³"
  ]
  -- We also check for the exclamation mark (which is not forbidden on Windows, but e.g. on Nix OS),
  -- but do so below (with a custom error message).
  let forbiddenCharacters := [
    '<', '>', '"', '/', '\\', '|', '?', '*',
  ]
  let mut badNamesNum := 0
  for name in modules do
    let mut isBad := false
    let mut badComps : List String := []
    let mut badChars : List String := []
    for comp in name.componentsRev do
      let .str .anonymous s := comp | continue
      if forbiddenNames.contains s.toUpper then
        badComps := s :: badComps
      else
        if s.contains '!' then
          isBad := true
          IO.eprintln s!"error: module name '{name}' contains forbidden character '!'"
        else if s.contains '.' then
          isBad := true
          IO.eprintln s!"error: module name '{name}' contains forbidden character '.'"
        else if s.contains '\'' then
          isBad := true
          IO.eprintln s!"error: module name '{name}' contains a prime ('), \
            which causes shell escaping issues"
        else if s.contains ' ' || s.contains '\t' || s.contains '\n' then
          isBad := true
          IO.eprintln s!"error: module name '{name}' contains a whitespace character"
        for c in forbiddenCharacters do
          if s.contains c then
            badChars := c.toString :: badChars
    if !badComps.isEmpty || !badChars.isEmpty then
      isBad := true
    if isBad then badNamesNum := badNamesNum + 1

    if !badComps.isEmpty then
      IO.eprintln s!"error: module name '{name}' contains \
        component{if badComps.length > 1 then "s" else ""} '{badComps}', \
        which {if badComps.length > 1 then "are" else "is"} forbidden in Windows filenames."
    if !badChars.isEmpty then
      IO.eprintln s!"error: module name '{name}' contains \
        character{if badChars.length > 1 then "s" else ""} '{badChars}', \
        which {if badChars.length > 1 then "are" else "is"} forbidden in Windows filenames."
  return badNamesNum

end Mathlib.Linter.TextBased
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/TextBased/Varianta2bc2edba192f7fcd0908303fa7dbc1d82db9bdb34c00c576c52e3d13def07fb.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/TextBased/Varianta2bc2edba192f7fcd0908303fa7dbc1d82db9bdb34c00c576c52e3d13def07fb.lean#L607).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c1377f1cb945abaea478a46bb415c58b677d01fc` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
