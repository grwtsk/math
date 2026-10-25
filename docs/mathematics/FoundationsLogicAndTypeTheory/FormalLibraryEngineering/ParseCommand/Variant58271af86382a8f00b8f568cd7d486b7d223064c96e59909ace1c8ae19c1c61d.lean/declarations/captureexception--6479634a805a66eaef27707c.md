# captureException

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:4b21c1c7a7bf05baf001bbd6a0c004cbdb3673bf3f5a9dab3af3e130297faf0d",
  "kind": "def",
  "lexical_name": "captureException",
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
  "slug": "captureexception--6479634a805a66eaef27707c",
  "source": {
    "blob": "c6ca4bdc45dea7aadf2a3c34f095c517ed86b5dd",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 54,
    "line": 30,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ParseCommand/Variant58271af86382a8f00b8f568cd7d486b7d223064c96e59909ace1c8ae19c1c61d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:6479634a805a66eaef27707ce65eb74a6ea0925708f0256e917382da3fe8a371",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ParseCommand/Variant58271af86382a8f00b8f568cd7d486b7d223064c96e59909ace1c8ae19c1c61d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:4b21c1c7a7bf05baf001bbd6a0c004cbdb3673bf3f5a9dab3af3e130297faf0d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 30–54.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

````lean
def captureException (env : Environment) (s : ParserFn) (input : String) : Except String Syntax :=
  let ictx := mkInputContext input "<input>"
  let s := s.run ictx { env, options := {} } (getTokenTable env) (mkParserState input)
  if !s.allErrors.isEmpty then
    .error (s.toErrorMsg ictx)
  else if ictx.input.atEnd s.pos then
    .ok s.stxStack.back
  else
    .error ((s.mkError "end of input").toErrorMsg ictx)

/-- `#parse parserFnId => str` allows to capture parsing exceptions.
`parserFnId` is the identifier of a `ParserFn` and `str` is the string that
`parserFnId` should parse.

If the parse is successful, then the output is logged;
if the parse is successful, then the output is captured in an exception.

In either case, `#guard_msgs` can then be used to capture the resulting parsing errors.

For instance, `#parse` can be used as follows
```lean
/-- error: <input>:1:3: Stacks tags must be exactly 4 characters -/
#guard_msgs in #parse Mathlib.Stacks.stacksTagFn => "A05"
```
-/
````

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ParseCommand/Variant58271af86382a8f00b8f568cd7d486b7d223064c96e59909ace1c8ae19c1c61d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ParseCommand/Variant58271af86382a8f00b8f568cd7d486b7d223064c96e59909ace1c8ae19c1c61d.lean#L30).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c6ca4bdc45dea7aadf2a3c34f095c517ed86b5dd` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
