# bernsteinApproximation_monotone

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "0a0f3aece12c9562ccb5ca1c7447b813a4348cb7",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 737,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/6d/6d8a698fb5715979d6008ae8967ec22bfd19c06816556eb53c79b2950751a90d.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:67583773-4cec-8cd0-8a4e-eb78fb8cdcce",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:bf2f51e0-092f-6ac2-d84a-0b324ce4d23e",
  "kind": "theorem",
  "lexical_name": "bernsteinApproximation_monotone",
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
  "slug": "bernsteinapproximation-monotone--fdbbf81f52643a5e6eec0c8f",
  "source": {
    "blob": "0a0f3aece12c9562ccb5ca1c7447b813a4348cb7",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 822,
    "line": 737,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/ZetaAppendix/Variant6d8a698fb5715979d6008ae8967ec22bfd19c06816556eb53c79b2950751a90d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:fdbbf81f52643a5e6eec0c8f7be906ab4a7378d7de88e079e62b2e3c331717b8",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/ZetaAppendix/Variant6d8a698fb5715979d6008ae8967ec22bfd19c06816556eb53c79b2950751a90d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_SOURCE_DEPENDENCY"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:bf2f51e0-092f-6ac2-d84a-0b324ce4d23e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 737–822.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem bernsteinApproximation_monotone (n : ℕ) (f : C(I, ℝ)) (hf : Monotone f) :
    Monotone (bernsteinApproximation n f) := by
  intro x y hxy
  simp only [bernsteinApproximation, smul_eq_mul, ContinuousMap.coe_sum, ContinuousMap.coe_mul,
    ContinuousMap.coe_const, sum_apply, Pi.mul_apply, Function.const_apply]
  have hmono : ∀ i j : Fin (n + 1), i ≤ j → f (bernstein.z i) ≤ f (bernstein.z j) :=
    fun i j hij ↦ hf <| Subtype.mk_le_mk.mpr <| by simpa [bernstein.z] using by gcongr; aesop
  have hsum : ∑ i : Fin (n + 1), ∑ j : Fin (n + 1),
      (bernstein n i x * bernstein n j y - bernstein n i y * bernstein n j x) *
        (f (bernstein.z j) - f (bernstein.z i)) ≥ 0 := by
    refine Finset.sum_nonneg fun i _ ↦ Finset.sum_nonneg fun j _ ↦ ?_
    by_cases hij : i ≤ j
    · refine mul_nonneg ?_ (sub_nonneg.mpr (hmono i j hij))
      have hineq : x.val ^ (i : ℕ) * (1 - x.val) ^ (n - i : ℕ) * y.val ^ (j : ℕ) *
          (1 - y.val) ^ (n - j : ℕ) ≥ x.val ^ (j : ℕ) * (1 - x.val) ^ (n - j : ℕ) *
          y.val ^ (i : ℕ) * (1 - y.val) ^ (n - i : ℕ) := by
        have hdiv : y.val ^ (j - i : ℕ) * (1 - x.val) ^ (j - i : ℕ) ≥
            x.val ^ (j - i : ℕ) * (1 - y.val) ^ (j - i : ℕ) := by
          rw [← mul_pow, ← mul_pow]
          exact pow_le_pow_left₀ (mul_nonneg (Subtype.property x |>.1)
            (sub_nonneg.2 (Subtype.property y |>.2)))
            (by nlinarith [show (x : ℝ) ≤ y from hxy, show (x : ℝ) ≥ 0 from Subtype.property x |>.1,
              show (y : ℝ) ≤ 1 from Subtype.property y |>.2]) _
        simp_all only [Finset.mem_univ, ge_iff_le, mul_comm, mul_left_comm, mul_assoc]
        convert mul_le_mul_of_nonneg_left hdiv (show 0 ≤ (x : ℝ) ^ (i : ℕ) * (y : ℝ) ^ (i : ℕ) *
            (1 - x : ℝ) ^ (n - j : ℕ) * (1 - y : ℝ) ^ (n - j : ℕ) by
          exact mul_nonneg (mul_nonneg (mul_nonneg (pow_nonneg (mod_cast x.2.1) _)
            (pow_nonneg (mod_cast y.2.1) _)) (pow_nonneg (sub_nonneg.2 <| mod_cast x.2.2) _))
            (pow_nonneg (sub_nonneg.2 <| mod_cast y.2.2) _)) using 1 <;> ring_nf
        · simp only [mul_assoc, ← pow_add, add_tsub_cancel_of_le (show (i : ℕ) ≤ j from hij),
            mul_eq_mul_left_iff, pow_eq_zero_iff', ne_eq, Icc.coe_eq_zero, Fin.val_eq_zero_iff]
          exact Or.inl <| Or.inl <| Or.inl <|
            by rw [tsub_add_tsub_cancel (mod_cast Fin.is_le _) (mod_cast hij)]
        · simp only [mul_assoc, ← pow_add, add_tsub_cancel_of_le (show (i : ℕ) ≤ j from hij),
            mul_eq_mul_left_iff, mul_eq_mul_right_iff, pow_eq_zero_iff', ne_eq, Icc.coe_eq_zero,
            Fin.val_eq_zero_iff]
          exact Or.inl <| Or.inl <| Or.inl <|
            by rw [tsub_add_tsub_cancel (mod_cast Fin.is_le _) (mod_cast hij)]
      simp_all only [Finset.mem_univ, ge_iff_le, bernstein, Polynomial.toContinuousMapOn_apply,
        Polynomial.toContinuousMap_apply, sub_nonneg]
      simp_all only [bernsteinPolynomial, Polynomial.eval_mul, Polynomial.eval_natCast,
        Polynomial.eval_pow, Polynomial.eval_X, Polynomial.eval_sub, Polynomial.eval_one]
      convert mul_le_mul_of_nonneg_left hineq
        (show 0 ≤ (n.choose i : ℝ) * (n.choose j : ℝ) by positivity) using 1 <;> ring
    · refine mul_nonneg_of_nonpos_of_nonpos ?_ ?_
      · norm_num [bernstein, bernsteinPolynomial]
        have hexp : (x.val : ℝ) ^ (i : ℕ) * (y.val : ℝ) ^ (j : ℕ) ≤
            (x.val : ℝ) ^ (j : ℕ) * (y.val : ℝ) ^ (i : ℕ) := by
          rw [show (i : ℕ) = j + (i - j) by rw [Nat.add_sub_cancel' (le_of_not_ge hij)]]
          ring_nf
          rw [mul_right_comm]
          exact mul_le_mul_of_nonneg_left (pow_le_pow_left₀ (by exact_mod_cast x.2.1)
            (by exact_mod_cast hxy) _) (mul_nonneg (pow_nonneg (by exact_mod_cast x.2.1) _)
            (pow_nonneg (by exact_mod_cast y.2.1) _))
        have hexp2 : (1 - x.val) ^ (n - i.val) * (1 - y.val) ^ (n - j.val) ≤
            (1 - x.val) ^ (n - j.val) * (1 - y.val) ^ (n - i.val) := by
          rw [show n - (i : ℕ) = n - (j : ℕ) - (i - j : ℕ) by
            rw [tsub_tsub, add_tsub_cancel_of_le (mod_cast le_of_not_ge hij)]]
          rw [show (1 - x.val) ^ (n - j.val) = (1 - x.val) ^ (n - j.val - (i.val - j.val)) *
              (1 - x.val) ^ (i.val - j.val) by rw [← pow_add, Nat.sub_add_cancel
              (show (i.val - j.val) ≤ n - j.val from Nat.sub_le_sub_right (mod_cast Fin.is_le i) _)],
            show (1 - y.val) ^ (n - j.val) = (1 - y.val) ^ (n - j.val - (i.val - j.val)) *
              (1 - y.val) ^ (i.val - j.val) by rw [← pow_add, Nat.sub_add_cancel
              (show (i.val - j.val) ≤ n - j.val from Nat.sub_le_sub_right (mod_cast Fin.is_le i) _)]]
          rw [mul_assoc, mul_comm ((1 - x.val) ^ (i.val - j.val))]
          exact mul_le_mul_of_nonneg_left (mul_le_mul_of_nonneg_left
            (pow_le_pow_left₀ (sub_nonneg.2 <| mod_cast y.2.2)
            (sub_le_sub_left (mod_cast hxy) _) _) <| pow_nonneg (sub_nonneg.2 <| mod_cast y.2.2) _)
            <| pow_nonneg (sub_nonneg.2 <| mod_cast x.2.2) _
        convert mul_le_mul_of_nonneg_left (mul_le_mul hexp hexp2 (?_) (?_))
          (show (0 : ℝ) ≤ (n.choose i : ℝ) * (n.choose j : ℝ) by positivity) using 1 <;> ring_nf
        · exact mul_nonneg (pow_nonneg (sub_nonneg.2 <| mod_cast x.2.2) _)
            (pow_nonneg (sub_nonneg.2 <| mod_cast y.2.2) _)
        · exact mul_nonneg (pow_nonneg (Subtype.property x |>.1) _)
            (pow_nonneg (Subtype.property y |>.1) _)
      · exact sub_nonpos_of_le <| hmono _ _ <| le_of_not_ge hij
  contrapose! hsum
  simp_all only [mul_comm, mul_sub, sum_sub_distrib, ← Finset.mul_sum _ _ _, bernstein.probability,
    one_mul, sub_neg]
  simp_all only [← mul_assoc, ← sum_comm, ← sum_mul, ← Finset.mul_sum _ _ _, bernstein.probability,
    mul_one]
  linarith

open scoped unitInterval in
/-- Continuous monotone functions on `[0,1]` can be uniformly approximated by smooth monotone
functions (polynomials). -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_SOURCE_DEPENDENCY`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/ZetaAppendix/Variant6d8a698fb5715979d6008ae8967ec22bfd19c06816556eb53c79b2950751a90d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/ZetaAppendix/Variant6d8a698fb5715979d6008ae8967ec22bfd19c06816556eb53c79b2950751a90d.lean#L737).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0a0f3aece12c9562ccb5ca1c7447b813a4348cb7` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
