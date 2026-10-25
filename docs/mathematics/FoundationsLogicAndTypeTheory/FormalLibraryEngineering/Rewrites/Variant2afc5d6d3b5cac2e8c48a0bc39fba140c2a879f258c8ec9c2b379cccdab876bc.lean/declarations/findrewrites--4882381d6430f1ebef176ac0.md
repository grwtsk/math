# findRewrites

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:1222d78100b1aaf6835ccf59e33cbb306f09c0d032abe7905be42459abbeea16",
  "kind": "def",
  "lexical_name": "findRewrites",
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
  "slug": "findrewrites--4882381d6430f1ebef176ac0",
  "source": {
    "blob": "e0d86f61ca1a7111d24b5d146d08047fbfc15bb6",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 345,
    "line": 328,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Rewrites/Variant2afc5d6d3b5cac2e8c48a0bc39fba140c2a879f258c8ec9c2b379cccdab876bc.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:4882381d6430f1ebef176ac08f67040c7e0a4c678f16779ad9ba7e44d0306f69",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Rewrites/Variant2afc5d6d3b5cac2e8c48a0bc39fba140c2a879f258c8ec9c2b379cccdab876bc.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:1222d78100b1aaf6835ccf59e33cbb306f09c0d032abe7905be42459abbeea16`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 328–345.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def findRewrites (hyps : Array (Expr × Bool × Nat))
    (moduleRef : LazyDiscrTree.ModuleDiscrTreeRef (Name × RwDirection))
    (goal : MVarId) (target : Expr)
    (forbidden : NameSet := ∅) (side : SideConditions := .solveByElim)
    (stopAtRfl : Bool) (max : Nat := 20)
    (leavePercentHeartbeats : Nat := 10) : MetaM (List RewriteResult) := do
  let mctx ← getMCtx
  let candidates ← rewriteCandidates hyps moduleRef target forbidden
  let minHeartbeats : Nat ←
        if (← getMaxHeartbeats) = 0 then
          pure 0
        else
          pure <| leavePercentHeartbeats * (← getRemainingHeartbeats) / 100
  let cfg : RewriteResultConfig :=
        { stopAtRfl, minHeartbeats, max, mctx, goal, target, side }
  return (← takeListAux cfg {} (Array.mkEmpty max) candidates.toList).toList

end Lean.Meta.Rewrites
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Rewrites/Variant2afc5d6d3b5cac2e8c48a0bc39fba140c2a879f258c8ec9c2b379cccdab876bc.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Rewrites/Variant2afc5d6d3b5cac2e8c48a0bc39fba140c2a879f258c8ec9c2b379cccdab876bc.lean#L328).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e0d86f61ca1a7111d24b5d146d08047fbfc15bb6` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
