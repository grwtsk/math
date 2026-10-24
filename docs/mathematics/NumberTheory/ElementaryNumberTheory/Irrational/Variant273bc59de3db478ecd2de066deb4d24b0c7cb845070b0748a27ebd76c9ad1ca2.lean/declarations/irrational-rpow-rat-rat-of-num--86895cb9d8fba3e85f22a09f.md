# irrational_rpow_rat_rat_of_num

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:dd104eec-42d3-ffb5-25e5-abf9041dcdf1",
  "kind": "theorem",
  "lexical_name": "irrational_rpow_rat_rat_of_num",
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
  "slug": "irrational-rpow-rat-rat-of-num--86895cb9d8fba3e85f22a09f",
  "source": {
    "blob": "103159d7045d05f2907435acfc8c22bbd9b4c425",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 199,
    "line": 170,
    "path": "GRWTSK/NumberTheory/ElementaryNumberTheory/Irrational/Variant273bc59de3db478ecd2de066deb4d24b0c7cb845070b0748a27ebd76c9ad1ca2.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:86895cb9d8fba3e85f22a09f6476b3afcf264f556831eac117deb6c196767707",
  "verification": {
    "reference": "docs/verification/NumberTheory/ElementaryNumberTheory/Irrational/Variant273bc59de3db478ecd2de066deb4d24b0c7cb845070b0748a27ebd76c9ad1ca2.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:dd104eec-42d3-ffb5-25e5-abf9041dcdf1`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 170–199.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private theorem irrational_rpow_rat_rat_of_num {x y : ℝ} {x_num x_den y_num y_den k_num : ℕ}
    (hx_isRat : IsRat x (Int.ofNat x_num) x_den)
    (hy_isRat : IsRat y (Int.ofNat y_num) y_den)
    (hx_coprime : Nat.Coprime x_num x_den)
    (hy_coprime : Nat.Coprime y_num y_den)
    (hn1 : k_num ^ y_den < x_num)
    (hn2 : x_num < (k_num + 1) ^ y_den) :
    Irrational (x ^ y) := by
  have hy_den_pos : 0 < y_den := by
    by_contra! h
    simp only [nonpos_iff_eq_zero] at h
    simp only [h, pow_zero, Nat.lt_one_iff] at hn1 hn2
    omega
  rcases hx_isRat with ⟨hx_inv, hx_eq⟩
  rcases hy_isRat with ⟨hy_inv, hy_eq⟩
  rw [hy_eq, hx_eq]
  have h1 : ((Int.ofNat y_num) * ⅟(y_den : ℝ) : ℝ) = ((y_num / y_den : ℚ) : ℝ) := by
    simp
    rfl
  have h2 : ((Int.ofNat x_num) * ⅟(x_den : ℝ) : ℝ) = ((x_num / x_den : ℚ) : ℝ) := by
    simp
    rfl
  rw [h1, h2]
  refine irrational_rpow_rat_of_not_power ?_ hy_den_pos ?_
  · simp only [div_pow, ← Nat.cast_npow]
    apply not_power_rat_of_num
    · apply Nat.Coprime.pow _ _ hx_coprime
    · apply not_power_nat_pow_of_bounds hy_den_pos hy_coprime hn1 hn2
  · positivity

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/ElementaryNumberTheory/Irrational/Variant273bc59de3db478ecd2de066deb4d24b0c7cb845070b0748a27ebd76c9ad1ca2.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/ElementaryNumberTheory/Irrational/Variant273bc59de3db478ecd2de066deb4d24b0c7cb845070b0748a27ebd76c9ad1ca2.lean#L170).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `103159d7045d05f2907435acfc8c22bbd9b4c425` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
