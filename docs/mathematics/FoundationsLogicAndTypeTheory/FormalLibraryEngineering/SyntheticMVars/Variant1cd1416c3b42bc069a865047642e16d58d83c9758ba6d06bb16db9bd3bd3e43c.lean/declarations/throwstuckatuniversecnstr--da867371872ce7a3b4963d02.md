# throwStuckAtUniverseCnstr

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:f93801599e858e49d6e5a1ca9f37ca5fcdd7335117f4f036828a755ad19717c3",
  "kind": "def",
  "lexical_name": "throwStuckAtUniverseCnstr",
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
  "slug": "throwstuckatuniversecnstr--da867371872ce7a3b4963d02",
  "source": {
    "blob": "948a9b0971ccdcf4096224a5ea1c3f245959c2f0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 416,
    "line": 382,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SyntheticMVars/Variant1cd1416c3b42bc069a865047642e16d58d83c9758ba6d06bb16db9bd3bd3e43c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:da867371872ce7a3b4963d021f9fd10b4011df46f4f6485ae40dcb985b1e04de",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SyntheticMVars/Variant1cd1416c3b42bc069a865047642e16d58d83c9758ba6d06bb16db9bd3bd3e43c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:f93801599e858e49d6e5a1ca9f37ca5fcdd7335117f4f036828a755ad19717c3`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 382–416.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

````lean
private def throwStuckAtUniverseCnstr : TermElabM Unit := do
  -- This code assumes `entries` is not empty. Note that `processPostponed` uses `exceptionOnFailure` to guarantee this property
  let entries ← getPostponed
  let mut found : Std.HashSet (Level × Level) := {}
  let mut uniqueEntries := #[]
  for entry in entries do
    let mut lhs := entry.lhs
    let mut rhs := entry.rhs
    if Level.normLt rhs lhs then
      (lhs, rhs) := (rhs, lhs)
    unless found.contains (lhs, rhs) do
      found := found.insert (lhs, rhs)
      uniqueEntries := uniqueEntries.push entry
  for h : i in 1...uniqueEntries.size do
    logErrorAt uniqueEntries[i].ref (← mkLevelStuckErrorMessage uniqueEntries[i]!)
  throwErrorAt uniqueEntries[0]!.ref (← mkLevelStuckErrorMessage uniqueEntries[0]!)

/--
  Try to solve postponed universe constraints, and throws an exception if there are stuck constraints.

  Remark: in previous versions, each `isDefEq u v` invocation would fail if there
  were pending universe level constraints. With this old approach, we were not able
  to process
  ```
  Functor.map Prod.fst (x s)
  ```
  because after elaborating `Prod.fst` and trying to ensure its type
  match the expected one, we would be stuck at the universe constraint:
  ```
  u =?= max u ?v
  ```
  Another benefit of using `withoutPostponingUniverseConstraints` is better error messages. Instead
  of getting a mysterious type mismatch constraint, we get a list of
  universe constraints the system is stuck at.
-/
````

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SyntheticMVars/Variant1cd1416c3b42bc069a865047642e16d58d83c9758ba6d06bb16db9bd3bd3e43c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SyntheticMVars/Variant1cd1416c3b42bc069a865047642e16d58d83c9758ba6d06bb16db9bd3bd3e43c.lean#L382).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `948a9b0971ccdcf4096224a5ea1c3f245959c2f0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
