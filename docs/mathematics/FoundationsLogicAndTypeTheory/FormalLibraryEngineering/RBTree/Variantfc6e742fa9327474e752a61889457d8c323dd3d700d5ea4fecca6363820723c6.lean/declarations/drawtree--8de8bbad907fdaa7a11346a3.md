# drawTree?

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:6824b588088557eea01406027a9e7ff9299860f1d341665063858fec3e60dc9a",
  "kind": "def",
  "lexical_name": "drawTree?",
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
  "slug": "drawtree--8de8bbad907fdaa7a11346a3",
  "source": {
    "blob": "9737f6b8777cf3b9dbd96667bd50a81449fc0024",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 126,
    "line": 106,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RbTree/Variantfc6e742fa9327474e752a61889457d8c323dd3d700d5ea4fecca6363820723c6.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:8de8bbad907fdaa7a11346a37fbbe77f1ee144cb090fb61fee8345ba63adb229",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RBTree/Variantfc6e742fa9327474e752a61889457d8c323dd3d700d5ea4fecca6363820723c6.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:6824b588088557eea01406027a9e7ff9299860f1d341665063858fec3e60dc9a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 106–126.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
partial def drawTree? (e : Expr) : MetaM (Option Html) := do
  if let some _ := node? e then
    return some <| .ofTHtml <RBDisplay tree={← go e}/>
  else if empty? e then
    return some <| .ofTHtml <RBDisplay tree={← go e}/>
  else
    return none
where go (e : Expr) : MetaM RBTreeVars := do
  if let some (color, l, a, r) := node? e then
    let color ← try
        match ← evalColour color with
        | .red => pure .red
        | .black => pure .black
      catch _ => pure .blue
    return .node color (← go l) (← Widget.ppExprTagged a) (← go r)
  else if empty? e then
    return .empty
  else
    return .var (← Widget.ppExprTagged e)

@[expr_presenter]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RBTree/Variantfc6e742fa9327474e752a61889457d8c323dd3d700d5ea4fecca6363820723c6.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RbTree/Variantfc6e742fa9327474e752a61889457d8c323dd3d700d5ea4fecca6363820723c6.lean#L106).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9737f6b8777cf3b9dbd96667bd50a81449fc0024` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
