# proveEq?

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:5d64dafb1dd1d8c76c3d9f4f497f251f877ac58ddadc2e4fc17bcd9d52e3e1ee",
  "kind": "def",
  "lexical_name": "proveEq?",
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
  "slug": "proveeq--91c9e846b1afc9f1724c677a",
  "source": {
    "blob": "3cf1ffa87f5dbbd26fe4f9e0186560958f6fffbc",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 221,
    "line": 182,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ProveEq/Variant5765989cdc4ec3e1b93cda12dfd983f5ff18ae2a2ccd40f08d02fd1d23c69fd8.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:91c9e846b1afc9f1724c677a0505bdf4b49c06cbff32dcb9fbbc6b4bfa14a858",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ProveEq/Variant5765989cdc4ec3e1b93cda12dfd983f5ff18ae2a2ccd40f08d02fd1d23c69fd8.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:5d64dafb1dd1d8c76c3d9f4f497f251f877ac58ddadc2e4fc17bcd9d52e3e1ee`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 182–221.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def proveEq? (lhs rhs : Expr) (abstract : Bool := false) : GoalM (Option Expr) := do
  trace[grind.debug.proveEq] "({lhs}) = ({rhs})"
  unless (← hasSameType lhs rhs) do return none
  if (← alreadyInternalized lhs <&&> alreadyInternalized rhs) then
    if (← isEqv lhs rhs) then
      return some (← mkEqProof lhs rhs)
    else if abstract then withoutModifyingState do
      tryAbstract lhs rhs
    else
      return none
  else withoutModifyingState do
    /-
    We used to apply the `grind` normalizer, but it created unexpected failures.
    Here is an example, suppose we are trying to prove `i < (a :: l).length` is equal to `0 < (a :: l).length`
    when `i` and `0`  are in the same equivalence class. This should hold by applying congruence closure.
    However, if we apply the normalizer, we obtain `i+1 ≤ (a :: l).length` and `1 ≤ (a :: l).length`, and
    the equality cannot be detected by congruence closure anymore.
    -/
    let lhs ← ensureInternalized lhs
    let rhs ← ensureInternalized rhs
    processNewFacts
    if (← isEqv lhs rhs) then
      return some (← mkEqProof lhs rhs)
    else if abstract then
      tryAbstract lhs rhs
    else
      return none
where
  tryAbstract (lhs₀ rhs₀ : Expr) : GoalM (Option Expr) := do
    let some (lhs, rhs) ← abstractGroundMismatches? lhs₀ rhs₀ | return none
    trace[grind.debug.proveEq] "abstract: ({lhs}) = ({rhs})"
    let lhs ← ensureInternalized lhs
    let rhs ← ensureInternalized rhs
    processNewFacts
    if (← isEqv lhs rhs) then
      return some (← mkEqProof lhs rhs)
    else
      return none

/-- Similar to `proveEq?`, but for heterogeneous equality. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ProveEq/Variant5765989cdc4ec3e1b93cda12dfd983f5ff18ae2a2ccd40f08d02fd1d23c69fd8.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ProveEq/Variant5765989cdc4ec3e1b93cda12dfd983f5ff18ae2a2ccd40f08d02fd1d23c69fd8.lean#L182).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3cf1ffa87f5dbbd26fe4f9e0186560958f6fffbc` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
