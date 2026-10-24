# eq_pell_lem

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "6fe391edb82f046c93f46e5ed92026abf639d998",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 233,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/45/451a67f30ebdc314897a4f491f7bae8b294dfed0d13859b727a48769953bd9a4.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:aeb92587-496c-bdec-7aba-d399b6c3ee58",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:4fc70e8a-7bd3-cd3a-c5a5-043b0cc9d14f",
  "kind": "theorem",
  "lexical_name": "eq_pell_lem",
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
  "slug": "eq-pell-lem--51b9ad6c72eb110f0feb8cdb",
  "source": {
    "blob": "6fe391edb82f046c93f46e5ed92026abf639d998",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 279,
    "line": 233,
    "path": "GRWTSK/NumberTheory/DiophantineEquations/PellMatiyasevic/Variant451a67f30ebdc314897a4f491f7bae8b294dfed0d13859b727a48769953bd9a4.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:51b9ad6c72eb110f0feb8cdbc9f48d7eb4daa353d66ab7753315f4d09bd4cab0",
  "verification": {
    "reference": "docs/verification/NumberTheory/DiophantineEquations/PellMatiyasevic/Variant451a67f30ebdc314897a4f491f7bae8b294dfed0d13859b727a48769953bd9a4.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:4fc70e8a-7bd3-cd3a-c5a5-043b0cc9d14f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 233–279.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem eq_pell_lem : ∀ (n) (b : ℤ√(d a1)), 1 ≤ b → IsPell b →
    b ≤ pellZd a1 n → ∃ n, b = pellZd a1 n
  | 0, _ => fun h1 _ hl => ⟨0, @Zsqrtd.le_antisymm _ (dnsq a1) _ _ hl h1⟩
  | n + 1, b => fun h1 hp h =>
    have a1p : (0 : ℤ√(d a1)) ≤ ⟨a, 1⟩ := trivial
    have am1p : (0 : ℤ√(d a1)) ≤ ⟨a, -1⟩ := show (_ : Nat) ≤ _ by simp; exact Nat.pred_le _
    have a1m : (⟨a, 1⟩ * ⟨a, -1⟩ : ℤ√(d a1)) = 1 := isPell_norm.1 (isPell_one a1)
    if ha : (⟨↑a, 1⟩ : ℤ√(d a1)) ≤ b then
      let ⟨m, e⟩ :=
        eq_pell_lem n (b * ⟨a, -1⟩) (by rw [← a1m]; exact mul_le_mul_of_nonneg_right ha am1p)
          (isPell_mul hp (isPell_star.1 (isPell_one a1)))
          (by
            have t := mul_le_mul_of_nonneg_right h am1p
            rwa [pellZd_succ, mul_assoc, a1m, mul_one] at t)
      ⟨m + 1, by
        rw [show b = b * ⟨a, -1⟩ * ⟨a, 1⟩ by rw [mul_assoc, Eq.trans (mul_comm _ _) a1m]; simp,
          pellZd_succ, e]⟩
    else
      suffices ¬1 < b from ⟨0, show b = 1 from (Or.resolve_left (lt_or_eq_of_le h1) this).symm⟩
      fun h1l => by
      obtain ⟨x, y⟩ := b
      exact by
        have bm : (_ * ⟨_, _⟩ : ℤ√d a1) = 1 := Pell.isPell_norm.1 hp
        have y0l : (0 : ℤ√d a1) < ⟨x - x, y - -y⟩ :=
          sub_lt_sub h1l fun hn : (1 : ℤ√d a1) ≤ ⟨x, -y⟩ => by
            have t := mul_le_mul_of_nonneg_left hn (le_trans zero_le_one h1)
            rw [bm, mul_one] at t
            exact h1l t
        have yl2 : (⟨_, _⟩ : ℤ√_) < ⟨_, _⟩ :=
          show (⟨x, y⟩ - ⟨x, -y⟩ : ℤ√d a1) < ⟨a, 1⟩ - ⟨a, -1⟩ from
            sub_lt_sub ha fun hn : (⟨x, -y⟩ : ℤ√d a1) ≤ ⟨a, -1⟩ => by
              have t := mul_le_mul_of_nonneg_right
                      (mul_le_mul_of_nonneg_left hn (le_trans zero_le_one h1)) a1p
              rw [bm, one_mul, mul_assoc, Eq.trans (mul_comm _ _) a1m, mul_one] at t
              exact ha t
        simp only [sub_self, sub_neg_eq_add] at y0l; simp only [Zsqrtd.neg_re, add_neg_cancel,
          Zsqrtd.neg_im, neg_neg] at yl2
        exact
          match y, y0l, (yl2 : (⟨_, _⟩ : ℤ√_) < ⟨_, _⟩) with
          | 0, y0l, _ => y0l (le_refl 0)
          | (y + 1 : ℕ), _, yl2 =>
            yl2
              (Zsqrtd.le_of_le_le (by simp [sub_eq_add_neg])
                (let t := Int.ofNat_le_ofNat_of_le (Nat.succ_pos y)
                add_le_add t t))
          | Int.negSucc _, y0l, _ => y0l trivial

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/DiophantineEquations/PellMatiyasevic/Variant451a67f30ebdc314897a4f491f7bae8b294dfed0d13859b727a48769953bd9a4.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/DiophantineEquations/PellMatiyasevic/Variant451a67f30ebdc314897a4f491f7bae8b294dfed0d13859b727a48769953bd9a4.lean#L233).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6fe391edb82f046c93f46e5ed92026abf639d998` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
