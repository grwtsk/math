# tendsto_nhds_opNorm

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "7c59927f16d4b962da2748cc8403cf9333d5b892",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 48,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/1c/1c591aa6acb0c42a9c69dd80ba3ef26a6eff741b9ab8a03a070864d85b43666e.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:808bf730-f2df-1c6d-c7e7-fb4770d746cb",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:eab008b1-2821-3416-c199-07b5d380b265",
  "kind": "theorem",
  "lexical_name": "tendsto_nhds_opNorm",
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
  "slug": "tendsto-nhds-opnorm--df05fcf727328a445ee85d7e",
  "source": {
    "blob": "7c59927f16d4b962da2748cc8403cf9333d5b892",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 73,
    "line": 48,
    "path": "GRWTSK/Topology/GeneralTopology/PositiveLinearFunctional/Variant1c591aa6acb0c42a9c69dd80ba3ef26a6eff741b9ab8a03a070864d85b43666e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:df05fcf727328a445ee85d7e9bdf6645583611d9047443b1703b71b5786afc1f",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/PositiveLinearFunctional/Variant1c591aa6acb0c42a9c69dd80ba3ef26a6eff741b9ab8a03a070864d85b43666e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:eab008b1-2821-3416-c199-07b5d380b265`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 48–73.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem tendsto_nhds_opNorm (f : A →P[ℂ] ℂ) {l : Filter A} (hl : l.IsIncreasingApproximateUnit) :
    l.Tendsto (f ·) (𝓝 ‖(f : A →L[ℂ] ℂ)‖) := by
  suffices l.Tendsto (‖f ·‖) (𝓝 ‖f.toContinuousLinearMap‖) from this.ofReal.congr' <| by
    filter_upwards [hl.eventually_nonneg] using by simp_all [norm_of_nonneg' (f.map_nonneg _)]
  refine Metric.nhds_basis_closedBall.tendsto_right_iff.mpr fun ε hε ↦ ?_
  have h : ∀ᶠ x in l, ‖f x‖ ≤ ‖f.toContinuousLinearMap‖ := by
    filter_upwards [hl.eventually_norm] using f.toContinuousLinearMap.unit_le_opNorm
  have h2 : ∀ᶠ x in l, ‖f.toContinuousLinearMap‖ - ε ≤ ‖f x‖ := by
    obtain ⟨a, ha1, ha2⟩ := f.toContinuousLinearMap.exists_lt_apply_of_lt_opNorm
      (r := ‖f.toContinuousLinearMap‖ - ε / 2) (by grind)
    have h3 : ∀ᶠ x in l, ‖f (x * a)‖ ^ 2 ≤ ‖f x‖ * ‖f.toContinuousLinearMap‖ := by
      filter_upwards [hl.eventually_nonneg, hl.eventually_norm] with x hx1 hx2
      have : ‖f (star x * x)‖ ≤ ‖f x‖ := by
        refine CStarAlgebra.norm_le_norm_of_le_of_nonneg ?_
        exact f.mono <| hx1.star_eq.symm ▸ CStarAlgebra.mul_self_le_of_nonneg_of_norm_le_one hx1 hx2
      conv_lhs => rw [← hx1.star_eq]
      grw [PositiveLinearMap.norm_map_star_mul_sq_le _ x a, this, ← f.coe_toContinuousLinearMap,
        f.toContinuousLinearMap.le_opNorm (star a * a), norm_star_mul_self, ← mul_assoc]
      refine mul_le_of_le_one_right (by positivity) ?_
      grw [ha1, ha1, one_mul]
    have h4 : ∀ᶠ x in l, ‖f.toContinuousLinearMap‖ - ε / 2 < ‖f (x * a)‖ := by
      refine (Filter.Tendsto.norm ?_).eventually (lt_mem_nhds ha2)
      exact (ContinuousAt.tendsto (by fun_prop)).comp (hl.tendsto_mul_right a)
    filter_upwards [h3, h4] with x _ _ using by nlinarith [norm_nonneg (f x)]
  filter_upwards [h, h2] using by grind [Real.closedBall_eq_Icc]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/PositiveLinearFunctional/Variant1c591aa6acb0c42a9c69dd80ba3ef26a6eff741b9ab8a03a070864d85b43666e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/PositiveLinearFunctional/Variant1c591aa6acb0c42a9c69dd80ba3ef26a6eff741b9ab8a03a070864d85b43666e.lean#L48).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7c59927f16d4b962da2748cc8403cf9333d5b892` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
