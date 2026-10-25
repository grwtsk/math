# replay_deterministic

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:04a5eb80-ed5a-8921-9cf0-d9277d2930a5",
  "kind": "theorem",
  "lexical_name": "replay_deterministic",
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
  "slug": "replay-deterministic--64ea0f7e8fb9be16b61fbc16",
  "source": {
    "blob": "76e4b84e89845e0009217b871ee65ffd368b0b19",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 133,
    "line": 85,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Checkpoint/Variantb8f03e91f9fe335957240911617d48e741f5cb059b56d1a68779b46c8ec0edec.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:64ea0f7e8fb9be16b61fbc164061f12921f8369c0a1976b9a084e0d393fc7ef3",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Checkpoint/Variantb8f03e91f9fe335957240911617d48e741f5cb059b56d1a68779b46c8ec0edec.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:04a5eb80-ed5a-8921-9cf0-d9277d2930a5`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 85–133.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem replay_deterministic
    {G : GraphCut}
    {profiles : ModeProfileFamily G}
    {req : AdmittedAccessRequest G profiles}
    {outputs : ModeOutputFamily G req}
    (machine : AccessMachine G req outputs)
    (state : machine.State)
    (stateInvariant : machine.invariant state)
    (withinBudget :
      WithinBudget
        (machine.usage state)
        req.budget)
    (fuel : Nat) :
    let saved := machine.checkpoint state
    match resumedEquality :
      machine.resume saved with
    | some replayed =>
        runMachine machine fuel replayed
          (machine.decode_invariant
            saved.encodedState replayed
            resumedEquality)
          (by
            have replayed_eq : replayed = state := by
              simpa [resume, checkpoint] using
                (Option.some.inj
                  (machine.decode_encode state |>.symm.trans
                    resumedEquality)).symm
            simpa [replayed_eq] using withinBudget)
        =
        runMachine machine fuel state
          stateInvariant withinBudget
    | none => False := by
  dsimp only [checkpoint, resume]
  split
  · rename_i replayed resumedEquality
    have state_eq : state = replayed :=
      Option.some.inj
        ((machine.decode_encode state).symm.trans
          resumedEquality)
    subst replayed
    rfl
  · rename_i resumedEquality
    have impossible := machine.decode_encode state
    rw [resumedEquality] at impossible
    contradiction

end AccessMachine

end Mathematics.GraphAccess
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Checkpoint/Variantb8f03e91f9fe335957240911617d48e741f5cb059b56d1a68779b46c8ec0edec.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Checkpoint/Variantb8f03e91f9fe335957240911617d48e741f5cb059b56d1a68779b46c8ec0edec.lean#L85).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `76e4b84e89845e0009217b871ee65ffd368b0b19` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
