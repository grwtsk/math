# sinh_half_dist_add_dist

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "5199c8a55a7a4fe319e2ad61ba290e868fc7411a",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 80,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/1f/1f89b8720f2f706c9656c9c8d79587eed8c16d6ab42c076913b2a51536e4607d.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:57571416-3449-02ea-94b2-7ced97f15f8e",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:39074ca0-477e-ad3c-3b2b-c379eb666f58",
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
  "slug": "sinh-half-dist-add-dist--73aacb93c7b5ec3efc74063a",
  "source": {
    "blob": "5199c8a55a7a4fe319e2ad61ba290e868fc7411a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 90,
    "line": 80,
    "path": "GRWTSK/Topology/MetricTopology/Metric/Variant1f89b8720f2f706c9656c9c8d79587eed8c16d6ab42c076913b2a51536e4607d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:73aacb93c7b5ec3efc74063a1cdca3e1381a02f9f32b03f0971c39742b9bc272",
  "verification": {
    "reference": "docs/verification/Topology/MetricTopology/Metric/Variant1f89b8720f2f706c9656c9c8d79587eed8c16d6ab42c076913b2a51536e4607d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:39074ca0-477e-ad3c-3b2b-c379eb666f58`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 80–90.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem sinh_half_dist_add_dist (a b c : ℍ) : sinh ((dist a b + dist b c) / 2) =
    (dist (a : ℂ) b * dist (c : ℂ) (conj ↑b) + dist (b : ℂ) c * dist (a : ℂ) (conj ↑b)) /
      (2 * sqrt (a.im * c.im) * dist (b : ℂ) (conj ↑b)) := by
  simp only [add_div _ _ (2 : ℝ), sinh_add, sinh_half_dist, cosh_half_dist, div_mul_div_comm]
  rw [← add_div, Complex.dist_self_conj, coe_im, abs_of_pos b.im_pos, mul_comm (dist (b : ℂ) _),
    dist_comm (b : ℂ), Complex.dist_conj_comm, mul_mul_mul_comm, mul_mul_mul_comm _ _ _ b.im]
  congr 2
  rw [sqrt_mul, sqrt_mul, sqrt_mul, mul_comm (sqrt a.im), mul_mul_mul_comm, mul_self_sqrt,
      mul_comm] <;> exact (im_pos _).le
#align upper_half_plane.sinh_half_dist_add_dist UpperHalfPlane.sinh_half_dist_add_dist

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/MetricTopology/Metric/Variant1f89b8720f2f706c9656c9c8d79587eed8c16d6ab42c076913b2a51536e4607d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/MetricTopology/Metric/Variant1f89b8720f2f706c9656c9c8d79587eed8c16d6ab42c076913b2a51536e4607d.lean#L80).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5199c8a55a7a4fe319e2ad61ba290e868fc7411a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
