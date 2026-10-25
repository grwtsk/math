# mem_confirmed_iff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:1fcb43d4-32bd-5525-3241-00a03be10255",
  "kind": "theorem",
  "lexical_name": "mem_confirmed_iff",
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
  "slug": "mem-confirmed-iff--a9208abe2fcf8fd8ae70d719",
  "source": {
    "blob": "43794780f6b098aae07889a9214c0b52c50b5895",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 340,
    "line": 313,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Observation/RevisionEvidence.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a9208abe2fcf8fd8ae70d719e773d339923b0743d6072ca55486745ccb943cb4",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Observation/RevisionEvidence.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:1fcb43d4-32bd-5525-3241-00a03be10255`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 313–340.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem mem_confirmed_iff (state : State Kind Payload) (revision other : Nat) :
    other ∈ (confirm state revision).confirmed ↔
      other ∈ state.confirmed ∨ other = revision := by
  letI : Decidable (revision ∈ state.confirmed) :=
    ConstructiveList.decidableMem revision state.confirmed
  change other ∈ (if revision ∈ state.confirmed
    then state.confirmed else state.confirmed ++ [revision]) ↔
    other ∈ state.confirmed ∨ other = revision
  by_cases already : revision ∈ state.confirmed
  · rw [if_pos already]
    constructor
    · exact Or.inl
    · intro member
      cases member with
      | inl old => exact old
      | inr same => exact same.symm ▸ already
  · rw [if_neg already]
    constructor
    · intro member
      cases ConstructiveList.mem_append_iff.mp member with
      | inl old => exact Or.inl old
      | inr appended => exact Or.inr (ConstructiveList.mem_singleton_iff.mp appended)
    · intro member
      apply ConstructiveList.mem_append_iff.mpr
      cases member with
      | inl old => exact Or.inl old
      | inr same => exact Or.inr (ConstructiveList.mem_singleton_iff.mpr same)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Observation/RevisionEvidence.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Observation/RevisionEvidence.lean#L313).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `43794780f6b098aae07889a9214c0b52c50b5895` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
