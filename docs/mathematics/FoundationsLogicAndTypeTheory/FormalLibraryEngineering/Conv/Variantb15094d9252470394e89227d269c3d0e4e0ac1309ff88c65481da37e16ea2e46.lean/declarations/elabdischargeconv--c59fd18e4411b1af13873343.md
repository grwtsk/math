# elabDischargeConv

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:5cb7646a129354243584427e51b3c56a8d743515a98e9ee86088377e6fdab915",
  "kind": "def",
  "lexical_name": "elabDischargeConv",
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
  "slug": "elabdischargeconv--c59fd18e4411b1af13873343",
  "source": {
    "blob": "c3936735e303235e90c6b1a9b042cfdc7f0847b0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 69,
    "line": 53,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Conv/Variantb15094d9252470394e89227d269c3d0e4e0ac1309ff88c65481da37e16ea2e46.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:c59fd18e4411b1af13873343a5950b28c85f0a4f99a482a06ae5cfe9153c8bba",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Conv/Variantb15094d9252470394e89227d269c3d0e4e0ac1309ff88c65481da37e16ea2e46.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:5cb7646a129354243584427e51b3c56a8d743515a98e9ee86088377e6fdab915`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 53–69.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
@[tactic dischargeConv] def elabDischargeConv : Tactic := fun
  | `(conv| discharge $[=> $tac]?) => do
    let g :: gs ← getGoals | throwNoGoalsToBeSolved
    let (theLhs, theRhs) ← Conv.getLhsRhsCore g
    let .true ← isProp theLhs | throwError "target is not a proposition"
    theRhs.mvarId!.assign (mkConst ``True)
    let m ← mkFreshExprMVar theLhs
    g.assign (← mkEqTrue m)
    if let some tac := tac then
      setGoals [m.mvarId!]
      evalTactic tac; done
      setGoals gs
    else
      setGoals (m.mvarId! :: gs)
  | _ => Elab.throwUnsupportedSyntax

/-- Use `refine` in `conv` mode. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Conv/Variantb15094d9252470394e89227d269c3d0e4e0ac1309ff88c65481da37e16ea2e46.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Conv/Variantb15094d9252470394e89227d269c3d0e4e0ac1309ff88c65481da37e16ea2e46.lean#L53).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c3936735e303235e90c6b1a9b042cfdc7f0847b0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
