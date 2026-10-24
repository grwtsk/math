# band_minor_nonnegative

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "d7b71f7d822fccafd5eca181717f14ce8a4d4317",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 260,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/9e/9eb73164a48656cf1895a80922aee545cc795a20a0b1286face701f015edb2a0.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:62b8824f-9b2f-d7a0-5a12-b74329e60ed6",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:ab050a56-9200-6e16-9949-7b9f7463bb4e",
  "kind": "theorem",
  "lexical_name": "band_minor_nonnegative",
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
  "slug": "band-minor-nonnegative--b5f91300b491b255ada73412",
  "source": {
    "blob": "d7b71f7d822fccafd5eca181717f14ce8a4d4317",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 377,
    "line": 260,
    "path": "GRWTSK/Algebra/LinearAlgebra/Quadratic/Variant9eb73164a48656cf1895a80922aee545cc795a20a0b1286face701f015edb2a0.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b5f91300b491b255ada734128c1f216d14e576306367782914e96649c109a579",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Quadratic/Variant9eb73164a48656cf1895a80922aee545cc795a20a0b1286face701f015edb2a0.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ab050a56-9200-6e16-9949-7b9f7463bb4e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 260–377.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem band_minor_nonnegative (b c : ℝ) (R : ℕ)
    (hc : 0 ≤ c) (hC : ∀ j, j ≤ R → 0 ≤ continuant b c j) :
    ∀ k, k ≤ R → ∀ r s : Fin k ↪o ℕ,
      0 ≤ Matrix.det (fun i j => band b c (r i) (s j)) := by
  intro k
  induction k using Nat.strong_induction_on with
  | h k ih =>
    intro hk r s
    cases k with
    | zero =>
      change 0 ≤ (Matrix.of (fun i j : Fin 0 => band b c (r i) (s j))).det
      simp
    | succ n =>
      let M : Matrix (Fin (n + 1)) (Fin (n + 1)) ℝ := fun i j => band b c (r i) (s j)
      change 0 ≤ Matrix.det M
      by_cases hlow : s 0 < r 0
      · have hz : Matrix.det M = 0 := det_zero_first_column M (by
          intro i
          apply band_of_lt
          have hi := r.monotone (Fin.zero_le i)
          omega)
        rw [hz]
      · by_cases hhigh : r 0 + 2 < s 0
        · have hz : Matrix.det M = 0 := det_zero_first_row M (by
            intro j
            apply band_of_gt
            have hj := s.monotone (Fin.zero_le j)
            omega)
          rw [hz]
        · have hrest : 0 ≤ Matrix.det (fun i j : Fin n =>
              band b c ((drop r 1) i) ((drop s 1) j)) := by
            exact ih n (by omega) (by omega) (drop r 1) (drop s 1)
          by_cases h0 : s 0 = r 0
          · rw [det_split M 1 (by omega) (Or.inl (by
              intro i j
              have hj : j = 0 := Subsingleton.elim _ _
              subst j
              apply band_of_lt
              change s 0 < r ⟨1 + i.val, _⟩
              have hi := r.strictMono
                (show (0 : Fin (n + 1)) < ⟨1 + i.val, by omega⟩ by
                  change 0 < 1 + i.val; omega)
              omega))]
            change 0 ≤ (Matrix.of (fun i j : Fin 1 =>
              M ⟨i.val, _⟩ ⟨j.val, _⟩)).det *
                (Matrix.of (fun i j : Fin n => band b c ((drop r 1) i) ((drop s 1) j))).det
            rw [Matrix.det_unique]
            have hb : band b c (r 0) (s 0) = 1 := by simp [band, h0]
            change 0 ≤ band b c (r 0) (s 0) * _
            rw [hb, one_mul]
            exact hrest
          · by_cases h2 : s 0 = r 0 + 2
            · rw [det_split M 1 (by omega) (Or.inr (by
                intro i j
                have hi : i = 0 := Subsingleton.elim _ _
                subst i
                apply band_of_gt
                change r 0 + 2 < s ⟨1 + j.val, _⟩
                have hj := s.strictMono
                  (show (0 : Fin (n + 1)) < ⟨1 + j.val, by omega⟩ by
                    change 0 < 1 + j.val; omega)
                omega))]
              change 0 ≤ (Matrix.of (fun i j : Fin 1 =>
                M ⟨i.val, _⟩ ⟨j.val, _⟩)).det *
                  (Matrix.of (fun i j : Fin n => band b c ((drop r 1) i) ((drop s 1) j))).det
              rw [Matrix.det_unique]
              have hb : band b c (r 0) (s 0) = c := by simp [band, h2]
              change 0 ≤ band b c (r 0) (s 0) * _
              rw [hb]
              exact mul_nonneg hc hrest
            · have h1 : s 0 = r 0 + 1 := by omega
              rcases initial_run r s with hall | ⟨l, hl, hl0, hrun, hgap⟩
              · have he : M = tridiagonal b c (n + 1) := by
                  ext i j
                  dsimp [M]
                  rw [(hall i).1, (hall j).2, h1]
                  exact band_consecutive b c (r 0) (n + 1) i j
                rw [he, det_tridiagonal]
                exact hC (n + 1) hk
              · have hle : l ≤ n + 1 := by omega
                have hprefix : Matrix.det (fun i j : Fin l =>
                    M ⟨i.val, by omega⟩ ⟨j.val, by omega⟩) = continuant b c l := by
                  have he : (fun i j : Fin l => M ⟨i.val, by omega⟩ ⟨j.val, by omega⟩) =
                      tridiagonal b c l := by
                    ext i j
                    dsimp [M]
                    rw [(hrun i).1, (hrun j).2, h1]
                    exact band_consecutive b c (r 0) l i j
                  rw [he, det_tridiagonal]
                have htail : 0 ≤ Matrix.det (fun i j : Fin (n + 1 - l) =>
                    M ⟨l + i.val, by omega⟩ ⟨l + j.val, by omega⟩) := by
                  exact ih (n + 1 - l) (by omega) (by omega) (drop r l) (drop s l)
                have hz :
                    (∀ i : Fin (n + 1 - l), ∀ j : Fin l,
                      M ⟨l + i.val, by omega⟩ ⟨j.val, by omega⟩ = 0) ∨
                    (∀ i : Fin l, ∀ j : Fin (n + 1 - l),
                      M ⟨i.val, by omega⟩ ⟨l + j.val, by omega⟩ = 0) := by
                  rcases hgap with hr | hs
                  · left
                    intro i j
                    apply band_of_lt
                    have hi := r.monotone
                      (show (⟨l, hl⟩ : Fin (n + 1)) ≤ ⟨l + i.val, by omega⟩ by
                        change l ≤ l + i.val; omega)
                    have hj := (hrun j).2
                    omega
                  · right
                    intro i j
                    apply band_of_gt
                    have hj := s.monotone
                      (show (⟨l, hl⟩ : Fin (n + 1)) ≤ ⟨l + j.val, by omega⟩ by
                        change l ≤ l + j.val; omega)
                    have hi := (hrun i).1
                    omega
                rw [det_split M l hle hz, hprefix]
                exact mul_nonneg (hC l (by omega)) htail

/-- The reduction theorem supplies bounded PF for the actual coefficient sequence. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Quadratic/Variant9eb73164a48656cf1895a80922aee545cc795a20a0b1286face701f015edb2a0.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Quadratic/Variant9eb73164a48656cf1895a80922aee545cc795a20a0b1286face701f015edb2a0.lean#L260).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d7b71f7d822fccafd5eca181717f14ce8a4d4317` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
