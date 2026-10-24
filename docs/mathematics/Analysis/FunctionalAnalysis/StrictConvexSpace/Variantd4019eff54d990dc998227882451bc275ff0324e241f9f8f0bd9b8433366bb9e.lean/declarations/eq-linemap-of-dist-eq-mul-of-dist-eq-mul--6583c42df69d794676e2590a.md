# eq_lineMap_of_dist_eq_mul_of_dist_eq_mul

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "2c85b502c6a46387ab12bd17029c343d942d3f84",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 254,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/d4/d4019eff54d990dc998227882451bc275ff0324e241f9f8f0bd9b8433366bb9e.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:b32a26c6-e85b-cd9c-4332-64e0e5a94176",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:b044f960-b31a-b045-8795-4f0a0c0a185b",
  "kind": "theorem",
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
  "slug": "eq-linemap-of-dist-eq-mul-of-dist-eq-mul--6583c42df69d794676e2590a",
  "source": {
    "blob": "2c85b502c6a46387ab12bd17029c343d942d3f84",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 270,
    "line": 254,
    "path": "GRWTSK/Analysis/FunctionalAnalysis/StrictConvexSpace/Variantd4019eff54d990dc998227882451bc275ff0324e241f9f8f0bd9b8433366bb9e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:6583c42df69d794676e2590a346264de94553cc764a8b7e4dba6cd97f02f29b7",
  "verification": {
    "reference": "docs/verification/Analysis/FunctionalAnalysis/StrictConvexSpace/Variantd4019eff54d990dc998227882451bc275ff0324e241f9f8f0bd9b8433366bb9e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b044f960-b31a-b045-8795-4f0a0c0a185b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 254–270.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem eq_lineMap_of_dist_eq_mul_of_dist_eq_mul {x y z : PE} (hxy : dist x y = r * dist x z)
    (hyz : dist y z = (1 - r) * dist x z) : y = AffineMap.lineMap x z r := by
  have : y -ᵥ x ∈ [(0 : E) -[ℝ] z -ᵥ x] := by
    rw [← dist_add_dist_eq_iff, dist_zero_left, dist_vsub_cancel_right, ← dist_eq_norm_vsub', ←
      dist_eq_norm_vsub', hxy, hyz, ← add_mul, add_sub_cancel'_right, one_mul]
  rcases eq_or_ne x z with (rfl | hne)
  · obtain rfl : y = x := by simpa
    simp
  · rw [← dist_ne_zero] at hne
    rcases this with ⟨a, b, _, hb, _, H⟩
    rw [smul_zero, zero_add] at H
    have H' := congr_arg norm H
    rw [norm_smul, Real.norm_of_nonneg hb, ← dist_eq_norm_vsub', ← dist_eq_norm_vsub', hxy,
      mul_left_inj' hne] at H'
    rw [AffineMap.lineMap_apply, ← H', H, vsub_vadd]
#align eq_line_map_of_dist_eq_mul_of_dist_eq_mul eq_lineMap_of_dist_eq_mul_of_dist_eq_mul

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/FunctionalAnalysis/StrictConvexSpace/Variantd4019eff54d990dc998227882451bc275ff0324e241f9f8f0bd9b8433366bb9e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/FunctionalAnalysis/StrictConvexSpace/Variantd4019eff54d990dc998227882451bc275ff0324e241f9f8f0bd9b8433366bb9e.lean#L254).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2c85b502c6a46387ab12bd17029c343d942d3f84` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
