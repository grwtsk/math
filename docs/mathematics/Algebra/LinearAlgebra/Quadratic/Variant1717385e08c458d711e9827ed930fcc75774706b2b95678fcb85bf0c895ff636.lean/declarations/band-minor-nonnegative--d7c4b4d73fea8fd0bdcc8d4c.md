# band_minor_nonnegative

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:cf24ba85-e1fc-7b5b-bced-375b5f584e13",
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
  "slug": "band-minor-nonnegative--d7c4b4d73fea8fd0bdcc8d4c",
  "source": {
    "blob": "40fcd297ecdfe347f54d9a9a0a47d2820827643e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 385,
    "line": 268,
    "path": "GRWTSK/Algebra/LinearAlgebra/Quadratic/Variant1717385e08c458d711e9827ed930fcc75774706b2b95678fcb85bf0c895ff636.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d7c4b4d73fea8fd0bdcc8d4cf2859b80d976ad38cd396d05b928b6998853e544",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Quadratic/Variant1717385e08c458d711e9827ed930fcc75774706b2b95678fcb85bf0c895ff636.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:cf24ba85-e1fc-7b5b-bced-375b5f584e13`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 268–385.

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

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Quadratic/Variant1717385e08c458d711e9827ed930fcc75774706b2b95678fcb85bf0c895ff636.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Quadratic/Variant1717385e08c458d711e9827ed930fcc75774706b2b95678fcb85bf0c895ff636.lean#L268).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `40fcd297ecdfe347f54d9a9a0a47d2820827643e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
