# eventually_norm_symmL_trivializationAt_comp_self_lt

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:a33df1b3-da46-d104-495e-5ad4babf685d",
  "kind": "lemma",
  "lexical_name": "eventually_norm_symmL_trivializationAt_comp_self_lt",
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
  "slug": "eventually-norm-symml-trivializationat-comp-self-lt--3111ec7d0f493209e7caafd7",
  "source": {
    "blob": "1846c1475dfe7bb95a80b4497bdd70622b7f61bd",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 335,
    "line": 251,
    "path": "GRWTSK/Topology/GeneralTopology/Riemannian/Variant86ac312ced480bcd7d54bed0623fa2b77aeeb375ac67e5e55b759af428d0bb98.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:3111ec7d0f493209e7caafd7a8c5593cdfe614fc126caee71507828399056be0",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Riemannian/Variant86ac312ced480bcd7d54bed0623fa2b77aeeb375ac67e5e55b759af428d0bb98.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a33df1b3-da46-d104-495e-5ad4babf685d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 251–335.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma eventually_norm_symmL_trivializationAt_comp_self_lt (x : B) {r : ℝ} (hr : 1 < r) :
    ∀ᶠ y in 𝓝 x, ‖((trivializationAt F E x).symmL ℝ y)
      ∘L ((trivializationAt F E x).continuousLinearMapAt ℝ x)‖ < r := by
  /- We will expand the definition of continuity of the inner product structure, in the chart.
  Denote `g' x` the metric in the fiber of `x`, read in the chart. For `y` close to `x`, then
  `g' y` and `g' x` are close. The inequality we have to prove reduces to comparing
  `g' y w w` and `g' x w w`, where `w` is the image in the chart of a tangent vector `v` at `x`.
  Their difference is controlled by `δ ‖w‖ ^ 2` for any small `δ > 0`. To conclude, we argue that
  `‖w‖` is comparable to the norm inside the fiber over `x`, i.e., `g' x w w`, because there
  is a continuous linear equivalence between these two spaces by definition of vector bundles. -/
  obtain ⟨r', hr', r'r⟩ : ∃ r', 1 < r' ∧ r' < r := exists_between hr
  have h'x : x ∈ (trivializationAt F E x).baseSet := FiberBundle.mem_baseSet_trivializationAt' x
  let G := (trivializationAt F E x).continuousLinearEquivAt ℝ x h'x
  let C := (‖(G : E x →L[ℝ] F)‖) ^ 2
  -- choose `δ` small enough that the computation below works when the metrics at `x` and `y`
  -- are `δ` close. When writing this proof, I have followed my nose in the computation, and
  -- recorded only in the end how small `δ` needs to be. The reader should skip the precise
  -- condition for now, as it doesn't give any useful insight.
  obtain ⟨δ, δpos, h'δ⟩ : ∃ δ, 0 < δ ∧ (1 + δ * C) < r' ^ 2 := by
    have A : ∀ᶠ δ in 𝓝[>] (0 : ℝ), 0 < δ := self_mem_nhdsWithin
    have B : Tendsto (fun δ ↦ 1 + δ * C) (𝓝[>] 0) (𝓝 (1 + 0 * C)) := by
      apply tendsto_inf_left
      exact tendsto_const_nhds.add (tendsto_id.mul tendsto_const_nhds)
    have B' : ∀ᶠ δ in 𝓝[>] 0, 1 + δ * C < r' ^ 2 := by
      apply (tendsto_order.1 B).2
      simpa using hr'.trans_le (le_abs_self _)
    exact (A.and B').exists
  rcases h.exists_continuous with ⟨g, g_cont, hg⟩
  let g' : B → F →L[ℝ] F →L[ℝ] ℝ := fun y ↦
    inCoordinates F E (F →L[ℝ] ℝ) (fun x ↦ E x →L[ℝ] ℝ) x y x y (g y)
  have hg' : ContinuousAt g' x := by
    have W := g_cont.continuousAt (x := x)
    simp only [continuousAt_hom_bundle] at W
    exact W.2
  have : ∀ᶠ y in 𝓝 x, dist (g' y) (g' x) < δ := by
    rw [Metric.continuousAt_iff'] at hg'
    apply hg' _ δpos
  filter_upwards [this, (trivializationAt F E x).open_baseSet.mem_nhds h'x] with y hy h'y
  have : ‖g' y - g' x‖ ≤ δ := by rw [← dist_eq_norm]; exact hy.le
  -- To show that the norm of the composition is bounded by `r'`, we start from a vector
  -- `‖v‖`. We will show that its image has a controlled norm.
  apply (opNorm_le_bound _ (by linarith) (fun v ↦ ?_)).trans_lt r'r
  -- rewrite the norm of `‖v‖` and of its image in terms of norms in the model space
  let w := (trivializationAt F E x).continuousLinearMapAt ℝ x v
  suffices ‖((trivializationAt F E x).symmL ℝ y) w‖ ^ 2 ≤ r' ^ 2 * ‖v‖ ^ 2 from
    le_of_sq_le_sq (by simpa [mul_pow]) (by positivity)
  simp only [Trivialization.symmL_apply, h'y, ← real_inner_self_eq_norm_sq, hg]
  have hgx : g x v v = g' x w w := by
    rw [inCoordinates_apply_eq₂ h'x h'x (Set.mem_univ _)]
    have A : ((trivializationAt F E x).symm x)
       ((trivializationAt F E x).linearMapAt ℝ x v) = v := by
      convert! ((trivializationAt F E x).continuousLinearEquivAt ℝ _ h'x).symm_apply_apply v
      simp [Trivialization.coe_continuousLinearEquivAt_eq _ h'x]
    simp [A, w]
  have hgy : g y ((trivializationAt F E x).symm y w) ((trivializationAt F E x).symm y w)
      = g' y w w := by
    rw [inCoordinates_apply_eq₂ h'y h'y (Set.mem_univ _)]
    simp
  rw [hgx, hgy]
  -- get a good control for the norms of `w` in the model space, using continuity
  calc g' y w w
    _ = (g' y - g' x) w w + g' x w w := by simp
    _ ≤ ‖g' y - g' x‖ * ‖w‖ * ‖w‖ + g' x w w := by
      grw [← le_opNorm₂, ← Real.le_norm_self]
    _ ≤ δ * ‖w‖ ^ 2 + g' x w w := by
      rw [pow_two, mul_assoc]; gcongr
    _ ≤ δ * (‖(G : E x →L[ℝ] F)‖ * ‖G.symm w‖) ^ 2 + g' x w w := by
      grw [← le_opNorm]
      simp
    _ = δ * C * ‖G.symm w‖ ^ 2 + g' x w w := by ring
    _ = δ * C * g x (G.symm w) (G.symm w) + g' x w w := by simp [← hg]
    _ = δ * C * g' x w w + g' x w w := by
      congr
      rw [inCoordinates_apply_eq₂ h'x h'x (Set.mem_univ _)]
      simp only [Trivial.fiberBundle_trivializationAt', Trivial.linearMapAt_trivialization,
        LinearMap.id_coe, id_eq, w]
      rfl
    _ = (1 + δ * C) * g' x w w := by ring
    _ ≤ r' ^ 2 * g' x w w := by
      gcongr
      rw [← hgx, ← hg, real_inner_self_eq_norm_sq]
      positivity

/-- In a continuous Riemannian bundle, the inverse of the trivialization at a point is locally
bounded in norm. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Riemannian/Variant86ac312ced480bcd7d54bed0623fa2b77aeeb375ac67e5e55b759af428d0bb98.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Riemannian/Variant86ac312ced480bcd7d54bed0623fa2b77aeeb375ac67e5e55b759af428d0bb98.lean#L251).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1846c1475dfe7bb95a80b4497bdd70622b7f61bd` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
