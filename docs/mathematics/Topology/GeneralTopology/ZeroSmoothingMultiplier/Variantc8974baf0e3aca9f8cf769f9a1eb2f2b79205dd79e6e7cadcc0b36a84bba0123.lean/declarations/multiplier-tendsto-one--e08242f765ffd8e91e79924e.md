# multiplier_tendsto_one

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "23c8828101129b914c14844478fb12b20888fecf",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 113,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/c8/c8974baf0e3aca9f8cf769f9a1eb2f2b79205dd79e6e7cadcc0b36a84bba0123.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:1e5c0e37-16a2-314c-3eaa-f4ffccc6290d",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:8bdb2159-f0e5-12bb-9822-be4e4e56aa58",
  "kind": "theorem",
  "lexical_name": "multiplier_tendsto_one",
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
  "slug": "multiplier-tendsto-one--e08242f765ffd8e91e79924e",
  "source": {
    "blob": "23c8828101129b914c14844478fb12b20888fecf",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 124,
    "line": 113,
    "path": "GRWTSK/Topology/GeneralTopology/ZeroSmoothingMultiplier/Variantc8974baf0e3aca9f8cf769f9a1eb2f2b79205dd79e6e7cadcc0b36a84bba0123.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e08242f765ffd8e91e79924e028f72ba641535915169dd0a4afda3c9cdc51705",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/ZeroSmoothingMultiplier/Variantc8974baf0e3aca9f8cf769f9a1eb2f2b79205dd79e6e7cadcc0b36a84bba0123.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:8bdb2159-f0e5-12bb-9822-be4e4e56aa58`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 113–124.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem multiplier_tendsto_one {ι : Type*} {l : Filter ι} (z : ℂ)
    (ε : ι → ℝ) (hε : ∀ i, 0 < ε i) (hlim : Tendsto ε l (𝓝 0)) :
    Tendsto (fun i ↦ multiplier (ε i) (hε i) z) l (𝓝 1) := by
  simp_rw [multiplier_eq_convolution]
  have hg : Continuous (fun x : ℝ ↦ Complex.exp (-(z * (x : ℂ)))) := by fun_prop
  simpa only [mollifier, Complex.ofReal_zero, mul_zero, neg_zero, Complex.exp_zero] using
    (ContDiffBump.convolution_tendsto_right_of_continuous
      (φ := fun i ↦ smoothingBump (ε i) (hε i)) (μ := volume) hlim hg 0)

end
end ZeroSmoothingMultiplier
end FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/ZeroSmoothingMultiplier/Variantc8974baf0e3aca9f8cf769f9a1eb2f2b79205dd79e6e7cadcc0b36a84bba0123.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/ZeroSmoothingMultiplier/Variantc8974baf0e3aca9f8cf769f9a1eb2f2b79205dd79e6e7cadcc0b36a84bba0123.lean#L113).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `23c8828101129b914c14844478fb12b20888fecf` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
