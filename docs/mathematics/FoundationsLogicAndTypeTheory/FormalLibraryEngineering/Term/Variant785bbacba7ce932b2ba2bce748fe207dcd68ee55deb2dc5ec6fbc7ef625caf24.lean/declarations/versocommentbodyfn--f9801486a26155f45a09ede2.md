# versoCommentBodyFn

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:e2c9466acf1f166ea47b16d19e7949dfe8e40373e1c32f861be9387774cb6255",
  "kind": "def",
  "lexical_name": "versoCommentBodyFn",
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
  "slug": "versocommentbodyfn--f9801486a26155f45a09ede2",
  "source": {
    "blob": "6bf76f5420ecedae63d0f95d05acb553146f1b27",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 60,
    "line": 30,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Term/Variant785bbacba7ce932b2ba2bce748fe207dcd68ee55deb2dc5ec6fbc7ef625caf24.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:f9801486a26155f45a09ede289e68a4072f13b596f32b7e9e9a824826e2ce903",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Term/Variant785bbacba7ce932b2ba2bce748fe207dcd68ee55deb2dc5ec6fbc7ef625caf24.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:e2c9466acf1f166ea47b16d19e7949dfe8e40373e1c32f861be9387774cb6255`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 30–60.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def versoCommentBodyFn : ParserFn := fun c s =>
  let startPos := s.pos
  let s := finishCommentBlock (pushMissingOnError := true) 1 c s
  if !s.hasError then
    let iniSz := s.stackSize
    let commentEndPos := s.pos
    let endPos := c.prev (c.prev commentEndPos)
    let endPos := if endPos ≤ c.inputString.rawEndPos then endPos else c.inputString.rawEndPos
    let c' := c.setEndPos endPos (by unfold endPos; split <;> simp [*])
    let blockCtxt := Doc.Parser.BlockCtxt.forDocString c.fileMap startPos endPos
    let s := Doc.Parser.document blockCtxt c' (s.setPos startPos)
    let s :=
      if !s.allErrors.isEmpty || !c'.atEnd s.pos then
        -- Docstring parsing must always succeed, or else later error messages are atrocious! Syntax
        -- errors in the docs should not cause verso-docstring-expecting commands to be removed from
        -- consideration. So, at this stage, we push an indication of the failure, and then later,
        -- when adding docstrings, the failing case is re-parsed and the errors are reported then.
        -- We don't just parse them later because then the syntax of the docs doesn't end up as part
        -- of the syntax of the actual program.
        let s := s.restore iniSz endPos
        let leading := c.mkEmptySubstringAt startPos
        let trailing := c.mkEmptySubstringAt endPos
        let s :=
          s.pushSyntax <|
          .atom (.original leading startPos trailing endPos) (String.Pos.Raw.extract c.inputString startPos endPos)
        let s := s.mkNode `Lean.Doc.Syntax.parseFailure iniSz
        {s with recoveredErrors := #[]}
      else s
    rawFn (Doc.Parser.ignoreFn <| chFn '-' >> chFn '/') (trailingWs := true) c s
  else s

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Term/Variant785bbacba7ce932b2ba2bce748fe207dcd68ee55deb2dc5ec6fbc7ef625caf24.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Term/Variant785bbacba7ce932b2ba2bce748fe207dcd68ee55deb2dc5ec6fbc7ef625caf24.lean#L30).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6bf76f5420ecedae63d0f95d05acb553146f1b27` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
