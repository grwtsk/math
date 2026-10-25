# diffInteractiveGoal

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:4cf057f628ca8324c6c04b2dba8f30102587b6d0a24319788cdd354bc3eb88c2",
  "kind": "def",
  "lexical_name": "diffInteractiveGoal",
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
  "slug": "diffinteractivegoal--75c64df7d1c45053568bb1fe",
  "source": {
    "blob": "7dc9585794b26242251ac692596b6a6e6f5e96fe",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 252,
    "line": 233,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Diff/Variantba1845edf9f3d37a7e0d9b2eaf3c0490f329a08a6b4d662f53e09fc2d6f4d7e3.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:75c64df7d1c45053568bb1fe01035f0d518833a48a577dc89513f0db6f074478",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Diff/Variantba1845edf9f3d37a7e0d9b2eaf3c0490f329a08a6b4d662f53e09fc2d6f4d7e3.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:4cf057f628ca8324c6c04b2dba8f30102587b6d0a24319788cdd354bc3eb88c2`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 233–252.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def diffInteractiveGoal (useAfter : Bool) (g₀ : MVarId) (i₁ : InteractiveGoal) : MetaM InteractiveGoal := do
  let mctx ← getMCtx
  let some md₀ := mctx.findDecl? g₀
    | throwError "Failed to find decl for {g₀}."
  let lctx₀ := md₀.lctx |>.sanitizeNames.run' {options := (← getOptions)}
  let hs₁ ← diffHypotheses useAfter lctx₀ i₁.hyps
  let i₁ := {i₁ with hyps := hs₁}
  let g₁ := i₁.mvarId
  let t₀ ← instantiateMVars <|← inferType (Expr.mvar g₀)
  let some md₁ := (← getMCtx).findDecl? g₁
    | throwError "Unknown goal {g₁}"
  let t₁ ← instantiateMVars md₁.type
  let tδ ← exprDiff t₀ t₁ useAfter
  let c₁ ← addDiffTags useAfter tδ i₁.type
  let i₁ := {i₁ with type := c₁, isInserted? := false}
  return i₁

/-- Modifies `goalsAfter` with additional information about how it is different to `goalsBefore`.
If `useAfter` is `true` then `igs₁` is the set of interactive goals _after_ the tactic has been applied.
Otherwise `igs₁` is the set of interactive goals _before_. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Diff/Variantba1845edf9f3d37a7e0d9b2eaf3c0490f329a08a6b4d662f53e09fc2d6f4d7e3.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Diff/Variantba1845edf9f3d37a7e0d9b2eaf3c0490f329a08a6b4d662f53e09fc2d6f4d7e3.lean#L233).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7dc9585794b26242251ac692596b6a6e6f5e96fe` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
