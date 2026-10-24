# eq_lineMap_of_dist_eq_mul_of_dist_eq_mul

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "a40cf4fa42c1040072c868ca09521201609465bd",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 113,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/ef/effdb897300cc2169ba9d32674ec022fd70dabf3c6858fa21fa17542f781222c.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:8ec83b62-ca28-0711-1a03-b2d07ff3a8f7",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:4c4a6515-0be5-25af-3f9f-cca341e1e625",
  "kind": "lemma",
  "lexical_name": "eq_lineMap_of_dist_eq_mul_of_dist_eq_mul",
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
  "slug": "eq-linemap-of-dist-eq-mul-of-dist-eq-mul--d1bc8d24b89c11cce938875d",
  "source": {
    "blob": "a40cf4fa42c1040072c868ca09521201609465bd",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 129,
    "line": 113,
    "path": "GRWTSK/Topology/MetricTopology/StrictConvexBetween/Varianteffdb897300cc2169ba9d32674ec022fd70dabf3c6858fa21fa17542f781222c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d1bc8d24b89c11cce938875db193bd0ee74d5bcbb91c73ad802d021c8c248417",
  "verification": {
    "reference": "docs/verification/Topology/MetricTopology/StrictConvexBetween/Varianteffdb897300cc2169ba9d32674ec022fd70dabf3c6858fa21fa17542f781222c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:4c4a6515-0be5-25af-3f9f-cca341e1e625`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 113–129.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma eq_lineMap_of_dist_eq_mul_of_dist_eq_mul (hxy : dist x y = r * dist x z)
    (hyz : dist y z = (1 - r) * dist x z) : y = AffineMap.lineMap x z r := by
  have : y -ᵥ x ∈ [(0 : E) -[ℝ] z -ᵥ x] := by
    rw [mem_segment_iff_wbtw, ← dist_add_dist_eq_iff, dist_zero, dist_vsub_cancel_right,
      ← dist_eq_norm_vsub', ← dist_eq_norm_vsub', hxy, hyz, ← add_mul, add_sub_cancel,
      one_mul]
  obtain rfl | hne := eq_or_ne x z
  · obtain rfl : y = x := by simpa
    simp
  · rw [← dist_ne_zero] at hne
    obtain ⟨a, b, _, hb, _, H⟩ := this
    rw [smul_zero, zero_add] at H
    have H' := congr_arg norm H
    rw [norm_smul, Real.norm_of_nonneg hb, ← dist_eq_norm_vsub', ← dist_eq_norm_vsub', hxy,
      mul_left_inj' hne] at H'
    rw [AffineMap.lineMap_apply, ← H', H, vsub_vadd]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/MetricTopology/StrictConvexBetween/Varianteffdb897300cc2169ba9d32674ec022fd70dabf3c6858fa21fa17542f781222c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/MetricTopology/StrictConvexBetween/Varianteffdb897300cc2169ba9d32674ec022fd70dabf3c6858fa21fa17542f781222c.lean#L113).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a40cf4fa42c1040072c868ca09521201609465bd` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
