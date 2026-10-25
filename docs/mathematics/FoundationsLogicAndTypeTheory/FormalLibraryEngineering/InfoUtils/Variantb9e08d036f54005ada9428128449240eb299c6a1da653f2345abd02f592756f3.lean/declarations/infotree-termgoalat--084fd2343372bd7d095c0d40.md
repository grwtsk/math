# InfoTree.termGoalAt?

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:b7a76eafb77cd264ff54865eeb26bd072c319f25779f84bc393c1089501cf4b3",
  "kind": "def",
  "lexical_name": "InfoTree.termGoalAt?",
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
  "slug": "infotree-termgoalat--084fd2343372bd7d095c0d40",
  "source": {
    "blob": "fb0304c8f9114f65df16c25b2ae77ec110b6afe7",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 489,
    "line": 480,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/InfoUtils/Variantb9e08d036f54005ada9428128449240eb299c6a1da653f2345abd02f592756f3.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:084fd2343372bd7d095c0d404df7e5d75ca3e79ca7a75553e17c1ffdd00bd44a",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/InfoUtils/Variantb9e08d036f54005ada9428128449240eb299c6a1da653f2345abd02f592756f3.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:b7a76eafb77cd264ff54865eeb26bd072c319f25779f84bc393c1089501cf4b3`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 480–489.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
partial def InfoTree.termGoalAt? (t : InfoTree) (hoverPos : String.Pos.Raw) : Option InfoWithCtx :=
  -- In the case `f a b`, where `f` is an identifier, the term goal at `f` should be the goal for the full application `f a b`.
  let filter ctx info children results :=
    if info.stx.isOfKind ``Parser.Term.app && info.stx[0].isIdent then
      results.filter (·.2.info.stx != info.stx[0])
    else
      results
  hoverableInfoAtM? (m := Id) t hoverPos (includeStop := true) (filter := filter)

end Lean.Elab
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/InfoUtils/Variantb9e08d036f54005ada9428128449240eb299c6a1da653f2345abd02f592756f3.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/InfoUtils/Variantb9e08d036f54005ada9428128449240eb299c6a1da653f2345abd02f592756f3.lean#L480).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `fb0304c8f9114f65df16c25b2ae77ec110b6afe7` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
