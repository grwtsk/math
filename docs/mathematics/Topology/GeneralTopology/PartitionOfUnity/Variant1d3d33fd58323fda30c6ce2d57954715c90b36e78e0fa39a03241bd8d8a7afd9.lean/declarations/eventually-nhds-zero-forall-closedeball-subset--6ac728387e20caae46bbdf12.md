# eventually_nhds_zero_forall_closedEBall_subset

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:b21e9c85-4f65-2d07-5146-c87ea0a2a720",
  "kind": "theorem",
  "lexical_name": "eventually_nhds_zero_forall_closedEBall_subset",
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
  "slug": "eventually-nhds-zero-forall-closedeball-subset--6ac728387e20caae46bbdf12",
  "source": {
    "blob": "4a604553b8223a504f7afc75b965896d2acfda89",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 76,
    "line": 54,
    "path": "GRWTSK/Topology/GeneralTopology/PartitionOfUnity/Variant1d3d33fd58323fda30c6ce2d57954715c90b36e78e0fa39a03241bd8d8a7afd9.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:6ac728387e20caae46bbdf12179ef56e02fcd881b89047cdfdce8319b93cd201",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/PartitionOfUnity/Variant1d3d33fd58323fda30c6ce2d57954715c90b36e78e0fa39a03241bd8d8a7afd9.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b21e9c85-4f65-2d07-5146-c87ea0a2a720`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 54–76.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem eventually_nhds_zero_forall_closedEBall_subset (hK : ∀ i, IsClosed (K i))
    (hU : ∀ i, IsOpen (U i)) (hKU : ∀ i, K i ⊆ U i) (hfin : LocallyFinite K) (x : X) :
    ∀ᶠ p : ℝ≥0∞ × X in 𝓝 0 ×ˢ 𝓝 x, ∀ i, p.2 ∈ K i → closedEBall p.2 p.1 ⊆ U i := by
  suffices ∀ i, x ∈ K i → ∀ᶠ p : ℝ≥0∞ × X in 𝓝 0 ×ˢ 𝓝 x, closedEBall p.2 p.1 ⊆ U i by
    apply mp_mem ((eventually_all_finite (hfin.point_finite x)).2 this)
      (mp_mem (@tendsto_snd ℝ≥0∞ _ (𝓝 0) _ _ (hfin.iInter_compl_mem_nhds hK x)) _)
    apply univ_mem'
    rintro ⟨r, y⟩ hxy hyU i hi
    simp only [mem_iInter, mem_compl_iff, not_imp_not, mem_preimage] at hxy
    exact hyU _ (hxy _ hi)
  intro i hi
  rcases nhds_basis_closedEBall.mem_iff.1 ((hU i).mem_nhds <| hKU i hi) with ⟨R, hR₀, hR⟩
  rcases ENNReal.lt_iff_exists_nnreal_btwn.mp hR₀ with ⟨r, hr₀, hrR⟩
  filter_upwards [prod_mem_prod (eventually_lt_nhds hr₀)
      (closedEBall_mem_nhds x (tsub_pos_iff_lt.2 hrR))] with p hp z hz
  apply hR
  calc
    edist z x ≤ edist z p.2 + edist p.2 x := edist_triangle _ _ _
    _ ≤ p.1 + (R - p.1) := add_le_add hz <| le_trans hp.2 <| tsub_le_tsub_left hp.1.out.le _
    _ = R := add_tsub_cancel_of_le (lt_trans (by exact hp.1) hrR).le

/-- Auxiliary lemma for `exists_continuous_real_forall_closedEBall_subset`
and its smooth counterpart. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/PartitionOfUnity/Variant1d3d33fd58323fda30c6ce2d57954715c90b36e78e0fa39a03241bd8d8a7afd9.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/PartitionOfUnity/Variant1d3d33fd58323fda30c6ce2d57954715c90b36e78e0fa39a03241bd8d8a7afd9.lean#L54).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4a604553b8223a504f7afc75b965896d2acfda89` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
