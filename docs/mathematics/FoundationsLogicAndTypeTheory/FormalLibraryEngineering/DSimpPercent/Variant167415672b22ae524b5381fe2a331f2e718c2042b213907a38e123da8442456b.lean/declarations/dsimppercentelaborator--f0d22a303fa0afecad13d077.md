# dsimpPercentElaborator

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:f3aec88ee2938e26a8c90a2cc9c5c99754d7cdd8e7dd0bf227c197368a778d13",
  "kind": "def",
  "lexical_name": "dsimpPercentElaborator",
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
  "slug": "dsimppercentelaborator--f0d22a303fa0afecad13d077",
  "source": {
    "blob": "882e1a9a67398e957a4e656d63ce0ed7fdfc3744",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 65,
    "line": 46,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DSimpPercent/Variant167415672b22ae524b5381fe2a331f2e718c2042b213907a38e123da8442456b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:f0d22a303fa0afecad13d0772cf3abf598ea5cbdfed72e103982987761093818",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DSimpPercent/Variant167415672b22ae524b5381fe2a331f2e718c2042b213907a38e123da8442456b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:f3aec88ee2938e26a8c90a2cc9c5c99754d7cdd8e7dd0bf227c197368a778d13`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 46–65.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def dsimpPercentElaborator : TermElab := fun stx expectedType => do
  let fresh ← mkFreshExprMVar default
  let go : TacticM Expr := do
    let e ← Term.elabTerm stx[5] expectedType
    -- `stx` has the same shape as a normal `dsimp` call, so we can pass it to `mkSimpContext`.
    let { ctx, simprocs, .. } ← mkSimpContext stx (eraseLocal := false) (kind := .dsimp)
    let dsimp (e : Expr) : MetaM Expr := do
      -- Ensure that only instantiating metavariables isn't counted as progress.
      let e ← instantiateMVars e
      let (dsimpResult, _) ← Meta.dsimp e ctx simprocs
      if dsimpResult == e then
        throwError "`dsimp%` made no progress"
      return dsimpResult
    if ← isProof e then
      mkExpectedTypeHint e (← dsimp (← inferType e))
    else
      dsimp e
  go { elaborator := .anonymous } |>.run' { goals := [fresh.mvarId!] }

end Mathlib.Tactic
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DSimpPercent/Variant167415672b22ae524b5381fe2a331f2e718c2042b213907a38e123da8442456b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DSimpPercent/Variant167415672b22ae524b5381fe2a331f2e718c2042b213907a38e123da8442456b.lean#L46).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `882e1a9a67398e957a4e656d63ce0ed7fdfc3744` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
