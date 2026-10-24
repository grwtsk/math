# SatisfiesM_anyM_iff_exists

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:9ea04196-c47d-08d0-74ed-e17edb348add",
  "kind": "theorem",
  "lexical_name": "SatisfiesM_anyM_iff_exists",
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
  "slug": "satisfiesm-anym-iff-exists--0369a20c0ee523072b749a8e",
  "source": {
    "blob": "31efb0f9e363390aa58e98fb9454bea67bfbb260",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 123,
    "line": 97,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Array/Variant3b5951d4edda1b40585b2b5ee53b7b5cc68be64272eaa130556cda0667f526af.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:0369a20c0ee523072b749a8e7b7b77847366fec086ad41e6c8c033c8a9102572",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Array/Variant3b5951d4edda1b40585b2b5ee53b7b5cc68be64272eaa130556cda0667f526af.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:9ea04196-c47d-08d0-74ed-e17edb348add`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 97–123.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem SatisfiesM_anyM_iff_exists [Monad m] [LawfulMonad m]
    {p : α → m Bool} {as : Array α} {q : Fin as.size → Prop}
    (hp : ∀ i : Fin as.size, start ≤ i.1 → i.1 < stop → SatisfiesM (· = true ↔ q i) (p as[i])) :
    SatisfiesM
      (fun res => res = true ↔ ∃ i : Fin as.size, start ≤ i.1 ∧ i.1 < stop ∧ q i)
      (anyM p as start stop) := by
  cases Nat.le_total start (min stop as.size) with
  | inl hstart =>
    refine (SatisfiesM_anyM hstart
      (fal := fun j => start ≤ j ∧ ¬ ∃ i : Fin as.size, start ≤ i.1 ∧ i.1 < j ∧ q i)
      (tru := ∃ i : Fin as.size, start ≤ i.1 ∧ i.1 < stop ∧ q i) ?_ ?_).imp ?_
    · exact ⟨Nat.le_refl _, fun ⟨i, h₁, h₂, _⟩ => (Nat.not_le_of_gt h₂ h₁).elim⟩
    · refine fun i h₂ ⟨h₁, h₃⟩ => (hp _ h₁ h₂).imp fun hq => ?_
      unfold cond; split <;> simp at hq
      · exact ⟨_, h₁, h₂, hq⟩
      · refine ⟨Nat.le_succ_of_le h₁, h₃.imp fun ⟨j, h₃, h₄, h₅⟩ => ⟨j, h₃, ?_, h₅⟩⟩
        refine Nat.lt_of_le_of_ne (Nat.le_of_lt_succ h₄) fun e => hq (Fin.eq_of_val_eq e ▸ h₅)
    · intro
      | true, h => simp only [true_iff]; exact h
      | false, h =>
        simp only [false_iff, reduceCtorEq]
        exact h.2.imp fun ⟨j, h₁, h₂, hq⟩ => ⟨j, h₁, Nat.lt_min.2 ⟨h₂, j.2⟩, hq⟩
  | inr hstart =>
    rw [anyM_stop_le_start (h := hstart)]
    refine .pure ?_; simp; intro j h₁ h₂
    cases Nat.not_lt.2 (Nat.le_trans hstart h₁) (Nat.lt_min.2 ⟨h₂, j.2⟩)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Array/Variant3b5951d4edda1b40585b2b5ee53b7b5cc68be64272eaa130556cda0667f526af.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Array/Variant3b5951d4edda1b40585b2b5ee53b7b5cc68be64272eaa130556cda0667f526af.lean#L97).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `31efb0f9e363390aa58e98fb9454bea67bfbb260` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
