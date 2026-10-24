# dist_next_apply_le_of_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:dbfab00a-2bab-59c3-d3ed-d9ccf88e10e1",
  "kind": "theorem",
  "lexical_name": "dist_next_apply_le_of_le",
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
  "slug": "dist-next-apply-le-of-le--9fa501a73a434b2151a78e68",
  "source": {
    "blob": "453afc79087439710666327a609f0f22e9a6d64c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 329,
    "line": 304,
    "path": "GRWTSK/Topology/MetricTopology/PicardLindelof/Variantc7bd841b7bc39d49075dec0680a93d8d1daed045b1c9f0711ca0eaec4db12b20.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:9fa501a73a434b2151a78e682c02694ad0b74163c912dd8ca69ed9a859d85a7d",
  "verification": {
    "reference": "docs/verification/Topology/MetricTopology/PicardLindelof/Variantc7bd841b7bc39d49075dec0680a93d8d1daed045b1c9f0711ca0eaec4db12b20.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:dbfab00a-2bab-59c3-d3ed-d9ccf88e10e1`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 304–329.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem dist_next_apply_le_of_le {f₁ f₂ : FunSpace v} {n : ℕ} {d : ℝ}
    (h : ∀ t, dist (f₁ t) (f₂ t) ≤ (v.L * |t.1 - v.t₀|) ^ n / n ! * d) (t : Icc v.tMin v.tMax) :
    dist (next f₁ t) (next f₂ t) ≤ (v.L * |t.1 - v.t₀|) ^ (n + 1) / (n + 1)! * d := by
  simp only [dist_eq_norm, next_apply, add_sub_add_left_eq_sub, ←
    intervalIntegral.integral_sub (intervalIntegrable_vComp _ _ _)
      (intervalIntegrable_vComp _ _ _),
    norm_integral_eq_norm_integral_Ioc] at *
  calc
    ‖∫ τ in Ι (v.t₀ : ℝ) t, f₁.vComp τ - f₂.vComp τ‖ ≤
        ∫ τ in Ι (v.t₀ : ℝ) t, v.L * ((v.L * |τ - v.t₀|) ^ n / n ! * d) := by
      refine' norm_integral_le_of_norm_le (Continuous.integrableOn_uIoc _) _
      · -- porting note: was `continuity`
        refine .mul continuous_const <| .mul (.div_const ?_ _) continuous_const
        refine .pow (.mul continuous_const <| .abs <| ?_) _
        exact .sub continuous_id continuous_const
      · refine' (ae_restrict_mem measurableSet_Ioc).mono fun τ hτ => _
        refine' (v.lipschitzOnWith (v.proj τ).2).norm_sub_le_of_le (f₁.mem_closedBall _)
            (f₂.mem_closedBall _) ((h _).trans_eq _)
        rw [v.proj_of_mem]
        exact uIcc_subset_Icc v.t₀.2 t.2 <| Ioc_subset_Icc_self hτ
    _ = (v.L * |t.1 - v.t₀|) ^ (n + 1) / (n + 1)! * d := by
      simp_rw [mul_pow, div_eq_mul_inv, mul_assoc, MeasureTheory.integral_mul_left,
        MeasureTheory.integral_mul_right, integral_pow_abs_sub_uIoc, div_eq_mul_inv,
        pow_succ (v.L : ℝ), Nat.factorial_succ, Nat.cast_mul, Nat.cast_succ, mul_inv, mul_assoc]
#align picard_lindelof.fun_space.dist_next_apply_le_of_le PicardLindelof.FunSpace.dist_next_apply_le_of_le

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/MetricTopology/PicardLindelof/Variantc7bd841b7bc39d49075dec0680a93d8d1daed045b1c9f0711ca0eaec4db12b20.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/MetricTopology/PicardLindelof/Variantc7bd841b7bc39d49075dec0680a93d8d1daed045b1c9f0711ca0eaec4db12b20.lean#L304).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `453afc79087439710666327a609f0f22e9a6d64c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
