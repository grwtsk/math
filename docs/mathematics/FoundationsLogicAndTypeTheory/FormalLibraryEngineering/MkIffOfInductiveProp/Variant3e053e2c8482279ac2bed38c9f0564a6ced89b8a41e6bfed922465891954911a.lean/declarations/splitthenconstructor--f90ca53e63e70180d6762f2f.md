# splitThenConstructor

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:04dab40e9550a3b89988fca108a31d1d40c0fa6790a9d8906d64d1cca4bd09cd",
  "kind": "def",
  "lexical_name": "splitThenConstructor",
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
  "slug": "splitthenconstructor--f90ca53e63e70180d6762f2f",
  "source": {
    "blob": "29d6a8a6ab72285803b21b0ae32a857ccee460fe",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 193,
    "line": 175,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MkIffOfInductiveProp/Variant3e053e2c8482279ac2bed38c9f0564a6ced89b8a41e6bfed922465891954911a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:f90ca53e63e70180d6762f2f0188e8e2ab0f933713905084c72c5c6457f4e9fd",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MkIffOfInductiveProp/Variant3e053e2c8482279ac2bed38c9f0564a6ced89b8a41e6bfed922465891954911a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:04dab40e9550a3b89988fca108a31d1d40c0fa6790a9d8906d64d1cca4bd09cd`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 175–193.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def splitThenConstructor (mvar : MVarId) (n : Nat) : MetaM Unit :=
match n with
| 0   => do
  let (subgoals',_) ← Term.TermElabM.run <| Tactic.run mvar do
    Tactic.evalTactic (← `(tactic| constructor))
  let [] := subgoals' | throwError "expected no subgoals"
  pure ()
| n + 1 => do
  let (subgoals,_) ← Term.TermElabM.run <| Tactic.run mvar do
    Tactic.evalTactic (← `(tactic| refine ⟨?_,?_⟩))
  let [sg1, sg2] := subgoals | throwError "expected two subgoals"
  let (subgoals',_) ← Term.TermElabM.run <| Tactic.run sg1 do
    Tactic.evalTactic (← `(tactic| constructor))
  let [] := subgoals' | throwError "expected no subgoals"
  splitThenConstructor sg2 n

/-- Proves the left to right direction of a generated iff theorem.
`shape` is the output of a call to `constrToProp`.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MkIffOfInductiveProp/Variant3e053e2c8482279ac2bed38c9f0564a6ced89b8a41e6bfed922465891954911a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MkIffOfInductiveProp/Variant3e053e2c8482279ac2bed38c9f0564a6ced89b8a41e6bfed922465891954911a.lean#L175).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `29d6a8a6ab72285803b21b0ae32a857ccee460fe` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
