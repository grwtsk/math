# sourcePlainSampling_integrableOn

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "b74de77967da4e16e5e324cb89f06fba8c14c3e7",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 77,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/84/84b21a2093d3a4a938df1e5d136e7c175df73a5a49da30bc55e6145eee519636.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:768980f5-5f0d-e32a-185b-0a403a21aabf",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:2b083634-694a-a16a-7f8a-9f0e44f0c764",
  "kind": "theorem",
  "lexical_name": "sourcePlainSampling_integrableOn",
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
  "slug": "sourceplainsampling-integrableon--62fe9e352a758f162b18fed1",
  "source": {
    "blob": "b74de77967da4e16e5e324cb89f06fba8c14c3e7",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 103,
    "line": 77,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/SourceSamplingTaylor/Variant84b21a2093d3a4a938df1e5d136e7c175df73a5a49da30bc55e6145eee519636.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:62fe9e352a758f162b18fed1f3e06ba37ded314d6da3cfd18598ff8676f406af",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/SourceSamplingTaylor/Variant84b21a2093d3a4a938df1e5d136e7c175df73a5a49da30bc55e6145eee519636.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:2b083634-694a-a16a-7f8a-9f0e44f0c764`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 77–103.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem sourcePlainSampling_integrableOn {A : ℝ} (hA : 1 ≤ A) (k : ℝ) :
    IntegrableOn (sourcePlainSamplingTerm A k) (Ioi (0 : ℝ)) := by
  have hs := integrableOn_image_iff_integrableOn_abs_deriv_smul MeasurableSet.univ
    (fun x _ ↦ (Real.hasDerivAt_exp x).hasDerivWithinAt)
    Real.exp_injective.injOn (sourcePlainSamplingTerm A k)
  simp only [image_univ, Real.range_exp,
    abs_of_pos (Real.exp_pos _), smul_eq_mul] at hs
  apply hs.mpr
  rw [integrableOn_univ]
  have he : (fun r : ℝ ↦ Real.exp r * sourcePlainSamplingTerm A k (Real.exp r)) =
      fun r ↦ Real.exp (-Real.log k / 2) *
        (Real.exp (r / 2) * sourceCorrelation explicitSecondDerivative A (Real.log k + r)) := by
    funext r
    dsimp [sourcePlainSamplingTerm]
    rw [Real.log_exp, ← mul_assoc, ← Real.exp_add, ← mul_assoc, ← Real.exp_add]
    congr 2
    ring
  rw [he]
  have hp : 0 < A := lt_of_lt_of_le (by norm_num) hA
  have hc := (CorrelationRegularity.sourceCorrelation_contDiff A hp).continuous
  have hsupp := (CorrelationRegularity.sourceCorrelation_hasCompactSupport A hp).comp_homeomorph
     (Homeomorph.addLeft (Real.log k))
  have hcontinuous : Continuous (fun r : ℝ ↦ Real.exp (r / 2) *
      sourceCorrelation explicitSecondDerivative A (Real.log k + r)) := by fun_prop
  exact (hcontinuous.integrable_of_hasCompactSupport hsupp.mul_left).const_mul _

/-- The actual logarithmic profile is integrable on the full positive axis. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/SourceSamplingTaylor/Variant84b21a2093d3a4a938df1e5d136e7c175df73a5a49da30bc55e6145eee519636.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/SourceSamplingTaylor/Variant84b21a2093d3a4a938df1e5d136e7c175df73a5a49da30bc55e6145eee519636.lean#L77).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b74de77967da4e16e5e324cb89f06fba8c14c3e7` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
