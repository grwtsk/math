# Collinear.wbtw_of_dist_eq_of_dist_le

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
      "line": 56,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/ef/effdb897300cc2169ba9d32674ec022fd70dabf3c6858fa21fa17542f781222c.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:d3a9b741-f07d-5c10-9e57-1d742a89afc0",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:4266be88-03a3-294d-01b3-fc8bd1d5ae2d",
  "kind": "theorem",
  "lexical_name": "Collinear.wbtw_of_dist_eq_of_dist_le",
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
  "slug": "collinear-wbtw-of-dist-eq-of-dist-le--0a1e72d540262ba14f5f9c0e",
  "source": {
    "blob": "a40cf4fa42c1040072c868ca09521201609465bd",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 75,
    "line": 56,
    "path": "GRWTSK/Topology/MetricTopology/StrictConvexBetween/Varianteffdb897300cc2169ba9d32674ec022fd70dabf3c6858fa21fa17542f781222c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:0a1e72d540262ba14f5f9c0e196b0d673a9de6a130866b1a18590037f6986207",
  "verification": {
    "reference": "docs/verification/Topology/MetricTopology/StrictConvexBetween/Varianteffdb897300cc2169ba9d32674ec022fd70dabf3c6858fa21fa17542f781222c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:4266be88-03a3-294d-01b3-fc8bd1d5ae2d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 56–75.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem Collinear.wbtw_of_dist_eq_of_dist_le {p p₁ p₂ p₃ : P} {r : ℝ}
    (h : Collinear ℝ ({p₁, p₂, p₃} : Set P)) (hp₁ : dist p₁ p = r) (hp₂ : dist p₂ p ≤ r)
    (hp₃ : dist p₃ p = r) (hp₁p₃ : p₁ ≠ p₃) : Wbtw ℝ p₁ p₂ p₃ := by
  rcases h.wbtw_or_wbtw_or_wbtw with (hw | hw | hw)
  · exact hw
  · by_cases hp₃p₂ : p₃ = p₂
    · simp [hp₃p₂]
    have hs : Sbtw ℝ p₂ p₃ p₁ := ⟨hw, hp₃p₂, hp₁p₃.symm⟩
    have hs' := hs.dist_lt_max_dist p
    rw [hp₁, hp₃, lt_max_iff, lt_self_iff_false, or_false] at hs'
    exact False.elim (hp₂.not_gt hs')
  · by_cases hp₁p₂ : p₁ = p₂
    · simp [hp₁p₂]
    have hs : Sbtw ℝ p₃ p₁ p₂ := ⟨hw, hp₁p₃, hp₁p₂⟩
    have hs' := hs.dist_lt_max_dist p
    rw [hp₁, hp₃, lt_max_iff, lt_self_iff_false, false_or] at hs'
    exact False.elim (hp₂.not_gt hs')

/-- Given three collinear points, two (not equal) with distance `r` from `p` and one with
distance less than `r` from `p`, the third point is strictly between the other two points. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/MetricTopology/StrictConvexBetween/Varianteffdb897300cc2169ba9d32674ec022fd70dabf3c6858fa21fa17542f781222c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/MetricTopology/StrictConvexBetween/Varianteffdb897300cc2169ba9d32674ec022fd70dabf3c6858fa21fa17542f781222c.lean#L56).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a40cf4fa42c1040072c868ca09521201609465bd` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
