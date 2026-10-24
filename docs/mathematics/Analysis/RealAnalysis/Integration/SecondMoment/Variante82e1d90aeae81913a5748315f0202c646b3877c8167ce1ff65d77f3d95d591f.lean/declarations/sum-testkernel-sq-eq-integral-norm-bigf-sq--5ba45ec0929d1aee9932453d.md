# sum_testKernel_sq_eq_integral_norm_bigF_sq

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "1f21bf64d4a2dd90dc4b974e4073ee4d8e1c7e0f",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 56,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/e8/e82e1d90aeae81913a5748315f0202c646b3877c8167ce1ff65d77f3d95d591f.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:50b93323-5099-b32a-1b11-2daa138343ff",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:1b54cdc9-6b76-725a-952a-a34712d79400",
  "kind": "theorem",
  "lexical_name": "sum_testKernel_sq_eq_integral_norm_bigF_sq",
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
  "slug": "sum-testkernel-sq-eq-integral-norm-bigf-sq--5ba45ec0929d1aee9932453d",
  "source": {
    "blob": "1f21bf64d4a2dd90dc4b974e4073ee4d8e1c7e0f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 109,
    "line": 56,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/SecondMoment/Variante82e1d90aeae81913a5748315f0202c646b3877c8167ce1ff65d77f3d95d591f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:5ba45ec0929d1aee9932453d8c2c0b2b1fed5b3d5f8286967968d180afecd9bc",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/SecondMoment/Variante82e1d90aeae81913a5748315f0202c646b3877c8167ce1ff65d77f3d95d591f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:1b54cdc9-6b76-725a-952a-a34712d79400`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 56–109.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private theorem sum_testKernel_sq_eq_integral_norm_bigF_sq
    (h : IsAdmissible lam eta) (hZ : IsConjInvariant Z m) :
    ∑ z ∈ Z, ∑ s ∈ Z, (m z * m s : ℂ) * testKernel eta (z - s) ^ 2
      = ∫ u in Set.Ioo (-lam) lam, ∫ v in Set.Ioo (-lam) lam,
          ((‖bigF eta Z m u v‖ ^ 2 : ℝ) : ℂ) := by
  rw [sum_testKernel_sq_eq_sum_conj hZ]
  have hint : ∀ p ∈ Z ×ˢ Z,
      Integrable
        (fun u => (fz eta p.1 u * (starRingEnd ℂ) (fz eta p.2 u)) * (1 : ℂ))
        (volume.restrict (Set.Ioo (-lam) lam)) := by
    intro p hp
    simp only [mul_one]
    change Integrable (fz eta p.1 * star (fz eta p.2))
      (volume.restrict (Set.Ioo (-lam) lam))
    exact (memLp_fz h p.1).integrable_mul (memLp_fz h p.2).star
  have hfactor := integral_double_finsetSum (Z ×ˢ Z)
    (fun p => (m p.1 * m p.2 : ℂ))
    (fun p u => fz eta p.1 u * (starRingEnd ℂ) (fz eta p.2 u))
    (fun _ => (1 : ℂ)) lam hint
  simp only [mul_one] at hfactor
  calc
    (∑ z ∈ Z, ∑ s ∈ Z,
        (m z * m s : ℂ) * testKernel eta (z - (starRingEnd ℂ) s) ^ 2) =
        ∑ p ∈ Z ×ˢ Z, (m p.1 * m p.2 : ℂ) *
          (∫ u in Set.Ioo (-lam) lam,
            fz eta p.1 u * (starRingEnd ℂ) (fz eta p.2 u)) ^ 2 := by
      rw [Finset.sum_product]
      apply Finset.sum_congr rfl
      intro z hz
      apply Finset.sum_congr rfl
      intro s hs
      rw [testKernel_sub_conj h z s]
    _ = ∫ u in Set.Ioo (-lam) lam, ∫ v in Set.Ioo (-lam) lam,
        ∑ p ∈ Z ×ˢ Z, (m p.1 * m p.2 : ℂ) *
          (fz eta p.1 u * (starRingEnd ℂ) (fz eta p.2 u)) *
          (fz eta p.1 v * (starRingEnd ℂ) (fz eta p.2 v)) := hfactor.symm
    _ = ∫ u in Set.Ioo (-lam) lam, ∫ v in Set.Ioo (-lam) lam,
        bigF eta Z m u v * (starRingEnd ℂ) (bigF eta Z m u v) := by
      apply integral_congr_ae
      filter_upwards [] with u
      apply integral_congr_ae
      filter_upwards [] with v
      exact sum_pair_fz_mul_conj_eq_bigF_mul_conj_alpha Z m u v
    _ = ∫ u in Set.Ioo (-lam) lam, ∫ v in Set.Ioo (-lam) lam,
        ((‖bigF eta Z m u v‖ ^ 2 : ℝ) : ℂ) := by
      apply integral_congr_ae
      filter_upwards [] with u
      apply integral_congr_ae
      filter_upwards [] with v
      rw [Complex.mul_conj']
      norm_cast

/-- Real-valued form of the second-moment identity, matching the right side of Bessel's
inequality. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/SecondMoment/Variante82e1d90aeae81913a5748315f0202c646b3877c8167ce1ff65d77f3d95d591f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/SecondMoment/Variante82e1d90aeae81913a5748315f0202c646b3877c8167ce1ff65d77f3d95d591f.lean#L56).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1f21bf64d4a2dd90dc4b974e4073ee4d8e1c7e0f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
