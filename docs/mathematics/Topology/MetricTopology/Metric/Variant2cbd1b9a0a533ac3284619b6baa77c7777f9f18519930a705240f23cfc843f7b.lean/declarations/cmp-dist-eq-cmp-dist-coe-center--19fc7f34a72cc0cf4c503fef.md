# cmp_dist_eq_cmp_dist_coe_center

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "6483d621ed3327fc861996655715a987fd1388ca",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 151,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/2c/2cbd1b9a0a533ac3284619b6baa77c7777f9f18519930a705240f23cfc843f7b.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:d6baaa35-e2e1-1620-0b8d-eaddca787e25",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:18f5cddb-87e1-10e2-38c2-a9b76901a0ae",
  "kind": "theorem",
  "lexical_name": "cmp_dist_eq_cmp_dist_coe_center",
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
  "slug": "cmp-dist-eq-cmp-dist-coe-center--19fc7f34a72cc0cf4c503fef",
  "source": {
    "blob": "6483d621ed3327fc861996655715a987fd1388ca",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 166,
    "line": 151,
    "path": "GRWTSK/Topology/MetricTopology/Metric/Variant2cbd1b9a0a533ac3284619b6baa77c7777f9f18519930a705240f23cfc843f7b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:19fc7f34a72cc0cf4c503fefa9372b08e3903cf2aa37cb909f91553c403a5f85",
  "verification": {
    "reference": "docs/verification/Topology/MetricTopology/Metric/Variant2cbd1b9a0a533ac3284619b6baa77c7777f9f18519930a705240f23cfc843f7b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:18f5cddb-87e1-10e2-38c2-a9b76901a0ae`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 151–166.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem cmp_dist_eq_cmp_dist_coe_center (z w : ℍ) (r : ℝ) :
    cmp (dist z w) r = cmp (dist (z : ℂ) (w.center r)) (w.im * Real.sinh r) := by
  letI := metricSpaceAux
  rcases lt_or_le r 0 with hr₀ | hr₀
  · trans Ordering.gt
    exacts [(hr₀.trans_le dist_nonneg).cmp_eq_gt,
      ((mul_neg_of_pos_of_neg w.im_pos (sinh_neg_iff.2 hr₀)).trans_le dist_nonneg).cmp_eq_gt.symm]
  have hr₀' : 0 ≤ w.im * Real.sinh r := by positivity
  have hzw₀ : 0 < 2 * z.im * w.im := by positivity
  #adaptation_note /-- https://github.com/leanprover/lean4/pull/6024
  we need to give Lean the hint `(y := w.im * Real.sinh r)`. -/
  simp only [← cosh_strictMonoOn.cmp_map_eq dist_nonneg hr₀,
    ← (pow_left_strictMonoOn₀ two_ne_zero).cmp_map_eq dist_nonneg (y := w.im * Real.sinh r) hr₀',
    dist_coe_center_sq]
  rw [← cmp_mul_pos_left hzw₀, ← cmp_sub_zero, ← mul_sub, ← cmp_add_right, zero_add]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/MetricTopology/Metric/Variant2cbd1b9a0a533ac3284619b6baa77c7777f9f18519930a705240f23cfc843f7b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/MetricTopology/Metric/Variant2cbd1b9a0a533ac3284619b6baa77c7777f9f18519930a705240f23cfc843f7b.lean#L151).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6483d621ed3327fc861996655715a987fd1388ca` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
