# eventually_norm_symmL_trivializationAt_self_comp_lt

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:be096912-b0b7-a049-e578-bf8e48e4ad35",
  "kind": "lemma",
  "lexical_name": "eventually_norm_symmL_trivializationAt_self_comp_lt",
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
  "slug": "eventually-norm-symml-trivializationat-self-comp-lt--13ad42a032b981cd5df926d5",
  "source": {
    "blob": "1846c1475dfe7bb95a80b4497bdd70622b7f61bd",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 230,
    "line": 147,
    "path": "GRWTSK/Topology/GeneralTopology/Riemannian/Variant86ac312ced480bcd7d54bed0623fa2b77aeeb375ac67e5e55b759af428d0bb98.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:13ad42a032b981cd5df926d5e5a2f0674b0d188e74a420859ffc57c66b68dd9b",
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

Occurrence: `result:be096912-b0b7-a049-e578-bf8e48e4ad35`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 147–230.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma eventually_norm_symmL_trivializationAt_self_comp_lt (x : B) {r : ℝ} (hr : 1 < r) :
    ∀ᶠ y in 𝓝 x, ‖((trivializationAt F E x).symmL ℝ x)
      ∘L ((trivializationAt F E x).continuousLinearMapAt ℝ y)‖ < r := by
  /- We will expand the definition of continuity of the inner product structure, in the chart.
  Denote `g' x` the metric in the fiber of `x`, read in the chart. For `y` close to `x`, then
  `g' y` and `g' x` are close. The inequality we have to prove reduces to comparing
  `g' y w w` and `g' x w w`, where `w` is the image in the chart of a tangent vector `v` at `y`.
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
  obtain ⟨δ, δpos, hδ⟩ : ∃ δ, 0 < δ ∧ (r' ^ 2)⁻¹ < 1 - δ * C := by
    have A : ∀ᶠ δ in 𝓝[>] (0 : ℝ), 0 < δ := self_mem_nhdsWithin
    have B : Tendsto (fun δ ↦ 1 - δ * C) (𝓝[>] 0) (𝓝 (1 - 0 * C)) := by
      apply tendsto_inf_left
      exact tendsto_const_nhds.sub (tendsto_id.mul tendsto_const_nhds)
    have B' : ∀ᶠ δ in 𝓝[>] 0, (r' ^ 2)⁻¹ < 1 - δ * C := by
      apply (tendsto_order.1 B).1
      simpa using inv_lt_one_of_one_lt₀ (by nlinarith)
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
  have : ‖g' x - g' y‖ ≤ δ := by rw [← dist_eq_norm']; exact hy.le
  -- To show that the norm of the composition is bounded by `r'`, we start from a vector
  -- `‖v‖`. We will show that its image has a controlled norm.
  apply (opNorm_le_bound _ (by linarith) (fun v ↦ ?_)).trans_lt r'r
  -- rewrite the norm of `‖v‖` and of its image in terms of norms in the model space
  let w := (trivializationAt F E x).continuousLinearMapAt ℝ y v
  suffices ‖((trivializationAt F E x).symmL ℝ x) w‖ ^ 2 ≤ r' ^ 2 * ‖v‖ ^ 2 from
    le_of_sq_le_sq (by simpa [mul_pow]) (by positivity)
  simp only [Trivialization.symmL_apply, mem_baseSet_trivializationAt,
    ← real_inner_self_eq_norm_sq, hg]
  have hgy : g y v v = g' y w w := by
    rw [inCoordinates_apply_eq₂ h'y h'y (Set.mem_univ _)]
    have A : ((trivializationAt F E x).symm y)
       ((trivializationAt F E x).linearMapAt ℝ y v) = v := by
      convert! ((trivializationAt F E x).continuousLinearEquivAt ℝ _ h'y).symm_apply_apply v
      simp [Trivialization.coe_continuousLinearEquivAt_eq _ h'y]
    simp [A, w]
  have hgx : g x ((trivializationAt F E x).symm x w) ((trivializationAt F E x).symm x w) =
      g' x w w := by
    rw [inCoordinates_apply_eq₂ h'x h'x (Set.mem_univ _)]
    simp
  rw [hgx, hgy]
  -- get a good control for the norms of `w` in the model space, using continuity
  have : g' x w w ≤ δ * C * g' x w w + g' y w w := calc
        g' x w w
    _ = (g' x - g' y) w w + g' y w w := by simp
    _ ≤ ‖g' x - g' y‖ * ‖w‖ * ‖w‖ + g' y w w := by
      grw [← le_opNorm₂, ← Real.le_norm_self]
    _ ≤ δ * ‖w‖ ^ 2 + g' y w w := by
      rw [pow_two, mul_assoc]; gcongr
    _ ≤ δ * (‖(G : E x →L[ℝ] F)‖ * ‖G.symm w‖) ^ 2 + g' y w w := by
      grw [← le_opNorm]
      simp
    _ = δ * C * ‖G.symm w‖ ^ 2 + g' y w w := by ring
    _ = δ * C * g x (G.symm w) (G.symm w) + g' y w w := by simp [← hg]
    _ = δ * C * g' x w w + g' y w w := by
      rw [← hgx]; rfl
  have : (1 - δ * C) * g' x w w ≤ g' y w w := by linarith
  rw [← (le_div_iff₀' (lt_of_le_of_lt (by positivity) hδ)), div_eq_inv_mul] at this
  grw [this]
  gcongr
  · rw [← hgy, ← hg, real_inner_self_eq_norm_sq]
    positivity
  · exact inv_le_of_inv_le₀ (by positivity) hδ.le

/-- In a continuous Riemannian bundle, the trivialization at a point is locally bounded in norm. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Riemannian/Variant86ac312ced480bcd7d54bed0623fa2b77aeeb375ac67e5e55b759af428d0bb98.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Riemannian/Variant86ac312ced480bcd7d54bed0623fa2b77aeeb375ac67e5e55b759af428d0bb98.lean#L147).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1846c1475dfe7bb95a80b4497bdd70622b7f61bd` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
