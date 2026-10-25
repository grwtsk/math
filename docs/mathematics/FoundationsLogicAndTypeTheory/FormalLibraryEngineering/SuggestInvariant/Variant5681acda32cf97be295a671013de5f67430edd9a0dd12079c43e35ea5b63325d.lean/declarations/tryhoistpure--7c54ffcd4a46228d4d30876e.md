# tryHoistPure

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:d3476e866a5c78a3f466b5f54f6e4afc8bbcfa6cd8d105eca6503b1142fd1f7e",
  "kind": "def",
  "lexical_name": "tryHoistPure",
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
  "slug": "tryhoistpure--7c54ffcd4a46228d4d30876e",
  "source": {
    "blob": "61262511d113b689159480e4d4e106eef227e231",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 375,
    "line": 348,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SuggestInvariant/Variant5681acda32cf97be295a671013de5f67430edd9a0dd12079c43e35ea5b63325d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:7c54ffcd4a46228d4d30876e71747b1fbf9b6bcadece967efa979386dbe60633",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SuggestInvariant/Variant5681acda32cf97be295a671013de5f67430edd9a0dd12079c43e35ea5b63325d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:d3476e866a5c78a3f466b5f54f6e4afc8bbcfa6cd8d105eca6503b1142fd1f7e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 348–375.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
partial def tryHoistPure (e : Expr) : Expr :=
  match go e with
  | none => e
  | some (lvl, e) => SPred.mkPure lvl (TypeList.mkNil lvl) e
where
  go (e : Expr) : Option (Level × Expr) := do
    if e.isAppOfArity ``SPred.pure 2 then
      return (e.getAppFn.constLevels![0]!, e.getArg! 1)
    if let some (_, lhs, rhs) := e.app3? ``SPred.and then
      let (_, lhs) ← go lhs
      let (lvl, rhs) ← go rhs
      return (lvl, mkAnd lhs rhs)
    if let some (_, lhs, rhs) := e.app3? ``SPred.or then
      let (_, lhs) ← go lhs
      let (lvl, rhs) ← go rhs
      return (lvl, mkOr lhs rhs)
    if let some (_, _, .lam n ty body bi) := e.app3? ``SPred.forall then
      let (lvl, body) ← go body
      return (lvl, mkForall n bi ty body)
    if let .letE n ty val body nondep := e then
      let (lvl, body) ← go body
      return (lvl, .letE n ty val body nondep)
    failure

/--
Based on how a given metavariable `inv` binding a `Std.Do.Invariant` is used in the `vcs`, suggest
an initial assignment for `inv` to fill in for the user.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SuggestInvariant/Variant5681acda32cf97be295a671013de5f67430edd9a0dd12079c43e35ea5b63325d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SuggestInvariant/Variant5681acda32cf97be295a671013de5f67430edd9a0dd12079c43e35ea5b63325d.lean#L348).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `61262511d113b689159480e4d4e106eef227e231` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
