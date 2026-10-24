# real_remainder_scale_comparison

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "265ac85d58c925c8a4202ea06de1c7f5e5dab49d",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 109,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/aa/aa2892a9c9c2c4181e44c864767d6c667ea313a820041923dfad2f472c675199.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:1015e263-fc3d-e582-c2b3-8c9d6923802a",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:6c04db5e-eb6e-ac6d-8436-c974beb842d4",
  "kind": "theorem",
  "lexical_name": "real_remainder_scale_comparison",
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
  "slug": "real-remainder-scale-comparison--6171468f23d5f8e6c9577497",
  "source": {
    "blob": "265ac85d58c925c8a4202ea06de1c7f5e5dab49d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 127,
    "line": 109,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/ScaleComparison/Variantaa2892a9c9c2c4181e44c864767d6c667ea313a820041923dfad2f472c675199.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:6171468f23d5f8e6c9577497f052b18744db9988b50cce7940ebe46a1da52a12",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/ScaleComparison/Variantaa2892a9c9c2c4181e44c864767d6c667ea313a820041923dfad2f472c675199.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:6c04db5e-eb6e-ac6d-8436-c974beb842d4`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 109–127.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem real_remainder_scale_comparison (A q r : ℝ)
    (hA : 1 ≤ A) (hq : 1 ≤ q) (hr : 1 ≤ r) :
    |Real.sqrt r * realThetaRemainder A (r * q) - realThetaRemainder A q| ≤
      scaleComparisonCoefficient A * Real.log r / Real.sqrt q := by
  have hq0 : 0 < q := by linarith
  have hr0 : 0 < r := by linarith
  have hqq : q ≤ r * q := by nlinarith
  have h := sqrtWeightedRemainder_abs_sub_le_log_ratio A q (r * q) hA hq hqq
  have heq : sqrtWeightedRemainder A (r * q) - sqrtWeightedRemainder A q =
      Real.sqrt q * (Real.sqrt r * realThetaRemainder A (r * q) -
        realThetaRemainder A q) := by
    unfold sqrtWeightedRemainder
    rw [Real.sqrt_mul hr0.le]
    ring
  rw [heq, abs_mul, abs_of_pos (Real.sqrt_pos.mpr hq0),
    mul_div_cancel_right₀ r hq0.ne'] at h
  exact (le_div_iff₀ (Real.sqrt_pos.mpr hq0)).mpr (by simpa only [mul_comm] using h)

/-- At positive natural arguments this is the original complete finite source remainder. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/ScaleComparison/Variantaa2892a9c9c2c4181e44c864767d6c667ea313a820041923dfad2f472c675199.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/ScaleComparison/Variantaa2892a9c9c2c4181e44c864767d6c667ea313a820041923dfad2f472c675199.lean#L109).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `265ac85d58c925c8a4202ea06de1c7f5e5dab49d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
