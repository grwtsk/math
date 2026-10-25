# dsimpPercentElaborator

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:6f2a48283bd1d398daeda17f288719c2730179f53ab2bc66fcfd4b0942ebfd0b",
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
  "slug": "dsimppercentelaborator--0aa4d64047e870582e74427c",
  "source": {
    "blob": "ccb47153b1f91bf8827e66871bcb72ea660bf931",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 73,
    "line": 54,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DSimpPercent/Variant7fa7207f33f28fed773bad3e7f7c4448bcd473beecf00d92c8e68b43c60d3c68.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:0aa4d64047e870582e74427c0d2f692a39913c1209fbb1f3fc456dacb72b1c2a",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DSimpPercent/Variant7fa7207f33f28fed773bad3e7f7c4448bcd473beecf00d92c8e68b43c60d3c68.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:6f2a48283bd1d398daeda17f288719c2730179f53ab2bc66fcfd4b0942ebfd0b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 54–73.

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

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DSimpPercent/Variant7fa7207f33f28fed773bad3e7f7c4448bcd473beecf00d92c8e68b43c60d3c68.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DSimpPercent/Variant7fa7207f33f28fed773bad3e7f7c4448bcd473beecf00d92c8e68b43c60d3c68.lean#L54).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ccb47153b1f91bf8827e66871bcb72ea660bf931` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
