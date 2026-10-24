# primeHarmonicPrefix_weighted_abel

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "6013dd8cdf6925d16f14110d255a718b3f8a7228",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 112,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/62/6221d94f4f68444b0500642048ad66dfc2d059223d8e6b3e8e169e5f88a1cd6f.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:331fea19-5e37-f3ab-490d-33b6fb08df72",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:36cac117-3f7a-bc43-d550-e512b3cba0bb",
  "kind": "theorem",
  "lexical_name": "primeHarmonicPrefix_weighted_abel",
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
  "slug": "primeharmonicprefix-weighted-abel--4e2614533a1dccc28e55df4e",
  "source": {
    "blob": "6013dd8cdf6925d16f14110d255a718b3f8a7228",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 149,
    "line": 112,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/PrimeSquareAbelStatements/Variant6221d94f4f68444b0500642048ad66dfc2d059223d8e6b3e8e169e5f88a1cd6f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:4e2614533a1dccc28e55df4ed64970cd4a576ad748ae8b45d68c885c96a4201e",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/PrimeSquareAbelStatements/Variant6221d94f4f68444b0500642048ad66dfc2d059223d8e6b3e8e169e5f88a1cd6f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:36cac117-3f7a-bc43-d550-e512b3cba0bb`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 112–149.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem primeHarmonicPrefix_weighted_abel (A : ℝ) (hA : 0 ≤ A)
    (g : ℝ → ℝ) (hg : Differentiable ℝ g) (hgd : Continuous (deriv g)) (hgz : g A = 0) :
    (∑ p ∈ (Finset.Icc 2 ⌊Real.exp A⌋₊).filter Nat.Prime,
      Real.log (p : ℝ) / (p : ℝ) * g (Real.log (p : ℝ))) =
        -(∫ u in 0..A, primeHarmonicPrefix u * deriv g u) := by
  classical
  let H := (Finset.Icc 2 ⌊Real.exp A⌋₊).filter Nat.Prime
  let f (p : ℕ) (u : ℝ) := (Real.log (p : ℝ) / (p : ℝ)) *
    (if Real.log (p : ℝ) ≤ u then deriv g u else 0)
  have hi (p : ℕ) : IntervalIntegrable (f p) volume 0 A :=
    (closed_tail_intervalIntegrable (deriv g) A _ hA hgd.integrableOn_Icc).const_mul _
  have he : (∫ u in 0..A, primeHarmonicPrefix u * deriv g u) =
      ∑ p ∈ H, ∫ u in 0..A, f p u := by
    calc
      _ = ∫ u in 0..A, ∑ p ∈ H, f p u := by
        apply intervalIntegral.integral_congr
        intro u hu
        rw [uIcc_of_le hA] at hu
        dsimp only
        rw [primeHarmonicPrefix_eq_threshold_sum A u hu.2, Finset.sum_mul]
        apply Finset.sum_congr rfl
        intro p _
        simp only [f]
        split_ifs <;> simp
      _ = _ := intervalIntegral.integral_finsetSum (fun p _ ↦ hi p)
  have hv (p : ℕ) (hp : p ∈ H) :
      (∫ u in 0..A, f p u) = -(Real.log (p : ℝ) / (p : ℝ) * g (Real.log (p : ℝ))) := by
    dsimp only [f]
    rw [intervalIntegral.integral_const_mul,
      integral_closed_tail _ A _ (prime_log_mem_interval A p hp),
      intervalIntegral.integral_deriv_eq_sub (fun u _ ↦ hg u) (hgd.intervalIntegrable _ _),
      hgz]
    ring
  rw [he]
  simp_rw [Finset.sum_congr rfl hv, Finset.sum_neg_distrib, neg_neg]
  rfl

/-- The independent theta moment input centers the exact prime prefix. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/PrimeSquareAbelStatements/Variant6221d94f4f68444b0500642048ad66dfc2d059223d8e6b3e8e169e5f88a1cd6f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/PrimeSquareAbelStatements/Variant6221d94f4f68444b0500642048ad66dfc2d059223d8e6b3e8e169e5f88a1cd6f.lean#L112).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6013dd8cdf6925d16f14110d255a718b3f8a7228` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
