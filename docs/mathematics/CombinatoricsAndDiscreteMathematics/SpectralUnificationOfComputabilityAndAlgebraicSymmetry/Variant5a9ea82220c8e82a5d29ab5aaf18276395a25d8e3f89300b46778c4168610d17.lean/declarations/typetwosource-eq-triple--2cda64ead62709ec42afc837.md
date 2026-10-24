# typeTwoSource_eq_triple

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:16a62e25-1816-b9f9-f513-359960de718c",
  "kind": "theorem",
  "lexical_name": "typeTwoSource_eq_triple",
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
  "slug": "typetwosource-eq-triple--2cda64ead62709ec42afc837",
  "source": {
    "blob": "a79d4796f5a6515eedc734b340f6629a82f1319c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 107,
    "line": 63,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/SpectralUnificationOfComputabilityAndAlgebraicSymmetry/Variant5a9ea82220c8e82a5d29ab5aaf18276395a25d8e3f89300b46778c4168610d17.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:2cda64ead62709ec42afc837f4beb7c7e7b72cebe6f99952169c74b865193809",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/SpectralUnificationOfComputabilityAndAlgebraicSymmetry/Variant5a9ea82220c8e82a5d29ab5aaf18276395a25d8e3f89300b46778c4168610d17.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:16a62e25-1816-b9f9-f513-359960de718c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 63–107.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem typeTwoSource_eq_triple (A : ℝ) (hA : 1 ≤ A) (N : ℕ)
    (hN : sourceKernelCutoff A ≤ N) :
    typeTwoSource A = ∑ m ∈ Finset.Icc 1 N, ∑ d ∈ Finset.Icc 1 N,
      ∑ k ∈ Finset.Icc 1 N,
        if A^2 < (m:ℝ) ∧ A^2 < (d:ℝ) then
          vonMangoldt m * (moebius d : ℝ) * sourcePlainWeight A ((m*d*k : ℕ) : ℝ)
        else 0 := by
  classical
  have hw : ∀ n, N < n → sourcePlainWeight A n = 0 :=
    fun n hn ↦ sourcePlainWeight_zero_of_cutoff_lt A hA n (hN.trans_lt hn)
  rw [typeTwo_eq_convolution A hA]
  have he : (∑ n ∈ Finset.Icc 1 (sourceKernelCutoff A),
      (longPart (vaughanCutoff A) vonMangoldt *
        (longPart (vaughanCutoff A) (moebius : ArithmeticFunction ℝ) *
          (zeta : ArithmeticFunction ℝ))) n * sourcePlainWeight A n) =
      ∑ n ∈ Finset.Icc 1 N,
      (longPart (vaughanCutoff A) vonMangoldt *
        (longPart (vaughanCutoff A) (moebius : ArithmeticFunction ℝ) *
          (zeta : ArithmeticFunction ℝ))) n * sourcePlainWeight A n := by
    apply Finset.sum_subset (Finset.Icc_subset_Icc_right hN)
    intro n hn hnot
    have hcut : sourceKernelCutoff A < n := by
      have := Finset.mem_Icc.mp hn
      simp only [Finset.mem_Icc] at hnot
      omega
    rw [sourcePlainWeight_zero_of_cutoff_lt A hA n hcut, mul_zero]
  rw [he, finite_convolution_sum N _ _ _ hw]
  apply Finset.sum_congr rfl
  intro m hm
  simp_rw [mul_assoc, ← Finset.mul_sum]
  rw [finite_convolution_sum N _ _ (fun n ↦ sourcePlainWeight A ((m*n : ℕ) : ℝ))]
  · rw [Finset.mul_sum]
    apply Finset.sum_congr rfl
    intro d _
    rw [Finset.mul_sum]
    apply Finset.sum_congr rfl
    intro k hk
    rw [natCoe_apply, zeta_apply_ne (by have := (Finset.mem_Icc.mp hk).1; omega)]
    simp only [Nat.cast_one, mul_one, longPart_apply, intCoe_apply,
      vaughanCutoff, Nat.floor_lt (sq_nonneg A)]
    split_ifs <;> simp_all
  · intro n hn
    exact hw _ (hn.trans_le (Nat.le_mul_of_pos_left n (Finset.mem_Icc.mp hm).1))

/-- The closed product inventory at a real upper scale contains every earlier source inventory. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/SpectralUnificationOfComputabilityAndAlgebraicSymmetry/Variant5a9ea82220c8e82a5d29ab5aaf18276395a25d8e3f89300b46778c4168610d17.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/SpectralUnificationOfComputabilityAndAlgebraicSymmetry/Variant5a9ea82220c8e82a5d29ab5aaf18276395a25d8e3f89300b46778c4168610d17.lean#L63).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a79d4796f5a6515eedc734b340f6629a82f1319c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
