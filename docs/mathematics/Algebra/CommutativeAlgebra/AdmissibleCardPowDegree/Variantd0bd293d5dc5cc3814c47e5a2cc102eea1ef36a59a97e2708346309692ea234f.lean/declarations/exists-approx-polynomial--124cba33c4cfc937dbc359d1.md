# exists_approx_polynomial

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:6447c351-63f2-5dda-e19d-8db970814e68",
  "kind": "theorem",
  "lexical_name": "exists_approx_polynomial",
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
  "slug": "exists-approx-polynomial--124cba33c4cfc937dbc359d1",
  "source": {
    "blob": "ca4914d6408e75179c907e311346d9290ccb12ec",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 160,
    "line": 114,
    "path": "GRWTSK/Algebra/CommutativeAlgebra/AdmissibleCardPowDegree/Variantd0bd293d5dc5cc3814c47e5a2cc102eea1ef36a59a97e2708346309692ea234f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:124cba33c4cfc937dbc359d12f91b2c0f3e7ff1d1cefa54a641c84f197f3dcdb",
  "verification": {
    "reference": "docs/verification/Algebra/CommutativeAlgebra/AdmissibleCardPowDegree/Variantd0bd293d5dc5cc3814c47e5a2cc102eea1ef36a59a97e2708346309692ea234f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:6447c351-63f2-5dda-e19d-8db970814e68`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 114–160.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem exists_approx_polynomial {b : Fq[X]} (hb : b ≠ 0) {ε : ℝ} (hε : 0 < ε)
    (A : Fin (Fintype.card Fq ^ ⌈-log ε / log (Fintype.card Fq)⌉₊).succ → Fq[X]) :
    ∃ i₀ i₁, i₀ ≠ i₁ ∧ (cardPowDegree (A i₁ % b - A i₀ % b) : ℝ) < cardPowDegree b • ε := by
  have hbε : 0 < cardPowDegree b • ε := by
    rw [Algebra.smul_def, eq_intCast]
    exact mul_pos (Int.cast_pos.mpr (AbsoluteValue.pos _ hb)) hε
  have one_lt_q : 1 < Fintype.card Fq := Fintype.one_lt_card
  have one_lt_q' : (1 : ℝ) < Fintype.card Fq := by assumption_mod_cast
  have q_pos : 0 < Fintype.card Fq := by linarith
  have q_pos' : (0 : ℝ) < Fintype.card Fq := by assumption_mod_cast
  -- If `b` is already small enough, then the remainders are equal and we are done.
  by_cases le_b : b.natDegree ≤ ⌈-log ε / log (Fintype.card Fq)⌉₊
  · obtain ⟨i₀, i₁, i_ne, mod_eq⟩ :=
      exists_eq_polynomial le_rfl b le_b (fun i => A i % b) fun i => EuclideanDomain.mod_lt (A i) hb
    refine' ⟨i₀, i₁, i_ne, _⟩
    rwa [mod_eq, sub_self, map_zero, Int.cast_zero]
  -- Otherwise, it suffices to choose two elements whose difference is of small enough degree.
  rw [not_le] at le_b
  obtain ⟨i₀, i₁, i_ne, deg_lt⟩ := exists_approx_polynomial_aux le_rfl b (fun i => A i % b) fun i =>
    EuclideanDomain.mod_lt (A i) hb
  use i₀, i₁, i_ne
  -- Again, if the remainders are equal we are done.
  by_cases h : A i₁ % b = A i₀ % b
  · rwa [h, sub_self, map_zero, Int.cast_zero]
  have h' : A i₁ % b - A i₀ % b ≠ 0 := mt sub_eq_zero.mp h
  -- If the remainders are not equal, we'll show their difference is of small degree.
  -- In particular, we'll show the degree is less than the following:
  suffices (natDegree (A i₁ % b - A i₀ % b) : ℝ) < b.natDegree + log ε / log (Fintype.card Fq) by
    rwa [← Real.log_lt_log_iff (Int.cast_pos.mpr (cardPowDegree.pos h')) hbε,
      cardPowDegree_nonzero _ h', cardPowDegree_nonzero _ hb, Algebra.smul_def, eq_intCast,
      Int.cast_pow, Int.cast_ofNat, Int.cast_pow, Int.cast_ofNat,
      log_mul (pow_ne_zero _ q_pos'.ne') hε.ne', ← rpow_nat_cast, ← rpow_nat_cast, log_rpow q_pos',
      log_rpow q_pos', ← lt_div_iff (log_pos one_lt_q'), add_div,
      mul_div_cancel _ (log_pos one_lt_q').ne']
  -- And that result follows from manipulating the result from `exists_approx_polynomial_aux`
  -- to turn the `-⌈-stuff⌉₊` into `+ stuff`.
  refine' lt_of_lt_of_le (Nat.cast_lt.mpr (WithBot.coe_lt_coe.mp _)) _
  swap
  · convert deg_lt
    rw [degree_eq_natDegree h']; rfl
  rw [← sub_neg_eq_add, neg_div]
  refine' le_trans _ (sub_le_sub_left (Nat.le_ceil _) (b.natDegree : ℝ))
  rw [← neg_div]
  exact le_of_eq (Nat.cast_sub le_b.le)
#align polynomial.exists_approx_polynomial Polynomial.exists_approx_polynomial

/-- If `x` is close to `y` and `y` is close to `z`, then `x` and `z` are at least as close. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/CommutativeAlgebra/AdmissibleCardPowDegree/Variantd0bd293d5dc5cc3814c47e5a2cc102eea1ef36a59a97e2708346309692ea234f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/CommutativeAlgebra/AdmissibleCardPowDegree/Variantd0bd293d5dc5cc3814c47e5a2cc102eea1ef36a59a97e2708346309692ea234f.lean#L114).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ca4914d6408e75179c907e311346d9290ccb12ec` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
