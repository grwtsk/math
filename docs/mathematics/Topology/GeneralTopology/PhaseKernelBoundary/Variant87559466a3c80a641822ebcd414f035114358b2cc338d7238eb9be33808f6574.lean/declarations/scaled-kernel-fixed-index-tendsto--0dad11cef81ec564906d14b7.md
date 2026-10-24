# scaled_kernel_fixed_index_tendsto

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "b2e30a655051f4d2160dbc6654c6894c48f97800",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 137,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/87/87559466a3c80a641822ebcd414f035114358b2cc338d7238eb9be33808f6574.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:0bfcd023-da46-76e8-4763-2e875a0a7d85",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:8405977e-662e-add6-00a5-047c5f5d5f57",
  "kind": "theorem",
  "lexical_name": "scaled_kernel_fixed_index_tendsto",
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
  "slug": "scaled-kernel-fixed-index-tendsto--0dad11cef81ec564906d14b7",
  "source": {
    "blob": "b2e30a655051f4d2160dbc6654c6894c48f97800",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 159,
    "line": 137,
    "path": "GRWTSK/Topology/GeneralTopology/PhaseKernelBoundary/Variant87559466a3c80a641822ebcd414f035114358b2cc338d7238eb9be33808f6574.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:0dad11cef81ec564906d14b7ae71eb6ef05058ee76af2abb96a0d02760b48493",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/PhaseKernelBoundary/Variant87559466a3c80a641822ebcd414f035114358b2cc338d7238eb9be33808f6574.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:8405977e-662e-add6-00a5-047c5f5d5f57`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 137–159.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem scaled_kernel_fixed_index_tendsto (n : ℕ) :
    Tendsto (fun A : ℝ ↦ scaledKernel A (Real.log n / A)) atTop (nhds 1) := by
  have h0 := (fixed_kernel_continuous 0 (by norm_num)).continuousAt.tendsto.comp
    (log_div_radius_tendsto_zero n)
  have h1 := (fixed_kernel_continuous 1 (by norm_num)).continuousAt.tendsto.comp
    (log_div_radius_tendsto_zero n)
  have h2 := (fixed_kernel_continuous 2 (by norm_num)).continuousAt.tendsto.comp
    (log_div_radius_tendsto_zero n)
  have hn := ((h0.div_const 16).add
    (h1.mul inverse_square_coefficient_tendsto_zero)).add
    (h2.mul inverse_fourth_coefficient_tendsto_zero)
  have hr := hn.div source_normalization_tendsto (by norm_num)
  have heq : (fun A : ℝ ↦ scaledKernel A (Real.log n / A)) =ᶠ[atTop]
      (fun A ↦ (fixedKernel 0 (Real.log n / A) / 16 +
        fixedKernel 1 (Real.log n / A) * (1 / (2 * A ^ 2)) +
        fixedKernel 2 (Real.log n / A) * (1 / A ^ 4)) / sourceNormalization A) := by
    filter_upwards [eventually_ge_atTop (1 : ℝ)] with A hA
    rw [scaled_kernel_eq_three_fixed_kernels A _ hA]
    ring
  convert hr.congr' heq.symm using 1
  norm_num [fixed_kernel_mass_values.1]

/-- The actual von Mangoldt weight at a prime is strictly positive. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/PhaseKernelBoundary/Variant87559466a3c80a641822ebcd414f035114358b2cc338d7238eb9be33808f6574.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/PhaseKernelBoundary/Variant87559466a3c80a641822ebcd414f035114358b2cc338d7238eb9be33808f6574.lean#L137).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b2e30a655051f4d2160dbc6654c6894c48f97800` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
