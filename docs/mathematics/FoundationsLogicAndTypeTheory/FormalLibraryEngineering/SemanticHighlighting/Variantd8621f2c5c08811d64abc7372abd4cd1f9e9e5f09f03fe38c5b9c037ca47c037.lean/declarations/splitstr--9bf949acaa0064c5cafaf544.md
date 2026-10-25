# splitStr

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:36f8bfed2eaea102e5d35c90bd629f82a9d4587eb0228ae24d078c3455f49723",
  "kind": "def",
  "lexical_name": "splitStr",
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
  "slug": "splitstr--9bf949acaa0064c5cafaf544",
  "source": {
    "blob": "d957c35cbcf9ee6f6c36ed5d7d10aa34b38aac70",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 340,
    "line": 314,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SemanticHighlighting/Variantd8621f2c5c08811d64abc7372abd4cd1f9e9e5f09f03fe38c5b9c037ca47c037.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:9bf949acaa0064c5cafaf5445c3cb75caf2b93def6ee555cdc895e334502f080",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SemanticHighlighting/Variantd8621f2c5c08811d64abc7372abd4cd1f9e9e5f09f03fe38c5b9c037ca47c037.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:36f8bfed2eaea102e5d35c90bd629f82a9d4587eb0228ae24d078c3455f49723`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 314–340.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private def splitStr (text : FileMap) (stx : Syntax) : Array Syntax := Id.run do
  let some ⟨pos, tailPos⟩ := stx.getRange?
    | return #[]
  -- Construct fake syntax with the right source spans
  let mut pos := pos
  let mut stxs := #[]
  -- Gets the line number of the syntax's position, to avoid iterating over lines that don't include
  -- the region of interest. As an index into `text.positions`, this line number is the index of
  -- the position of the _next_ line's start.
  let startLine := text.toPosition pos |>.line
  for h : i in [startLine:text.positions.size] do
    let l := text.positions[i]
    if l > tailPos then
      stxs := stxs.push <| Syntax.ofRange ⟨pos, tailPos⟩
      break
    -- Here, `l` is the position of the first character of the next line. This means that
    -- terminating the token at `l` includes the newline. If the semantic token includes the
    -- newline, then VS Code ignores it (it doesn't support multi-line tokens), so the token
    -- should be terminated one character earlier.
    let l' := l.prev text.source
    stxs := stxs.push <| .ofRange ⟨pos, l'⟩
    pos := l
  return stxs



open Lean.Doc.Syntax in
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SemanticHighlighting/Variantd8621f2c5c08811d64abc7372abd4cd1f9e9e5f09f03fe38c5b9c037ca47c037.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SemanticHighlighting/Variantd8621f2c5c08811d64abc7372abd4cd1f9e9e5f09f03fe38c5b9c037ca47c037.lean#L314).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d957c35cbcf9ee6f6c36ed5d7d10aa34b38aac70` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
