# nthConstructor

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:e02658a575eb4268916d3cb39b218de0d764f8c2a9f5d3d6581cfc048502088e",
  "kind": "def",
  "lexical_name": "nthConstructor",
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
  "slug": "nthconstructor--20917e0385ef80f4bed55a58",
  "source": {
    "blob": "7d4c5f34f20e0a7249ea13953e545fac97dcde95",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 42,
    "line": 18,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LeftRight/Variant3e5d5df2ba1c1d8628a135919ca29f0827e2e5b823283d3dd2b51a3e037ac0f9.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:20917e0385ef80f4bed55a582e8409805bf283656f8cabb754b9a9307c9fb956",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LeftRight/Variant3e5d5df2ba1c1d8628a135919ca29f0827e2e5b823283d3dd2b51a3e037ac0f9.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:e02658a575eb4268916d3cb39b218de0d764f8c2a9f5d3d6581cfc048502088e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 18–42.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

````lean
def nthConstructor (name : Name) (idx : Nat) (max : Option Nat) (goal : MVarId) :
    MetaM (List MVarId) := do
  goal.withContext do
    goal.checkNotAssigned name
    matchConstInduct (← goal.getType').getAppFn
      (fun _ => throwTacticEx `constructor goal "target is not an inductive datatype")
      fun ival us => do
        if let some max := max then unless ival.ctors.length == max do
          throwTacticEx `constructor goal
            s!"{name} tactic works for inductive types with exactly {max} constructors"
        goal.apply <| mkConst ival.ctors[idx]! us

end NthConstructor

open NthConstructor

/--
Apply the first constructor,
in the case that the goal is an inductive type with exactly two constructors.
```
example : True ∨ False := by
  left
  trivial
```
-/
````

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LeftRight/Variant3e5d5df2ba1c1d8628a135919ca29f0827e2e5b823283d3dd2b51a3e037ac0f9.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LeftRight/Variant3e5d5df2ba1c1d8628a135919ca29f0827e2e5b823283d3dd2b51a3e037ac0f9.lean#L18).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7d4c5f34f20e0a7249ea13953e545fac97dcde95` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
