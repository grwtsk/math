# assignmentsInvariant_performRupCheck_of_assignmentsInvariant

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:5da7dd5b-342c-3a70-9d29-3baac7b42cdb",
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
  "slug": "assignmentsinvariant-performrupcheck-of-assignmentsinvariant--ffc87f4a5b1e56f4ff11d0cf",
  "source": {
    "blob": "0ba143a5e2f63cd00abe496a1a92efba4f69e737",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 393,
    "line": 363,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/RatAddSound/Variantd24b464cca6d07b3f9d51fa23f94d3dc97784e8f1d6de634cf699c66cc876440.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ffc87f4a5b1e56f4ff11d0cf32e69917e78c72e6782c7f9d13d23ae921f76ee8",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/RatAddSound/Variantd24b464cca6d07b3f9d51fa23f94d3dc97784e8f1d6de634cf699c66cc876440.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:5da7dd5b-342c-3a70-9d29-3baac7b42cdb`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 363–393.

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

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/RatAddSound/Variantd24b464cca6d07b3f9d51fa23f94d3dc97784e8f1d6de634cf699c66cc876440.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/RatAddSound/Variantd24b464cca6d07b3f9d51fa23f94d3dc97784e8f1d6de634cf699c66cc876440.lean#L363).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0ba143a5e2f63cd00abe496a1a92efba4f69e737` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
