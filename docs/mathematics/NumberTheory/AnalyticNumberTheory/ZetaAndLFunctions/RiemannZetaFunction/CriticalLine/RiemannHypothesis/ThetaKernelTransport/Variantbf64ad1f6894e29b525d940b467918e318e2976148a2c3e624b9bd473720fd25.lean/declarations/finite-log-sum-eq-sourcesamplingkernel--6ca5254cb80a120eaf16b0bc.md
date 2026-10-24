# finite_log_sum_eq_sourceSamplingKernel

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "a8d3b342297ea702f9a4d9c7fe6561b03255e815",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 120,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/bf/bf64ad1f6894e29b525d940b467918e318e2976148a2c3e624b9bd473720fd25.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:e3deea23-2ab5-fb59-2b9e-8d4e89cc55a0",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:ed75836b-331c-e86b-e83f-edfd8b752cb9",
  "kind": "theorem",
  "lexical_name": "finite_log_sum_eq_sourceSamplingKernel",
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
  "slug": "finite-log-sum-eq-sourcesamplingkernel--6ca5254cb80a120eaf16b0bc",
  "source": {
    "blob": "a8d3b342297ea702f9a4d9c7fe6561b03255e815",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 147,
    "line": 120,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ThetaKernelTransport/Variantbf64ad1f6894e29b525d940b467918e318e2976148a2c3e624b9bd473720fd25.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:6ca5254cb80a120eaf16b0bcae8058a76186e0dab0e574d347b39da57fe9b799",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ThetaKernelTransport/Variantbf64ad1f6894e29b525d940b467918e318e2976148a2c3e624b9bd473720fd25.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ed75836b-331c-e86b-e83f-edfd8b752cb9`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 120–147.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem finite_log_sum_eq_sourceSamplingKernel (A : ℝ) (q : ℕ) (hq : 1 ≤ q) :
    (∑ k ∈ Icc 1 ⌊Real.exp (2 * A)⌋₊, Real.log (k : ℝ) *
      sourceFiniteWeight A (q * k)) = sourceSamplingKernel A q := by
  have hq0 : (0 : ℝ) < q := by exact_mod_cast (show 0 < q by omega)
  have hq1 : (1 : ℝ) ≤ q := by exact_mod_cast hq
  have hsub : samplingIndices A q ⊆ Icc 1 ⌊Real.exp (2 * A)⌋₊ := by
    intro k hk
    obtain ⟨hk1, hcut⟩ := (mem_samplingIndices_iff A q k hq0).mp hk
    have hkq : (k : ℝ) ≤ (q : ℝ) * k := by
      nlinarith [show (0 : ℝ) ≤ k by positivity]
    exact mem_Icc.mpr ⟨hk1, (Nat.le_floor_iff (Real.exp_pos _).le).mpr
      (hkq.trans hcut.le)⟩
  symm
  calc
    _ = ∑ k ∈ samplingIndices A q,
        Real.log (k : ℝ) * sourceFiniteWeight A (q * k) := by
      apply sum_congr rfl
      intro k hk
      have hcut := ((mem_samplingIndices_iff A q k hq0).mp hk).2
      rw [sourceFiniteWeight, Nat.cast_mul, if_pos hcut]
      ring
    _ = _ := sum_subset hsub (fun k hk hnot ↦ by
      have hcut : ¬((q * k : ℕ) : ℝ) < Real.exp (2 * A) := by
        intro h
        exact hnot ((mem_samplingIndices_iff A q k hq0).mpr
          ⟨(mem_Icc.mp hk).1, by simpa only [Nat.cast_mul] using h⟩)
      rw [sourceFiniteWeight, if_neg hcut, mul_zero])

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ThetaKernelTransport/Variantbf64ad1f6894e29b525d940b467918e318e2976148a2c3e624b9bd473720fd25.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ThetaKernelTransport/Variantbf64ad1f6894e29b525d940b467918e318e2976148a2c3e624b9bd473720fd25.lean#L120).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a8d3b342297ea702f9a4d9c7fe6561b03255e815` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
