# pushAtom

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:4aff445a93bfd19690a5158170d66a60ee8e6c91bf67e01413dcbd8fa0e415a3",
  "kind": "def",
  "lexical_name": "pushAtom",
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
  "slug": "pushatom--e36585198fdfe2ab1c16828f",
  "source": {
    "blob": "c2cfe1563902eafc25c05ac570b1842b17fd379d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 147,
    "line": 137,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ParserUtil/Variantaee52a5bd0b602ca6774b35df9d492d77c53a36522089d9ff1931ae47e7fd2d9.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:e36585198fdfe2ab1c16828fe5893163bdc49e718bf8107655598b201b348f94",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ParserUtil/Variantaee52a5bd0b602ca6774b35df9d492d77c53a36522089d9ff1931ae47e7fd2d9.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:4aff445a93bfd19690a5158170d66a60ee8e6c91bf67e01413dcbd8fa0e415a3`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 137–147.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
public def pushAtom (startPos : String.Pos.Raw) (trailingFn := skipFn) : ParserFn := fun c s =>
  let stopPos  := s.pos
  let leading  := c.mkEmptySubstringAt startPos
  let val      := c.extract startPos stopPos
  let s        := trailingFn c s
  let stopPos' := s.pos
  let trailing := c.substring (startPos := stopPos) (stopPos := stopPos')
  let atom     := mkAtom (SourceInfo.original leading startPos trailing (startPos + val)) val
  s.pushSyntax atom

/-- Match an arbitrary `ParserFn` and return the consumed String in a `Syntax.atom`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ParserUtil/Variantaee52a5bd0b602ca6774b35df9d492d77c53a36522089d9ff1931ae47e7fd2d9.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ParserUtil/Variantaee52a5bd0b602ca6774b35df9d492d77c53a36522089d9ff1931ae47e7fd2d9.lean#L137).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c2cfe1563902eafc25c05ac570b1842b17fd379d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
