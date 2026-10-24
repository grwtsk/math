# deltaSq_tendsto_zero

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "61e14eec712cf2af331979ef17bcfe2f39a69b14",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 144,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/09/095657fcc434ed9b14c42731c625205bd556c29a5350074d193a6e10ea02223a.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:12c671c4-bf50-04d2-23cb-5da2275112ed",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:c2e69e94-0014-a5ba-94fe-e9e10420c46c",
  "kind": "theorem",
  "lexical_name": "deltaSq_tendsto_zero",
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
  "slug": "deltasq-tendsto-zero--7417151d278e25c67981438c",
  "source": {
    "blob": "61e14eec712cf2af331979ef17bcfe2f39a69b14",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 169,
    "line": 144,
    "path": "GRWTSK/Topology/GeneralTopology/DeltaConvergenceLiteralCheck/Variant095657fcc434ed9b14c42731c625205bd556c29a5350074d193a6e10ea02223a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:7417151d278e25c67981438c6a5bdf4f3734b41eef8c041e29f89d16c3585e3d",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/DeltaConvergenceLiteralCheck/Variant095657fcc434ed9b14c42731c625205bd556c29a5350074d193a6e10ea02223a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c2e69e94-0014-a5ba-94fe-e9e10420c46c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 144–169.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem deltaSq_tendsto_zero (ε h : ℕ → ℝ)
    (hεpos : ∀ j, 0 < ε j) (hεsmall : ∀ j, ε j ≤ 1 / 4) (hhpos : ∀ j, 0 ≤ h j)
    (hε : Tendsto ε atTop (nhds 0)) (hh : Tendsto h atTop (nhds 0)) :
    Tendsto (fun j => deltaSq (ε j) (h j)) atTop (nhds 0) := by
  have hint : Tendsto (fun j => ∫ t : ℝ,
      ‖(1 + (t : ℂ) * Complex.I)⁻¹ - boundaryFilter (ε j) (h j) t‖ ^ 2)
      atTop (nhds (∫ _t : ℝ, (0 : ℝ))) := by
    apply tendsto_integral_filter_of_dominated_convergence
      (fun t : ℝ => (1 + 2 * Real.exp 1) ^ 2 * (1 + t ^ 2)⁻¹)
    · exact Eventually.of_forall (fun j => (boundaryFilter_error_integrable
        (ε j) (h j) (hεpos j) (hεsmall j) (hhpos j)).aestronglyMeasurable)
    · filter_upwards [] with j
      filter_upwards [] with t
      simpa only [Real.norm_eq_abs, abs_sq] using
        boundaryFilter_error_sq_le (ε j) (h j) t (hεpos j) (hεsmall j) (hhpos j)
    · exact integrable_inv_one_add_sq.const_mul _
    · filter_upwards [boundaryW_ae_ne_zero] with t ht
      have hc : Tendsto (fun _ : ℕ => (1 + (t : ℂ) * Complex.I)⁻¹) atTop
          (nhds ((1 + (t : ℂ) * Complex.I)⁻¹)) := tendsto_const_nhds
      have hlim := (hc.sub (boundaryFilter_tendsto ε h hε hh t ht)).norm.pow 2
      simpa using hlim
  have hscaled := hint.const_mul (1 / (2 * Real.pi))
  simpa only [deltaSq, integral_zero, mul_zero] using hscaled

/-- The actual source-only distortion tends to zero along every admitted pair of vanishing
sequences. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/DeltaConvergenceLiteralCheck/Variant095657fcc434ed9b14c42731c625205bd556c29a5350074d193a6e10ea02223a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/DeltaConvergenceLiteralCheck/Variant095657fcc434ed9b14c42731c625205bd556c29a5350074d193a6e10ea02223a.lean#L144).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `61e14eec712cf2af331979ef17bcfe2f39a69b14` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
