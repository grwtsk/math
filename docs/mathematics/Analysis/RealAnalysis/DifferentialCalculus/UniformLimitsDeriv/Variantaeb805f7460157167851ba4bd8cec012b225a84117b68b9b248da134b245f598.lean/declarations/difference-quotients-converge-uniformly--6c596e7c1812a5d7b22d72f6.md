# difference_quotients_converge_uniformly

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:f877c5f9-2f96-38c7-2568-7c92b68d5124",
  "kind": "theorem",
  "lexical_name": "difference_quotients_converge_uniformly",
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
  "slug": "difference-quotients-converge-uniformly--6c596e7c1812a5d7b22d72f6",
  "source": {
    "blob": "92ddc330a84ad3e77e17c6e7cabd4f8e8594ee27",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 317,
    "line": 268,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/UniformLimitsDeriv/Variantaeb805f7460157167851ba4bd8cec012b225a84117b68b9b248da134b245f598.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:6c596e7c1812a5d7b22d72f63209f094fd5b8b6d4b5c4d9863771d6cebb057e7",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/UniformLimitsDeriv/Variantaeb805f7460157167851ba4bd8cec012b225a84117b68b9b248da134b245f598.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f877c5f9-2f96-38c7-2568-7c92b68d5124`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 268–317.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem difference_quotients_converge_uniformly
    {E : Type*} [NormedAddCommGroup E] {𝕜 : Type*} [RCLike 𝕜]
    [NormedSpace 𝕜 E] {G : Type*} [NormedAddCommGroup G] [NormedSpace 𝕜 G] {f : ι → E → G}
    {g : E → G} {f' : ι → E → E →L[𝕜] G} {g' : E → E →L[𝕜] G} {x : E}
    (hf' : TendstoUniformlyOnFilter f' g' l (𝓝 x))
    (hf : ∀ᶠ n : ι × E in l ×ˢ 𝓝 x, HasFDerivAt (f n.1) (f' n.1 n.2) n.2)
    (hfg : ∀ᶠ y : E in 𝓝 x, Tendsto (fun n => f n y) l (𝓝 (g y))) :
    TendstoUniformlyOnFilter (fun n : ι => fun y : E => (‖y - x‖⁻¹ : 𝕜) • (f n y - f n x))
      (fun y : E => (‖y - x‖⁻¹ : 𝕜) • (g y - g x)) l (𝓝 x) := by
  let A : NormedSpace ℝ E := NormedSpace.restrictScalars ℝ 𝕜 _
  refine
    UniformCauchySeqOnFilter.tendstoUniformlyOnFilter_of_tendsto ?_
      ((hfg.and (eventually_const.mpr hfg.self_of_nhds)).mono fun y hy =>
        (hy.1.sub hy.2).const_smul _)
  rw [SeminormedAddGroup.uniformCauchySeqOnFilter_iff_tendstoUniformlyOnFilter_zero]
  rw [Metric.tendstoUniformlyOnFilter_iff]
  have hfg' := hf'.uniformCauchySeqOnFilter
  rw [SeminormedAddGroup.uniformCauchySeqOnFilter_iff_tendstoUniformlyOnFilter_zero] at hfg'
  rw [Metric.tendstoUniformlyOnFilter_iff] at hfg'
  intro ε hε
  obtain ⟨q, hqpos, hqε⟩ := exists_pos_rat_lt hε
  specialize hfg' (q : ℝ) (by simp [hqpos])
  have := (tendsto_swap4_prod.eventually (hf.prod_mk hf)).diag_of_prod_right
  obtain ⟨a, b, c, d, e⟩ := eventually_prod_iff.1 (hfg'.and this)
  obtain ⟨r, hr, hr'⟩ := Metric.nhds_basis_ball.eventually_iff.mp d
  rw [eventually_prod_iff]
  refine
    ⟨_, b, (· ∈ Metric.ball x r),
      eventually_mem_set.mpr (Metric.nhds_basis_ball.mem_of_mem hr), fun {n} hn {y} hy => ?_⟩
  simp only [Pi.zero_apply, dist_zero_left]
  rw [norm_neg_add, ← smul_sub, norm_smul, norm_inv, RCLike.norm_coe_norm]
  refine lt_of_le_of_lt ?_ hqε
  by_cases hyz' : x = y; · simp [hyz', hqpos.le]
  have hyz : 0 < ‖y - x‖ := by rw [norm_pos_iff]; intro hy'; exact hyz' (eq_of_sub_eq_zero hy').symm
  rw [inv_mul_le_iff₀ hyz, mul_comm, sub_sub_sub_comm]
  simp only [Pi.zero_apply, dist_zero_left, norm_neg_add] at e
  refine
    Convex.norm_image_sub_le_of_norm_hasFDerivWithin_le
      (fun y hy => ((e hn (hr' hy)).2.1.sub (e hn (hr' hy)).2.2).hasFDerivWithinAt)
      (fun y hy => (e hn (hr' hy)).1.le) (convex_ball x r) (Metric.mem_ball_self hr) hy

/-- `(d/dx) lim_{n → ∞} f n x = lim_{n → ∞} f' n x` when the `f' n` converge
_uniformly_ to their limit at `x`.

In words the assumptions mean the following:
  * `hf'`: The `f'` converge "uniformly at" `x` to `g'`. This does not mean that the `f' n` even
    converge away from `x`!
  * `hf`: For all `(y, n)` with `y` sufficiently close to `x` and `n` sufficiently large, `f' n` is
    the derivative of `f n`
  * `hfg`: The `f n` converge pointwise to `g` on a neighborhood of `x` -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/UniformLimitsDeriv/Variantaeb805f7460157167851ba4bd8cec012b225a84117b68b9b248da134b245f598.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/UniformLimitsDeriv/Variantaeb805f7460157167851ba4bd8cec012b225a84117b68b9b248da134b245f598.lean#L268).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `92ddc330a84ad3e77e17c6e7cabd4f8e8594ee27` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
