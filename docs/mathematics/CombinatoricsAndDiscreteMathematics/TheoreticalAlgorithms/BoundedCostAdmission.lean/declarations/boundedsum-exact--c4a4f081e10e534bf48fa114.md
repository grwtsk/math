# boundedSum_exact

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "c5288736ead0cf4b735a56baa08e1bd7823c8a06",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 45,
      "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/BoundedCostAdmission.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:6a2f919d-d780-f7fa-0568-e1b2865342b3",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:84a2bc41-5d21-27e3-0d9d-118eb898aa1e",
  "kind": "theorem",
  "lexical_name": "boundedSum_exact",
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
  "slug": "boundedsum-exact--c4a4f081e10e534bf48fa114",
  "source": {
    "blob": "c5288736ead0cf4b735a56baa08e1bd7823c8a06",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 65,
    "line": 45,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/BoundedCostAdmission.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c4a4f081e10e534bf48fa114f828f749d856b65b2fbb8c9ffd2d61478f54ac55",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/BoundedCostAdmission.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:84a2bc41-5d21-27e3-0d9d-118eb898aa1e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 45–65.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem boundedSum_exact (costs : List Nat) (cap total result : Nat) :
    boundedSum costs cap total = some result ↔ result = total + costs.sum ∧ result ≤ cap := by
  induction costs generalizing total with
  | nil =>
      simp only [boundedSum, List.sum_nil, Nat.add_zero]
      split <;> simp_all
      omega
  | cons cost rest ih =>
      change ((boundedAdd total cost cap).bind fun next => boundedSum rest cap next) = some result ↔
        result = total + (cost + rest.sum) ∧ result ≤ cap
      cases step : boundedAdd total cost cap with
      | none =>
          simp only [Option.bind_none, reduceCtorEq, false_iff]
          intro facts
          have possible := (boundedAdd_exists total cost cap).mpr (by omega)
          simp [step] at possible
      | some next =>
          have facts := (boundedAdd_exact _ _ _ _).mp step
          simp only [Option.bind_some, ih]
          omega

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/BoundedCostAdmission.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/BoundedCostAdmission.lean#L45).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c5288736ead0cf4b735a56baa08e1bd7823c8a06` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
