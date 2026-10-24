# mem_smul_iff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:64fbd6e4-b41e-1d32-66e6-1169321e1916",
  "kind": "theorem",
  "lexical_name": "mem_smul_iff",
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
  "slug": "mem-smul-iff--aaed7e9c3875e9afa8690144",
  "source": {
    "blob": "faae9fbe0da89dd14edad39462e48e55bb4b8171",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 552,
    "line": 518,
    "path": "GRWTSK/Algebra/GroupTheory/CoprodI/Variantf049571dbda78edf0f1e6a72ca76373499bb370ca54e7d2faf3ca446f3df8559.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:aaed7e9c3875e9afa8690144d2d3277ae862cd5dc2d8707c84c5c8e17011e137",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/CoprodI/Variantf049571dbda78edf0f1e6a72ca76373499bb370ca54e7d2faf3ca446f3df8559.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:64fbd6e4-b41e-1d32-66e6-1169321e1916`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 518–552.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem mem_smul_iff {i j : ι} {m₁ : M i} {m₂ : M j} {w : Word M} :
    ⟨_, m₁⟩ ∈ (of m₂ • w).toList ↔
      (¬i = j ∧ ⟨i, m₁⟩ ∈ w.toList)
      ∨ (m₁ ≠ 1 ∧ ∃ (hij : i = j), (⟨i, m₁⟩ ∈ w.toList.tail) ∨
        (∃ m', ⟨j, m'⟩ ∈ w.toList.head? ∧ m₁ = hij ▸ (m₂ * m')) ∨
        (w.fstIdx ≠ some j ∧ m₁ = hij ▸ m₂)) := by
  rw [of_smul_def, mem_rcons_iff, mem_equivPair_tail_iff, equivPair_head, or_assoc]
  by_cases hij : i = j
  · subst i
    simp only [not_true, ne_eq, false_and, exists_prop, true_and, false_or]
    by_cases hw : ⟨j, m₁⟩ ∈ w.toList.tail
    · simp [hw, show m₁ ≠ 1 from w.ne_one _ (List.mem_of_mem_tail hw)]
    · simp only [hw, false_or, Option.mem_def, and_congr_right_iff]
      intro hm1
      split_ifs with h
      · rcases h with ⟨hnil, rfl⟩
        simp only [List.head?_eq_some_head hnil, Option.some.injEq]
        constructor
        · rintro rfl
          exact Or.inl ⟨_, rfl, rfl⟩
        · rintro (⟨_, h, rfl⟩ | hm')
          · simp only [Sigma.ext_iff, heq_eq_eq, true_and] at h
            subst h
            rfl
          · simp only [fstIdx, Option.map_eq_some_iff, Sigma.exists,
              exists_and_right, exists_eq_right, not_exists] at hm'
            exact (hm'.1 (w.toList.head hnil).2 (by rw [List.head?_eq_some_head])).elim
      · revert h
        rw [fstIdx]
        cases w.toList
        · simp
        · simp +contextual [Sigma.ext_iff]
  · rcases w with ⟨_ | _, _, _⟩ <;>
    simp [or_comm, hij, Ne.symm hij, eq_comm]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/CoprodI/Variantf049571dbda78edf0f1e6a72ca76373499bb370ca54e7d2faf3ca446f3df8559.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/CoprodI/Variantf049571dbda78edf0f1e6a72ca76373499bb370ca54e7d2faf3ca446f3df8559.lean#L518).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `faae9fbe0da89dd14edad39462e48e55bb4b8171` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
