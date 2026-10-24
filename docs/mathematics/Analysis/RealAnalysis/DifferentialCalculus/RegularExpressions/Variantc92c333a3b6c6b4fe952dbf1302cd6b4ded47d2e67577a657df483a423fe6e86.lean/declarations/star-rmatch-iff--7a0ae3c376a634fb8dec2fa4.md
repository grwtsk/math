# star_rmatch_iff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "243b243d255bdc1b51b317c1b1b896aeb805509b",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 293,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/c9/c92c333a3b6c6b4fe952dbf1302cd6b4ded47d2e67577a657df483a423fe6e86.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:452c8fd4-5c7e-175b-6c2d-2d1f560ec17d",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:2200de10-5d5c-a877-e099-62cd0ec350e0",
  "kind": "theorem",
  "lexical_name": "star_rmatch_iff",
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
  "slug": "star-rmatch-iff--7a0ae3c376a634fb8dec2fa4",
  "source": {
    "blob": "243b243d255bdc1b51b317c1b1b896aeb805509b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 349,
    "line": 293,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/RegularExpressions/Variantc92c333a3b6c6b4fe952dbf1302cd6b4ded47d2e67577a657df483a423fe6e86.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:7a0ae3c376a634fb8dec2fa4b9373bd7d06d1df65f28d830d417bb9530f4e498",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/RegularExpressions/Variantc92c333a3b6c6b4fe952dbf1302cd6b4ded47d2e67577a657df483a423fe6e86.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:2200de10-5d5c-a877-e099-62cd0ec350e0`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 293–349.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem star_rmatch_iff (P : RegularExpression α) :
    ∀ x : List α, (star P).rmatch x ↔ ∃ S : List (List α), x
          = S.join ∧ ∀ t ∈ S, t ≠ [] ∧ P.rmatch t :=
  fun x => by
    have A : ∀ m n : ℕ, n < m + n + 1 := by
      intro m n
      convert add_lt_add_of_le_of_lt (add_le_add (zero_le m) (le_refl n)) zero_lt_one
      simp
    have IH := fun t (_h : List.length t < List.length x) => star_rmatch_iff P t
    clear star_rmatch_iff
    constructor
    · cases' x with a x
      · intro _h
        use []; dsimp; tauto
      · rw [rmatch, deriv, mul_rmatch_iff]
        rintro ⟨t, u, hs, ht, hu⟩
        have hwf : u.length < (List.cons a x).length := by
          rw [hs, List.length_cons, List.length_append]
          apply A
        rw [IH _ hwf] at hu
        rcases hu with ⟨S', hsum, helem⟩
        use (a :: t) :: S'
        constructor
        · simp [hs, hsum]
        · intro t' ht'
          cases ht'
          case head ht' =>
            simp only [ne_eq, not_false_iff, true_and, rmatch]
            exact ht
          case tail ht' => exact helem t' ht'
    · rintro ⟨S, hsum, helem⟩
      cases' x with a x
      · rfl
      · rw [rmatch, deriv, mul_rmatch_iff]
        cases' S with t' U
        · exact ⟨[], [], by tauto⟩
        · cases' t' with b t
          · simp only [forall_eq_or_imp, List.mem_cons] at helem
            simp only [eq_self_iff_true, not_true, Ne.def, false_and_iff] at helem
          simp only [List.join, List.cons_append, List.cons_eq_cons] at hsum
          refine' ⟨t, U.join, hsum.2, _, _⟩
          · specialize helem (b :: t) (by simp)
            rw [rmatch] at helem
            convert helem.2
            exact hsum.1
          · have hwf : U.join.length < (List.cons a x).length := by
              rw [hsum.1, hsum.2]
              simp only [List.length_append, List.length_join, List.length]
              apply A
            rw [IH _ hwf]
            refine' ⟨U, rfl, fun t h => helem t _⟩
            right
            assumption
  termination_by star_rmatch_iff P t => (P,t.length)
#align regular_expression.star_rmatch_iff RegularExpression.star_rmatch_iff

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/RegularExpressions/Variantc92c333a3b6c6b4fe952dbf1302cd6b4ded47d2e67577a657df483a423fe6e86.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/RegularExpressions/Variantc92c333a3b6c6b4fe952dbf1302cd6b4ded47d2e67577a657df483a423fe6e86.lean#L293).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `243b243d255bdc1b51b317c1b1b896aeb805509b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
