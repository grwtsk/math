# FinitePlace.prod_eq_inv_abs_norm_int

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "25d6847906de06f71646c165fe60214f9f87f012",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 46,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/2e/2e455921e3500a75dae3095965c88c49788334e57e724b470afe8dd5455e0a0f.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:580940ae-da0c-44f3-817b-7354902c2ea9",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:1aeeecfc-feb9-2e14-59a6-b428f5a71e8e",
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
  "slug": "finiteplace-prod-eq-inv-abs-norm-int--80076f0ae4747b113170ed4d",
  "source": {
    "blob": "25d6847906de06f71646c165fe60214f9f87f012",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 76,
    "line": 46,
    "path": "GRWTSK/NumberTheory/AlgebraicNumberTheory/ProductFormula/Variant2e455921e3500a75dae3095965c88c49788334e57e724b470afe8dd5455e0a0f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:80076f0ae4747b113170ed4d7381fb89f4e7da3c8582abfe3ec16c3a1fdf39a3",
  "verification": {
    "reference": "docs/verification/NumberTheory/AlgebraicNumberTheory/ProductFormula/Variant2e455921e3500a75dae3095965c88c49788334e57e724b470afe8dd5455e0a0f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:1aeeecfc-feb9-2e14-59a6-b428f5a71e8e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 46–76.

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
    simp only [mulSupport_subset_iff, Set.mem_ofPred_eq, t₂, t₀,
      maxPowDividing, ← dvd_span_singleton]
    intro v hv
    simp only [map_pow, Nat.cast_pow, ← pow_zero (absNorm v.asIdeal : ℝ)] at hv
    refine (Associates.count_ne_zero_iff_dvd h_span_nezero (irreducible v)).1 <| fun h ↦ hv ?_
    congr
  have h_prod : (absNorm (∏ᶠ (v : HeightOneSpectrum (𝓞 K)), v.maxPowDividing (span {x})) : ℝ) =
      ∏ᶠ (v : HeightOneSpectrum (𝓞 K)), (absNorm (v.maxPowDividing (span {x})) : ℝ) :=
    ((Nat.castRingHom ℝ).toMonoidHom.comp absNorm.toMonoidHom).map_finprod_of_preimage_one
      (by simp) _
  rw [h_prod, ← finprod_mul_distrib h_fin₁ h_fin₂]
  exact finprod_eq_one_of_forall_eq_one fun v ↦ embedding_mul_absNorm _ v h_x_nezero

/-- For any non-zero `x` in `K`, the product of `w x`, where `w` runs over `FinitePlace K`, is
equal to the inverse of the absolute value of `Algebra.norm ℚ x`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/AlgebraicNumberTheory/ProductFormula/Variant2e455921e3500a75dae3095965c88c49788334e57e724b470afe8dd5455e0a0f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AlgebraicNumberTheory/ProductFormula/Variant2e455921e3500a75dae3095965c88c49788334e57e724b470afe8dd5455e0a0f.lean#L46).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `25d6847906de06f71646c165fe60214f9f87f012` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
