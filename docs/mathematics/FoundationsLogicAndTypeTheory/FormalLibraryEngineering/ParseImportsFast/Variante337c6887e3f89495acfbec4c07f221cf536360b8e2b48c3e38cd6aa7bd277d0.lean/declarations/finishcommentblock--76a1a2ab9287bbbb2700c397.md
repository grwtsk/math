# finishCommentBlock

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:b168c5d7849bb4c138d85767b975febdb3332e7697f1f51bf530bb2f3a69a62b",
  "kind": "def",
  "lexical_name": "finishCommentBlock",
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
  "slug": "finishcommentblock--76a1a2ab9287bbbb2700c397",
  "source": {
    "blob": "0d3209370b98042e145daeaa0ca8887c2b6b344e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 88,
    "line": 63,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ParseImportsFast/Variante337c6887e3f89495acfbec4c07f221cf536360b8e2b48c3e38cd6aa7bd277d0.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:76a1a2ab9287bbbb2700c39764d4c5e51d0297a288a1cabf9091fb7fb47b5248",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ParseImportsFast/Variante337c6887e3f89495acfbec4c07f221cf536360b8e2b48c3e38cd6aa7bd277d0.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:b168c5d7849bb4c138d85767b975febdb3332e7697f1f51bf530bb2f3a69a62b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 63–88.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
partial def finishCommentBlock (nesting : Nat) : Parser := fun input s =>
  let input := input
  let i     := s.pos
  if h : i.atEnd input then eoi s
  else
    let curr := i.get' input h
    let i    := i.next' input h
    if curr == '-' then
      if h : i.atEnd input then eoi s
      else
        let curr := i.get' input h
        if curr == '/' then -- "-/" end of comment
          if nesting == 1 then s.next input i
          else finishCommentBlock (nesting-1) input (s.next' input i h)
        else
          finishCommentBlock nesting input (s.setPos i)
    else if curr == '/' then
      if h : i.atEnd input then eoi s
      else
        let curr := i.get' input h
        if curr == '-' then finishCommentBlock (nesting+1) input (s.next' input i h)
        else finishCommentBlock nesting input (s.setPos i)
    else finishCommentBlock nesting input (s.setPos i)
where
  eoi s := s.mkError "unterminated comment"

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ParseImportsFast/Variante337c6887e3f89495acfbec4c07f221cf536360b8e2b48c3e38cd6aa7bd277d0.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ParseImportsFast/Variante337c6887e3f89495acfbec4c07f221cf536360b8e2b48c3e38cd6aa7bd277d0.lean#L63).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0d3209370b98042e145daeaa0ca8887c2b6b344e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
