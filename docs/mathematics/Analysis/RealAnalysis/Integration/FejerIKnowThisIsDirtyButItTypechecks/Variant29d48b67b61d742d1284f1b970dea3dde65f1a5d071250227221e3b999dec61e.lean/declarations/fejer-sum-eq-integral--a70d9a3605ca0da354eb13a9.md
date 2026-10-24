# fejer_sum_eq_integral

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "fbf09c6bea6d3331635dd00fcb6f355dd9b375f4",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 337,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/29/29d48b67b61d742d1284f1b970dea3dde65f1a5d071250227221e3b999dec61e.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:1e2f9c54-8301-7d3b-de20-0e116ad7d025",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:69771c8b-b518-b242-bdfc-dd4e8b978be2",
  "kind": "theorem",
  "lexical_name": "fejer_sum_eq_integral",
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
  "slug": "fejer-sum-eq-integral--a70d9a3605ca0da354eb13a9",
  "source": {
    "blob": "fbf09c6bea6d3331635dd00fcb6f355dd9b375f4",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 356,
    "line": 337,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/FejerIKnowThisIsDirtyButItTypechecks/Variant29d48b67b61d742d1284f1b970dea3dde65f1a5d071250227221e3b999dec61e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a70d9a3605ca0da354eb13a999ca6dda19afce6254306612323a8e8cc7202e30",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/FejerIKnowThisIsDirtyButItTypechecks/Variant29d48b67b61d742d1284f1b970dea3dde65f1a5d071250227221e3b999dec61e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:69771c8b-b518-b242-bdfc-dd4e8b978be2`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 337–356.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem fejer_sum_eq_integral {f : ℝ → ℝ} (hf : IntervalIntegrable f MeasureTheory.volume (-Real.pi) Real.pi)
    (h_per : Function.Periodic f (2 * Real.pi)) (n : ℕ) (x : ℝ) :
    fejer_sum f n x = (1 / Real.pi) * ∫ t in (-Real.pi)..Real.pi, f t * fejer_kernel n (x - t) := by
      -- By Fubini's theorem, we can interchange the order of summation and integration.
      have h_fubini : ∫ t in (-Real.pi)..Real.pi, f t * (∑ j ∈ Finset.range (n + 1), dirichlet_kernel j (x - t)) = ∑ j ∈ Finset.range (n + 1), ∫ t in (-Real.pi)..Real.pi, f t * dirichlet_kernel j (x - t) := by
        simp +decide only [Finset.mul_sum _ _ _];
        rw [ intervalIntegral.integral_finset_sum ];
        intro i hi;
        apply_rules [ IntervalIntegrable.mul_continuousOn ];
        refine' Continuous.continuousOn _;
        exact Continuous.add continuous_const <| continuous_finset_sum _ fun _ _ => Real.continuous_cos.comp <| by continuity;
      -- Substitute the definitions of fejer_sum and fejer_kernel into the goal.
      simp [fejer_sum, fejer_kernel];
      field_simp;
      rw [ intervalIntegral.integral_div, h_fubini, mul_comm ];
      rw [ mul_div_cancel₀ _ ( by positivity ), Finset.sum_congr rfl fun i hi => fourier_partial_sum_eq_integral hf h_per i x ] ; norm_num [ mul_assoc, mul_comm, mul_left_comm, Finset.mul_sum _ _ _ ]

/-
Closed form of the Dirichlet kernel D_n(t).
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/FejerIKnowThisIsDirtyButItTypechecks/Variant29d48b67b61d742d1284f1b970dea3dde65f1a5d071250227221e3b999dec61e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/FejerIKnowThisIsDirtyButItTypechecks/Variant29d48b67b61d742d1284f1b970dea3dde65f1a5d071250227221e3b999dec61e.lean#L337).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `fbf09c6bea6d3331635dd00fcb6f355dd9b375f4` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
