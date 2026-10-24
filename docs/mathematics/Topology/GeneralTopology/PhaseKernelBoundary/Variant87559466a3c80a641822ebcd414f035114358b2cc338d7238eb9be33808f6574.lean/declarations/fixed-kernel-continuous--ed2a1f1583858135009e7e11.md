# fixed_kernel_continuous

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
      "line": 91,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/87/87559466a3c80a641822ebcd414f035114358b2cc338d7238eb9be33808f6574.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:d25931dc-32a0-05e6-b48b-f531ca8cbeb7",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:701ee6ff-e320-a22a-c9de-22b2957de7e5",
  "kind": "theorem",
  "lexical_name": "fixed_kernel_continuous",
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
  "slug": "fixed-kernel-continuous--ed2a1f1583858135009e7e11",
  "source": {
    "blob": "b2e30a655051f4d2160dbc6654c6894c48f97800",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 103,
    "line": 91,
    "path": "GRWTSK/Topology/GeneralTopology/PhaseKernelBoundary/Variant87559466a3c80a641822ebcd414f035114358b2cc338d7238eb9be33808f6574.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ed2a1f1583858135009e7e116869c35295662bebf8a9a83571609f757e550617",
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

Occurrence: `result:701ee6ff-e320-a22a-c9de-22b2957de7e5`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 91–103.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem fixed_kernel_continuous (k : ℕ) (hk : k ≤ 2) : Continuous (fixedKernel k) := by
  apply continuous_of_dominated (bound := bumpMomentDensity k)
  · exact fun s ↦ (fixed_kernel_integrable k hk s).aestronglyMeasurable
  · intro s
    filter_upwards [] with u
    rw [Real.norm_eq_abs, abs_mul,
      abs_of_nonneg (bump_moment_density_nonneg k u)]
    exact mul_le_of_le_one_left (bump_moment_density_nonneg k u) (Real.abs_cos_le_one _)
  · exact bump_moment_density_integrable k hk
  · filter_upwards [] with u
    fun_prop

/-- The scaled logarithm of one fixed arithmetic index tends to zero. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/PhaseKernelBoundary/Variant87559466a3c80a641822ebcd414f035114358b2cc338d7238eb9be33808f6574.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/PhaseKernelBoundary/Variant87559466a3c80a641822ebcd414f035114358b2cc338d7238eb9be33808f6574.lean#L91).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b2e30a655051f4d2160dbc6654c6894c48f97800` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
