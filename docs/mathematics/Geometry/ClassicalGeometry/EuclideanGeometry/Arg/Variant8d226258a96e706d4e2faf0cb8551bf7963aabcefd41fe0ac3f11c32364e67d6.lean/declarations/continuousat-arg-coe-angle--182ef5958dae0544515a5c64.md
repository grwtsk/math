# continuousAt_arg_coe_angle

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:3a01cfb3-a224-613c-8956-efe4d8ed731e",
  "kind": "theorem",
  "lexical_name": "continuousAt_arg_coe_angle",
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
  "slug": "continuousat-arg-coe-angle--182ef5958dae0544515a5c64",
  "source": {
    "blob": "54614f8ee43d6cb4e07ab6babc90cb5afdb1dc01",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 671,
    "line": 646,
    "path": "GRWTSK/Geometry/ClassicalGeometry/EuclideanGeometry/Arg/Variant8d226258a96e706d4e2faf0cb8551bf7963aabcefd41fe0ac3f11c32364e67d6.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:182ef5958dae0544515a5c64a1523da303e08d96a6d21e9189626763a95e07fa",
  "verification": {
    "reference": "docs/verification/Geometry/ClassicalGeometry/EuclideanGeometry/Arg/Variant8d226258a96e706d4e2faf0cb8551bf7963aabcefd41fe0ac3f11c32364e67d6.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:3a01cfb3-a224-613c-8956-efe4d8ed731e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 646–671.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem continuousAt_arg_coe_angle (h : x ≠ 0) : ContinuousAt ((↑) ∘ arg : ℂ → Real.Angle) x := by
  by_cases hs : x ∈ slitPlane
  · exact Real.Angle.continuous_coe.continuousAt.comp (continuousAt_arg hs)
  · rw [← Function.comp_id (((↑) : ℝ → Real.Angle) ∘ arg),
      (funext_iff.2 fun _ => (neg_neg _).symm : (id : ℂ → ℂ) = Neg.neg ∘ Neg.neg), ←
      Function.comp_assoc]
    refine ContinuousAt.comp ?_ continuous_neg.continuousAt
    suffices ContinuousAt (Function.update (((↑) ∘ arg) ∘ Neg.neg : ℂ → Real.Angle) 0 π) (-x) by
      rwa [continuousAt_update_of_ne (neg_ne_zero.2 h)] at this
    have ha :
      Function.update (((↑) ∘ arg) ∘ Neg.neg : ℂ → Real.Angle) 0 π = fun z =>
        (arg z : Real.Angle) + π := by
      rw [Function.update_eq_iff]
      exact ⟨by simp, fun z hz => arg_neg_coe_angle hz⟩
    rw [ha]
    replace hs := mem_slitPlane_iff.mpr.mt hs
    push Not at hs
    refine
      (Real.Angle.continuous_coe.continuousAt.comp (continuousAt_arg (Or.inl ?_))).add
        continuousAt_const
    rw [neg_re, neg_pos]
    exact hs.1.lt_of_ne fun h0 => h (Complex.ext_iff.2 ⟨h0, hs.2⟩)

end Continuity

end Complex
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Geometry/ClassicalGeometry/EuclideanGeometry/Arg/Variant8d226258a96e706d4e2faf0cb8551bf7963aabcefd41fe0ac3f11c32364e67d6.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/ClassicalGeometry/EuclideanGeometry/Arg/Variant8d226258a96e706d4e2faf0cb8551bf7963aabcefd41fe0ac3f11c32364e67d6.lean#L646).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `54614f8ee43d6cb4e07ab6babc90cb5afdb1dc01` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
