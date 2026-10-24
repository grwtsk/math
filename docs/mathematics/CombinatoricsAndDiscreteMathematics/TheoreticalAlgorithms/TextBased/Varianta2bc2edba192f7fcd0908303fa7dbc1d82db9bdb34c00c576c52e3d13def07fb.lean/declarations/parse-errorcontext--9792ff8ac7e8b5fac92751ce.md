# parse?_errorContext

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:0f5be03fd52e3a0bb7650388d7227d2dcde8e80aa212e929c3652a327d3547dd",
  "kind": "def",
  "lexical_name": "parse?_errorContext",
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
  "slug": "parse-errorcontext--9792ff8ac7e8b5fac92751ce",
  "source": {
    "blob": "c1377f1cb945abaea478a46bb415c58b677d01fc",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 262,
    "line": 215,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/TextBased/Varianta2bc2edba192f7fcd0908303fa7dbc1d82db9bdb34c00c576c52e3d13def07fb.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:9792ff8ac7e8b5fac92751ceda246abfe3e099d7537009dbba8a17d9d879713f",
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

Occurrence: `declaration:0f5be03fd52e3a0bb7650388d7227d2dcde8e80aa212e929c3652a327d3547dd`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 215–262.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def parse?_errorContext (line : String) : Option ErrorContext := Id.run do
  let parts := line.splitToList (· == ' ')
  match parts with
    | filename :: ":" :: "line" :: lineNumber :: ":" :: errorCode :: ":" :: errorMessage =>
      -- Turn the filename into a path. In general, this is ambiguous if we don't know if we're
      -- dealing with e.g. Windows or POSIX paths. In our setting, this is fine, since no path
      -- component contains any path separator.
      let path := mkFilePath (filename.splitToList (FilePath.pathSeparators.contains ·))
      -- Parse the error kind from the error code, ugh.
      -- NB: keep this in sync with `StyleError.errorCode` above!
      let err : Option StyleError := match errorCode with
        -- Use default values for parameters which are ignored for comparing style exceptions.
        -- NB: keep this in sync with `compare` above!
        | "ERR_ADN" => some (StyleError.adaptationNote)
        | "ERR_SEM" => some (StyleError.semicolon)
        | "ERR_TWS" => some (StyleError.trailingWhitespace)
        | "ERR_WIN" => some (StyleError.windowsLineEnding)
        | "ERR_UNICODE" => do
          -- extract the offending unicode character from `errorMessage`
          -- (if the offending character is 'C', `errorMessage[7] == "'C'"` )
          -- and wrap it in the appropriate `StyleError`, which will print it as '+NNNN'
          let str ← errorMessage[12]?
          let c ← String.Pos.Raw.get? str ⟨1⟩ -- take middle character of expected three
          StyleError.unwantedUnicode c
        | "ERR_UNICODE_VARIANT" => do
          match (← errorMessage[0]?).toLower with
          | "wrong" | "missing" =>
            let offending := removeQuotations (← errorMessage[4]?)
            let selector := match ← errorMessage[9]? with
            | "emoji" => UnicodeLinter.UnicodeVariant.emoji
            | "text" => UnicodeLinter.UnicodeVariant.text
            | _ => none
            StyleError.unicodeVariant offending selector
          | "unexpected" =>
            let offending := removeQuotations (← errorMessage[4]?)
            StyleError.unicodeVariant offending none
          | _ => none
        | _ => none
      match String.toNat? lineNumber with
      | some n => err.map fun e ↦ (ErrorContext.mk e n path)
      | _ => none
    -- It would be nice to print an error on any line which doesn't match the above format,
    -- but is awkward to do so (this `def` is not in any IO monad). Hopefully, this is not necessary
    -- anyway as the style exceptions file is mostly automatically generated.
    | _ => none

/-- Parse all style exceptions for a line of input.
Return an array of all exceptions which could be parsed: invalid input is ignored. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/TextBased/Varianta2bc2edba192f7fcd0908303fa7dbc1d82db9bdb34c00c576c52e3d13def07fb.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/TextBased/Varianta2bc2edba192f7fcd0908303fa7dbc1d82db9bdb34c00c576c52e3d13def07fb.lean#L215).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c1377f1cb945abaea478a46bb415c58b677d01fc` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
