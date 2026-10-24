# Int.eq_of_pow_sub_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:e26309b4-581d-0343-70e7-5afd11d3e783",
  "kind": "lemma",
  "lexical_name": "Int.eq_of_pow_sub_le",
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
  "slug": "int-eq-of-pow-sub-le--7f0713242fb14488b8b7316d",
  "source": {
    "blob": "78ba76d6250d0818b49b2d6192832dead96b9a76",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 141,
    "line": 108,
    "path": "GRWTSK/Topology/MetricTopology/DiscreteTopologyNonDiscreteUniformity/Variantf796ba740bfcdab769db24b0542bc9e9ae4c1d216a63af514dced7bc62214c43.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:7f0713242fb14488b8b7316dec7b6866247e7444b54202c4e95a5b1670057095",
  "verification": {
    "reference": "docs/verification/Topology/MetricTopology/DiscreteTopologyNonDiscreteUniformity/Variantf796ba740bfcdab769db24b0542bc9e9ae4c1d216a63af514dced7bc62214c43.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e26309b4-581d-0343-70e7-5afd11d3e783`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 108–141.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma Int.eq_of_pow_sub_le {d : ℕ} {m n : ℤ} (hd1 : 1 < d)
    (h : |(d : ℝ) ^ (-m) - d ^ (-n)| < d ^ (-n - 1)) : m = n := by
  have hd0 : 0 < d := one_pos.trans hd1
  replace h : |(1 : ℝ) - d ^ (n - m)| < (d : ℝ)⁻¹ := by
    rw [← mul_lt_mul_iff_of_pos_left (a := (d : ℝ) ^ (-n)) (zpow_pos _ _),
      ← abs_of_nonneg (a := (d : ℝ) ^ (-n)) (le_of_lt <| zpow_pos _ _), ← abs_mul, mul_sub, mul_one,
      ← zpow_add₀ <| Nat.cast_ne_zero.mpr (ne_of_gt hd0), sub_eq_add_neg (b := m),
      neg_add_cancel_left, ← abs_neg, neg_sub,
      abs_of_nonneg (a := (d : ℝ) ^ (-n)) (le_of_lt <| zpow_pos _ _), ← zpow_neg_one,
      ← zpow_add₀ <| Nat.cast_ne_zero.mpr (ne_of_gt hd0), ← sub_eq_add_neg]
    exact h
    all_goals exact Nat.cast_pos'.mpr hd0
  by_cases H : (m : ℤ) ≤ n
  · obtain ⟨a, ha⟩ := Int.eq_ofNat_of_zero_le (sub_nonneg.mpr H)
    rw [ha, ← mul_lt_mul_iff_of_pos_left (a := (d : ℝ)) <| Nat.cast_pos'.mpr hd0,
      mul_inv_cancel₀ <| Nat.cast_ne_zero.mpr (ne_of_gt hd0),
      ← abs_of_nonneg (a := (d : ℝ)) <| Nat.cast_nonneg' d, ← abs_mul,
      show |(d : ℝ) * (1 - |(d : ℝ)| ^ (a : ℤ))| = |(d : ℤ) * (1 - |(d : ℤ)| ^ a)| by norm_cast,
      ← Int.cast_one (R := ℝ), Int.cast_lt, Int.abs_lt_one_iff, Int.mul_eq_zero,
      sub_eq_zero, eq_comm (a := 1), pow_eq_one_iff_cases] at h
    simp only [Nat.cast_eq_zero, ne_of_gt hd0, Nat.abs_cast, Nat.cast_eq_one, ne_of_gt hd1,
      Int.reduceNeg, reduceCtorEq, false_and, or_self, or_false, false_or] at h
    rwa [h, Nat.cast_zero, sub_eq_zero, eq_comm] at ha
  · have h1 : (d : ℝ) ^ (n - m) ≤ 1 - (d : ℝ)⁻¹ := calc
      (d : ℝ) ^ (n - m) ≤ (d : ℝ)⁻¹ := by
        rw [← zpow_neg_one]
        apply zpow_right_mono₀ <| Nat.one_le_cast.mpr hd0
        linarith
      _ ≤ 1 - (d : ℝ)⁻¹ := by
        rw [inv_eq_one_div, one_sub_div <| Nat.cast_ne_zero.mpr (ne_of_gt hd0),
          div_le_div_iff_of_pos_right <| Nat.cast_pos'.mpr hd0, le_sub_iff_add_le]
        norm_cast
    linarith [sub_lt_of_abs_sub_lt_right (a := (1 : ℝ)) (b := d ^ (n - m)) (c := d⁻¹) h]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/MetricTopology/DiscreteTopologyNonDiscreteUniformity/Variantf796ba740bfcdab769db24b0542bc9e9ae4c1d216a63af514dced7bc62214c43.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/MetricTopology/DiscreteTopologyNonDiscreteUniformity/Variantf796ba740bfcdab769db24b0542bc9e9ae4c1d216a63af514dced7bc62214c43.lean#L108).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `78ba76d6250d0818b49b2d6192832dead96b9a76` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
