# tr_supports

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:d33ff95d-192e-bf0a-f16c-3ca867fe8c04",
  "kind": "theorem",
  "lexical_name": "tr_supports",
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
  "slug": "tr-supports--2a279bfa9ae94cd2706effb2",
  "source": {
    "blob": "8e5b31d39d6dea47790cb5fec7eafa75b7029607",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1626,
    "line": 1543,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/Computability/TuringMachine/Variantffe51becd262f37a758c64da1be9d076644527ca85a1b529969bdde8de46b3e8.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:2a279bfa9ae94cd2706effb24c0b752e57715e5abe4710345779217761d1f404",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/Computability/TuringMachine/Variantffe51becd262f37a758c64da1be9d076644527ca85a1b529969bdde8de46b3e8.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d33ff95d-192e-bf0a-f16c-3ca867fe8c04`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1543–1626.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem tr_supports {S : Finset Λ} (ss : TM1.Supports M S) :
    TM0.Supports (tr M) ↑(trStmts M S) := by
  constructor
  · apply Finset.mem_product.2
    constructor
    · simp only [default, TM1.stmts, Finset.mem_insertNone, Option.mem_def, Option.some_inj,
        forall_eq', Finset.mem_biUnion]
      exact ⟨_, ss.1, TM1.stmts₁_self⟩
    · apply Finset.mem_univ
  · intro q a q' s h₁ h₂
    rcases q with ⟨_ | q, v⟩; · cases h₁
    cases' q' with q' v'
    simp only [trStmts, Finset.mem_coe] at h₂ ⊢
    rw [Finset.mem_product] at h₂ ⊢
    simp only [Finset.mem_univ, and_true_iff] at h₂ ⊢
    cases q'; · exact Multiset.mem_cons_self _ _
    simp only [tr, Option.mem_def] at h₁
    have := TM1.stmts_supportsStmt ss h₂
    revert this; induction q generalizing v <;> intro hs
    case move d q =>
      cases h₁; refine' TM1.stmts_trans _ h₂
      unfold TM1.stmts₁
      exact Finset.mem_insert_of_mem TM1.stmts₁_self
    case write b q =>
      cases h₁; refine' TM1.stmts_trans _ h₂
      unfold TM1.stmts₁
      exact Finset.mem_insert_of_mem TM1.stmts₁_self
    case load b q IH =>
      refine' IH _ (TM1.stmts_trans _ h₂) h₁ hs
      unfold TM1.stmts₁
      exact Finset.mem_insert_of_mem TM1.stmts₁_self
    case branch p q₁ q₂ IH₁ IH₂ =>
      cases h : p a v <;> rw [trAux, h] at h₁
      · refine' IH₂ _ (TM1.stmts_trans _ h₂) h₁ hs.2
        unfold TM1.stmts₁
        exact Finset.mem_insert_of_mem (Finset.mem_union_right _ TM1.stmts₁_self)
      · refine' IH₁ _ (TM1.stmts_trans _ h₂) h₁ hs.1
        unfold TM1.stmts₁
        exact Finset.mem_insert_of_mem (Finset.mem_union_left _ TM1.stmts₁_self)
    case goto l =>
      cases h₁
      exact Finset.some_mem_insertNone.2 (Finset.mem_biUnion.2 ⟨_, hs _ _, TM1.stmts₁_self⟩)
    case halt => cases h₁
#align turing.TM1to0.tr_supports Turing.TM1to0.tr_supports

end

end TM1to0

/-!
## TM1(Γ) emulator in TM1(Bool)

The most parsimonious Turing machine model that is still Turing complete is `TM0` with `Γ = Bool`.
Because our construction in the previous section reducing `TM1` to `TM0` doesn't change the
alphabet, we can do the alphabet reduction on `TM1` instead of `TM0` directly.

The basic idea is to use a bijection between `Γ` and a subset of `Vector Bool n`, where `n` is a
fixed constant. Each tape element is represented as a block of `n` bools. Whenever the machine
wants to read a symbol from the tape, it traverses over the block, performing `n` `branch`
instructions to each any of the `2^n` results.

For the `write` instruction, we have to use a `goto` because we need to follow a different code
path depending on the local state, which is not available in the TM1 model, so instead we jump to
a label computed using the read value and the local state, which performs the writing and returns
to normal execution.

Emulation overhead is `O(1)`. If not for the above `write` behavior it would be 1-1 because we are
exploiting the 0-step behavior of regular commands to avoid taking steps, but there are
nevertheless a bounded number of `write` calls between `goto` statements because TM1 statements are
finitely long.
-/


namespace TM1to1

-- "TM1to1"
set_option linter.uppercaseLean3 false

open TM1

section

variable {Γ : Type*} [Inhabited Γ]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/Computability/TuringMachine/Variantffe51becd262f37a758c64da1be9d076644527ca85a1b529969bdde8de46b3e8.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/Computability/TuringMachine/Variantffe51becd262f37a758c64da1be9d076644527ca85a1b529969bdde8de46b3e8.lean#L1543).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8e5b31d39d6dea47790cb5fec7eafa75b7029607` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
