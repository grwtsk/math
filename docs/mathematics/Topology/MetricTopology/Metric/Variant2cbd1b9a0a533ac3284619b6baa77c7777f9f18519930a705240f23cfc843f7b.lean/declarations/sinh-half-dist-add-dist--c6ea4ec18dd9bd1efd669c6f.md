# sinh_half_dist_add_dist

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
      "line": 67,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/2c/2cbd1b9a0a533ac3284619b6baa77c7777f9f18519930a705240f23cfc843f7b.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:2d762615-b861-e62c-b334-c85c7e392991",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:90d859da-c319-09f6-f429-9e1d4a4187d1",
  "kind": "theorem",
  "lexical_name": "sinh_half_dist_add_dist",
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
  "slug": "sinh-half-dist-add-dist--c6ea4ec18dd9bd1efd669c6f",
  "source": {
    "blob": "6483d621ed3327fc861996655715a987fd1388ca",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 76,
    "line": 67,
    "path": "GRWTSK/Topology/MetricTopology/Metric/Variant2cbd1b9a0a533ac3284619b6baa77c7777f9f18519930a705240f23cfc843f7b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c6ea4ec18dd9bd1efd669c6fd7da025161e5c24a39f70e8f802583df4ba669de",
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

Occurrence: `result:90d859da-c319-09f6-f429-9e1d4a4187d1`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 67–76.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem sinh_half_dist_add_dist (a b c : ℍ) : sinh ((dist a b + dist b c) / 2) =
    (dist (a : ℂ) b * dist (c : ℂ) (conj ↑b) + dist (b : ℂ) c * dist (a : ℂ) (conj ↑b)) /
      (2 * √(a.im * c.im) * dist (b : ℂ) (conj ↑b)) := by
  simp only [add_div _ _ (2 : ℝ), sinh_add, sinh_half_dist, cosh_half_dist, div_mul_div_comm]
  rw [← add_div, Complex.dist_self_conj, coe_im, abs_of_pos b.im_pos, mul_comm (dist (b : ℂ) _),
    dist_comm (b : ℂ), Complex.dist_conj_comm, mul_mul_mul_comm, mul_mul_mul_comm _ _ _ b.im]
  congr 2
  rw [sqrt_mul, sqrt_mul, sqrt_mul, mul_comm (√a.im), mul_mul_mul_comm, mul_self_sqrt,
      mul_comm] <;> exact (im_pos _).le

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/MetricTopology/Metric/Variant2cbd1b9a0a533ac3284619b6baa77c7777f9f18519930a705240f23cfc843f7b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/MetricTopology/Metric/Variant2cbd1b9a0a533ac3284619b6baa77c7777f9f18519930a705240f23cfc843f7b.lean#L67).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6483d621ed3327fc861996655715a987fd1388ca` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
