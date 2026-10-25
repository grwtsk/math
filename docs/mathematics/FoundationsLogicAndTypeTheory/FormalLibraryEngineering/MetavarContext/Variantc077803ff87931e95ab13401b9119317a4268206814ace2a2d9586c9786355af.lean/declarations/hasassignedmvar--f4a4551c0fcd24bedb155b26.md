# hasAssignedMVar

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:3eae65f8ba1970375369880c9ae90c3f45a365245f8b633f9fc91b727b4eb142",
  "kind": "def",
  "lexical_name": "hasAssignedMVar",
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
  "slug": "hasassignedmvar--f4a4551c0fcd24bedb155b26",
  "source": {
    "blob": "3ad97d82016c98fecf071011eac4662b21b2dbf2",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 518,
    "line": 499,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MetavarContext/Variantc077803ff87931e95ab13401b9119317a4268206814ace2a2d9586c9786355af.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:f4a4551c0fcd24bedb155b267dcb2a133a0749e85e0351a10675033663cf3a63",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MetavarContext/Variantc077803ff87931e95ab13401b9119317a4268206814ace2a2d9586c9786355af.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:3eae65f8ba1970375369880c9ae90c3f45a365245f8b633f9fc91b727b4eb142`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 499–518.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def hasAssignedMVar [Monad m] [MonadMCtx m] : Expr → m Bool
  | .const _ lvls    => lvls.anyM hasAssignedLevelMVar
  | .sort lvl        => hasAssignedLevelMVar lvl
  | .app f a         => (pure f.hasMVar <&&> hasAssignedMVar f) <||> (pure a.hasMVar <&&> hasAssignedMVar a)
  | .letE _ t v b _  => (pure t.hasMVar <&&> hasAssignedMVar t) <||> (pure v.hasMVar <&&> hasAssignedMVar v) <||> (pure b.hasMVar <&&> hasAssignedMVar b)
  | .forallE _ d b _ => (pure d.hasMVar <&&> hasAssignedMVar d) <||> (pure b.hasMVar <&&> hasAssignedMVar b)
  | .lam _ d b _     => (pure d.hasMVar <&&> hasAssignedMVar d) <||> (pure b.hasMVar <&&> hasAssignedMVar b)
  | .fvar _          => return false
  | .bvar _          => return false
  | .lit _           => return false
  | .mdata _ e       => pure e.hasMVar <&&> hasAssignedMVar e
  | .proj _ _ e      => pure e.hasMVar <&&> hasAssignedMVar e
  | .mvar mvarId     => mvarId.isAssigned <||> mvarId.isDelayedAssigned

/--
  Add `mvarId := u` to the universe metavariable assignment.
  This method does not check whether `mvarId` is already assigned, nor does it check whether
  a cycle is being introduced.
  This is a low-level API, and it is safer to use `isLevelDefEq (mkLevelMVar mvarId) u`.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MetavarContext/Variantc077803ff87931e95ab13401b9119317a4268206814ace2a2d9586c9786355af.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MetavarContext/Variantc077803ff87931e95ab13401b9119317a4268206814ace2a2d9586c9786355af.lean#L499).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3ad97d82016c98fecf071011eac4662b21b2dbf2` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
