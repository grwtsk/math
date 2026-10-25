# imo2008_q4

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "f268bfb9bb06e085497fe676cd1bcd5314c959aa",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 36,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/8a/8a7c40fb5bf19f3acc82f8379c5d020397ca460f96329635c30802ac856f92ee.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:1b1a64ec-8f1f-798b-3adf-ddfb09325991",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:6a47c5f4-bf89-92b5-8e4a-3c655a8c2a47",
  "kind": "theorem",
  "lexical_name": "imo2008_q4",
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
  "slug": "imo2008-q4--84e3422ec86aa4ad4babcdaa",
  "source": {
    "blob": "f268bfb9bb06e085497fe676cd1bcd5314c959aa",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 94,
    "line": 36,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/Imo2008Q4/Variant8a7c40fb5bf19f3acc82f8379c5d020397ca460f96329635c30802ac856f92ee.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:84e3422ec86aa4ad4babcdaa106390357893f8d9ef4ef8d43b3f2e39bc8e3c5f",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/Imo2008Q4/Variant8a7c40fb5bf19f3acc82f8379c5d020397ca460f96329635c30802ac856f92ee.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:6a47c5f4-bf89-92b5-8e4a-3c655a8c2a47`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 36–94.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem imo2008_q4 (f : ℝ → ℝ) (H₁ : ∀ x > 0, f x > 0) :
    (∀ w x y z : ℝ, 0 < w → 0 < x → 0 < y → 0 < z → w * x = y * z →
      (f w ^ 2 + f x ^ 2) / (f (y ^ 2) + f (z ^ 2)) = (w ^ 2 + x ^ 2) / (y ^ 2 + z ^ 2)) ↔
    (∀ x > 0, f x = x) ∨ ∀ x > 0, f x = 1 / x := by
  constructor; swap
  -- proof that f(x) = x and f(x) = 1/x satisfy the condition
  · rintro (h | h)
    · intro w x y z hw hx hy hz _
      rw [h w hw, h x hx, h (y ^ 2) (pow_pos hy 2), h (z ^ 2) (pow_pos hz 2)]
    · intro w x y z hw hx hy hz hprod
      rw [h w hw, h x hx, h (y ^ 2) (pow_pos hy 2), h (z ^ 2) (pow_pos hz 2)]
      have hp2 : w ^ 2 * x ^ 2 = y ^ 2 * z ^ 2 := by linear_combination (w * x + y * z) * hprod
      field_simp [hp2]
      ring
  -- proof that the only solutions are f(x) = x or f(x) = 1/x
  intro H₂
  have h₀ : f 1 ≠ 0 := by specialize H₁ 1 zero_lt_one; exact ne_of_gt H₁
  have h₁ : f 1 = 1 := by
    specialize H₂ 1 1 1 1 zero_lt_one zero_lt_one zero_lt_one zero_lt_one rfl
    norm_num [← two_mul] at H₂
    rw [mul_div_mul_left (f 1 ^ 2) (f 1) two_ne_zero] at H₂
    rwa [← (div_eq_iff h₀).mpr (sq (f 1))]
  have h₂ : ∀ x > 0, (f x - x) * (f x - 1 / x) = 0 := by
    intro x hx
    have h1xss : 1 * x = sqrt x * sqrt x := by rw [one_mul, mul_self_sqrt (le_of_lt hx)]
    specialize H₂ 1 x (sqrt x) (sqrt x) zero_lt_one hx (sqrt_pos.mpr hx) (sqrt_pos.mpr hx) h1xss
    rw [h₁, one_pow 2, sq_sqrt (le_of_lt hx), ← two_mul (f x), ← two_mul x] at H₂
    have hfx_ne_0 : f x ≠ 0 := by specialize H₁ x hx; exact ne_of_gt H₁
    field_simp at H₂ ⊢
    linear_combination 1 / 2 * H₂
  have h₃ : ∀ x > 0, f x = x ∨ f x = 1 / x := by simpa [sub_eq_zero] using h₂
  by_contra! h
  rcases h with ⟨⟨b, hb, hfb₁⟩, ⟨a, ha, hfa₁⟩⟩
  obtain hfa₂ := Or.resolve_right (h₃ a ha) hfa₁
  -- f(a) ≠ 1/a, f(a) = a
  obtain hfb₂ := Or.resolve_left (h₃ b hb) hfb₁
  -- f(b) ≠ b, f(b) = 1/b
  have hab : a * b > 0 := mul_pos ha hb
  have habss : a * b = sqrt (a * b) * sqrt (a * b) := (mul_self_sqrt (le_of_lt hab)).symm
  specialize H₂ a b (sqrt (a * b)) (sqrt (a * b)) ha hb (sqrt_pos.mpr hab) (sqrt_pos.mpr hab) habss
  rw [sq_sqrt (le_of_lt hab), ← two_mul (f (a * b)), ← two_mul (a * b)] at H₂
  rw [hfa₂, hfb₂] at H₂
  have h2ab_ne_0 : 2 * (a * b) ≠ 0 := by positivity
  specialize h₃ (a * b) hab
  rcases h₃ with hab₁ | hab₂
  -- f(ab) = ab → b^4 = 1 → b = 1 → f(b) = b → false
  · rw [hab₁, div_left_inj' h2ab_ne_0] at H₂
    field_simp at H₂
    have hb₁ : b ^ 4 = 1 := by linear_combination -H₂
    obtain hb₂ := abs_eq_one_of_pow_eq_one b 4 (show 4 ≠ 0 by norm_num) hb₁
    rw [abs_of_pos hb] at hb₂; rw [hb₂] at hfb₁; exact hfb₁ h₁
  -- f(ab) = 1/ab → a^4 = 1 → a = 1 → f(a) = 1/a → false
  · have hb_ne_0 : b ≠ 0 := ne_of_gt hb
    field_simp [hab₂] at H₂
    have H₃ : 2 * b ^ 4 * (a ^ 4 - 1) = 0 := by linear_combination H₂
    have h2b4_ne_0 : 2 * b ^ 4 ≠ 0 := mul_ne_zero two_ne_zero (pow_ne_zero 4 hb_ne_0)
    have ha₁ : a ^ 4 = 1 := by simpa [sub_eq_zero, h2b4_ne_0, hb_ne_0] using H₃
    obtain ha₂ := abs_eq_one_of_pow_eq_one a 4 (show 4 ≠ 0 by norm_num) ha₁
    rw [abs_of_pos ha] at ha₂; rw [ha₂] at hfa₁; norm_num at hfa₁; contradiction
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/FoundationsLogicAndTypeTheory/Imo2008Q4/Variant8a7c40fb5bf19f3acc82f8379c5d020397ca460f96329635c30802ac856f92ee.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/Imo2008Q4/Variant8a7c40fb5bf19f3acc82f8379c5d020397ca460f96329635c30802ac856f92ee.lean#L36).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f268bfb9bb06e085497fe676cd1bcd5314c959aa` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
