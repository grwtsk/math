# isLevelDefEqS

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:b36cfd651c4c247a4962cceb64d65cb5b19584055985b31010cc12fac74ae5d7",
  "kind": "def",
  "lexical_name": "isLevelDefEqS",
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
  "slug": "isleveldefeqs--344316b61fdc669cb9c86b27",
  "source": {
    "blob": "84d34aaf97dbd8a615cd6aa69750319ace350e45",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 688,
    "line": 654,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Pattern/Variant516e0d27a48f2beac4bb47b8a1f2a769cae8d26310234e8779da6de8b8598b0f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:344316b61fdc669cb9c86b27afe0e4bdff40a622ed276544ad704600fc38dfc7",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Pattern/Variant516e0d27a48f2beac4bb47b8a1f2a769cae8d26310234e8779da6de8b8598b0f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:b36cfd651c4c247a4962cceb64d65cb5b19584055985b31010cc12fac74ae5d7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 654–688.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
partial def isLevelDefEqS (u : Level) (v : Level) : MetaM Bool := do
  let tryNormalizeFirst (k : MetaM Bool) : MetaM Bool := do
    /-
    If `u` and `v` have assigned metavariables or can be normalized, apply substitutions and normalize.
    Otherwise, execute `k`.
    -/
    let u' ← substAssignedMVarsAndNormalize u
    let v' ← substAssignedMVarsAndNormalize v
    if u' != u || v' != v then isLevelDefEqS u' v'
    else k
  match u, v with
  | .param u, .param v => return u == v
  | .zero, .zero => return true
  | .succ u, .succ v => isLevelDefEqS u v
  | .zero, .succ _ => return false
  | .succ _, .zero => return false
  | .zero, .max v₁ v₂ => isLevelDefEqS .zero v₁ <&&> isLevelDefEqS .zero v₂
  | .max u₁ u₂, .zero => isLevelDefEqS u₁ .zero <&&> isLevelDefEqS u₂ .zero
  | .zero, .imax _ v => isLevelDefEqS .zero v
  | .imax _ u, .zero => isLevelDefEqS u .zero
  | .max u₁ u₂, .max v₁ v₂ =>
    if u₂ == v₁ then isLevelDefEqS u₁ v₂
    else if u₁ == v₂ then isLevelDefEqS u₂ v₁
    else tryNormalizeFirst (isLevelDefEqS u₁ v₁ <&&> isLevelDefEqS u₂ v₂)
  | .imax u₁ u₂, .imax v₁ v₂ => isLevelDefEqS u₁ v₁ <&&> isLevelDefEqS u₂ v₂
  | _, _ =>
    if (← tryAssignLevelMVar u v <||> tryAssignLevelMVar v u) then
      return true
    else
      tryNormalizeFirst (return false)

/--
Structural definitional equality for lists of universe levels.
Returns `true` iff the lists have the same length and corresponding elements are structurally equal.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Pattern/Variant516e0d27a48f2beac4bb47b8a1f2a769cae8d26310234e8779da6de8b8598b0f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Pattern/Variant516e0d27a48f2beac4bb47b8a1f2a769cae8d26310234e8779da6de8b8598b0f.lean#L654).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `84d34aaf97dbd8a615cd6aa69750319ace350e45` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
