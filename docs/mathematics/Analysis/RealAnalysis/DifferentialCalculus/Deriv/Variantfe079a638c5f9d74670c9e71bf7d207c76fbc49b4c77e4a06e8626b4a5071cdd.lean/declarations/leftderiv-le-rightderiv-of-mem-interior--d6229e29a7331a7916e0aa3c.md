# leftDeriv_le_rightDeriv_of_mem_interior

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:fadb2a5e-510c-4529-1def-e1f1104a1763",
  "kind": "lemma",
  "lexical_name": "leftDeriv_le_rightDeriv_of_mem_interior",
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
  "slug": "leftderiv-le-rightderiv-of-mem-interior--d6229e29a7331a7916e0aa3c",
  "source": {
    "blob": "e362013b12c648b244b3d41443f5c1995cc87421",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 560,
    "line": 533,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Deriv/Variantfe079a638c5f9d74670c9e71bf7d207c76fbc49b4c77e4a06e8626b4a5071cdd.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d6229e29a7331a7916e0aa3c42b0df44c3d766e77fe09c6890ecb285ed430d97",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/Deriv/Variantfe079a638c5f9d74670c9e71bf7d207c76fbc49b4c77e4a06e8626b4a5071cdd.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:fadb2a5e-510c-4529-1def-e1f1104a1763`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 533–560.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma leftDeriv_le_rightDeriv_of_mem_interior (hfc : ConvexOn ℝ S f) (hxs : x ∈ interior S) :
    derivWithin f (Iio x) x ≤ derivWithin f (Ioi x) x := by
  have hxs' := hxs
  rw [mem_interior_iff_mem_nhds, mem_nhds_iff_exists_Ioo_subset] at hxs'
  obtain ⟨a, b, hxab, habs⟩ := hxs'
  rw [hfc.rightDeriv_eq_sInf_slope_of_mem_interior hxs,
    hfc.leftDeriv_eq_sSup_slope_of_mem_interior hxs]
  refine csSup_le ?_ ?_
  · rw [image_nonempty]
    obtain ⟨z, haz, hzx⟩ := exists_between hxab.1
    exact ⟨z, habs ⟨haz, hzx.trans hxab.2⟩, hzx⟩
  rintro _ ⟨z, ⟨hzs, hzx⟩, rfl⟩
  refine le_csInf ?_ ?_
  · rw [image_nonempty]
    obtain ⟨z, hxz, hzb⟩ := exists_between hxab.2
    exact ⟨z, habs ⟨hxab.1.trans hxz, hzb⟩, hxz⟩
  rintro _ ⟨y, ⟨hys, hxy⟩, rfl⟩
  exact slope_mono hfc (interior_subset hxs) ⟨hzs, hzx.ne⟩ ⟨hys, hxy.ne'⟩ (hzx.trans hxy).le

end Interior

section left
/-!
### Convex functions, derivative at left endpoint of secant
-/

/-- If `f : ℝ → ℝ` is convex on `S` and right-differentiable at `x ∈ S`, then the slope of any
secant line with left endpoint at `x` is bounded below by the right derivative of `f` at `x`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/Deriv/Variantfe079a638c5f9d74670c9e71bf7d207c76fbc49b4c77e4a06e8626b4a5071cdd.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Deriv/Variantfe079a638c5f9d74670c9e71bf7d207c76fbc49b4c77e4a06e8626b4a5071cdd.lean#L533).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e362013b12c648b244b3d41443f5c1995cc87421` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
