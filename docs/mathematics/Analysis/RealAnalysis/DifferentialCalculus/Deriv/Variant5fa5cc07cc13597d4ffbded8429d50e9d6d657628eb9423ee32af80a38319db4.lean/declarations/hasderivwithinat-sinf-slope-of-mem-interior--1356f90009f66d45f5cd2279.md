# hasDerivWithinAt_sInf_slope_of_mem_interior

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:ee257778-89f9-fca6-87c7-8ec2c71914fc",
  "kind": "lemma",
  "lexical_name": "hasDerivWithinAt_sInf_slope_of_mem_interior",
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
  "slug": "hasderivwithinat-sinf-slope-of-mem-interior--1356f90009f66d45f5cd2279",
  "source": {
    "blob": "4952735024e2918df5fcb68c9ed090ca420aa435",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 453,
    "line": 436,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Deriv/Variant5fa5cc07cc13597d4ffbded8429d50e9d6d657628eb9423ee32af80a38319db4.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:1356f90009f66d45f5cd2279b984971af01a5886a43d5f6791a340a03408a1dc",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/Deriv/Variant5fa5cc07cc13597d4ffbded8429d50e9d6d657628eb9423ee32af80a38319db4.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ee257778-89f9-fca6-87c7-8ec2c71914fc`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 436–453.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma hasDerivWithinAt_sInf_slope_of_mem_interior (hfc : ConvexOn ℝ S f) (hxs : x ∈ interior S) :
    HasDerivWithinAt f (sInf (slope f x '' {y ∈ S | x < y})) (Ioi x) x := by
  have hxs' := hxs
  rw [mem_interior_iff_mem_nhds, mem_nhds_iff_exists_Ioo_subset] at hxs'
  obtain ⟨a, b, hxab, habs⟩ := hxs'
  simp_rw [hasDerivWithinAt_iff_tendsto_slope]
  simp only [mem_Ioi, lt_self_iff_false, not_false_eq_true, sdiff_singleton_eq_self]
  have h : Ioo x b ⊆ {y | y ∈ S ∧ x < y} := fun z hz ↦ ⟨habs ⟨hxab.1.trans hz.1, hz.2⟩, hz.1⟩
  have h_Ioo : Tendsto (slope f x) (𝓝[>] x) (𝓝 (sInf (slope f x '' Ioo x b))) :=
    ((monotoneOn_slope_gt hfc (habs hxab)).mono h).tendsto_nhdsWithin_Ioo_right
      (by simpa using hxab.2) ((bddBelow_slope_lt_of_mem_interior hfc hxs).mono (image_mono h))
  suffices sInf (slope f x '' Ioo x b) = sInf (slope f x '' {y ∈ S | x < y}) by rwa [← this]
  apply (monotoneOn_slope_gt hfc (habs hxab)).csInf_eq_of_subset_of_forall_exists_le
    (bddBelow_slope_lt_of_mem_interior hfc hxs) h ?_
  rintro y ⟨hyS, hxy⟩
  obtain ⟨z, hxz, hzy⟩ := exists_between (lt_min hxab.2 hxy)
  exact ⟨z, ⟨hxz, hzy.trans_le (min_le_left _ _)⟩, hzy.le.trans (min_le_right _ _)⟩

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/Deriv/Variant5fa5cc07cc13597d4ffbded8429d50e9d6d657628eb9423ee32af80a38319db4.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Deriv/Variant5fa5cc07cc13597d4ffbded8429d50e9d6d657628eb9423ee32af80a38319db4.lean#L436).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4952735024e2918df5fcb68c9ed090ca420aa435` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
