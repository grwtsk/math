# sum_bounded_of_linear_bound

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:974c7c64-2116-975a-ffea-321bc7fe310f",
  "kind": "lemma",
  "lexical_name": "sum_bounded_of_linear_bound",
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
  "slug": "sum-bounded-of-linear-bound--0ebd10f692df6a3215bdf638",
  "source": {
    "blob": "0d55aed8d28b87d0341356666e0dbf58ba828e44",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1815,
    "line": 1790,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/Consequences/Variante8088719f558c7c466436e2302a722f99d21be7d0e0c4baf95e7b01774a7070f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:0ebd10f692df6a3215bdf63860ed802a193ac9db56600633fc811ded9447a19b",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/Consequences/Variante8088719f558c7c466436e2302a722f99d21be7d0e0c4baf95e7b01774a7070f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:974c7c64-2116-975a-ffea-321bc7fe310f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1790–1815.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma sum_bounded_of_linear_bound {f : ℝ → ℝ} {ε C : ℝ} (hε : 0 ≤ ε) (hC : 0 ≤ C) (h : ∀ y, 1 ≤ y → |f y| ≤ ε * y + C) (x : ℝ) (hx : 1 ≤ x) :
  ∑ k ∈ Icc 1 ⌊x⌋₊, |f (x / k)| ≤ ε * x * (log x + 1) + C * x := by
    have h_sum_bound : ∑ k ∈ Finset.Icc 1 ⌊x⌋₊, |f (x / k)| ≤ ε * x * ∑ k ∈ Finset.Icc 1 ⌊x⌋₊, (1 / (k : ℝ)) + C * ⌊x⌋₊ := by
      have h_sum_bound : ∀ k ∈ Finset.Icc 1 ⌊x⌋₊, |f (x / k)| ≤ ε * x / k + C := by
        exact fun k hk => by simpa only [mul_div_assoc] using h (x / k) (by rw [le_div_iff₀ (Nat.cast_pos.mpr <| Finset.mem_Icc.mp hk |>.1)] ; nlinarith [Nat.floor_le (show 0 ≤ x by positivity), show (k : ℝ) ≤ ⌊x⌋₊ by exact_mod_cast Finset.mem_Icc.mp hk |>.2])
      convert Finset.sum_le_sum h_sum_bound using 1 ; norm_num [div_eq_mul_inv, Finset.mul_sum _ _ _, Finset.sum_add_distrib, mul_comm]
    have h_harmonic : ∀ n : ℕ, 1 ≤ n → ∑ k ∈ Finset.Icc 1 n, (1 / (k : ℝ)) ≤ Real.log n + 1 := by
      intro n _hn
      have h := harmonic_le_one_add_log n
      simpa [harmonic_eq_sum_Icc, Rat.cast_sum, Rat.cast_inv, Rat.cast_natCast,
        one_div, add_comm, add_left_comm, add_assoc] using h
    have h_harmonic_x :
        ∑ k ∈ Finset.Icc 1 ⌊x⌋₊, (1 / (k : ℝ)) ≤ Real.log x + 1 := by
      refine (h_harmonic _ <| Nat.floor_pos.mpr hx).trans ?_
      have hlog : Real.log (⌊x⌋₊ : ℝ) ≤ Real.log x := by
        refine Real.log_le_log (Nat.cast_pos.mpr <| Nat.floor_pos.mpr hx) ?_
        exact Nat.floor_le (by positivity)
      simpa using add_le_add_right hlog 1
    have h_term1 : ε * x * (∑ k ∈ Finset.Icc 1 ⌊x⌋₊, (1 / (k : ℝ))) ≤ ε * x * (Real.log x + 1) := by
      refine mul_le_mul_of_nonneg_left h_harmonic_x ?_
      exact mul_nonneg hε (by positivity)
    have h_term2 : C * (⌊x⌋₊ : ℝ) ≤ C * x := by
      refine mul_le_mul_of_nonneg_left ?_ hC
      exact Nat.floor_le (by positivity)
    exact h_sum_bound.trans (add_le_add h_term1 h_term2)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/AnalyticNumberTheory/Consequences/Variante8088719f558c7c466436e2302a722f99d21be7d0e0c4baf95e7b01774a7070f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/Consequences/Variante8088719f558c7c466436e2302a722f99d21be7d0e0c4baf95e7b01774a7070f.lean#L1790).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0d55aed8d28b87d0341356666e0dbf58ba828e44` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
