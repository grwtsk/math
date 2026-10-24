# Prime.sum_four_squares

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "05e44b1be541c77c571022c25f91066da9ea3b59",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 143,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/72/72d0b0a9e4c41618a2b2f022aa31a2c1937282cf39b9f42d1ca9b7d6ed2d94fc.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:9afd0759-1f01-fbce-9bbb-d0257bc6462e",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:108336a3-c9f7-8f36-9d71-16b0a9014dc4",
  "kind": "theorem",
  "lexical_name": "Prime.sum_four_squares",
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
  "slug": "prime-sum-four-squares--95d978cf9b8aac55a39703e9",
  "source": {
    "blob": "05e44b1be541c77c571022c25f91066da9ea3b59",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 225,
    "line": 143,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/SumFourSquares/Variant72d0b0a9e4c41618a2b2f022aa31a2c1937282cf39b9f42d1ca9b7d6ed2d94fc.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:95d978cf9b8aac55a39703e9a3b8c41dbd44c10ce143b983468fd754906f2e53",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/SumFourSquares/Variant72d0b0a9e4c41618a2b2f022aa31a2c1937282cf39b9f42d1ca9b7d6ed2d94fc.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:108336a3-c9f7-8f36-9d71-16b0a9014dc4`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 143–225.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
protected theorem Prime.sum_four_squares {p : ℕ} (hp : p.Prime) :
    ∃ a b c d : ℕ, a ^ 2 + b ^ 2 + c ^ 2 + d ^ 2 = p := by
  have := Fact.mk hp
  -- Find `a`, `b`, `c`, `d`, `0 < m < p` such that `a ^ 2 + b ^ 2 + c ^ 2 + d ^ 2 = m * p`
  have natAbs_iff {a b c d : ℤ} {k : ℕ} :
      a.natAbs ^ 2 + b.natAbs ^ 2 + c.natAbs ^ 2 + d.natAbs ^ 2 = k ↔
        a ^ 2 + b ^ 2 + c ^ 2 + d ^ 2 = k := by
    rw [← @Nat.cast_inj ℤ]; push_cast [sq_abs]; rfl
  have hm : ∃ m < p, 0 < m ∧ ∃ a b c d : ℕ, a ^ 2 + b ^ 2 + c ^ 2 + d ^ 2 = m * p
  · obtain ⟨a, b, k, hk₀, hkp, hk⟩ := exists_sq_add_sq_add_one_eq_mul p
    refine ⟨k, hkp, hk₀, a, b, 1, 0, ?_⟩
    simpa
  -- Take the minimal possible `m`
  rcases Nat.findX hm with ⟨m, ⟨hmp, hm₀, a, b, c, d, habcd⟩, hmin⟩
  -- If `m = 1`, then we are done
  rcases (Nat.one_le_iff_ne_zero.2 hm₀.ne').eq_or_gt with rfl | hm₁
  · use a, b, c, d; simpa using habcd
  -- Otherwise, let us find a contradiction
  exfalso
  have : NeZero m := ⟨hm₀.ne'⟩
  by_cases hm : 2 ∣ m
  · -- If `m` is an even number, then `(m / 2) * p` can be represented as a sum of four squares
    rcases hm with ⟨m, rfl⟩
    rw [zero_lt_mul_left two_pos] at hm₀
    have hm₂ : m < 2 * m := by simpa [two_mul]
    apply_fun (Nat.cast : ℕ → ℤ) at habcd
    push_cast [mul_assoc] at habcd
    obtain ⟨_, _, _, _, h⟩ := sum_four_squares_of_two_mul_sum_four_squares habcd
    exact hmin m hm₂ ⟨hm₂.trans hmp, hm₀, _, _, _, _, natAbs_iff.2 h⟩
  · -- For each `x` in `a`, `b`, `c`, `d`, take a number `f x ≡ x [ZMOD m]` with least possible
    -- absolute value
    obtain ⟨f, hf_lt, hf_mod⟩ : ∃ f : ℕ → ℤ, (∀ x, 2 * (f x).natAbs < m) ∧ ∀ x, (f x : ZMod m) = x
    · refine ⟨fun x ↦ (x : ZMod m).valMinAbs, fun x ↦ ?_, fun x ↦ (x : ZMod m).coe_valMinAbs⟩
      exact (mul_le_mul' le_rfl (x : ZMod m).natAbs_valMinAbs_le).trans_lt
        (Nat.mul_div_lt_iff_not_dvd.2 hm)
    -- Since `|f x| ^ 2 = (f x) ^ 2 ≡ x ^ 2 [ZMOD m]`, we have
    -- `m ∣ |f a| ^ 2 + |f b| ^ 2 + |f c| ^ 2 + |f d| ^ 2`
    obtain ⟨r, hr⟩ : m ∣ (f a).natAbs ^ 2 + (f b).natAbs ^ 2 + (f c).natAbs ^ 2 + (f d).natAbs ^ 2
    · simp only [← Int.coe_nat_dvd, ← ZMod.int_cast_zmod_eq_zero_iff_dvd]
      push_cast [hf_mod, sq_abs]
      norm_cast
      simp [habcd]
    -- The quotient `r` is not zero, because otherwise `f a = f b = f c = f d = 0`, hence
    -- `m` divides each `a`, `b`, `c`, `d`, thus `m ∣ p` which is impossible.
    rcases (zero_le r).eq_or_gt with rfl | hr₀
    · replace hr : f a = 0 ∧ f b = 0 ∧ f c = 0 ∧ f d = 0; · simpa [and_assoc] using hr
      obtain ⟨⟨a, rfl⟩, ⟨b, rfl⟩, ⟨c, rfl⟩, ⟨d, rfl⟩⟩ : m ∣ a ∧ m ∣ b ∧ m ∣ c ∧ m ∣ d
      · simp only [← ZMod.nat_cast_zmod_eq_zero_iff_dvd, ← hf_mod, hr, Int.cast_zero]
      have : m * m ∣ m * p := habcd ▸ ⟨a ^ 2 + b ^ 2 + c ^ 2 + d ^ 2, by ring⟩
      rw [mul_dvd_mul_iff_left hm₀.ne'] at this
      exact (hp.eq_one_or_self_of_dvd _ this).elim hm₁.ne' hmp.ne
    -- Since `2 * |f x| < m` for each `x ∈ {a, b, c, d}`, we have `r < m`
    have hrm : r < m
    · rw [mul_comm] at hr
      apply lt_of_sum_four_squares_eq_mul hr <;> apply hf_lt
    -- Now it suffices to represent `r * p` as a sum of four squares
    -- More precisely, we will represent `(m * r) * (m * p)` as a sum of squares of four numbers,
    -- each of them is divisible by `m`
    rsuffices ⟨w, x, y, z, hw, hx, hy, hz, h⟩ : ∃ w x y z : ℤ, ↑m ∣ w ∧ ↑m ∣ x ∧ ↑m ∣ y ∧ ↑m ∣ z ∧
      w ^ 2 + x ^ 2 + y ^ 2 + z ^ 2 = ↑(m * r) * ↑(m * p)
    · have : (w / m) ^ 2 + (x / m) ^ 2 + (y / m) ^ 2 + (z / m) ^ 2 = ↑(r * p)
      · refine mul_left_cancel₀ (pow_ne_zero 2 (Nat.cast_ne_zero.2 hm₀.ne')) ?_
        conv_rhs => rw [← Nat.cast_pow, ← Nat.cast_mul, sq m, mul_mul_mul_comm, Nat.cast_mul, ← h]
        simp only [mul_add, ← mul_pow, Int.mul_ediv_cancel', *]
      rw [← natAbs_iff] at this
      exact hmin r hrm ⟨hrm.trans hmp, hr₀, _, _, _, _, this⟩
    -- To do the last step, we apply the Euler's four square identity once more
    replace hr : (f b) ^ 2 + (f a) ^ 2 + (f d) ^ 2 + (-f c) ^ 2 = ↑(m * r)
    · rw [← natAbs_iff, natAbs_neg, ← hr]
      ac_rfl
    have := congr_arg₂ (· * Nat.cast ·) hr habcd
    simp only [← _root_.euler_four_squares, Nat.cast_add, Nat.cast_pow] at this
    refine ⟨_, _, _, _, ?_, ?_, ?_, ?_, this⟩
    · simp [← ZMod.int_cast_zmod_eq_zero_iff_dvd, hf_mod, mul_comm]
    · suffices : ((a : ZMod m) ^ 2 + (b : ZMod m) ^ 2 + (c : ZMod m) ^ 2 + (d : ZMod m) ^ 2) = 0
      · simpa [← ZMod.int_cast_zmod_eq_zero_iff_dvd, hf_mod, sq, add_comm, add_assoc,
          add_left_comm] using this
      norm_cast
      simp [habcd]
    · simp [← ZMod.int_cast_zmod_eq_zero_iff_dvd, hf_mod, mul_comm]
    · simp [← ZMod.int_cast_zmod_eq_zero_iff_dvd, hf_mod, mul_comm]

/-- **Four squares theorem** -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/SumFourSquares/Variant72d0b0a9e4c41618a2b2f022aa31a2c1937282cf39b9f42d1ca9b7d6ed2d94fc.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/SumFourSquares/Variant72d0b0a9e4c41618a2b2f022aa31a2c1937282cf39b9f42d1ca9b7d6ed2d94fc.lean#L143).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `05e44b1be541c77c571022c25f91066da9ea3b59` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
