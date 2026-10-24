# coefficients_two_five_diagonal_norm

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "35c70576488684af38a580bc1a28b026f32c76e1",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 208,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/c2/c2513c05d9e55272fe69a33736cb793ff8a863b665de0836335c663ee5860ddc.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:18479273-a536-63e1-14f3-cba21546b3a7",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:c0e79b65-7342-7e53-f29f-5f1d9f3cbbbc",
  "kind": "theorem",
  "lexical_name": "coefficients_two_five_diagonal_norm",
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
  "slug": "coefficients-two-five-diagonal-norm--ecc586cf30d9b377918beed9",
  "source": {
    "blob": "35c70576488684af38a580bc1a28b026f32c76e1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 218,
    "line": 208,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/RationalPhase/Variantc2513c05d9e55272fe69a33736cb793ff8a863b665de0836335c663ee5860ddc.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ecc586cf30d9b377918beed9bdcf7ccc7851fd2c912f292b61d763dd47161624",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/RationalPhase/Variantc2513c05d9e55272fe69a33736cb793ff8a863b665de0836335c663ee5860ddc.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c0e79b65-7342-7e53-f29f-5f1d9f3cbbbc`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 208–218.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem coefficients_two_five_diagonal_norm :
    ‖(coefficients (2 : ℚ_[5])).1‖ = 5 := by
  have h3 : ‖(3 : ℚ_[5])‖ = 1 :=
    (Padic.norm_natCast_eq_one_iff (p := 5) (n := 3)).2 (by decide)
  have h5 : ‖(5 : ℚ_[5])‖ = (5 : ℝ)⁻¹ := Padic.norm_p
  have hc : (coefficients (2 : ℚ_[5])).1 = -3 / 5 := by
    norm_num [coefficients]
  rw [hc, norm_div, norm_neg, h3, h5]
  norm_num

/-- Field validity does not establish integrality of the resulting matrix. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/RationalPhase/Variantc2513c05d9e55272fe69a33736cb793ff8a863b665de0836335c663ee5860ddc.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/RationalPhase/Variantc2513c05d9e55272fe69a33736cb793ff8a863b665de0836335c663ee5860ddc.lean#L208).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `35c70576488684af38a580bc1a28b026f32c76e1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
