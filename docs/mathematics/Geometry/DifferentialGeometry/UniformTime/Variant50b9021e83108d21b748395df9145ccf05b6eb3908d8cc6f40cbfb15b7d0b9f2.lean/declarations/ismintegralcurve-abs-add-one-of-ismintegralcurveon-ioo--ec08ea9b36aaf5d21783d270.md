# isMIntegralCurve_abs_add_one_of_isMIntegralCurveOn_Ioo

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "2e4a7e2723fe6ef8e7f9deb69d3a2a274fbcc425",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 73,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/50/50b9021e83108d21b748395df9145ccf05b6eb3908d8cc6f40cbfb15b7d0b9f2.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:15ff23c9-9220-fdf8-853b-60393f9aeaf6",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:9cc9f446-ded3-8c1c-3492-bb9f5520fea0",
  "kind": "lemma",
  "lexical_name": "isMIntegralCurve_abs_add_one_of_isMIntegralCurveOn_Ioo",
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
  "slug": "ismintegralcurve-abs-add-one-of-ismintegralcurveon-ioo--ec08ea9b36aaf5d21783d270",
  "source": {
    "blob": "2e4a7e2723fe6ef8e7f9deb69d3a2a274fbcc425",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 95,
    "line": 73,
    "path": "GRWTSK/Geometry/DifferentialGeometry/UniformTime/Variant50b9021e83108d21b748395df9145ccf05b6eb3908d8cc6f40cbfb15b7d0b9f2.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ec08ea9b36aaf5d21783d2706545dfe0c1d2aecc85b5089e29c9389661d47762",
  "verification": {
    "reference": "docs/verification/Geometry/DifferentialGeometry/UniformTime/Variant50b9021e83108d21b748395df9145ccf05b6eb3908d8cc6f40cbfb15b7d0b9f2.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:9cc9f446-ded3-8c1c-3492-bb9f5520fea0`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 73–95.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma isMIntegralCurve_abs_add_one_of_isMIntegralCurveOn_Ioo [BoundarylessManifold I M]
    (hv : CMDiff 1 (fun x ↦ (⟨x, v x⟩ : TangentBundle I M))) {x : M}
    (γ : ℝ → ℝ → M) (hγx : ∀ a, γ a 0 = x) (hγ : ∀ a > 0, IsMIntegralCurveOn (γ a) v (Ioo (-a) a)) :
    IsMIntegralCurve (fun t ↦ γ (|t| + 1) t) v := by
  intro t
  have ht : t ∈ Ioo (-(|t| + 1)) (|t| + 1) := by
    rw [mem_Ioo, ← abs_lt]
    exact lt_add_one _
  /- TODO: to fix the defeq abuse, the correct fix is probably to introduce `vmfderiv` as
  the derivative from a vector space to a manifold, and use it in the definition of
  `IsMIntegralCurveOn` and friends. -/
  apply HasMFDerivAt.congr_of_eventuallyEq_abuse (f := γ (|t| + 1))
  · exact hγ (|t| + 1) (by positivity) _ ht |>.hasMFDerivAt (Ioo_mem_nhds ht.1 ht.2)
  · rw [Filter.eventuallyEq_iff_exists_mem]
    refine ⟨Ioo (-(|t| + 1)) (|t| + 1), ?_,
      eqOn_abs_add_one_of_isMIntegralCurveOn_Ioo hv γ hγx hγ⟩
    have : |t| < |t| + 1 := lt_add_of_pos_right |t| zero_lt_one
    rw [abs_lt] at this
    exact Ioo_mem_nhds this.1 this.2

/-- The existence of a global integral curve is equivalent to the existence of a family of local
integral curves `γ : ℝ → ℝ → M` with the same starting point `γ 0 = x` such that each `γ a` is
defined on `Ioo (-a) a`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Geometry/DifferentialGeometry/UniformTime/Variant50b9021e83108d21b748395df9145ccf05b6eb3908d8cc6f40cbfb15b7d0b9f2.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/DifferentialGeometry/UniformTime/Variant50b9021e83108d21b748395df9145ccf05b6eb3908d8cc6f40cbfb15b7d0b9f2.lean#L73).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2e4a7e2723fe6ef8e7f9deb69d3a2a274fbcc425` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
