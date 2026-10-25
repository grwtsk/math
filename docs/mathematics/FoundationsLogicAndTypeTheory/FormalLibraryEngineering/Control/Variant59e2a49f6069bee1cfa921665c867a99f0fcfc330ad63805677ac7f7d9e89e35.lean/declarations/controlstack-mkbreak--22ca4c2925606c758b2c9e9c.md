# ControlStack.mkBreak

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:056210e0b88fd4bf1eeb6c5b983a5248bb5f6a3f41aae8105200350e88037b9d",
  "kind": "def",
  "lexical_name": "ControlStack.mkBreak",
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
  "slug": "controlstack-mkbreak--22ca4c2925606c758b2c9e9c",
  "source": {
    "blob": "afef07b33d862c522e2396634e5e2d4bf5e10da5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 159,
    "line": 146,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Control/Variant59e2a49f6069bee1cfa921665c867a99f0fcfc330ad63805677ac7f7d9e89e35.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:22ca4c2925606c758b2c9e9c0f5c0971be885d99276a3f45893dfa6c526cf1f8",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Control/Variant59e2a49f6069bee1cfa921665c867a99f0fcfc330ad63805677ac7f7d9e89e35.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:056210e0b88fd4bf1eeb6c5b983a5248bb5f6a3f41aae8105200350e88037b9d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 146–159.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def ControlStack.mkBreak (base : ControlStack) (hasContinue : Bool) : DoElabM Expr := do
  let mi := { (← read).monadInfo with m := (← base.m) }
  let inst ← mkInstMonad mi
  let α ← mkFreshResultType `α
  -- When there's an outer `continue` layer as well, we account for that by applying `stM` of
  -- `OptionT` to `α`.
  let α := if hasContinue then mkApp (mkConst ``Option [mi.u]) α else α
  let mγ ← mkMonadApp (← read).doBlockResultType
  let res ← base.runInBase <| mkApp3 (mkConst ``BreakT.break [mi.u, mi.v]) α mi.m inst
  let ty ← inferType res
  -- Now instantiate `α`
  synthUsingDefEq "break result type" mγ ty
  return res

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Control/Variant59e2a49f6069bee1cfa921665c867a99f0fcfc330ad63805677ac7f7d9e89e35.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Control/Variant59e2a49f6069bee1cfa921665c867a99f0fcfc330ad63805677ac7f7d9e89e35.lean#L146).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `afef07b33d862c522e2396634e5e2d4bf5e10da5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
