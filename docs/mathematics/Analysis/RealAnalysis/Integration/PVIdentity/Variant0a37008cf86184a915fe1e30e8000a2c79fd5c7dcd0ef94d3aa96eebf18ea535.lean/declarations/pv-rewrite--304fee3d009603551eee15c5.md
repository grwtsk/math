# pv_rewrite

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:3c919034-b10d-be19-3f5f-e65d16f647ef",
  "kind": "lemma",
  "lexical_name": "pv_rewrite",
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
  "slug": "pv-rewrite--304fee3d009603551eee15c5",
  "source": {
    "blob": "3e99e0d243ed412a74cc9818d017ee0608d86936",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 444,
    "line": 411,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/PVIdentity/Variant0a37008cf86184a915fe1e30e8000a2c79fd5c7dcd0ef94d3aa96eebf18ea535.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:304fee3d009603551eee15c59acd3dbb4c380106d2da18147ec90e0cb885ef94",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/PVIdentity/Variant0a37008cf86184a915fe1e30e8000a2c79fd5c7dcd0ef94d3aa96eebf18ea535.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:3c919034-b10d-be19-3f5f-e65d16f647ef`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 411–444.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma pv_rewrite {y ε : ℝ} (hy : 0 < y) (hε : 0 < ε) (hε1 : ε < 1) (hεy : ε < y) :
    (∫ u in (-1/ε)..(-ε), exp u / u) + (∫ u in ε..y, exp u / u) =
    (∫ t in ε..1, (1 - exp (-t)) / t) - (∫ t in (1:ℝ)..(1/ε), exp (-t) / t) +
    (∫ u in ε..y, (exp u - 1) / u) + log y := by
  -- Use the results from the lemmas to rewrite the integrals.
  have h1 : ∫ u in (-1 / ε)..(-ε), Real.exp u / u = -(∫ t in ε..1 / ε, Real.exp (-t) / t) := by
    exact integral_exp_div_neg_eq hε
  have h2 : ∫ u in ε..y, Real.exp u / u = (∫ v in ε..y, ((Real.exp v) - 1) / v) + Real.log y - Real.log ε := by
    rw [ intervalIntegral.integral_eq_sub_of_hasDerivAt ];
    rotate_right;
    use fun x => ∫ u in ε..x, ( Real.exp u - 1 ) / u + 1 / u;
    · rw [ intervalIntegral.integral_add ] <;> norm_num [ hε, hεy.le ];
      · rw [ Real.log_div ] <;> linarith;
      · apply_rules [ ContinuousOn.intervalIntegrable ];
        exact continuousOn_of_forall_continuousAt fun u hu => ContinuousAt.div ( ContinuousAt.sub ( Real.continuous_exp.continuousAt ) continuousAt_const ) continuousAt_id ( by cases Set.mem_uIcc.mp hu <;> linarith );
      · exact ContinuousOn.intervalIntegrable ( by exact continuousOn_of_forall_continuousAt fun x hx => ContinuousAt.div continuousAt_const continuousAt_id <| by linarith [ Set.mem_Icc.mp <| by simpa [ hε.le, hεy.le ] using hx ] ) ..;
    · intro x hx; convert HasDerivAt.congr_of_eventuallyEq _ ?_ using 1;
      use fun x => ∫ u in ε..x, Real.exp u / u;
      · apply_rules [ intervalIntegral.integral_hasDerivAt_right ];
        · apply_rules [ ContinuousOn.intervalIntegrable ];
          exact continuousOn_of_forall_continuousAt fun u hu => ContinuousAt.div ( Real.continuous_exp.continuousAt ) continuousAt_id ( by cases Set.mem_uIcc.mp hu <;> cases Set.mem_uIcc.mp hx <;> linarith );
        · exact Measurable.stronglyMeasurable ( by exact Measurable.mul ( Real.continuous_exp.measurable ) ( measurable_id.inv ) ) |> fun h => h.stronglyMeasurableAtFilter;
        · exact ContinuousAt.div ( Real.continuous_exp.continuousAt ) continuousAt_id ( by cases Set.mem_uIcc.mp hx <;> linarith );
      · filter_upwards [ lt_mem_nhds ( show x > 0 by cases Set.mem_uIcc.mp hx <;> linarith ) ] with u hu using by refine' intervalIntegral.integral_congr fun v hv => _ ; rw [ sub_div, sub_add_cancel ] ;
    · apply_rules [ ContinuousOn.intervalIntegrable ];
      exact continuousOn_of_forall_continuousAt fun u hu => ContinuousAt.div ( Real.continuous_exp.continuousAt ) continuousAt_id ( by cases Set.mem_uIcc.mp hu <;> linarith );
  rw [ h1, h2 ] ; ring_nf;
  rw [ intervalIntegral.integral_add ] <;> norm_num ; ring_nf;
  · rw [ integral_inv_of_pos, show ( ∫ u in ( ε : ℝ )..ε⁻¹, Real.exp ( -u ) * u⁻¹ ) = ( ∫ u in ( ε : ℝ )..1, Real.exp ( -u ) * u⁻¹ ) + ( ∫ u in ( 1 : ℝ )..ε⁻¹, Real.exp ( -u ) * u⁻¹ ) from ?_ ] <;> norm_num [ hε, hε1, hεy ] ; ring;
    rw [ intervalIntegral.integral_add_adjacent_intervals ] <;> apply_rules [ ContinuousOn.intervalIntegrable ] <;> exact continuousOn_of_forall_continuousAt fun u hu => ContinuousAt.mul ( ContinuousAt.rexp <| ContinuousAt.neg <| continuousAt_id ) <| ContinuousAt.inv₀ continuousAt_id <| by cases Set.mem_uIcc.mp hu <;> nlinarith [ inv_mul_cancel₀ hε.ne' ] ;
  · apply_rules [ ContinuousOn.intervalIntegrable ];
    exact continuousOn_of_forall_continuousAt fun t ht => ContinuousAt.neg ( ContinuousAt.mul ( Real.continuous_exp.continuousAt.comp <| ContinuousAt.neg continuousAt_id ) <| ContinuousAt.inv₀ continuousAt_id <| by cases Set.mem_uIcc.mp ht <;> linarith );
  · exact Or.inr <| Set.notMem_uIcc_of_lt hε zero_lt_one
/-! ## Main theorem -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/PVIdentity/Variant0a37008cf86184a915fe1e30e8000a2c79fd5c7dcd0ef94d3aa96eebf18ea535.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/PVIdentity/Variant0a37008cf86184a915fe1e30e8000a2c79fd5c7dcd0ef94d3aa96eebf18ea535.lean#L411).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3e99e0d243ed412a74cc9818d017ee0608d86936` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
