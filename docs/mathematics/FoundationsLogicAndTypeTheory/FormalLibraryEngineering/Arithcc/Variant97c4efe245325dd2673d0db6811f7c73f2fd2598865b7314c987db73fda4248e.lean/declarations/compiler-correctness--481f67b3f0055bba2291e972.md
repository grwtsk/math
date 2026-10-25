# compiler_correctness

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "142a3ff54cfd57837a9d0d87c13bcfabc400528a",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 305,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/97/97c4efe245325dd2673d0db6811f7c73f2fd2598865b7314c987db73fda4248e.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:697db785-cc95-2fdd-3014-7b000562600a",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:6e418b5c-67bf-4bab-5056-7a86a6c95ca8",
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
  "slug": "compiler-correctness--481f67b3f0055bba2291e972",
  "source": {
    "blob": "142a3ff54cfd57837a9d0d87c13bcfabc400528a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 382,
    "line": 305,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Arithcc/Variant97c4efe245325dd2673d0db6811f7c73f2fd2598865b7314c987db73fda4248e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:481f67b3f0055bba2291e972382eec2936409f42466938de16c8c68dee5e4c46",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Arithcc/Variant97c4efe245325dd2673d0db6811f7c73f2fd2598865b7314c987db73fda4248e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:6e418b5c-67bf-4bab-5056-7a86a6c95ca8`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 305–382.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem compiler_correctness :
    ∀ (map : Identifier → Register) (e : Expr) (ξ : Identifier → Word) (η : State) (t : Register),
      (∀ x, read (loc x map) η = ξ x) →
        (∀ x, loc x map < t) → outcome (compile map e t) η ≃[t] { η with ac := value e ξ } := by
  intro map e ξ η t hmap ht
  revert η t
  induction e <;> intro η t hmap ht
  -- 5.I
  case const => simp [StateEq, step]; rfl
  -- 5.II
  case var =>
    simp [hmap, StateEq, step] -- Porting note: was `finish [hmap, StateEq, step]`
    constructor
    · simp_all only [read, loc]
    · rfl
  -- 5.III
  case sum =>
    rename_i e_s₁ e_s₂ e_ih_s₁ e_ih_s₂
    simp
    generalize value e_s₁ ξ = ν₁ at e_ih_s₁ ⊢
    generalize value e_s₂ ξ = ν₂ at e_ih_s₂ ⊢
    generalize dν : ν₁ + ν₂ = ν
    generalize dζ₁ : outcome (compile _ e_s₁ t) η = ζ₁
    generalize dζ₂ : step (Instruction.sto t) ζ₁ = ζ₂
    generalize dζ₃ : outcome (compile _ e_s₂ (t + 1)) ζ₂ = ζ₃
    generalize dζ₄ : step (Instruction.add t) ζ₃ = ζ₄
    have hζ₁ : ζ₁ ≃[t] { η with ac := ν₁ }
    calc
      ζ₁ = outcome (compile map e_s₁ t) η := by simp_all
      _ ≃[t] { η with ac := ν₁ } := by apply e_ih_s₁ <;> assumption
    have hζ₁_ν₁ : ζ₁.ac = ν₁ := by simp_all [StateEq]
    have hζ₂ : ζ₂ ≃[t + 1]/ac write t ν₁ η
    calc
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
    have hζ₃ : ζ₃ ≃[t + 1] { write t ν₁ η with ac := ν₂ }
    calc
      ζ₃ = outcome (compile map e_s₂ (t + 1)) ζ₂ := by simp_all
      _ ≃[t + 1] { ζ₂ with ac := ν₂ } := by apply e_ih_s₂ <;> assumption
      _ ≃[t + 1] { write t ν₁ η with ac := ν₂ } := by simp [StateEq]; apply hζ₂
    have hζ₃_ν₂ : ζ₃.ac = ν₂ := by simp_all [StateEq]
    have hζ₃_ν₁ : read t ζ₃ = ν₁ := by
      simp [StateEq, StateEqRs] at hζ₃ ⊢
      cases' hζ₃ with _ hζ₃
      specialize hζ₃ t (Register.lt_succ_self _)
      simp_all
    have hζ₄ : ζ₄ ≃[t + 1] { write t ν₁ η with ac := ν }
    calc
      ζ₄ = step (Instruction.add t) ζ₃ := by simp_all
      _ = { ζ₃ with ac := read t ζ₃ + ζ₃.ac } := by simp [step]
      _ = { ζ₃ with ac := ν } := by simp_all
      _ ≃[t + 1] { { write t ν₁ η with ac := ν₂ } with ac := ν } := by
        simp [StateEq] at hζ₃ ⊢; cases hζ₃; assumption
      _ ≃[t + 1] { write t ν₁ η with ac := ν } := by simp_all; rfl
    apply write_eq_implies_stateEq <;> assumption
#align arithcc.compiler_correctness Arithcc.compiler_correctness

end Correctness

section Test

open Instruction

/-- The example in the paper for compiling (x + 3) + (x + (y + 2)). -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Arithcc/Variant97c4efe245325dd2673d0db6811f7c73f2fd2598865b7314c987db73fda4248e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Arithcc/Variant97c4efe245325dd2673d0db6811f7c73f2fd2598865b7314c987db73fda4248e.lean#L305).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `142a3ff54cfd57837a9d0d87c13bcfabc400528a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
