# internalizePattern

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:a0635faec6c6614d4b4738f4c947ce2b23b95ed90e7d459ac43652369de34cd4",
  "kind": "def",
  "lexical_name": "internalizePattern",
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
  "slug": "internalizepattern--74eb045b8fe9235e21aea85c",
  "source": {
    "blob": "30785a5302abff1277a64edfeba73f2859bb7cb5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 216,
    "line": 185,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Internalize/Variantf5e4051cc5f6fc8c0c4350ecd6b5f43de3709190a32abdab1faad8b7b1c85d2f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:74eb045b8fe9235e21aea85c1c82c962a904580fd0ed7d76cbdf4137f3bcfe8d",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Internalize/Variantf5e4051cc5f6fc8c0c4350ecd6b5f43de3709190a32abdab1faad8b7b1c85d2f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:a0635faec6c6614d4b4738f4c947ce2b23b95ed90e7d459ac43652369de34cd4`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 185–216.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private partial def internalizePattern (pattern : Expr) (generation : Nat) (origin : Origin) : GoalM Expr := do
  -- Recall that it is important to ensure patterns are maximally shared since
  -- we assume that in functions such as `getAppsOf` in `EMatch.lean`
  -- **Note**: We disable `shareCommonChecks` because patterns contain
  -- loose bound variables and repair cannot be performed.
  go (← Sym.shareCommonWithoutChecks pattern)
where
  go (pattern : Expr) : GoalM Expr := do
    if pattern.isBVar || isPatternDontCare pattern then
      return pattern
    else if let some e := groundPattern? pattern then
      let e ← preprocessLight e
      let e ← if e.hasLevelParam && origin matches .decl _ then
        /-
        If `e` has universe parameters and it is **not** local. That is,
        it contains the universe parameters of some global theorem.
        Then, we convert `e`'s universe parameters into universe meta-variables.
        Remark: it is pointless to internalize the result because it contains these helper meta-variables.
        Remark: universe polymorphic ground patterns are not common, but they do occur in the
        core library.
        -/
        let ps := collectLevelParams {} e |>.params
        let us ← ps.mapM fun _ => mkFreshLevelMVar
        pure <| e.instantiateLevelParamsArray ps us
      else
        internalize e generation none
        pure e
      return mkGroundPattern e
    else pattern.withApp fun f args => do
      return mkAppN f (← args.mapM go)

/-- Internalizes the `MatchCond` gadget. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Internalize/Variantf5e4051cc5f6fc8c0c4350ecd6b5f43de3709190a32abdab1faad8b7b1c85d2f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Internalize/Variantf5e4051cc5f6fc8c0c4350ecd6b5f43de3709190a32abdab1faad8b7b1c85d2f.lean#L185).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `30785a5302abff1277a64edfeba73f2859bb7cb5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
