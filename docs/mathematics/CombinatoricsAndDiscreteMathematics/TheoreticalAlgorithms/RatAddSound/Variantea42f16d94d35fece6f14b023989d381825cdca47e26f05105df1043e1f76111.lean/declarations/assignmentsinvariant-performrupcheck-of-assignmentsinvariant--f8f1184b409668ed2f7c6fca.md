# assignmentsInvariant_performRupCheck_of_assignmentsInvariant

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "38b719eb9cd21611662027394368a5f88b6d088b",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 355,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/ea/ea42f16d94d35fece6f14b023989d381825cdca47e26f05105df1043e1f76111.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:c39d9f26-daf3-6ea5-2e83-d09cd21f2c44",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:2d49a207-4a9c-3ae0-c726-c6c3b0517fff",
  "kind": "theorem",
  "lexical_name": "assignmentsInvariant_performRupCheck_of_assignmentsInvariant",
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
  "slug": "assignmentsinvariant-performrupcheck-of-assignmentsinvariant--f8f1184b409668ed2f7c6fca",
  "source": {
    "blob": "38b719eb9cd21611662027394368a5f88b6d088b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 385,
    "line": 355,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/RatAddSound/Variantea42f16d94d35fece6f14b023989d381825cdca47e26f05105df1043e1f76111.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f8f1184b409668ed2f7c6fcaf5a31e7332e79ad07174275628cde4e616e0c91c",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/RatAddSound/Variantea42f16d94d35fece6f14b023989d381825cdca47e26f05105df1043e1f76111.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:2d49a207-4a9c-3ae0-c726-c6c3b0517fff`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 355–385.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem assignmentsInvariant_performRupCheck_of_assignmentsInvariant {n : Nat} (f : DefaultFormula n)
    (f_AssignmentsInvariant : AssignmentsInvariant f) (rupHints : Array Nat) :
    AssignmentsInvariant (performRupCheck f rupHints).1 := by
  simp only [performRupCheck]
  let motive := ConfirmRupHintFoldEntailsMotive f
  have h_base : motive 0 (f.assignments, [], false, false) := by
    simp [ConfirmRupHintFoldEntailsMotive, f_AssignmentsInvariant.1,
      limplies_of_assignmentsInvariant f f_AssignmentsInvariant, motive]
  have h_inductive (idx : Fin rupHints.size) (acc : Array Assignment × CNF.Clause (PosFin n) × Bool × Bool) (ih : motive idx.1 acc) :=
    confirmRupHint_preserves_motive f rupHints idx acc ih
  rcases Array.foldl_induction motive h_base h_inductive with ⟨hsize, h1, _⟩
  apply Exists.intro hsize
  intro i b h p pf
  simp only at h
  specialize h1 p pf
  simp only [( · ⊨ ·), Bool.not_eq_true] at h1
  specialize h1 i
  have i_in_bounds :
    i.1 < (rupHints.foldl (fun b => confirmRupHint f.clauses b) (f.assignments, [], false, false) 0 rupHints.size).1.size := by
    let in_bounds_motive (_idx : Nat) (acc : Array Assignment × CNF.Clause (PosFin n) × Bool × Bool) := acc.1.size = n
    have in_bounds_base : in_bounds_motive 0 (f.assignments, [], false, false) := by
      simp only [f_AssignmentsInvariant.1, in_bounds_motive]
    have in_bounds_inductive (idx : Fin rupHints.size) (acc : Array Assignment × CNF.Clause (PosFin n) × Bool × Bool)
      (ih : in_bounds_motive idx.1 acc) : in_bounds_motive (idx.1 + 1) (confirmRupHint f.clauses acc rupHints[idx]) := by
      have h := size_assignments_confirmRupHint f.clauses acc.1 acc.2.1 acc.2.2.1 acc.2.2.2 rupHints[idx]
      grind
    rw [Array.foldl_induction in_bounds_motive in_bounds_base in_bounds_inductive]
    exact i.2.2
  simp only [( · ⊨ ·)]
  grind [cases Bool]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/RatAddSound/Variantea42f16d94d35fece6f14b023989d381825cdca47e26f05105df1043e1f76111.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/RatAddSound/Variantea42f16d94d35fece6f14b023989d381825cdca47e26f05105df1043e1f76111.lean#L355).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `38b719eb9cd21611662027394368a5f88b6d088b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
