# weighted_prefix_abs_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "edaad9990003b638d717db8c0db2108e6cf46bfa",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 83,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/e0/e0bd3051749b6e3140c92be30feca7d44dd8f922e2e0c62c9a770b1b54247eaa.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:2f03789c-e27b-a0f6-b8a5-57ea53b53356",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:0a670757-8308-5723-d079-3d228c6bd43e",
  "kind": "theorem",
  "lexical_name": "weighted_prefix_abs_le",
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
  "slug": "weighted-prefix-abs-le--90d0115c71f0efaf94085d0f",
  "source": {
    "blob": "edaad9990003b638d717db8c0db2108e6cf46bfa",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 105,
    "line": 83,
    "path": "GRWTSK/Topology/GeneralTopology/SpectralUnificationOfComputabilityAndAlgebraicSymmetry/Variante0bd3051749b6e3140c92be30feca7d44dd8f922e2e0c62c9a770b1b54247eaa.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:90d0115c71f0efaf94085d0f921e6caa9da36f67d99280f1e4eb353867a1e177",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/SpectralUnificationOfComputabilityAndAlgebraicSymmetry/Variante0bd3051749b6e3140c92be30feca7d44dd8f922e2e0c62c9a770b1b54247eaa.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:0a670757-8308-5723-d079-3d228c6bd43e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 83–105.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem weighted_prefix_abs_le {G : ℝ → ℝ} {S B : ℝ}
    (hS : 0 ≤ S)
    (hderiv : ∀ s ∈ Icc (0 : ℝ) S, |deriv G s| ≤ B * (s + 4)) :
    |-(∫ s in (0 : ℝ)..S, weightedMobiusPrimitive s * deriv G s)| ≤
      4 * B * (Real.exp (S / 2) * (S + 2) - 2) := by
  have hbound := intervalIntegral.norm_integral_le_of_norm_le (μ := volume) hS
    (f := fun s : ℝ => weightedMobiusPrimitive s * deriv G s)
    (g := fun s : ℝ => (2 * B) * (Real.exp (s / 2) * (s + 4))) ?_
    ((by fun_prop : Continuous (fun s : ℝ =>
      (2 * B) * (Real.exp (s / 2) * (s + 4)))).intervalIntegrable _ _)
  · rw [intervalIntegral.integral_const_mul, integral_exp_half_linear] at hbound
    rw [Real.norm_eq_abs] at hbound
    rw [abs_neg]
    convert hbound using 1
    ring
  · filter_upwards with s hs
    rw [Real.norm_eq_abs, abs_mul]
    calc
      _ ≤ (2 * Real.exp (s / 2)) * (B * (s + 4)) :=
        mul_le_mul (weightedMobiusPrimitive_abs_le hs.1.le)
          (hderiv s ⟨hs.1.le, hs.2⟩) (abs_nonneg _) (by positivity)
      _ = _ := by ring

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/SpectralUnificationOfComputabilityAndAlgebraicSymmetry/Variante0bd3051749b6e3140c92be30feca7d44dd8f922e2e0c62c9a770b1b54247eaa.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/SpectralUnificationOfComputabilityAndAlgebraicSymmetry/Variante0bd3051749b6e3140c92be30feca7d44dd8f922e2e0c62c9a770b1b54247eaa.lean#L83).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `edaad9990003b638d717db8c0db2108e6cf46bfa` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
