# SolverExtension.setMethods

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:3942c7281e014b6cb68b83bb4c74c659a4912d714810782235ab2d4ac0ea1f80",
  "kind": "def",
  "lexical_name": "SolverExtension.setMethods",
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
  "slug": "solverextension-setmethods--c48ae6c97136aec17682d2a1",
  "source": {
    "blob": "7611e81d5fd7ed4d854ff760fa7d113b4fc42c6f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1909,
    "line": 1892,
    "path": "GRWTSK/Algebra/CommutativeAlgebra/Types/Varianta6693ff328279b616d189b8258cb48230c3e3672279f4b58c7c8fe8692b17c5f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:c48ae6c97136aec17682d2a18f5b212393ab96968019a322dbeda1fa03600bec",
  "verification": {
    "reference": "docs/verification/Algebra/CommutativeAlgebra/Types/Varianta6693ff328279b616d189b8258cb48230c3e3672279f4b58c7c8fe8692b17c5f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:3942c7281e014b6cb68b83bb4c74c659a4912d714810782235ab2d4ac0ea1f80`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1892–1909.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def SolverExtension.setMethods (ext : SolverExtension σ)
    (internalize : Expr → (parent? : Option Expr) → GoalM Unit := fun _ _  => return ())
    (newEq       : Expr → Expr → GoalM Unit := fun _ _ => return ())
    (newDiseq    : Expr → Expr → GoalM Unit := fun _ _ => return ())
    (mbtc        : GoalM Bool := return false)
    (action      : Action := Action.notApplicable)
    (check       : GoalM Bool := return false)
    (checkInv    : GoalM Unit := return ())
    : IO Unit := do
  unless (← initializing) do
    throw (IO.userError "failed to register `grind` solver, extensions can only be registered during initialization")
  unless ext.id < (← solverExtensionsRef.get).size do
    throw (IO.userError "failed to register `grind` solver methods, invalid solver id")
  solverExtensionsRef.modify fun exts => exts.modify ext.id fun s => { s with
    internalize, newEq, newDiseq, mbtc, action, check, checkInv
  }

/-- Returns initial state for registered solvers. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/CommutativeAlgebra/Types/Varianta6693ff328279b616d189b8258cb48230c3e3672279f4b58c7c8fe8692b17c5f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/CommutativeAlgebra/Types/Varianta6693ff328279b616d189b8258cb48230c3e3672279f4b58c7c8fe8692b17c5f.lean#L1892).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7611e81d5fd7ed4d854ff760fa7d113b4fc42c6f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
