# repeat'Core

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:9d38a0fc0712ea6409f2f718b56cdb7a48234262b874a3e3ba162be4697bf8b3",
  "kind": "def",
  "lexical_name": "repeat'Core",
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
  "slug": "repeat-core--6878bf7a09ec4aafc3a74445",
  "source": {
    "blob": "7d29b3c861c192cb675e57f0b55e712396ae4186",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 401,
    "line": 372,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant942ce5a930b18b87ac5a1f2a3e820ddeb89ad7d51b46dbbb86fe7117cc0d709f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:6878bf7a09ec4aafc3a74445c83f68b41e576a08dabd2171a51ba70b8191552f",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant942ce5a930b18b87ac5a1f2a3e820ddeb89ad7d51b46dbbb86fe7117cc0d709f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:9d38a0fc0712ea6409f2f718b56cdb7a48234262b874a3e3ba162be4697bf8b3`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 372–401.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def repeat'Core [Monad m] [MonadExcept ε m] [MonadBacktrack s m] [MonadMCtx m]
    (f : MVarId → m (List MVarId)) (gs : List MVarId) (maxIters := 100000) :
    m (Bool × List MVarId) := do
  let (progress, acc) ← go maxIters false gs [] #[]
  pure (progress, (← acc.filterM fun g => not <$> g.isAssigned).toList)
where
  /-- Auxiliary for `repeat'Core`. `repeat'Core.go f maxIters progress gs stk acc` evaluates to
  essentially `acc.toList ++ repeat' f (gs::stk).join maxIters`: that is, `acc` are goals we will
  not revisit, and `(gs::stk).join` is the accumulated todo list of subgoals. -/
  go : Nat → Bool → List MVarId → List (List MVarId) → Array MVarId → m (Bool × Array MVarId)
  | _, p, [], [], acc => pure (p, acc)
  | n, p, [], gs::stk, acc => go n p gs stk acc
  | n, p, g::gs, stk, acc => do
    if ← g.isAssigned then
      go n p gs stk acc
    else
      match n with
      | 0 => pure <| (p, acc.push g ++ gs |> stk.foldl .appendList)
      | n+1 =>
        match ← observing? (f g) with
        | some gs' => go n true gs' (gs::stk) acc
        | none => go n p gs stk (acc.push g)
termination_by _ n p gs stk _ => (n, stk, gs)

/--
`repeat' f` runs `f` on all of the goals to produce a new list of goals,
then runs `f` again on all of those goals, and repeats until `f` fails on all remaining goals,
or until `maxIters` total calls to `f` have occurred.
Always succeeds (returning the original goals if `f` fails on all of them).
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant942ce5a930b18b87ac5a1f2a3e820ddeb89ad7d51b46dbbb86fe7117cc0d709f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant942ce5a930b18b87ac5a1f2a3e820ddeb89ad7d51b46dbbb86fe7117cc0d709f.lean#L372).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7d29b3c861c192cb675e57f0b55e712396ae4186` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
