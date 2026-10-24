# Mform_PX_PX

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:ecab2bbb-529f-e99f-fc50-7caff2c21b99",
  "kind": "lemma",
  "lexical_name": "Mform_PX_PX",
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
  "slug": "mform-px-px--7e489be6c9e18fc29197036a",
  "source": {
    "blob": "47f6cd6bd30dffd5fe33d4e68eb9edfd3b283ecf",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 256,
    "line": 193,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/PP/Variant6f0c21f1d01e3f3f6e90cbdf7cc6902fb1125f4b773d7ab5e83a52e61b3b8499.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:7e489be6c9e18fc29197036aaf0781654d48f152fcb3766dfac8b0a2a51c7a87",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/PP/Variant6f0c21f1d01e3f3f6e90cbdf7cc6902fb1125f4b773d7ab5e83a52e61b3b8499.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ecab2bbb-529f-e99f-fc50-7caff2c21b99`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 193–256.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma Mform_PX_PX (hT : 0 ≤ T) (hΦ : Continuous Φ) (X : ℝ) :
    Mform Φ T (Zeta23.PX X) (Zeta23.PX X)
      = (1 / (2 * π ^ 2)) *
        ((∑ n ∈ primeRange X, acoef n ^ 2 * Aminus Φ T (Real.log n) (Real.log n))
          + (∑ n ∈ primeRange X, ∑ m ∈ primeRange X,
              (if n = m then (0:ℝ) else acoef n * acoef m * Aminus Φ T (Real.log n) (Real.log m)))
          + ∑ n ∈ primeRange X, ∑ m ∈ primeRange X,
              acoef n * acoef m * Aplus Φ T (Real.log n) (Real.log m)) := by
  -- Step 1: bilinearity  𝓜[P_X,P_X] = π⁻² Σ_{n,m} a_n a_m 𝓜[cos(·y_n), cos(·y_m)]
  have h1 : Mform Φ T (Zeta23.PX X) (Zeta23.PX X) = (1 / π ^ 2) *
      ∑ n ∈ primeRange X, ∑ m ∈ primeRange X, acoef n * acoef m *
        Mform Φ T (fun τ => Real.cos (τ * Real.log n)) (fun τ => Real.cos (τ * Real.log m)) := by
    unfold Mform
    have hpt : ∀ q : ℝ × ℝ, Φ (q.1 - q.2) ^ 2 * Zeta23.PX X q.1 * Zeta23.PX X q.2
        = (1 / π ^ 2) * ∑ n ∈ primeRange X, ∑ m ∈ primeRange X, acoef n * acoef m *
            (Φ (q.1 - q.2) ^ 2 * Real.cos (q.1 * Real.log n) * Real.cos (q.2 * Real.log m)) := by
      intro q
      rw [PX_eq, PX_eq]
      simp only [ycoef]
      rw [show ∀ A B : ℝ, Φ (q.1 - q.2) ^ 2 * (-(1 / π) * A) * (-(1 / π) * B)
          = (1 / π ^ 2) * (Φ (q.1 - q.2) ^ 2 * (A * B)) from fun A B => by ring,
        Finset.sum_mul_sum, Finset.mul_sum]
      congr 1
      refine Finset.sum_congr rfl fun n _ => ?_
      rw [Finset.mul_sum]
      refine Finset.sum_congr rfl fun m _ => ?_
      ring
    simp_rw [hpt]
    rw [integral_const_mul]
    congr 1
    have hint : ∀ n m : ℕ, Integrable (fun q : ℝ × ℝ => acoef n * acoef m *
        (Φ (q.1 - q.2) ^ 2 * Real.cos (q.1 * Real.log n) * Real.cos (q.2 * Real.log m)))
        (volume.restrict (Icc T (2 * T) ×ˢ Icc T (2 * T))) := fun n m =>
      (Mform_integrableOn hΦ (u := fun τ => Real.cos (τ * Real.log n))
        (v := fun τ => Real.cos (τ * Real.log m)) (by fun_prop) (by fun_prop)).const_mul _
    rw [integral_finsetSum _ (fun n _ => integrable_finsetSum _ (fun m _ => hint n m))]
    refine Finset.sum_congr rfl fun n _ => ?_
    rw [integral_finsetSum _ (fun m _ => hint n m)]
    refine Finset.sum_congr rfl fun m _ => ?_
    rw [integral_const_mul]
  -- Step 2: per pair, 𝓜[cos,cos] = (A⁻+A⁺)/2, and split the A⁻ double sum into n=m / n≠m
  have h2 : ∑ n ∈ primeRange X, ∑ m ∈ primeRange X, acoef n * acoef m *
        Mform Φ T (fun τ => Real.cos (τ * Real.log n)) (fun τ => Real.cos (τ * Real.log m))
      = (1 / 2) * ((∑ n ∈ primeRange X, acoef n ^ 2 * Aminus Φ T (Real.log n) (Real.log n))
          + (∑ n ∈ primeRange X, ∑ m ∈ primeRange X,
              (if n = m then (0:ℝ) else acoef n * acoef m * Aminus Φ T (Real.log n) (Real.log m)))
          + ∑ n ∈ primeRange X, ∑ m ∈ primeRange X,
              acoef n * acoef m * Aplus Φ T (Real.log n) (Real.log m)) := by
    simp_rw [Mform_cos_cos hT hΦ]
    have e : ∀ n m : ℕ, acoef n * acoef m *
        ((Aminus Φ T (Real.log n) (Real.log m) + Aplus Φ T (Real.log n) (Real.log m)) / 2)
        = (1 / 2) * (acoef n * acoef m * Aminus Φ T (Real.log n) (Real.log m))
          + (1 / 2) * (acoef n * acoef m * Aplus Φ T (Real.log n) (Real.log m)) := by
      intro n m; ring
    simp_rw [e, Finset.sum_add_distrib, ← Finset.mul_sum]
    rw [sum_sum_eq_diag_add_offdiag (primeRange X)
      (fun n m => acoef n * acoef m * Aminus Φ T (Real.log n) (Real.log m))]
    simp_rw [← sq]
    ring
  rw [h1, h2]
  ring

/-- **𝒟** (§5.4): with [eq:Phi2FT] ∫Φ²cos(xy) = 2πg(y),
  |(1/2π²)Σ_n a_n² A⁻(y_n,y_n) − (T/π) Σ_n a_n² g(y_n)| ≤ (1/2π²)·(Σ_n a_n²)·∫Φ²|x|. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/PP/Variant6f0c21f1d01e3f3f6e90cbdf7cc6902fb1125f4b773d7ab5e83a52e61b3b8499.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/PP/Variant6f0c21f1d01e3f3f6e90cbdf7cc6902fb1125f4b773d7ab5e83a52e61b3b8499.lean#L193).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `47f6cd6bd30dffd5fe33d4e68eb9edfd3b283ecf` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
