# monotoneOn_rightDeriv

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:c458239b-1f19-8e6e-274f-17afbd4cb923",
  "kind": "lemma",
  "lexical_name": "monotoneOn_rightDeriv",
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
  "slug": "monotoneon-rightderiv--ee51974ae418e09d59aff18f",
  "source": {
    "blob": "e362013b12c648b244b3d41443f5c1995cc87421",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 513,
    "line": 494,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Deriv/Variantfe079a638c5f9d74670c9e71bf7d207c76fbc49b4c77e4a06e8626b4a5071cdd.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ee51974ae418e09d59aff18feb580e4e5ef9d787d1e9a93b5d85b9ceca8514f4",
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

Occurrence: `result:c458239b-1f19-8e6e-274f-17afbd4cb923`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 494–513.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma monotoneOn_rightDeriv (hfc : ConvexOn ℝ S f) :
    MonotoneOn (fun x ↦ derivWithin f (Ioi x) x) (interior S) := by
  intro x hxs y hys hxy
  rcases eq_or_lt_of_le hxy with rfl | hxy; · rfl
  simp_rw [hfc.rightDeriv_eq_sInf_slope_of_mem_interior hxs,
    hfc.rightDeriv_eq_sInf_slope_of_mem_interior hys]
  refine csInf_le_of_le (b := slope f x y) (bddBelow_slope_lt_of_mem_interior hfc hxs)
    ⟨y, by simp only [mem_setOf_eq, hxy, and_true]; exact interior_subset hys⟩
    (le_csInf ?_ ?_)
  · have hys' := hys
    rw [mem_interior_iff_mem_nhds, mem_nhds_iff_exists_Ioo_subset] at hys'
    obtain ⟨a, b, hxab, habs⟩ := hys'
    rw [image_nonempty]
    obtain ⟨z, hxz, hzb⟩ := exists_between hxab.2
    exact ⟨z, habs ⟨hxab.1.trans hxz, hzb⟩, hxz⟩
  · rintro _ ⟨z, ⟨hzs, hyz : y < z⟩, rfl⟩
    rw [slope_comm]
    exact slope_mono hfc (interior_subset hys) ⟨interior_subset hxs, hxy.ne⟩ ⟨hzs, hyz.ne'⟩
      (hxy.trans hyz).le

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/Deriv/Variantfe079a638c5f9d74670c9e71bf7d207c76fbc49b4c77e4a06e8626b4a5071cdd.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Deriv/Variantfe079a638c5f9d74670c9e71bf7d207c76fbc49b4c77e4a06e8626b4a5071cdd.lean#L494).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e362013b12c648b244b3d41443f5c1995cc87421` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
