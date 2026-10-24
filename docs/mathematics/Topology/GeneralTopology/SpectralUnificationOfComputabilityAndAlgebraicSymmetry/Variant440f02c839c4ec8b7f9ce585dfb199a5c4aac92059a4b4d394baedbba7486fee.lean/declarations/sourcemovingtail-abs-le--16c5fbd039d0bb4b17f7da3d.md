# sourceMovingTail_abs_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "8148b50052bd421ae7770651f373bf0497082e27",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 40,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/44/440f02c839c4ec8b7f9ce585dfb199a5c4aac92059a4b4d394baedbba7486fee.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:821204ef-4abe-02a4-65c3-1e7420a53663",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:78de4c6a-30ca-41c7-ad67-8ff947a0c64e",
  "kind": "theorem",
  "lexical_name": "sourceMovingTail_abs_le",
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
  "slug": "sourcemovingtail-abs-le--16c5fbd039d0bb4b17f7da3d",
  "source": {
    "blob": "8148b50052bd421ae7770651f373bf0497082e27",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 67,
    "line": 40,
    "path": "GRWTSK/Topology/GeneralTopology/SpectralUnificationOfComputabilityAndAlgebraicSymmetry/Variant440f02c839c4ec8b7f9ce585dfb199a5c4aac92059a4b4d394baedbba7486fee.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:16c5fbd039d0bb4b17f7da3d6c27b53d94d7238c2aa7c2dff04f8e4ef6f3047b",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/SpectralUnificationOfComputabilityAndAlgebraicSymmetry/Variant440f02c839c4ec8b7f9ce585dfb199a5c4aac92059a4b4d394baedbba7486fee.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:78de4c6a-30ca-41c7-ad67-8ff947a0c64e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 40–67.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem sourceMovingTail_abs_le (A : ℝ) (hA : 1 ≤ A) :
    |sourceMovingTail A| ≤ tailEnvelope A := by
  have hp : 0 < A := lt_of_lt_of_le zero_lt_one hA
  have hfront := square_front_mem A hA
  have hb := intervalIntegral.norm_integral_le_of_norm_le (μ := volume) hfront.2
    (f := fun s : ℝ => weightedMobiusPrimitive s * deriv (sourceLogKernel A) s)
    (g := fun s : ℝ => (1040 / (3 * A ^ 2)) * (Real.exp (s / 2) * (s + 4))) ?_
    ((by fun_prop : Continuous (fun s : ℝ =>
      (1040 / (3 * A ^ 2)) * (Real.exp (s / 2) * (s + 4)))).intervalIntegrable _ _)
  · rw [intervalIntegral.integral_const_mul, integral_exp_half_linear_between,
      show (2 * A) / 2 = A by ring,
      show (2 * Real.log A) / 2 = Real.log A by ring, Real.exp_log hp,
      Real.norm_eq_abs] at hb
    rw [sourceMovingTail, abs_neg]
    unfold tailEnvelope
    convert hb using 1
    ring
  · filter_upwards with s hs
    have hs0 : 0 ≤ s := hfront.1.trans hs.1.le
    rw [Real.norm_eq_abs, abs_mul]
    calc
      _ ≤ (2 * Real.exp (s / 2)) * (520 * (s + 4) / (3 * A ^ 2)) :=
        mul_le_mul (weightedMobiusPrimitive_abs_le hs0)
          (sourceLogKernel_deriv_abs_le_anchored A s hA hs0) (abs_nonneg _) (by positivity)
      _ = _ := by ring

/-- The displayed majorant itself contains exponential growth. This lower
bound concerns the majorant, not the source tail it bounds above. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/SpectralUnificationOfComputabilityAndAlgebraicSymmetry/Variant440f02c839c4ec8b7f9ce585dfb199a5c4aac92059a4b4d394baedbba7486fee.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/SpectralUnificationOfComputabilityAndAlgebraicSymmetry/Variant440f02c839c4ec8b7f9ce585dfb199a5c4aac92059a4b4d394baedbba7486fee.lean#L40).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8148b50052bd421ae7770651f373bf0497082e27` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
