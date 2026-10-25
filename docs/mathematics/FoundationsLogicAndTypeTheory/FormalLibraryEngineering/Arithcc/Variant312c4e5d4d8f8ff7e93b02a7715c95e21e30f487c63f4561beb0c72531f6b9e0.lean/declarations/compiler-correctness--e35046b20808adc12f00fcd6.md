# compiler_correctness

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "b6a1d28fbfd61423b214e68f1ce9cd14cebc2b5b",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 271,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/31/312c4e5d4d8f8ff7e93b02a7715c95e21e30f487c63f4561beb0c72531f6b9e0.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:8a1cd8fd-de6e-d6a9-db46-b2488b073f9d",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:bebee589-5357-6e65-1cb2-586e3de6ce9e",
  "kind": "theorem",
  "lexical_name": "compiler_correctness",
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
  "slug": "compiler-correctness--e35046b20808adc12f00fcd6",
  "source": {
    "blob": "b6a1d28fbfd61423b214e68f1ce9cd14cebc2b5b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 339,
    "line": 271,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Arithcc/Variant312c4e5d4d8f8ff7e93b02a7715c95e21e30f487c63f4561beb0c72531f6b9e0.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e35046b20808adc12f00fcd6816c992bea1635b25863ce7740c9de7bd96a3ad7",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Arithcc/Variant312c4e5d4d8f8ff7e93b02a7715c95e21e30f487c63f4561beb0c72531f6b9e0.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:bebee589-5357-6e65-1cb2-586e3de6ce9e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 271–339.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem compiler_correctness
    (map : Identifier → Register) (e : Expr) (ξ : Identifier → Word) (η : State) (t : Register)
    (hmap : ∀ x, read (loc x map) η = ξ x) (ht : ∀ x, loc x map < t) :
    outcome (compile map e t) η ≃[t] { η with ac := value e ξ } := by
  induction e generalizing η t with
  -- 5.I
  | const => simp [StateEq, step]; rfl
  -- 5.II
  | var =>
    simp_all [StateEq, StateEqRs, step]
  -- 5.III
  | sum =>
    rename_i e_s₁ e_s₂ e_ih_s₁ e_ih_s₂
    simp only [compile, List.append_assoc, List.singleton_append, List.cons_append, outcome_append,
      outcome, value]
    generalize value e_s₁ ξ = ν₁ at e_ih_s₁ ⊢
    generalize value e_s₂ ξ = ν₂ at e_ih_s₂ ⊢
    generalize dν : ν₁ + ν₂ = ν
    generalize dζ₁ : outcome (compile _ e_s₁ t) η = ζ₁
    generalize dζ₂ : step (Instruction.sto t) ζ₁ = ζ₂
    generalize dζ₃ : outcome (compile _ e_s₂ (t + 1)) ζ₂ = ζ₃
    generalize dζ₄ : step (Instruction.add t) ζ₃ = ζ₄
    have hζ₁ : ζ₁ ≃[t] { η with ac := ν₁ } := calc
      ζ₁ = outcome (compile map e_s₁ t) η := by simp_all
      _ ≃[t] { η with ac := ν₁ } := by apply e_ih_s₁ <;> assumption
    have hζ₁_ν₁ : ζ₁.ac = ν₁ := by simp_all [StateEq]
    have hζ₂ : ζ₂ ≃[t + 1]/ac write t ν₁ η := calc
      ζ₂ = step (Instruction.sto t) ζ₁ := by simp_all
      _ = write t ζ₁.ac ζ₁ := by simp [step]
      _ = write t ν₁ ζ₁ := by simp_all
      _ ≃[t + 1] write t ν₁ { η with ac := ν₁ } := by apply stateEq_implies_write_eq hζ₁
      _ ≃[t + 1]/ac write t ν₁ η := by
        apply stateEqRs_implies_write_eq_rs
        simp [StateEqRs]
    have ht' : ∀ x, loc x map < t + 1 := by
      intros
      apply lt_trans (ht _) (Register.lt_succ_self _)
    have hmap' : ∀ x, read (loc x map) ζ₂ = ξ x := by
      intro x
      calc
        read (loc x map) ζ₂ = read (loc x map) (write t ν₁ η) := hζ₂ _ (ht' _)
        _ = read (loc x map) η := by simp only [loc] at ht; simp [(ht _).ne]
        _ = ξ x := hmap x
    have hζ₃ : ζ₃ ≃[t + 1] { write t ν₁ η with ac := ν₂ } := calc
      ζ₃ = outcome (compile map e_s₂ (t + 1)) ζ₂ := by simp_all
      _ ≃[t + 1] { ζ₂ with ac := ν₂ } := by apply e_ih_s₂ <;> assumption
      _ ≃[t + 1] { write t ν₁ η with ac := ν₂ } := by simp [StateEq]; apply hζ₂
    have hζ₃_ν₂ : ζ₃.ac = ν₂ := by simp_all [StateEq]
    have hζ₃_ν₁ : read t ζ₃ = ν₁ := by
      simp [StateEq, StateEqRs] at hζ₃ ⊢
      obtain ⟨_, hζ₃⟩ := hζ₃
      specialize hζ₃ t (Register.lt_succ_self _)
      simp_all
    have hζ₄ : ζ₄ ≃[t + 1] { write t ν₁ η with ac := ν } := calc
      ζ₄ = step (Instruction.add t) ζ₃ := by simp_all
      _  = { ζ₃ with ac := read t ζ₃ + ζ₃.ac } := by simp [step]
      _  = { ζ₃ with ac := ν } := by simp_all
      _  ≃[t + 1] { { write t ν₁ η with ac := ν₂ } with ac := ν } := by
        simp [StateEq] at hζ₃ ⊢; cases hζ₃; assumption
      _  ≃[t + 1] { write t ν₁ η with ac := ν } := by simp_all; rfl
    apply write_eq_implies_stateEq <;> assumption

end Correctness

section Test

open Instruction

/-- The example in the paper for compiling (x + 3) + (x + (y + 2)). -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Arithcc/Variant312c4e5d4d8f8ff7e93b02a7715c95e21e30f487c63f4561beb0c72531f6b9e0.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Arithcc/Variant312c4e5d4d8f8ff7e93b02a7715c95e21e30f487c63f4561beb0c72531f6b9e0.lean#L271).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b6a1d28fbfd61423b214e68f1ce9cd14cebc2b5b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
