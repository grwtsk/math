# isNat_iff'

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "fa4e803f2d89ec10e87082cb0064723226e38a04",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 100,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/87/87ab28181b3fc8037b87c49d9197a9564605c71ea78fbfae76afb53784a412b7.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:dc6e0fcc-5dae-a030-83e1-3f27221c177b",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:ce7655b3-0536-69f7-f9cc-16b9e7458637",
  "kind": "theorem",
  "lexical_name": "isNat_iff'",
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
  "slug": "isnat-iff--a9de2d36794ed59fbd7ff60f",
  "source": {
    "blob": "fa4e803f2d89ec10e87082cb0064723226e38a04",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 165,
    "line": 100,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/ToNat/Variant87ab28181b3fc8037b87c49d9197a9564605c71ea78fbfae76afb53784a412b7.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a9de2d36794ed59fbd7ff60f2c6b41f5a79d16ea9c134156ffa600fff5baf115",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/ToNat/Variant87ab28181b3fc8037b87c49d9197a9564605c71ea78fbfae76afb53784a412b7.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ce7655b3-0536-69f7-f9cc-16b9e7458637`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 100–165.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem isNat_iff' {s : String.Slice} :
    s.isNat = true ↔
        s.copy.toList ≠ [] ∧
        (∀ c ∈ s.copy.toList, c.isDigit ∨ c = '_') ∧
        NoRepetition '_' ('_' :: s.copy.toList ++ ['_']) := by
  generalize h : s.isNat = res
  apply Id.of_wp_run_eq h
  simp only [↓Char.isValue, Bool.not_eq_eq_eq_not, Bool.not_true, forIn_eq_forIn_toList, ne_eq,
    WP.bind, SPred.entails_nil, SPred.down_pure, forall_const]
  mvcgen invariants
  | inv1 => Invariant.withEarlyReturnNewDo
      (fun cursor lastWasDigit => ⌜lastWasDigit = ¬ (['_'] <:+ ('_' :: cursor.prefix)) ∧
        (∀ c ∈ cursor.prefix, c.isDigit ∨ c = '_') ∧ NoRepetition '_' ('_' :: cursor.prefix)⌝)
      (fun res lastWasDigit => ⌜res = false ∧
        ((∃ c ∈ s.copy.toList, c.isDigit = false ∧ c ≠ '_') ∨ ¬ NoRepetition '_' ('_' :: s.copy.toList))⌝)
  next pref c suff h b hc h₁ h₂ =>
    subst hc
    simp only [h₁, ↓Char.isValue, eq_iff_iff, false_iff, Decidable.not_not,
      reduceCtorEq, h, List.mem_append, List.mem_cons, ne_eq, false_and, and_false, exists_const,
      or_false, Option.some.injEq, Bool.false_eq, true_and, and_self_left, exists_eq_left,
      false_or] at ⊢ h₂
    rw [List.append_cons, ← List.cons_append, ← List.cons_append]
    exact Or.inr (not_noRepetition_append_of_left (not_noRepetition_append_singleton_of_suffix h₂.2.1))
  next pref c suff h b hc h₁ h₂ =>
    subst hc
    simp only [h₁, ↓Char.isValue, eq_iff_iff, true_iff, reduceCtorEq, h, List.mem_append,
      List.mem_cons, ne_eq, false_and, and_false, exists_const, or_false, Bool.false_eq_true,
      List.suffix_cons_append, not_true_eq_false, List.not_mem_nil,
      forall_or_imp_or_self_right_right, true_and] at ⊢ h₂
    refine ⟨h₂.2.2.1, ?_⟩
    rw [← List.cons_append]
    exact NoRepetition.append_singleton_of_not_suffix h₂.2.2.2 h₂.2.1
  next pref c suff h b hc hc' h₁ =>
    simp only [↓Char.isValue, eq_iff_iff, reduceCtorEq, h, List.mem_append, List.mem_cons, ne_eq,
      false_and, and_false, exists_const, or_false, List.singleton_suffix_cons_append_singleton_iff,
      Ne.symm hc, not_false_eq_true, List.not_mem_nil, forall_or_eq_imp, hc', true_or, and_true,
      true_and] at ⊢ h₁
    refine ⟨h₁.2.2.1, ?_⟩
    rw [← List.cons_append]
    exact NoRepetition.append_singleton_of_ne h₁.2.2.2 (Ne.symm hc)
  next pref c suff h b hc hc' h₁ => simpa [h] using Or.inl ⟨c, by simp_all⟩
  next => simp
  next r b h₁ h₂ =>
    simp only [h₁, reduceCtorEq, ↓Char.isValue, eq_iff_iff, false_and, Option.some.injEq, ne_eq,
      true_and, exists_eq_left', false_or] at h₂
    simp only [h₂.1, Bool.false_eq_true, toList_eq_nil_iff, copy_eq_empty_iff, Bool.not_eq_true,
      ↓Char.isValue, List.cons_append, false_iff, not_and]
    intro hx hy
    obtain (⟨c, hc₁, hc₂, hc₃⟩|hn) := h₂.2
    · have := hy c
      simp_all
    · rw [← List.cons_append]
      exact not_noRepetition_append_of_left hn
  next r h₁ h₂ =>
    generalize s.copy.toList = l at *
    simp only [h₁, ↓Char.isValue, eq_iff_iff, true_and, reduceCtorEq, ne_eq, false_and,
      exists_const, or_false, List.cons_append] at ⊢ h₂
    rw [h₂.1]
    refine ⟨fun h => ⟨?_, h₂.2.1, ?_⟩, fun ⟨h₁, _, h₂⟩ => ?_⟩
    · rintro rfl
      simp at h
    · rw [← List.cons_append]
      apply NoRepetition.append_singleton_of_not_suffix h₂.2.2 h
    · rw [← List.cons_append] at h₂
      exact h₂.not_isSuffix_of_append_singleton

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/ToNat/Variant87ab28181b3fc8037b87c49d9197a9564605c71ea78fbfae76afb53784a412b7.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/ToNat/Variant87ab28181b3fc8037b87c49d9197a9564605c71ea78fbfae76afb53784a412b7.lean#L100).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `fa4e803f2d89ec10e87082cb0064723226e38a04` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
