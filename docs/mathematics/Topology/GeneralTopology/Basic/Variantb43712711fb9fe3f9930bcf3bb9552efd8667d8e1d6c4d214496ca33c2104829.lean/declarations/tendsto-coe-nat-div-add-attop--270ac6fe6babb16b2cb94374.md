# tendsto_coe_nat_div_add_atTop

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "d4d700d75becd50b8155f0085e13ae951929d18c",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 72,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/b4/b43712711fb9fe3f9930bcf3bb9552efd8667d8e1d6c4d214496ca33c2104829.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:27bd0064-69d4-9415-4649-cf10dd3a55b1",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:ac2832f6-10db-d95b-950c-0f02718f32e0",
  "kind": "theorem",
  "lexical_name": "tendsto_coe_nat_div_add_atTop",
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
  "slug": "tendsto-coe-nat-div-add-attop--270ac6fe6babb16b2cb94374",
  "source": {
    "blob": "d4d700d75becd50b8155f0085e13ae951929d18c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 93,
    "line": 72,
    "path": "GRWTSK/Topology/GeneralTopology/Basic/Variantb43712711fb9fe3f9930bcf3bb9552efd8667d8e1d6c4d214496ca33c2104829.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:270ac6fe6babb16b2cb943741e4a9e0dea38f636fb507dd7dfda085cb20b622a",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Basic/Variantb43712711fb9fe3f9930bcf3bb9552efd8667d8e1d6c4d214496ca33c2104829.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ac2832f6-10db-d95b-950c-0f02718f32e0`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 72–93.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem tendsto_coe_nat_div_add_atTop {𝕜 : Type*} [DivisionRing 𝕜] [TopologicalSpace 𝕜]
    [CharZero 𝕜] [Algebra ℝ 𝕜] [ContinuousSMul ℝ 𝕜] [TopologicalDivisionRing 𝕜] (x : 𝕜) :
    Tendsto (fun n : ℕ => (n : 𝕜) / (n + x)) atTop (𝓝 1) := by
  refine' Tendsto.congr' ((eventually_ne_atTop 0).mp (eventually_of_forall fun n hn => _)) _
  · exact fun n : ℕ => 1 / (1 + x / n)
  · field_simp [Nat.cast_ne_zero.mpr hn]
  · have : 𝓝 (1 : 𝕜) = 𝓝 (1 / (1 + x * (0 : 𝕜))) := by
      rw [mul_zero, add_zero, div_one]
    rw [this]
    refine' tendsto_const_nhds.div (tendsto_const_nhds.add _) (by simp)
    simp_rw [div_eq_mul_inv]
    refine' tendsto_const_nhds.mul _
    have := ((continuous_algebraMap ℝ 𝕜).tendsto _).comp tendsto_inverse_atTop_nhds_0_nat
    rw [map_zero, Filter.tendsto_atTop'] at this
    refine' Iff.mpr tendsto_atTop' _
    intros
    simp_all only [comp_apply, map_inv₀, map_natCast]
#align tendsto_coe_nat_div_add_at_top tendsto_coe_nat_div_add_atTop

/-! ### Powers -/


```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Basic/Variantb43712711fb9fe3f9930bcf3bb9552efd8667d8e1d6c4d214496ca33c2104829.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Basic/Variantb43712711fb9fe3f9930bcf3bb9552efd8667d8e1d6c4d214496ca33c2104829.lean#L72).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d4d700d75becd50b8155f0085e13ae951929d18c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
