# parseBox

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:803090ec31af2784df98b16558ad296b7f8ee7ee3eb73bcd330e70cf80860305",
  "kind": "def",
  "lexical_name": "parseBox",
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
  "slug": "parsebox--c48d747dd35af999c8bffd87",
  "source": {
    "blob": "8ed0e55669afd09c6c89af2b58a88c6b3ca2b29e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 201,
    "line": 186,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Commands/Variant21c01f349279cf11c18657cae6ec7f5e7ee122b4dc63da1b309ee569d2dfd036.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:c48d747dd35af999c8bffd87d49dc7086b164b3f50aea12fd4ab5dc764cdebbd",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Commands/Variant21c01f349279cf11c18657cae6ec7f5e7ee122b4dc63da1b309ee569d2dfd036.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:803090ec31af2784df98b16558ad296b7f8ee7ee3eb73bcd330e70cf80860305`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 186–201.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
partial def parseBox (stx : Syntax) : TermElabM Box := do
  -- Handle single interval
  if let `([$_lo:term, $_hi:term]) := stx then
    let I ← parseInterval stx
    return [I]
  -- Handle product × syntax
  if let `($left × $right) := stx then
    let leftBox ← parseBox left
    let rightBox ← parseBox right
    return leftBox ++ rightBox
  -- Handle explicit box list
  throwError "Expected interval [lo, hi] or product [a,b] × [c,d]"

/-! ## Result Formatting -/

/-- Format a rational for display as a decimal string -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Commands/Variant21c01f349279cf11c18657cae6ec7f5e7ee122b4dc63da1b309ee569d2dfd036.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Commands/Variant21c01f349279cf11c18657cae6ec7f5e7ee122b4dc63da1b309ee569d2dfd036.lean#L186).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8ed0e55669afd09c6c89af2b58a88c6b3ca2b29e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
