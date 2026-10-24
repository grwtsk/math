# nonzeroMinimum_le_iff

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
      "line": 96,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/f9/f9bda778f0eb40c5f74a220933a7e37eb8b7878d7292f82420f35b7d404caf20.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:ffefca06-7d0a-8c5b-b71a-66a3271cf351",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:47794e2c-5c37-45e6-1390-6781fe35976b",
  "kind": "theorem",
  "lexical_name": "nonzeroMinimum_le_iff",
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
  "slug": "nonzerominimum-le-iff--7315e060f619d79829dd4118",
  "source": {
    "blob": "b72ea8d08853875f01151131c728992778a04fc9",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 110,
    "line": 96,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/MinNatAbs/Variantf9bda778f0eb40c5f74a220933a7e37eb8b7878d7292f82420f35b7d404caf20.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:7315e060f619d79829dd411802f2caedc758c37550fe1fad139ed8890d028eb2",
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

Occurrence: `result:47794e2c-5c37-45e6-1390-6781fe35976b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 96–110.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem nonzeroMinimum_le_iff {xs : List Nat} {y : Nat} :
    nonzeroMinimum xs ≤ y ↔ nonzeroMinimum xs = 0 ∨ ∃ x ∈ xs, x ≤ y ∧ x ≠ 0 := by
  refine ⟨fun h => ?_, fun h => ?_⟩
  · rw [Classical.or_iff_not_imp_right]
    simp only [ne_eq, not_exists, not_and, Classical.not_not, nonzeroMinimum_eq_zero_iff]
    intro w
    apply nonzeroMinimum_eq_zero_iff.mp
    if p : nonzeroMinimum xs = 0 then
      exact p
    else
      exact w _ (nonzeroMinimum_mem p) h
  · match h with
    | .inl h => simp [h]
    | .inr ⟨x, m, le, ne⟩ => exact Nat.le_trans (nonzeroMinimum_le m ne) le

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/MinNatAbs/Variantf9bda778f0eb40c5f74a220933a7e37eb8b7878d7292f82420f35b7d404caf20.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/MinNatAbs/Variantf9bda778f0eb40c5f74a220933a7e37eb8b7878d7292f82420f35b7d404caf20.lean#L96).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b72ea8d08853875f01151131c728992778a04fc9` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
