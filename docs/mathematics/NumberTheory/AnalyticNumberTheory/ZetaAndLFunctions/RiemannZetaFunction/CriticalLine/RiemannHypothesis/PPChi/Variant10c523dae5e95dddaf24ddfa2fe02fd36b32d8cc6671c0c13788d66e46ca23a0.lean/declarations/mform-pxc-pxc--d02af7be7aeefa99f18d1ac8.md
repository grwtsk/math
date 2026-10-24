# Mform_PXc_PXc

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "db2e3d52969f93d93f479a49e8e0c273da06f899",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 433,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/10/10c523dae5e95dddaf24ddfa2fe02fd36b32d8cc6671c0c13788d66e46ca23a0.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:78411310-2f50-e9e3-c421-50f73296a2b8",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:f88972e0-465f-ce19-afcd-a6aa43308263",
  "kind": "lemma",
  "lexical_name": "Mform_PXc_PXc",
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
  "slug": "mform-pxc-pxc--d02af7be7aeefa99f18d1ac8",
  "source": {
    "blob": "db2e3d52969f93d93f479a49e8e0c273da06f899",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 519,
    "line": 433,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/PPChi/Variant10c523dae5e95dddaf24ddfa2fe02fd36b32d8cc6671c0c13788d66e46ca23a0.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d02af7be7aeefa99f18d1ac807a9d4b9fc15a5fd43ecb1beba2eb083f94a22b9",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/PPChi/Variant10c523dae5e95dddaf24ddfa2fe02fd36b32d8cc6671c0c13788d66e46ca23a0.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f88972e0-465f-ce19-afcd-a6aa43308263`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 433–519.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma Mform_PXc_PXc (hT : 0 ≤ T) (hΦ : Continuous Φ) (c : ℕ → ℂ) (X : ℝ) :
    Mform Φ T (PXc c X) (PXc c X)
      = (1 / (2 * π ^ 2)) *
        ((∑ n ∈ primeRange X, (acoef n * ‖c n‖) ^ 2 * Aminus Φ T (Real.log n) (Real.log n))
          + (∑ n ∈ primeRange X, ∑ m ∈ primeRange X,
              (if n = m then (0:ℝ) else (acoef n * ‖c n‖) * (acoef m * ‖c m‖)
                * AminusPh Φ T (Real.log n) (Real.log m) (c n).arg (c m).arg))
          + ∑ n ∈ primeRange X, ∑ m ∈ primeRange X,
              (acoef n * ‖c n‖) * (acoef m * ‖c m‖)
                * AplusPh Φ T (Real.log n) (Real.log m) (c n).arg (c m).arg) := by
  have h1 : Mform Φ T (PXc c X) (PXc c X) = (1 / π ^ 2) *
      ∑ n ∈ primeRange X, ∑ m ∈ primeRange X, (acoef n * ‖c n‖) * (acoef m * ‖c m‖) *
        Mform Φ T (fun τ => Real.cos (τ * Real.log n - (c n).arg))
          (fun τ => Real.cos (τ * Real.log m - (c m).arg)) := by
    unfold Mform
    have hpt : ∀ q : ℝ × ℝ, Φ (q.1 - q.2) ^ 2 * PXc c X q.1 * PXc c X q.2
        = (1 / π ^ 2) * ∑ n ∈ primeRange X, ∑ m ∈ primeRange X,
            (acoef n * ‖c n‖) * (acoef m * ‖c m‖) *
            (Φ (q.1 - q.2) ^ 2 * Real.cos (q.1 * Real.log n - (c n).arg)
              * Real.cos (q.2 * Real.log m - (c m).arg)) := by
      intro q
      rw [PXc_eq_sum, PXc_eq_sum]
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
    have hint : ∀ n m : ℕ, Integrable (fun q : ℝ × ℝ =>
        (acoef n * ‖c n‖) * (acoef m * ‖c m‖) *
        (Φ (q.1 - q.2) ^ 2 * Real.cos (q.1 * Real.log n - (c n).arg)
          * Real.cos (q.2 * Real.log m - (c m).arg)))
        (volume.restrict (Icc T (2 * T) ×ˢ Icc T (2 * T))) := fun n m =>
      (Mform_integrableOn hΦ (u := fun τ => Real.cos (τ * Real.log n - (c n).arg))
        (v := fun τ => Real.cos (τ * Real.log m - (c m).arg)) (by fun_prop) (by fun_prop)).const_mul _
    rw [integral_finsetSum _ (fun n _ => integrable_finsetSum _ (fun m _ => hint n m))]
    refine Finset.sum_congr rfl fun n _ => ?_
    rw [integral_finsetSum _ (fun m _ => hint n m)]
    refine Finset.sum_congr rfl fun m _ => ?_
    rw [integral_const_mul]
  have h2 : ∑ n ∈ primeRange X, ∑ m ∈ primeRange X, (acoef n * ‖c n‖) * (acoef m * ‖c m‖) *
        Mform Φ T (fun τ => Real.cos (τ * Real.log n - (c n).arg))
          (fun τ => Real.cos (τ * Real.log m - (c m).arg))
      = (1 / 2) * ((∑ n ∈ primeRange X, (acoef n * ‖c n‖) ^ 2 * Aminus Φ T (Real.log n) (Real.log n))
          + (∑ n ∈ primeRange X, ∑ m ∈ primeRange X,
              (if n = m then (0:ℝ) else (acoef n * ‖c n‖) * (acoef m * ‖c m‖)
                * AminusPh Φ T (Real.log n) (Real.log m) (c n).arg (c m).arg))
          + ∑ n ∈ primeRange X, ∑ m ∈ primeRange X,
              (acoef n * ‖c n‖) * (acoef m * ‖c m‖)
                * AplusPh Φ T (Real.log n) (Real.log m) (c n).arg (c m).arg) := by
    simp_rw [Mform_cos_cos_ph hT hΦ]
    have e : ∀ n m : ℕ, (acoef n * ‖c n‖) * (acoef m * ‖c m‖) *
        ((AminusPh Φ T (Real.log n) (Real.log m) (c n).arg (c m).arg
          + AplusPh Φ T (Real.log n) (Real.log m) (c n).arg (c m).arg) / 2)
        = (1 / 2) * ((acoef n * ‖c n‖) * (acoef m * ‖c m‖)
            * AminusPh Φ T (Real.log n) (Real.log m) (c n).arg (c m).arg)
          + (1 / 2) * ((acoef n * ‖c n‖) * (acoef m * ‖c m‖)
            * AplusPh Φ T (Real.log n) (Real.log m) (c n).arg (c m).arg) := by
      intro n m; ring
    simp_rw [e, Finset.sum_add_distrib, ← Finset.mul_sum]
    have hA := sum_sum_eq_diag_add_offdiag (primeRange X)
      (fun n m => (acoef n * ‖c n‖) * (acoef m * ‖c m‖)
        * AminusPh Φ T (Real.log n) (Real.log m) (c n).arg (c m).arg)
    have hdiag : ∑ n ∈ primeRange X, (acoef n * ‖c n‖) * (acoef n * ‖c n‖)
        * AminusPh Φ T (Real.log n) (Real.log n) (c n).arg (c n).arg
        = ∑ n ∈ primeRange X, (acoef n * ‖c n‖) ^ 2 * Aminus Φ T (Real.log n) (Real.log n) := by
      refine Finset.sum_congr rfl fun n _ => ?_
      rw [AminusPh_self]
      ring
    rw [hA, hdiag]
    ring
  rw [h1, h2]
  ring

end Decomp

/-! ## The three estimates, weighted and phased -/

section Estimates
variable {Φ : ℝ → ℝ} {T : ℝ}

/-- 𝒟 for P_{X,c} (mirror of diag_estimate; weight ‖c n‖² ≤ 1 rides along). -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/PPChi/Variant10c523dae5e95dddaf24ddfa2fe02fd36b32d8cc6671c0c13788d66e46ca23a0.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/PPChi/Variant10c523dae5e95dddaf24ddfa2fe02fd36b32d8cc6671c0c13788d66e46ca23a0.lean#L433).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `db2e3d52969f93d93f479a49e8e0c273da06f899` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
