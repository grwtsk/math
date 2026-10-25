# eq_of_bisim

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:745208d9-5f96-5a2a-d09c-52ee96d9d7cb",
  "kind": "theorem",
  "lexical_name": "eq_of_bisim",
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
  "slug": "eq-of-bisim--9d4a40ecf9fadeff63c9219a",
  "source": {
    "blob": "f3090b10a49d03b4cc4569cbe1374c466ccfaab5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 331,
    "line": 301,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Computation/Variant02750af67c0b90993dcf2fc4a483f39d43147bfa5a5549a9f591a72728b299be.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:9d4a40ecf9fadeff63c9219a8b9fae404e97ba5ef20e15ce64306a4545b8e044",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Computation/Variant02750af67c0b90993dcf2fc4a483f39d43147bfa5a5549a9f591a72728b299be.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:745208d9-5f96-5a2a-d09c-52ee96d9d7cb`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 301–331.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem eq_of_bisim (bisim : IsBisimulation R) {s₁ s₂} (r : s₁ ~ s₂) : s₁ = s₂ := by
  apply Subtype.eq
  apply Stream'.eq_of_bisim fun x y => ∃ s s' : Computation α, s.1 = x ∧ s'.1 = y ∧ R s s'
  dsimp [Stream'.IsBisimulation]
  intro t₁ t₂ e
  exact
    match t₁, t₂, e with
    | _, _, ⟨s, s', rfl, rfl, r⟩ => by
      suffices head s = head s' ∧ R (tail s) (tail s') from
        And.imp id (fun r => ⟨tail s, tail s', by cases s; rfl, by cases s'; rfl, r⟩) this
      have h := bisim r; revert r h
      apply recOn s _ _ <;> intro r' <;> apply recOn s' _ _ <;> intro a' r h
      · constructor <;> dsimp at h
        · rw [h]
        · rw [h] at r
          rw [tail_pure, tail_pure,h]
          assumption
      · rw [destruct_pure, destruct_think] at h
        exact False.elim h
      · rw [destruct_pure, destruct_think] at h
        exact False.elim h
      · simp at h
        simp [*]
  exact ⟨s₁, s₂, rfl, rfl, r⟩
#align computation.eq_of_bisim Computation.eq_of_bisim

end Bisim

-- It's more of a stretch to use ∈ for this relation, but it
-- asserts that the computation limits to the given value.
/-- Assertion that a `Computation` limits to a given value-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Computation/Variant02750af67c0b90993dcf2fc4a483f39d43147bfa5a5549a9f591a72728b299be.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Computation/Variant02750af67c0b90993dcf2fc4a483f39d43147bfa5a5549a9f591a72728b299be.lean#L301).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f3090b10a49d03b4cc4569cbe1374c466ccfaab5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
