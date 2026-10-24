# dist_lt_of_sbtw_of_inner_eq_zero

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "edf5f73730f98210e8602e3b59ba946444940eea",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 130,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/82/82ee37f0f9a424ece596c361a11caa80d0fc0ece73b652bf9219d5e072e89d63.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:de8f86bc-e5b1-8fb1-2767-019d15a0fe3c",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:fad2447e-8914-72cb-6049-b676174dd73a",
  "kind": "theorem",
  "lexical_name": "dist_lt_of_sbtw_of_inner_eq_zero",
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
  "slug": "dist-lt-of-sbtw-of-inner-eq-zero--d1870d82008110b1f3e15f74",
  "source": {
    "blob": "edf5f73730f98210e8602e3b59ba946444940eea",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 145,
    "line": 130,
    "path": "GRWTSK/Topology/MetricTopology/PerpBisector/Variant82ee37f0f9a424ece596c361a11caa80d0fc0ece73b652bf9219d5e072e89d63.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d1870d82008110b1f3e15f7474fa5b29b80da81735ae2c087d4e91d58f7f354e",
  "verification": {
    "reference": "docs/verification/Topology/MetricTopology/PerpBisector/Variant82ee37f0f9a424ece596c361a11caa80d0fc0ece73b652bf9219d5e072e89d63.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:fad2447e-8914-72cb-6049-b676174dd73a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 130–145.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem dist_lt_of_sbtw_of_inner_eq_zero {a b c p : P}
    (h_sbtw : Sbtw ℝ a b c)
    (h_inner : ⟪p -ᵥ a, b -ᵥ a⟫ = 0) :
    dist p b < dist p c := by
  obtain ⟨t, ⟨ht0, ht1⟩, hb_eq⟩ := h_sbtw.mem_image_Ioo
  have hb : b -ᵥ a = t • (c -ᵥ a) := by simp [← hb_eq, AffineMap.lineMap_apply]
  have hpc : ⟪p -ᵥ a, c -ᵥ a⟫ = 0 := by simpa [ht0.ne', hb, inner_smul_right] using h_inner
  have h_sq_ineq : dist p b ^ 2 < dist p c ^ 2 := by
    rw [← hb_eq, dist_sq_lineMap_of_inner_eq_zero t hpc, dist_sq_of_inner_eq_zero hpc]
    have hv_pos : 0 < dist a c ^ 2 := sq_pos_of_pos (dist_pos.mpr h_sbtw.left_ne_right)
    have ht_sq_lt : t ^ 2 < 1 := sq_lt_one_iff₀ ht0.le |>.mpr ht1
    nlinarith [sq_nonneg (dist p a), sq_nonneg (dist a c)]
  simpa only [Real.sqrt_sq dist_nonneg] using Real.sqrt_lt_sqrt (sq_nonneg _) h_sq_ineq

/-- If `b` is weakly between `a` and `c`, and `p -ᵥ a` is orthogonal to `c -ᵥ a`,
then `p` is at least as close to `b` as to `c`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/MetricTopology/PerpBisector/Variant82ee37f0f9a424ece596c361a11caa80d0fc0ece73b652bf9219d5e072e89d63.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/MetricTopology/PerpBisector/Variant82ee37f0f9a424ece596c361a11caa80d0fc0ece73b652bf9219d5e072e89d63.lean#L130).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `edf5f73730f98210e8602e3b59ba946444940eea` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
