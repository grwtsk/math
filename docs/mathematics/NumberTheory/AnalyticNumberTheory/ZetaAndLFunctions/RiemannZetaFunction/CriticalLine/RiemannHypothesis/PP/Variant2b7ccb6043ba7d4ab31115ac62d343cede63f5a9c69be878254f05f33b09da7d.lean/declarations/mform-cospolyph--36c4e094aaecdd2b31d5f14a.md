# Mform_cosPolyPh

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "53f44380c7a4ec8099d45d329c081f43824d4a9e",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 118,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/2b/2b7ccb6043ba7d4ab31115ac62d343cede63f5a9c69be878254f05f33b09da7d.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:432c0d86-d602-d45b-81b5-cd2a7966b7a1",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:c7d97dba-7f4c-c9a9-e0ba-5d543a86f578",
  "kind": "lemma",
  "lexical_name": "Mform_cosPolyPh",
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
  "slug": "mform-cospolyph--36c4e094aaecdd2b31d5f14a",
  "source": {
    "blob": "53f44380c7a4ec8099d45d329c081f43824d4a9e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 177,
    "line": 118,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/PP/Variant2b7ccb6043ba7d4ab31115ac62d343cede63f5a9c69be878254f05f33b09da7d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:36c4e094aaecdd2b31d5f14ac3c1853c2409de6aa484447c5cc992b7ed4fc70a",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/PP/Variant2b7ccb6043ba7d4ab31115ac62d343cede63f5a9c69be878254f05f33b09da7d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c7d97dba-7f4c-c9a9-e0ba-5d543a86f578`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 118–177.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma Mform_cosPolyPh (hT : 0 ≤ T) (hΦ : Continuous Φ) (X : ℝ) (w φ : ℕ → ℝ) :
    Mform Φ T (cosPolyPh X w φ) (cosPolyPh X w φ)
      = (1 / 2) *
        ((∑ n ∈ primeRange X, w n ^ 2 * Aminus Φ T (Real.log n) (Real.log n))
          + (∑ n ∈ primeRange X, ∑ m ∈ primeRange X,
              (if n = m then (0:ℝ) else w n * w m
                * AminusPh Φ T (Real.log n) (Real.log m) (φ n) (φ m)))
          + ∑ n ∈ primeRange X, ∑ m ∈ primeRange X,
              w n * w m * AplusPh Φ T (Real.log n) (Real.log m) (φ n) (φ m)) := by
  have h1 : Mform Φ T (cosPolyPh X w φ) (cosPolyPh X w φ) =
      ∑ n ∈ primeRange X, ∑ m ∈ primeRange X, w n * w m *
        Mform Φ T (fun τ => Real.cos (τ * Real.log n - φ n))
          (fun τ => Real.cos (τ * Real.log m - φ m)) := by
    unfold Mform
    have hpt : ∀ q : ℝ × ℝ, Φ (q.1 - q.2) ^ 2 * cosPolyPh X w φ q.1 * cosPolyPh X w φ q.2
        = ∑ n ∈ primeRange X, ∑ m ∈ primeRange X,
            w n * w m *
            (Φ (q.1 - q.2) ^ 2 * Real.cos (q.1 * Real.log n - φ n)
              * Real.cos (q.2 * Real.log m - φ m)) := by
      intro q
      unfold cosPolyPh
      rw [mul_assoc, Finset.sum_mul_sum, Finset.mul_sum]
      refine Finset.sum_congr rfl fun n _ => ?_
      rw [Finset.mul_sum]
      refine Finset.sum_congr rfl fun m _ => ?_
      ring
    simp_rw [hpt]
    have hint : ∀ n m : ℕ, Integrable (fun q : ℝ × ℝ =>
        w n * w m *
        (Φ (q.1 - q.2) ^ 2 * Real.cos (q.1 * Real.log n - φ n)
          * Real.cos (q.2 * Real.log m - φ m)))
        (volume.restrict (Icc T (2 * T) ×ˢ Icc T (2 * T))) := fun n m =>
      (Mform_integrableOn hΦ (u := fun τ => Real.cos (τ * Real.log n - φ n))
        (v := fun τ => Real.cos (τ * Real.log m - φ m)) (by fun_prop) (by fun_prop)).const_mul _
    rw [integral_finset_sum _ (fun n _ => integrable_finset_sum _ (fun m _ => hint n m))]
    refine Finset.sum_congr rfl fun n _ => ?_
    rw [integral_finset_sum _ (fun m _ => hint n m)]
    refine Finset.sum_congr rfl fun m _ => ?_
    rw [integral_const_mul]
  rw [h1]
  simp_rw [Mform_cos_cos_ph hT hΦ]
  have e : ∀ n m : ℕ, w n * w m *
      ((AminusPh Φ T (Real.log n) (Real.log m) (φ n) (φ m)
        + AplusPh Φ T (Real.log n) (Real.log m) (φ n) (φ m)) / 2)
      = (1 / 2) * (w n * w m * AminusPh Φ T (Real.log n) (Real.log m) (φ n) (φ m))
        + (1 / 2) * (w n * w m * AplusPh Φ T (Real.log n) (Real.log m) (φ n) (φ m)) := by
    intro n m; ring
  simp_rw [e, Finset.sum_add_distrib, ← Finset.mul_sum]
  have hA := sum_sum_eq_diag_add_offdiag (primeRange X)
    (fun n m => w n * w m * AminusPh Φ T (Real.log n) (Real.log m) (φ n) (φ m))
  have hdiag : ∑ n ∈ primeRange X, w n * w n * AminusPh Φ T (Real.log n) (Real.log n) (φ n) (φ n)
      = ∑ n ∈ primeRange X, w n ^ 2 * Aminus Φ T (Real.log n) (Real.log n) := by
    refine Finset.sum_congr rfl fun n _ => ?_
    rw [AminusPh_self]
    ring
  rw [hA, hdiag]
  ring

/-- **𝒟 for Q** (mirror of diag_estimate): with ∫Φ²cos(xy) = 2πg(y) [eq:Phi2FT],
  |½ Σ w_n² A⁻(y_n,y_n) − πT Σ w_n² g(y_n)| ≤ ½ (Σ w_n²) ∫Φ²|x|. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/PP/Variant2b7ccb6043ba7d4ab31115ac62d343cede63f5a9c69be878254f05f33b09da7d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/PP/Variant2b7ccb6043ba7d4ab31115ac62d343cede63f5a9c69be878254f05f33b09da7d.lean#L118).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `53f44380c7a4ec8099d45d329c081f43824d4a9e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
