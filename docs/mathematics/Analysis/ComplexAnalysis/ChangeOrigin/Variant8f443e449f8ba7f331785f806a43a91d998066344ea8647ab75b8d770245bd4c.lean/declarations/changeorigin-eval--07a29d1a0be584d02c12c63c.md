# changeOrigin_eval

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:aba9431b-9a74-9c1a-aaba-51b8c08ebebb",
  "kind": "theorem",
  "lexical_name": "changeOrigin_eval",
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
  "slug": "changeorigin-eval--07a29d1a0be584d02c12c63c",
  "source": {
    "blob": "a45a0f0433d855565817fc2da22b97564dc61173",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 301,
    "line": 262,
    "path": "GRWTSK/Analysis/ComplexAnalysis/ChangeOrigin/Variant8f443e449f8ba7f331785f806a43a91d998066344ea8647ab75b8d770245bd4c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:07a29d1a0be584d02c12c63cb0b8142ab92f62a6bf90b6f0fad3b6b557e4d11c",
  "verification": {
    "reference": "docs/verification/Analysis/ComplexAnalysis/ChangeOrigin/Variant8f443e449f8ba7f331785f806a43a91d998066344ea8647ab75b8d770245bd4c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:aba9431b-9a74-9c1a-aaba-51b8c08ebebb`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 262–301.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem changeOrigin_eval (h : (‖x‖₊ + ‖y‖₊ : ℝ≥0∞) < p.radius) :
    (p.changeOrigin x).sum y = p.sum (x + y) := by
  have radius_pos : 0 < p.radius := lt_of_le_of_lt (zero_le _) h
  have x_mem_ball : x ∈ EMetric.ball (0 : E) p.radius :=
    mem_emetric_ball_zero_iff.2 ((le_add_right le_rfl).trans_lt h)
  have y_mem_ball : y ∈ EMetric.ball (0 : E) (p.changeOrigin x).radius := by
    refine mem_emetric_ball_zero_iff.2 (lt_of_lt_of_le ?_ p.changeOrigin_radius)
    rwa [lt_tsub_iff_right, add_comm]
  have x_add_y_mem_ball : x + y ∈ EMetric.ball (0 : E) p.radius := by
    refine mem_emetric_ball_zero_iff.2 (lt_of_le_of_lt ?_ h)
    exact mod_cast nnnorm_add_le x y
  set f : (Σ k l : ℕ, { s : Finset (Fin (k + l)) // s.card = l }) → F := fun s =>
    p.changeOriginSeriesTerm s.1 s.2.1 s.2.2 s.2.2.2 (fun _ => x) fun _ => y
  have hsf : Summable f := by
    refine .of_nnnorm_bounded _ (p.changeOriginSeries_summable_aux₁ h) ?_
    rintro ⟨k, l, s, hs⟩
    dsimp only [Subtype.coe_mk]
    exact p.nnnorm_changeOriginSeriesTerm_apply_le _ _ _ _ _ _
  have hf : HasSum f ((p.changeOrigin x).sum y) := by
    refine HasSum.sigma_of_hasSum ((p.changeOrigin x).summable y_mem_ball).hasSum (fun k => ?_) hsf
    · dsimp only [f]
      refine ContinuousMultilinearMap.hasSum_eval ?_ _
      have := (p.hasFPowerSeriesOnBall_changeOrigin k radius_pos).hasSum x_mem_ball
      rw [zero_add] at this
      refine HasSum.sigma_of_hasSum this (fun l => ?_) ?_
      · simp only [changeOriginSeries, ContinuousMultilinearMap.sum_apply]
        apply hasSum_fintype
      · refine .of_nnnorm_bounded _
          (p.changeOriginSeries_summable_aux₂ (mem_emetric_ball_zero_iff.1 x_mem_ball) k)
            fun s => ?_
        refine (ContinuousMultilinearMap.le_opNNNorm _ _).trans_eq ?_
        simp
  refine hf.unique (changeOriginIndexEquiv.symm.hasSum_iff.1 ?_)
  refine HasSum.sigma_of_hasSum
    (p.hasSum x_add_y_mem_ball) (fun n => ?_) (changeOriginIndexEquiv.symm.summable_iff.2 hsf)
  rw [← Pi.add_def, (p n).map_add_univ (fun _ => x) fun _ => y]
  simp_rw [← changeOriginSeriesTerm_changeOriginIndexEquiv_symm]
  exact hasSum_fintype (fun c => f (changeOriginIndexEquiv.symm ⟨n, c⟩))

/-- Power series terms are analytic as we vary the origin -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/ComplexAnalysis/ChangeOrigin/Variant8f443e449f8ba7f331785f806a43a91d998066344ea8647ab75b8d770245bd4c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/ComplexAnalysis/ChangeOrigin/Variant8f443e449f8ba7f331785f806a43a91d998066344ea8647ab75b8d770245bd4c.lean#L262).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a45a0f0433d855565817fc2da22b97564dc61173` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
