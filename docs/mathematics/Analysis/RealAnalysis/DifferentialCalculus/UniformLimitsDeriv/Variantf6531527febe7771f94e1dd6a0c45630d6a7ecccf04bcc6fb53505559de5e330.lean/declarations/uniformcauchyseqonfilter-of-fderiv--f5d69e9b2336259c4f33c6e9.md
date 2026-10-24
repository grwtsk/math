# uniformCauchySeqOnFilter_of_fderiv

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "98bee4e5dc8eb57cbd2486e201e26a0df912a9d5",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 116,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/f6/f6531527febe7771f94e1dd6a0c45630d6a7ecccf04bcc6fb53505559de5e330.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:f751b45c-b6ac-6f96-b211-cd25e3977e14",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:a62860cf-2e73-a8ef-7715-400936824e60",
  "kind": "theorem",
  "lexical_name": "uniformCauchySeqOnFilter_of_fderiv",
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
  "slug": "uniformcauchyseqonfilter-of-fderiv--f5d69e9b2336259c4f33c6e9",
  "source": {
    "blob": "98bee4e5dc8eb57cbd2486e201e26a0df912a9d5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 179,
    "line": 116,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/UniformLimitsDeriv/Variantf6531527febe7771f94e1dd6a0c45630d6a7ecccf04bcc6fb53505559de5e330.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f5d69e9b2336259c4f33c6e962a57f5dca17d8160128355b1801d2bed93593fe",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/UniformLimitsDeriv/Variantf6531527febe7771f94e1dd6a0c45630d6a7ecccf04bcc6fb53505559de5e330.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a62860cf-2e73-a8ef-7715-400936824e60`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 116–179.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem uniformCauchySeqOnFilter_of_fderiv (hf' : UniformCauchySeqOnFilter f' l (𝓝 x))
    (hf : ∀ᶠ n : ι × E in l ×ˢ 𝓝 x, HasFDerivAt (f n.1) (f' n.1 n.2) n.2)
    (hfg : Cauchy (map (fun n => f n x) l)) : UniformCauchySeqOnFilter f l (𝓝 x) := by
  let : RCLike 𝕜 := IsRCLikeNormedField.rclike 𝕜
  let : NormedSpace ℝ E := NormedSpace.restrictScalars ℝ 𝕜 _
  rw [SeminormedAddGroup.uniformCauchySeqOnFilter_iff_tendstoUniformlyOnFilter_zero] at hf' ⊢
  suffices
    TendstoUniformlyOnFilter (fun (n : ι × ι) (z : E) => f n.1 z - f n.2 z - (f n.1 x - f n.2 x)) 0
        (l ×ˢ l) (𝓝 x) ∧
      TendstoUniformlyOnFilter (fun (n : ι × ι) (_ : E) => f n.1 x - f n.2 x) 0 (l ×ˢ l) (𝓝 x) by
    have := this.1.neg.add this.2.neg
    rw [neg_zero, add_zero] at this
    apply this.congr (.of_forall (fun x ↦ by simp; abel))
  constructor
  · -- This inequality follows from the mean value theorem. To apply it, we will need to shrink our
    -- neighborhood to small enough ball
    rw [Metric.tendstoUniformlyOnFilter_iff] at hf' ⊢
    intro ε hε
    have := (tendsto_swap4_prod.eventually (hf.prod_mk hf)).diag_of_prod_right
    obtain ⟨a, b, c, d, e⟩ := eventually_prod_iff.1 ((hf' ε hε).and this)
    obtain ⟨R, hR, hR'⟩ := Metric.nhds_basis_ball.eventually_iff.mp d
    let r := min 1 R
    have hr : 0 < r := by simp [r, hR]
    have hr' : ∀ ⦃y : E⦄, y ∈ Metric.ball x r → c y := fun y hy =>
      hR' (lt_of_lt_of_le (Metric.mem_ball.mp hy) (min_le_right _ _))
    have hxy : ∀ y : E, y ∈ Metric.ball x r → ‖y - x‖ < 1 := by
      intro y hy
      rw [Metric.mem_ball, dist_eq_norm] at hy
      exact lt_of_lt_of_le hy (min_le_left _ _)
    have hxyε : ∀ y : E, y ∈ Metric.ball x r → ε * ‖y - x‖ < ε := by
      intro y hy
      exact (mul_lt_iff_lt_one_right hε.lt).mpr (hxy y hy)
    -- With a small ball in hand, apply the mean value theorem
    refine
      eventually_prod_iff.mpr
        ⟨_, b, (· ∈ Metric.ball x r),
          eventually_mem_set.mpr (Metric.nhds_basis_ball.mem_of_mem hr), fun {n} hn {y} hy => ?_⟩
    simp only [Pi.zero_apply, dist_zero_left, norm_neg_add] at e ⊢
    refine lt_of_le_of_lt ?_ (hxyε y hy)
    exact
      Convex.norm_image_sub_le_of_norm_hasFDerivWithin_le
        (fun y hy => ((e hn (hr' hy)).2.1.sub (e hn (hr' hy)).2.2).hasFDerivWithinAt)
        (fun y hy => (e hn (hr' hy)).1.le) (convex_ball x r) (Metric.mem_ball_self hr) hy
  · -- This is just `hfg` run through `eventually_prod_iff`
    refine Metric.tendstoUniformlyOnFilter_iff.mpr fun ε hε => ?_
    obtain ⟨t, ht, ht'⟩ := (Metric.cauchy_iff.mp hfg).2 ε hε
    exact
      eventually_prod_iff.mpr
        ⟨fun n : ι × ι => f n.1 x ∈ t ∧ f n.2 x ∈ t,
          eventually_prod_iff.mpr ⟨_, ht, _, ht, fun {n} hn {n'} hn' => ⟨hn, hn'⟩⟩,
          fun _ => True,
          by simp,
          fun {n} hn {y} _ => by simpa [norm_sub_rev, dist_eq_norm] using ht' _ hn.1 _ hn.2⟩

/-- A variant of the second fundamental theorem of calculus (FTC-2): If a sequence of functions
between real or complex normed spaces are differentiable on a ball centered at `x`, they
form a Cauchy sequence _at_ `x`, and their derivatives are Cauchy uniformly on the ball, then the
functions form a uniform Cauchy sequence on the ball.

NOTE: The fact that we work on a ball is typically all that is necessary to work with power series
and Dirichlet series (our primary use case). However, this can be generalized by replacing the ball
with any connected, bounded, open set and replacing uniform convergence with local uniform
convergence. See `cauchy_map_of_uniformCauchySeqOn_fderiv`.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/UniformLimitsDeriv/Variantf6531527febe7771f94e1dd6a0c45630d6a7ecccf04bcc6fb53505559de5e330.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/UniformLimitsDeriv/Variantf6531527febe7771f94e1dd6a0c45630d6a7ecccf04bcc6fb53505559de5e330.lean#L116).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `98bee4e5dc8eb57cbd2486e201e26a0df912a9d5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
