# FinitePlace.prod_eq_inv_abs_norm_int

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:4e24acda-a324-9b1d-9845-b512e26f7920",
  "kind": "theorem",
  "lexical_name": "FinitePlace.prod_eq_inv_abs_norm_int",
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
  "slug": "finiteplace-prod-eq-inv-abs-norm-int--1793f63b6f1cfe759e3a74e3",
  "source": {
    "blob": "b83d89ab97b46fe03b1282f4dfb786a5125d9951",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 80,
    "line": 49,
    "path": "GRWTSK/NumberTheory/AlgebraicNumberTheory/ProductFormula/Variant148749f9c7e76cb06931e8b8b9e46943ba1845aef763703dacda4938725ed2e6.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:1793f63b6f1cfe759e3a74e305235e7f7fb28a8ec9731bad6f27ea63862a0fc7",
  "verification": {
    "reference": "docs/verification/NumberTheory/AlgebraicNumberTheory/ProductFormula/Variant148749f9c7e76cb06931e8b8b9e46943ba1845aef763703dacda4938725ed2e6.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:4e24acda-a324-9b1d-9845-b512e26f7920`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 49–80.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem FinitePlace.prod_eq_inv_abs_norm_int {x : 𝓞 K} (h_x_nezero : x ≠ 0) :
    ∏ᶠ w : FinitePlace K, w x = (|norm ℤ x| : ℝ)⁻¹ := by
  simp only [← finprod_comp_equiv equivHeightOneSpectrum.symm, equivHeightOneSpectrum_symm_apply]
  refine (inv_eq_of_mul_eq_one_left ?_).symm
  norm_cast
  have h_span_nezero : span {x} ≠ 0 := by simp [h_x_nezero]
  rw [Int.abs_eq_natAbs, ← absNorm_span_singleton,
    ← finprod_heightOneSpectrum_factorization h_span_nezero, Int.cast_natCast]
  let t₀ := {v : HeightOneSpectrum (𝓞 K) | x ∈ v.asIdeal}
  have h_fin₀ : t₀.Finite := by simp only [← dvd_span_singleton, finite_factors h_span_nezero, t₀]
  let t₁ := (fun v : HeightOneSpectrum (𝓞 K) ↦ ‖embedding v (x : K)‖).mulSupport
  let t₂ :=
    (fun v : HeightOneSpectrum (𝓞 K) ↦ (absNorm (v.maxPowDividing (span {x})) : ℝ)).mulSupport
  have h_fin₁ : t₁.Finite := h_fin₀.subset <| by simp [norm_eq_one_iff_notMem, t₁, t₀]
  have h_fin₂ : t₂.Finite := by
    refine h_fin₀.subset ?_
    simp only [Set.le_eq_subset, mulSupport_subset_iff, Set.mem_setOf_eq, t₂, t₀,
      maxPowDividing, ← dvd_span_singleton]
    intro v hv
    simp only [map_pow, Nat.cast_pow, ← pow_zero (absNorm v.asIdeal : ℝ)] at hv
    classical
    refine (Associates.count_ne_zero_iff_dvd h_span_nezero (irreducible v)).1 <| fun h ↦ hv ?_
    congr
  have h_prod : (absNorm (∏ᶠ (v : HeightOneSpectrum (𝓞 K)), v.maxPowDividing (span {x})) : ℝ) =
      ∏ᶠ (v : HeightOneSpectrum (𝓞 K)), (absNorm (v.maxPowDividing (span {x})) : ℝ) :=
    ((Nat.castRingHom ℝ).toMonoidHom.comp absNorm.toMonoidHom).map_finprod_of_preimage_one
      (by simp) _
  rw [h_prod, ← finprod_mul_distrib h_fin₁ h_fin₂]
  exact finprod_eq_one_of_forall_eq_one fun v ↦ v.embedding_mul_absNorm h_x_nezero

/-- For any non-zero `x` in `K`, the prduct of `w x`, where `w` runs over `FinitePlace K`, is
equal to the inverse of the absolute value of `Algebra.norm ℚ x`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/AlgebraicNumberTheory/ProductFormula/Variant148749f9c7e76cb06931e8b8b9e46943ba1845aef763703dacda4938725ed2e6.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AlgebraicNumberTheory/ProductFormula/Variant148749f9c7e76cb06931e8b8b9e46943ba1845aef763703dacda4938725ed2e6.lean#L49).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b83d89ab97b46fe03b1282f4dfb786a5125d9951` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
