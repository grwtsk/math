# tripleToWpProof?

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:303b9e9f62303ef0ffd99e45a94ae69c6c92a20414b0ba7a9e70a03360ab855b",
  "kind": "def",
  "lexical_name": "tripleToWpProof?",
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
  "slug": "tripletowpproof--6d17b4a9e360d1f5cfaefc7f",
  "source": {
    "blob": "bc5529a4316302c1da1fdf459ebb5b254b0629d7",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 312,
    "line": 294,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Attr/Variant840824d8e006d055fe4edeb777a40c997384104d7565930a3a0891469d800cb2.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:6d17b4a9e360d1f5cfaefc7f55a0998a0ae71e9b890263510587b86c2bbaa2b7",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Attr/Variant840824d8e006d055fe4edeb777a40c997384104d7565930a3a0891469d800cb2.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:303b9e9f62303ef0ffd99e45a94ae69c6c92a20414b0ba7a9e70a03360ab855b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 294–312.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def tripleToWpProof? (proof type : Expr) : MetaM (Option (Expr × Expr)) := do
  let type ← whnfR type
  if type.isAppOfArity ``Triple 11 then
    -- Build the `Triple.le_wp` projection application explicitly from the `Triple` type's own
    -- arguments rather than via `mkAppM`. `mkAppM` would re-synthesise the instance arguments
    -- (`Monad m`, `WPMonad m …`), which fails for transformer specs whose monad is a partially
    -- applied transformer with still-unassigned parameters (e.g. `ExceptT ?ε ?m` in
    -- `Spec.monadLift_ExceptT`): synthesis of `Monad (ExceptT ?ε ?m)` is attempted before the
    -- caller has unified the spec's program against the goal. Reusing the type's arguments keeps
    -- those instance metavariables shared with the proof, so no premature synthesis happens.
    let lvls := type.getAppFn.constLevels!
    let proof := mkAppN (.const ``Triple.le_wp lvls) (type.getAppArgs.push proof)
    let type ← instantiateMVars (← inferType proof)
    return some (proof, type)
  else if type.isAppOfArity ``PartialOrder.rel 4 then
    return some (proof, type)
  else
    return none

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Attr/Variant840824d8e006d055fe4edeb777a40c997384104d7565930a3a0891469d800cb2.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Attr/Variant840824d8e006d055fe4edeb777a40c997384104d7565930a3a0891469d800cb2.lean#L294).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `bc5529a4316302c1da1fdf459ebb5b254b0629d7` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
