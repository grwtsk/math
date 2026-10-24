# criticalDecayNegativeMean_mem_Icc

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "c094eb372046b009378a60201e9a1efd3c5ae725",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 83,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/96/960bf6dbb7465efb4d3feaa62410b13cb6dc0c0836ca4744ab02380c9f60b030.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:e69db8db-8158-11e7-7f9d-497912b61120",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:a9294260-3759-a77e-73de-12b0104da0bf",
  "kind": "theorem",
  "lexical_name": "criticalDecayNegativeMean_mem_Icc",
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
  "slug": "criticaldecaynegativemean-mem-icc--54dce9d0f3e419c61de4f7d7",
  "source": {
    "blob": "c094eb372046b009378a60201e9a1efd3c5ae725",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 110,
    "line": 83,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceCriticalDecayWork/Variant960bf6dbb7465efb4d3feaa62410b13cb6dc0c0836ca4744ab02380c9f60b030.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:54dce9d0f3e419c61de4f7d7e43809de6d71ff7f7180b328e8602a7611de1304",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceCriticalDecayWork/Variant960bf6dbb7465efb4d3feaa62410b13cb6dc0c0836ca4744ab02380c9f60b030.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a9294260-3759-a77e-73de-12b0104da0bf`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 83–110.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem criticalDecayNegativeMean_mem_Icc {A : ℝ} (hA : 1 ≤ A) :
    0 ≤ criticalDecayNegativeMean A ∧ criticalDecayNegativeMean A ≤ 1 := by
  have hp : 0 < A := by linarith
  have hi : IntervalIntegrable (fun u => criticalDecay u * negativeSlope A u)
      volume 0 (2*A) := by
    convert (criticalDecay_continuous.mul (negativeSlope_continuous hp)).intervalIntegrable
      (μ := volume) 0 (2*A) using 1
    funext u
    rfl
  constructor
  · apply div_nonneg
    · exact intervalIntegral.integral_nonneg (by linarith)
        (fun u _ => mul_nonneg (Real.exp_pos _).le (negativeSlope_nonneg A u))
    · exact (negativeMass_pos hA).le
  · unfold criticalDecayNegativeMean
    apply (div_le_iff₀ (negativeMass_pos hA)).mpr
    have hb : (∫ u in 0..2*A, criticalDecay u * negativeSlope A u) ≤
        ∫ u in 0..2*A, negativeSlope A u := by
      apply intervalIntegral.integral_mono_on (by linarith) hi (negativeSlope_intervalIntegrable hp)
      intro u hu
      have hh : criticalDecay u ≤ 1 := by
        unfold criticalDecay
        rw [Real.exp_le_one_iff]
        linarith [hu.1]
      simpa only [one_mul] using
        mul_le_mul_of_nonneg_right hh (negativeSlope_nonneg A u)
    simpa only [one_mul, negativeMass] using hb

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceCriticalDecayWork/Variant960bf6dbb7465efb4d3feaa62410b13cb6dc0c0836ca4744ab02380c9f60b030.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceCriticalDecayWork/Variant960bf6dbb7465efb4d3feaa62410b13cb6dc0c0836ca4744ab02380c9f60b030.lean#L83).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c094eb372046b009378a60201e9a1efd3c5ae725` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
