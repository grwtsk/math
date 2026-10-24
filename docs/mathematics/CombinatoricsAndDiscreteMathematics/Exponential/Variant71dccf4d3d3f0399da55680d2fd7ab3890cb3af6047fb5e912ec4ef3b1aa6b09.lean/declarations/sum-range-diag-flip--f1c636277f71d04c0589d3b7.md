# sum_range_diag_flip

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:738eeba9-defa-cb34-88eb-37ff272b3c76",
  "kind": "theorem",
  "lexical_name": "sum_range_diag_flip",
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
  "slug": "sum-range-diag-flip--f1c636277f71d04c0589d3b7",
  "source": {
    "blob": "92c7b2fe6c8723001dd7872e2fcd2745f9039c3f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 233,
    "line": 193,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Exponential/Variant71dccf4d3d3f0399da55680d2fd7ab3890cb3af6047fb5e912ec4ef3b1aa6b09.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f1c636277f71d04c0589d3b74844d329a0a121595cf5f62a121f0d59d87e27cb",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/Exponential/Variant71dccf4d3d3f0399da55680d2fd7ab3890cb3af6047fb5e912ec4ef3b1aa6b09.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:738eeba9-defa-cb34-88eb-37ff272b3c76`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 193–233.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem sum_range_diag_flip {α : Type*} [AddCommMonoid α] (n : ℕ) (f : ℕ → ℕ → α) :
    (∑ m in range n, ∑ k in range (m + 1), f k (m - k)) =
      ∑ m in range n, ∑ k in range (n - m), f m k := by
  rw [sum_sigma', sum_sigma']
  exact
    sum_bij (fun a _ => ⟨a.2, a.1 - a.2⟩)
      (fun a ha =>
        have h₁ : a.1 < n := mem_range.1 (mem_sigma.1 ha).1
        have h₂ : a.2 < Nat.succ a.1 := mem_range.1 (mem_sigma.1 ha).2
        mem_sigma.2
          ⟨mem_range.2 (lt_of_lt_of_le h₂ h₁),
            mem_range.2 ((tsub_lt_tsub_iff_right (Nat.le_of_lt_succ h₂)).2 h₁)⟩)
      (fun _ _ => rfl)
      (fun ⟨a₁, a₂⟩ ⟨b₁, b₂⟩ ha hb h =>
        have ha : a₁ < n ∧ a₂ ≤ a₁ :=
          ⟨mem_range.1 (mem_sigma.1 ha).1, Nat.le_of_lt_succ (mem_range.1 (mem_sigma.1 ha).2)⟩
        have hb : b₁ < n ∧ b₂ ≤ b₁ :=
          ⟨mem_range.1 (mem_sigma.1 hb).1, Nat.le_of_lt_succ (mem_range.1 (mem_sigma.1 hb).2)⟩
        have h : a₂ = b₂ ∧ _ := by simpa using h
        have h' : a₁ = b₁ - b₂ + a₂ := (tsub_eq_iff_eq_add_of_le ha.2).1 (eq_of_heq h.2)
        Sigma.mk.inj_iff.2 ⟨tsub_add_cancel_of_le hb.2 ▸ h'.symm ▸ h.1 ▸ rfl, heq_of_eq h.1⟩)
      fun ⟨a₁, a₂⟩ ha =>
      have ha : a₁ < n ∧ a₂ < n - a₁ :=
        ⟨mem_range.1 (mem_sigma.1 ha).1, mem_range.1 (mem_sigma.1 ha).2⟩
      ⟨⟨a₂ + a₁, a₁⟩,
        ⟨mem_sigma.2
            ⟨mem_range.2 (lt_tsub_iff_right.1 ha.2),
              mem_range.2 (Nat.lt_succ_of_le (Nat.le_add_left _ _))⟩,
          Sigma.mk.inj_iff.2 ⟨rfl, heq_of_eq (add_tsub_cancel_right _ _).symm⟩⟩⟩
#align sum_range_diag_flip sum_range_diag_flip

end

section NoArchimedean

variable {α : Type*} {β : Type*} [LinearOrderedField α] {abv : β → α}

section

variable [Semiring β] [IsAbsoluteValue abv]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/Exponential/Variant71dccf4d3d3f0399da55680d2fd7ab3890cb3af6047fb5e912ec4ef3b1aa6b09.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/Exponential/Variant71dccf4d3d3f0399da55680d2fd7ab3890cb3af6047fb5e912ec4ef3b1aa6b09.lean#L193).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `92c7b2fe6c8723001dd7872e2fcd2745f9039c3f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
