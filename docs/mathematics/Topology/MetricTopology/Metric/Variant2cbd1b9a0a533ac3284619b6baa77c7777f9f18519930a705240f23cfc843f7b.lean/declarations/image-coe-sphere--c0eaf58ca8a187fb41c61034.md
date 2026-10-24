# image_coe_sphere

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
      "line": 294,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/2c/2cbd1b9a0a533ac3284619b6baa77c7777f9f18519930a705240f23cfc843f7b.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:c672f80b-497d-7de9-b2af-738262d4c06f",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:f106944e-e39c-ea4c-ccc0-5b9b92c160f3",
  "kind": "theorem",
  "lexical_name": "image_coe_sphere",
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
  "slug": "image-coe-sphere--c0eaf58ca8a187fb41c61034",
  "source": {
    "blob": "6483d621ed3327fc861996655715a987fd1388ca",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 302,
    "line": 294,
    "path": "GRWTSK/Topology/MetricTopology/Metric/Variant2cbd1b9a0a533ac3284619b6baa77c7777f9f18519930a705240f23cfc843f7b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c0eaf58ca8a187fb41c61034f46748ff13c218d814ef7194302d5cc565164783",
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

Occurrence: `result:f106944e-e39c-ea4c-ccc0-5b9b92c160f3`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 294–302.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem image_coe_sphere (z : ℍ) (r : ℝ) :
    ((↑) : ℍ → ℂ) '' sphere (α := ℍ) z r = sphere ↑(z.center r) (z.im * Real.sinh r) := by
  ext w; constructor
  · rintro ⟨w, hw, rfl⟩
    exact dist_eq_iff_dist_coe_center_eq.1 hw
  · intro hw
    lift w to ℍ using im_pos_of_dist_center_le (sphere_subset_closedBall hw)
    exact mem_image_of_mem _ (dist_eq_iff_dist_coe_center_eq.2 hw)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/MetricTopology/Metric/Variant2cbd1b9a0a533ac3284619b6baa77c7777f9f18519930a705240f23cfc843f7b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/MetricTopology/Metric/Variant2cbd1b9a0a533ac3284619b6baa77c7777f9f18519930a705240f23cfc843f7b.lean#L294).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6483d621ed3327fc861996655715a987fd1388ca` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
