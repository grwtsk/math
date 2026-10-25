# findStack?

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:f11dd8dc91c54e1f8494bd9f6bbf7c500036cacb40fcb392880a98af1dec6c50",
  "kind": "def",
  "lexical_name": "findStack?",
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
  "slug": "findstack--8ebbdb92583c0cb4c87e2ca7",
  "source": {
    "blob": "a17195ddf4be1b4cdc46b257d1506a6febe1af2c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 644,
    "line": 631,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Syntax/Variant09d5f566052ea955fa734ec8c836abde0143472a852e2e37fb994366279bc658.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:8ebbdb92583c0cb4c87e2ca761a88d1b4b0e779d742851ab4939586e5789ce48",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Syntax/Variant09d5f566052ea955fa734ec8c836abde0143472a852e2e37fb994366279bc658.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:f11dd8dc91c54e1f8494bd9f6bbf7c500036cacb40fcb392880a98af1dec6c50`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 631–644.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
partial def findStack? (root : Syntax) (visit : Syntax → Bool) (accept : Syntax → Bool := fun stx => !stx.hasArgs) : Option Syntax.Stack :=
  if visit root then go [] root else none
where
  go (stack : Syntax.Stack) (stx : Syntax) : Option Syntax.Stack := Id.run do
    if accept stx then
      return (stx, 0) :: stack  -- the first index is arbitrary as there is no preceding element
    for i in *...stx.getNumArgs do
      if visit stx[i] then
        if let some stack := go ((stx, i) :: stack) stx[i] then
          return stack
    return none

/-- Compare the `SyntaxNodeKind`s in `pattern` to those of the `Syntax`
elements in `stack`. Return `false` if `stack` is shorter than `pattern`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Syntax/Variant09d5f566052ea955fa734ec8c836abde0143472a852e2e37fb994366279bc658.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Syntax/Variant09d5f566052ea955fa734ec8c836abde0143472a852e2e37fb994366279bc658.lean#L631).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a17195ddf4be1b4cdc46b257d1506a6febe1af2c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
