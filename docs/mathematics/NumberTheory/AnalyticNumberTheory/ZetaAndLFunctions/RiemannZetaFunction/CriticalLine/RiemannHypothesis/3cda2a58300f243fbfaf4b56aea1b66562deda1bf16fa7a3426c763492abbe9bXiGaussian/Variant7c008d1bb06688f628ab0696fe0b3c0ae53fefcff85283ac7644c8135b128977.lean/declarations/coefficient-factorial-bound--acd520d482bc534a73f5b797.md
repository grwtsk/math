# coefficient_factorial_bound

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:5785ba2c-7db6-89b4-0a55-735ac874e469",
  "kind": "theorem",
  "lexical_name": "coefficient_factorial_bound",
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
  "slug": "coefficient-factorial-bound--acd520d482bc534a73f5b797",
  "source": {
    "blob": "db97b6f9b0ada1cc83c690d9f9c9250e95df59db",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 73,
    "line": 32,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/3cda2a58300f243fbfaf4b56aea1b66562deda1bf16fa7a3426c763492abbe9bXiGaussian/Variant7c008d1bb06688f628ab0696fe0b3c0ae53fefcff85283ac7644c8135b128977.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:acd520d482bc534a73f5b79776dddeb42db1112051288a7f53e29bbec9ee6786",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/3cda2a58300f243fbfaf4b56aea1b66562deda1bf16fa7a3426c763492abbe9bXiGaussian/Variant7c008d1bb06688f628ab0696fe0b3c0ae53fefcff85283ac7644c8135b128977.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:5785ba2c-7db6-89b4-0a55-735ac874e469`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 32–73.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem coefficient_factorial_bound (n : ℕ) :
    coefficient n * (n.factorial : ℝ) ≤ 8 * thetaPhiDecayConstant := by
  have hfac : (n.factorial : ℝ) ^ 2 ≤ ((2 * n).factorial : ℝ) := by
    exact_mod_cast (show n.factorial ^ 2 ≤ (2 * n).factorial by
      rw [pow_two, two_mul]
      exact Nat.le_of_dvd (Nat.factorial_pos _)
        (Nat.factorial_mul_factorial_dvd_factorial_add n n))
  have hfpos : (0 : ℝ) < n.factorial := by positivity
  have hi : thetaMoment n ≤ (n.factorial : ℝ) * thetaPhiDecayConstant := by
    have hbound : ∀ᵐ t ∂volume.restrict (Ioi (0 : ℝ)),
        thetaPhi t * (2 * t) ^ (2 * n) ≤
          (n.factorial : ℝ) * (thetaPhiDecayConstant * Real.exp (-t)) := by
      filter_upwards [ae_restrict_mem measurableSet_Ioi] with t ht
      have ht0 : 0 ≤ t := ht.le
      have hp := Real.pow_div_factorial_le_exp (4 * t ^ 2) (by positivity) n
      have hp' : (2 * t) ^ (2 * n) ≤
          (n.factorial : ℝ) * Real.exp (4 * t ^ 2) := by
        have := (div_le_iff₀ hfpos).mp hp
        rw [show (2 * t) ^ (2 * n) = (4 * t ^ 2) ^ n by
          rw [pow_mul]; congr 1; ring]
        nlinarith
      calc
        _ ≤ thetaPhi t * ((n.factorial : ℝ) * Real.exp (4 * t ^ 2)) :=
          mul_le_mul_of_nonneg_left hp' (thetaPhi_positive t ht0).le
        _ = (n.factorial : ℝ) * (thetaPhi t * Real.exp (4 * t ^ 2)) := by ring
        _ ≤ _ := mul_le_mul_of_nonneg_left (thetaPhi_gaussian_weight_le ht0) hfpos.le
    have h := integral_mono_ae (thetaMoment_integrable n)
      (((integrableOn_exp_neg_Ioi 0).const_mul thetaPhiDecayConstant).const_mul
        (n.factorial : ℝ)) hbound
    simpa only [thetaMoment, integral_const_mul, integral_exp_neg_Ioi_zero, mul_one] using h
  have hcpos := coefficient_positive_of_thetaCoefficientFormula thetaCoefficientFormula n
  have hc := coefficient_mul_factorial n
  have hh := mul_le_mul_of_nonneg_left hfac hcpos.le
  have htotal : coefficient n * (n.factorial : ℝ) ^ 2 ≤
      8 * ((n.factorial : ℝ) * thetaPhiDecayConstant) := by
    calc
      _ ≤ coefficient n * ((2 * n).factorial : ℝ) := hh
      _ = 8 * thetaMoment n := hc
      _ ≤ _ := mul_le_mul_of_nonneg_left hi (by norm_num)
  apply (mul_le_mul_iff_left₀ hfpos).mp
  nlinarith

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/3cda2a58300f243fbfaf4b56aea1b66562deda1bf16fa7a3426c763492abbe9bXiGaussian/Variant7c008d1bb06688f628ab0696fe0b3c0ae53fefcff85283ac7644c8135b128977.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/3cda2a58300f243fbfaf4b56aea1b66562deda1bf16fa7a3426c763492abbe9bXiGaussian/Variant7c008d1bb06688f628ab0696fe0b3c0ae53fefcff85283ac7644c8135b128977.lean#L32).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `db97b6f9b0ada1cc83c690d9f9c9250e95df59db` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
