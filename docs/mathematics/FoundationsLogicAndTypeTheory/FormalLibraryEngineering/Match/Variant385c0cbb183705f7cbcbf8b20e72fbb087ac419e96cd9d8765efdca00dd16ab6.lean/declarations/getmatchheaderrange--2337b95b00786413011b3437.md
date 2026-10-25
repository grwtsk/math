# getMatchHeaderRange?

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:dbf9dc375bb4670739372fb54e91a28d7d8ca72b1f1d0b965ce9f7d824a984e7",
  "kind": "def",
  "lexical_name": "getMatchHeaderRange?",
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
  "slug": "getmatchheaderrange--2337b95b00786413011b3437",
  "source": {
    "blob": "77cab788f8bb57b45a98751c48e73d6765a23082",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 52,
    "line": 32,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Match/Variant385c0cbb183705f7cbcbf8b20e72fbb087ac419e96cd9d8765efdca00dd16ab6.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:2337b95b00786413011b343716e584540ee4866978c2e0cce45a77f2c829f1a3",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Match/Variant385c0cbb183705f7cbcbf8b20e72fbb087ac419e96cd9d8765efdca00dd16ab6.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:dbf9dc375bb4670739372fb54e91a28d7d8ca72b1f1d0b965ce9f7d824a984e7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 32–52.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def getMatchHeaderRange? (matchStx : Syntax) : Option Lean.Syntax.Range := do
  match matchStx with
  | `(term| match
    $[(generalizing := $generalizingVal)]?
    $[(motive := $motiveVal)]?
    $[$discrs:matchDiscr],*
    with $_) => --Here the $alts would go, if they were already typed. Else $_  will match "missing"

    -- Isolate the syntax of only the "match" atom to get the starting position:
    let mStx ← matchStx.getArgs.find? (fun s => s.isAtom && s.getAtomVal == "match")
    let startPos ← mStx.getPos? -- begin of 'match' keyword

    -- Depending on the existence of 'with', return the correct range:
    if let some withStx := (matchStx.getArgs.find? (fun s => s.isAtom && s.getAtomVal == "with"))
      then return ⟨startPos, ←withStx.getTailPos?⟩
    else
      let lastMatchDiscr ← discrs.back?
      return ⟨startPos, ←lastMatchDiscr.raw.getTailPos?⟩
  | _ => none

/-- Flattens an Infotree into an array of Info-nodes that fulfill p. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Match/Variant385c0cbb183705f7cbcbf8b20e72fbb087ac419e96cd9d8765efdca00dd16ab6.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Match/Variant385c0cbb183705f7cbcbf8b20e72fbb087ac419e96cd9d8765efdca00dd16ab6.lean#L32).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `77cab788f8bb57b45a98751c48e73d6765a23082` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
