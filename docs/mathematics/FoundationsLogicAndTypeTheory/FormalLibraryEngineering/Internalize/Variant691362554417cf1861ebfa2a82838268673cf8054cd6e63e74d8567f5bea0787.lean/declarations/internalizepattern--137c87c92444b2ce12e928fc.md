# internalizePattern

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:86b4604ee2d5ce25f4b03b8e8ee91d8eaf09eceb191a2422391e7f70f0808a89",
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
  "slug": "internalizepattern--137c87c92444b2ce12e928fc",
  "source": {
    "blob": "33164ab9d00bfdda88417ea42e8846b49b9d596d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 224,
    "line": 193,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Internalize/Variant691362554417cf1861ebfa2a82838268673cf8054cd6e63e74d8567f5bea0787.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:137c87c92444b2ce12e928fc7a58e84bc511062aaeb9f918660bbc4a58abf28d",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Internalize/Variant691362554417cf1861ebfa2a82838268673cf8054cd6e63e74d8567f5bea0787.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:86b4604ee2d5ce25f4b03b8e8ee91d8eaf09eceb191a2422391e7f70f0808a89`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 193–224.

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

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Internalize/Variant691362554417cf1861ebfa2a82838268673cf8054cd6e63e74d8567f5bea0787.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Internalize/Variant691362554417cf1861ebfa2a82838268673cf8054cd6e63e74d8567f5bea0787.lean#L193).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `33164ab9d00bfdda88417ea42e8846b49b9d596d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
