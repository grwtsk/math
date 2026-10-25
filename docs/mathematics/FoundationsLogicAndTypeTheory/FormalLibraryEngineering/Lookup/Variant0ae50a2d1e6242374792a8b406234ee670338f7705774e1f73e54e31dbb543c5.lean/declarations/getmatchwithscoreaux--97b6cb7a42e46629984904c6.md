# getMatchWithScoreAux

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:efbf8b8bb6fccfc6663b12e99643c773f7ae41d7e9d3bb076667f53a6b64d691",
  "kind": "def",
  "lexical_name": "getMatchWithScoreAux",
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
  "slug": "getmatchwithscoreaux--97b6cb7a42e46629984904c6",
  "source": {
    "blob": "f70e61579572899e433ea009064c28e4e58187f4",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 164,
    "line": 135,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lookup/Variant0ae50a2d1e6242374792a8b406234ee670338f7705774e1f73e54e31dbb543c5.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:97b6cb7a42e46629984904c667607783f15e4a12b250e4bd9a050120e9af961a",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lookup/Variant0ae50a2d1e6242374792a8b406234ee670338f7705774e1f73e54e31dbb543c5.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:efbf8b8bb6fccfc6663b12e99643c773f7ae41d7e9d3bb076667f53a6b64d691`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 135–164.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private partial def getMatchWithScoreAux (d : RefinedDiscrTree α) (e : DTExpr) (unify : Bool)
    (allowRootStar : Bool := false) : Array (Array α × Nat) := (do
  if e matches .star _ then
    guard allowRootStar
    d.root.foldl (init := failure) fun x k c => (do
      if k == Key.opaque then
        GetUnify.incrementScore 1
      let (_, t) ← GetUnify.skipEntries c #[k] k.arity
      return t) <|> x
  else
    GetUnify.exactMatch e d.root.find?
    <|> do
    guard allowRootStar
    let some c := d.root.find? (.star 0) | failure
    return c
  ).run unify

end GetUnify

/--
Return the results from the `RefinedDiscrTree` that match the given expression,
together with their matching scores, in decreasing order of score.

Each entry of type `Array α × Nat` corresponds to one pattern.

If `unify := false`, then metavariables in `e` are treated as opaque variables.
This is for when you don't want to instantiate metavariables in `e`.

If `allowRootStar := false`, then we don't allow `e` or the matched key in `d`
to be a star pattern. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lookup/Variant0ae50a2d1e6242374792a8b406234ee670338f7705774e1f73e54e31dbb543c5.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lookup/Variant0ae50a2d1e6242374792a8b406234ee670338f7705774e1f73e54e31dbb543c5.lean#L135).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f70e61579572899e433ea009064c28e4e58187f4` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
