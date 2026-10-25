# collectMacroExpansions?

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:d080122df037058c89045e6be67f02eff5fdda2eae9898279078fd39f52f3250",
  "kind": "def",
  "lexical_name": "collectMacroExpansions?",
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
  "slug": "collectmacroexpansions--37823957bf78f42a9d23be74",
  "source": {
    "blob": "a70b19ab8b691066f05c325b381a44cc1d2a963b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 49,
    "line": 26,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Util/Variant98a405fb6b73bd9d11e4eadc760b5f07e1c5d94cd49060a74819c8bae9900c51.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:37823957bf78f42a9d23be7434c1682cd731850103f63d4ed845a903876b456d",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Util/Variant98a405fb6b73bd9d11e4eadc760b5f07e1c5d94cd49060a74819c8bae9900c51.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:d080122df037058c89045e6be67f02eff5fdda2eae9898279078fd39f52f3250`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 26–49.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def collectMacroExpansions? {m} [Monad m] (range : Lean.Syntax.Range) (tree : Elab.InfoTree) : m <| Option <| List Elab.MacroExpansionInfo := do
  if let .some <| .some result ← go then
    return some result.reverse
  else
    return none
where
  go : m <| Option <| Option <| List Elab.MacroExpansionInfo := tree.visitM (postNode := fun _ i _ results => do
    let results := results |>.filterMap id |>.filterMap id

    -- we expect that at most one InfoTree child returns a result
    if let results :: _ := results then
      if let .ofMacroExpansionInfo i := i then
        return some <| i :: results
      else
        return some results
    else if i.contains range.start && i.contains (includeStop := true) range.stop then
      if let .ofMacroExpansionInfo i := i then
        return some [i]
      else
        return some []
    else
      return none)

/-- Get the `parentDecl`s of every elaborated body in the infotree. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Util/Variant98a405fb6b73bd9d11e4eadc760b5f07e1c5d94cd49060a74819c8bae9900c51.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Util/Variant98a405fb6b73bd9d11e4eadc760b5f07e1c5d94cd49060a74819c8bae9900c51.lean#L26).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a70b19ab8b691066f05c325b381a44cc1d2a963b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
