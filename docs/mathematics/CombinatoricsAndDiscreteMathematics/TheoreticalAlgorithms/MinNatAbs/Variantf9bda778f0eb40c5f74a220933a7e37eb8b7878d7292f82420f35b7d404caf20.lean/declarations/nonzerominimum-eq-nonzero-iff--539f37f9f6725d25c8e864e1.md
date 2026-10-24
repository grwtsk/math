# nonzeroMinimum_eq_nonzero_iff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "b72ea8d08853875f01151131c728992778a04fc9",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 71,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/f9/f9bda778f0eb40c5f74a220933a7e37eb8b7878d7292f82420f35b7d404caf20.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:34f4983e-5ac1-271c-181d-58a67441e88d",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:c20b84fb-c587-a608-051c-e48c7bb7cb21",
  "kind": "theorem",
  "lexical_name": "nonzeroMinimum_eq_nonzero_iff",
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
  "slug": "nonzerominimum-eq-nonzero-iff--539f37f9f6725d25c8e864e1",
  "source": {
    "blob": "b72ea8d08853875f01151131c728992778a04fc9",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 91,
    "line": 71,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/MinNatAbs/Variantf9bda778f0eb40c5f74a220933a7e37eb8b7878d7292f82420f35b7d404caf20.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:539f37f9f6725d25c8e864e1dc189221d767981cb03ac59b706a189eb5f315c0",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/MinNatAbs/Variantf9bda778f0eb40c5f74a220933a7e37eb8b7878d7292f82420f35b7d404caf20.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c20b84fb-c587-a608-051c-e48c7bb7cb21`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 71–91.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem nonzeroMinimum_eq_nonzero_iff {xs : List Nat} {y : Nat} (h : y ≠ 0) :
    nonzeroMinimum xs = y ↔ y ∈ xs ∧ (∀ x ∈ xs, y ≤ x ∨ x = 0) := by
  constructor
  · rintro rfl
    constructor
    exact nonzeroMinimum_mem h
    intro y m
    by_cases w : y = 0
    · right; exact w
    · left; apply nonzeroMinimum_le m w
  · rintro ⟨m, w⟩
    apply Nat.le_antisymm
    · exact nonzeroMinimum_le m h
    · have nz : nonzeroMinimum xs ≠ 0 := by
        apply Nat.pos_iff_ne_zero.mp
        apply nonzeroMinimum_pos m h
      specialize w (nonzeroMinimum xs) (nonzeroMinimum_mem nz)
      cases w with
      | inl h => exact h
      | inr h => exact False.elim (nz h)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/MinNatAbs/Variantf9bda778f0eb40c5f74a220933a7e37eb8b7878d7292f82420f35b7d404caf20.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/MinNatAbs/Variantf9bda778f0eb40c5f74a220933a7e37eb8b7878d7292f82420f35b7d404caf20.lean#L71).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b72ea8d08853875f01151131c728992778a04fc9` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
