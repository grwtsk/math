# solveByElim

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:c28ca87dec228df0541c67dad28268fd65f147e892998a60585b76ac4b966615",
  "kind": "def",
  "lexical_name": "solveByElim",
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
  "slug": "solvebyelim--70e5a9ebb83ba59851362b50",
  "source": {
    "blob": "2b754cdd2c3a74b798424dc39b3e37cdebdce1da",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 75,
    "line": 55,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Propose/Variant2ea030673720fe29f4b1fb2d6dfd5d0ed47d1a4206065d58a4e8bc0a30aa3adf.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:70e5a9ebb83ba59851362b502d22b98785ae7eef679f9b3e01e584e1d7676a8b",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Propose/Variant2ea030673720fe29f4b1fb2d6dfd5d0ed47d1a4206065d58a4e8bc0a30aa3adf.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:c28ca87dec228df0541c67dad28268fd65f147e892998a60585b76ac4b966615`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 55–75.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def solveByElim (orig : MVarId) (goals : Array MVarId) (use : Array Expr) (required : Array Expr)
    (depth) := do
  let cfg : SolveByElimConfig :=
    { maxDepth := depth, exfalso := true, symm := true, intro := false }
  let cfg := if !required.isEmpty then
    cfg.testSolutions (fun _ => do
    let r ← instantiateMVars (.mvar orig)
    pure <| required.all fun e => e.occurs r)
  else
    cfg
  let cfg := cfg.synthInstance
  _ ← SolveByElim.solveByElim
    cfg (use.toList.map pure) (fun _ => return (← getLocalHyps).toList) goals.toList

/--
Attempts to find lemmas which use all of the `required` expressions as arguments, and
can be unified with the given `type` (which may contain metavariables, which we avoid assigning).
We look up candidate lemmas from a discrimination tree using the first such expression.

Returns an array of pairs, containing the names of found lemmas and the resulting application.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Propose/Variant2ea030673720fe29f4b1fb2d6dfd5d0ed47d1a4206065d58a4e8bc0a30aa3adf.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Propose/Variant2ea030673720fe29f4b1fb2d6dfd5d0ed47d1a4206065d58a4e8bc0a30aa3adf.lean#L55).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2b754cdd2c3a74b798424dc39b3e37cdebdce1da` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
