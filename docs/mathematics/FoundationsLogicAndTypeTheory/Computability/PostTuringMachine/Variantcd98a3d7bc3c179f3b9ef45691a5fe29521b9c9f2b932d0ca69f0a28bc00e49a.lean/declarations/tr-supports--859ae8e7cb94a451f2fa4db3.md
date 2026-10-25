# tr_supports

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "6ee1a79ce54aa340ecbff62a956332bd6748fbf8",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 1116,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/cd/cd98a3d7bc3c179f3b9ef45691a5fe29521b9c9f2b932d0ca69f0a28bc00e49a.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:51ddd5e6-5284-3362-bd5f-c79685e2be93",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:bf5ae15f-3225-a5cd-77dd-c096713dfebb",
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
  "slug": "tr-supports--859ae8e7cb94a451f2fa4db3",
  "source": {
    "blob": "6ee1a79ce54aa340ecbff62a956332bd6748fbf8",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1184,
    "line": 1116,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/Computability/PostTuringMachine/Variantcd98a3d7bc3c179f3b9ef45691a5fe29521b9c9f2b932d0ca69f0a28bc00e49a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:859ae8e7cb94a451f2fa4db3a978e041edf2fc60c97eeface1f608b4e0cc32c9",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/Computability/PostTuringMachine/Variantcd98a3d7bc3c179f3b9ef45691a5fe29521b9c9f2b932d0ca69f0a28bc00e49a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:bf5ae15f-3225-a5cd-77dd-c096713dfebb`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1116–1184.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem tr_supports [Inhabited Λ] {S : Finset Λ} (ss : Supports M S) :
    Supports (tr enc dec M) (trSupp M S) :=
  ⟨Finset.mem_biUnion.2 ⟨_, ss.1, Finset.mem_insert_self _ _⟩, fun q h ↦ by
    suffices ∀ q, SupportsStmt S q → (∀ q' ∈ writes q, q' ∈ trSupp M S) →
        SupportsStmt (trSupp M S) (trNormal dec q) ∧
        ∀ q' ∈ writes q, SupportsStmt (trSupp M S) (tr enc dec M q') by
      rcases Finset.mem_biUnion.1 h with ⟨l, hl, h⟩
      have :=
        this _ (ss.2 _ hl) fun q' hq ↦ Finset.mem_biUnion.2 ⟨_, hl, Finset.mem_insert_of_mem hq⟩
      rcases Finset.mem_insert.1 h with (rfl | h)
      exacts [this.1, this.2 _ h]
    intro q hs hw
    induction q with
    | move d q IH =>
      unfold writes at hw ⊢
      replace IH := IH hs hw; refine ⟨?_, IH.2⟩
      cases d <;> simp only [trNormal, iterate, supportsStmt_move, IH]
    | write f q IH =>
      unfold writes at hw ⊢
      simp only [Finset.mem_image, Finset.mem_union, Finset.mem_univ, exists_prop, true_and]
        at hw ⊢
      replace IH := IH hs fun q hq ↦ hw q (Or.inr hq)
      refine ⟨supportsStmt_read _ fun a _ s ↦ hw _ (Or.inl ⟨_, rfl⟩), fun q' hq ↦ ?_⟩
      rcases hq with (⟨a, q₂, rfl⟩ | hq)
      · simp only [tr, supportsStmt_write, supportsStmt_move, IH.1]
      · exact IH.2 _ hq
    | load a q IH =>
      unfold writes at hw ⊢
      replace IH := IH hs hw
      exact ⟨supportsStmt_read _ fun _ ↦ IH.1, IH.2⟩
    | branch p q₁ q₂ IH₁ IH₂ =>
      unfold writes at hw ⊢
      simp only [Finset.mem_union] at hw ⊢
      replace IH₁ := IH₁ hs.1 fun q hq ↦ hw q (Or.inl hq)
      replace IH₂ := IH₂ hs.2 fun q hq ↦ hw q (Or.inr hq)
      exact ⟨supportsStmt_read _ fun _ ↦ ⟨IH₁.1, IH₂.1⟩, fun q ↦ Or.rec (IH₁.2 _) (IH₂.2 _)⟩
    | goto l =>
      simp only [writes, Finset.notMem_empty]; refine ⟨?_, fun _ ↦ False.elim⟩
      refine supportsStmt_read _ fun a _ s ↦ ?_
      exact Finset.mem_biUnion.2 ⟨_, hs _ _, Finset.mem_insert_self _ _⟩
    | halt =>
      simp only [writes, Finset.notMem_empty]; refine ⟨?_, fun _ ↦ False.elim⟩
      simp only [SupportsStmt, supportsStmt_move, trNormal]⟩

end TM1to1

/-!
## TM0 emulator in TM1

To establish that TM0 and TM1 are equivalent computational models, we must also have a TM0 emulator
in TM1. The main complication here is that TM0 allows an action to depend on the value at the head
and local state, while TM1 doesn't (in order to have more programming language-like semantics).
So we use a computed `goto` to go to a state that performs the desired action and then returns to
normal execution.

One issue with this is that the `halt` instruction is supposed to halt immediately, not take a step
to a halting state. To resolve this we do a check for `halt` first, then `goto` (with an
unreachable branch).
-/


namespace TM0to1

variable (Γ : Type*) [Inhabited Γ]
variable (Λ : Type*) [Inhabited Λ]

/-- The machine states for a TM1 emulating a TM0 machine. States of the TM0 machine are embedded
as `normal q` states, but the actual operation is split into two parts, a jump to `act s q`
followed by the action and a jump to the next `normal` state. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/Computability/PostTuringMachine/Variantcd98a3d7bc3c179f3b9ef45691a5fe29521b9c9f2b932d0ca69f0a28bc00e49a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/Computability/PostTuringMachine/Variantcd98a3d7bc3c179f3b9ef45691a5fe29521b9c9f2b932d0ca69f0a28bc00e49a.lean#L1116).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6ee1a79ce54aa340ecbff62a956332bd6748fbf8` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
