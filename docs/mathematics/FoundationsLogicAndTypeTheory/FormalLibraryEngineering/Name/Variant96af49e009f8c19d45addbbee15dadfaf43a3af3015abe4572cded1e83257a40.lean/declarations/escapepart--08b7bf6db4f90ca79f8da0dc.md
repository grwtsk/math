# escapePart

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:d13305355aa50609de68780ec9af4a7914c668ad50295215a97a41e13a6c83b4",
  "kind": "def",
  "lexical_name": "escapePart",
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
  "slug": "escapepart--08b7bf6db4f90ca79f8da0dc",
  "source": {
    "blob": "d7e5df60a3f5b642ead28babf33433351a824075",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 80,
    "line": 63,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Name/Variant96af49e009f8c19d45addbbee15dadfaf43a3af3015abe4572cded1e83257a40.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:08b7bf6db4f90ca79f8da0dc39e14f78427abd015d5cea2a810f54986ba00848",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Name/Variant96af49e009f8c19d45addbbee15dadfaf43a3af3015abe4572cded1e83257a40.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:d13305355aa50609de68780ec9af4a7914c668ad50295215a97a41e13a6c83b4`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 63–80.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def escapePart (s : String) (force : Bool := false) : Option String :=
  if h : s.utf8ByteSize > 0 then
    if !force && needsNoEscape s h then
      some s
    else if s.any isIdEndEscape then
      none
    else
      some <| escape s
  else
    some <| escape s

variable (sep : String) (escape : Bool) in
/--
Uses the separator `sep` (usually `"."`) to combine the components of the `Name` into a string.
See the documentation for `Name.toStringWithToken` for an explanation of `escape` and `isToken`.
-/
-- If you change this, also change the corresponding function in `Init.Meta`.
@[specialize isToken] -- explicit annotation because isToken is overridden in recursive call
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Name/Variant96af49e009f8c19d45addbbee15dadfaf43a3af3015abe4572cded1e83257a40.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Name/Variant96af49e009f8c19d45addbbee15dadfaf43a3af3015abe4572cded1e83257a40.lean#L63).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d7e5df60a3f5b642ead28babf33433351a824075` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
