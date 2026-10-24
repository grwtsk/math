# elementalStarAlgebra.isUnit_of_isUnit_of_isStarNormal

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "717d9efdd9fa976837df0f4a34f7e472a6b41d9c",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 106,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/be/be6fcf26527e6087e0f0695f8da7811f2b06e2f6a0cc86bbb1809900b38aabf7.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:3341a9d8-08a5-dc68-b540-6699ae17c5a2",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:d5903182-8a4b-4604-cf9a-a19d421a2218",
  "kind": "theorem",
  "lexical_name": "elementalStarAlgebra.isUnit_of_isUnit_of_isStarNormal",
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
  "slug": "elementalstaralgebra-isunit-of-isunit-of-isstarnormal--cdfcfb5b4afa75dc81246391",
  "source": {
    "blob": "717d9efdd9fa976837df0f4a34f7e472a6b41d9c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 181,
    "line": 106,
    "path": "GRWTSK/Topology/GeneralTopology/ContinuousFunctionalCalculus/Variantbe6fcf26527e6087e0f0695f8da7811f2b06e2f6a0cc86bbb1809900b38aabf7.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:cdfcfb5b4afa75dc81246391dbe62ad546287eefbf5216069da059cbd22cd398",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/ContinuousFunctionalCalculus/Variantbe6fcf26527e6087e0f0695f8da7811f2b06e2f6a0cc86bbb1809900b38aabf7.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d5903182-8a4b-4604-cf9a-a19d421a2218`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 106–181.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem elementalStarAlgebra.isUnit_of_isUnit_of_isStarNormal (h : IsUnit a) :
    IsUnit (⟨a, self_mem ℂ a⟩ : elementalStarAlgebra ℂ a) := by
  /- Sketch of proof: Because `a` is normal, it suffices to prove that `star a * a` is invertible
    in `elementalStarAlgebra ℂ a`. For this it suffices to prove that it is sufficiently close to a
    unit, namely `algebraMap ℂ _ ‖star a * a‖`, and in this case the required distance is
    `‖star a * a‖`. So one must show `‖star a * a - algebraMap ℂ _ ‖star a * a‖‖ < ‖star a * a‖`.
    Since `star a * a - algebraMap ℂ _ ‖star a * a‖` is selfadjoint, by a corollary of Gelfand's
    formula for the spectral radius (`IsSelfAdjoint.spectralRadius_eq_nnnorm`) its norm is the
    supremum of the norms of elements in its spectrum (we may use the spectrum in `A` here because
    the norm in `A` and the norm in the subalgebra coincide).

    By `spectrum_star_mul_self_of_isStarNormal`, the spectrum (in the algebra `A`) of `star a * a`
    is contained in the interval `[0, ‖star a * a‖]`, and since `a` (and hence `star a * a`) is
    invertible in `A`, we may omit `0` from this interval. Therefore, by basic spectral mapping
    properties, the spectrum (in the algebra `A`) of `star a * a - algebraMap ℂ _ ‖star a * a‖` is
    contained in `[0, ‖star a * a‖)`. The supremum of the (norms of) elements of the spectrum must
    be *strictly* less that `‖star a * a‖` because the spectrum is compact, which completes the
    proof. -/
  /- We may assume `A` is nontrivial. It suffices to show that `star a * a` is invertible in the
    commutative (because `a` is normal) ring `elementalStarAlgebra ℂ a`. Indeed, by commutativity,
    if `star a * a` is invertible, then so is `a`. -/
  nontriviality A
  set a' : elementalStarAlgebra ℂ a := ⟨a, self_mem ℂ a⟩
  suffices : IsUnit (star a' * a'); exact (IsUnit.mul_iff.1 this).2
  replace h := (show Commute (star a) a from star_comm_self' a).isUnit_mul_iff.2 ⟨h.star, h⟩
  /- Since `a` is invertible, `‖star a * a‖ ≠ 0`, so `‖star a * a‖ • 1` is invertible in
    `elementalStarAlgebra ℂ a`, and so it suffices to show that the distance between this unit and
    `star a * a` is less than `‖star a * a‖`. -/
  have h₁ : (‖star a * a‖ : ℂ) ≠ 0 := Complex.ofReal_ne_zero.mpr (norm_ne_zero_iff.mpr h.ne_zero)
  set u : Units (elementalStarAlgebra ℂ a) :=
    Units.map (algebraMap ℂ (elementalStarAlgebra ℂ a)).toMonoidHom (Units.mk0 _ h₁)
  refine' ⟨u.ofNearby _ _, rfl⟩
  simp only [Units.coe_map, Units.val_inv_eq_inv_val, RingHom.toMonoidHom_eq_coe, Units.val_mk0,
    Units.coe_map_inv, MonoidHom.coe_coe, norm_algebraMap', norm_inv, Complex.norm_eq_abs,
    Complex.abs_ofReal, abs_norm, inv_inv]
    --RingHom.coe_monoidHom,
    -- Complex.abs_ofReal, map_inv₀,
  --rw [norm_algebraMap', inv_inv, Complex.norm_eq_abs, abs_norm]I-
  /- Since `a` is invertible, by `spectrum_star_mul_self_of_isStarNormal`, the spectrum (in `A`)
    of `star a * a` is contained in the half-open interval `(0, ‖star a * a‖]`. Therefore, by basic
    spectral mapping properties, the spectrum of `‖star a * a‖ • 1 - star a * a` is contained in
    `[0, ‖star a * a‖)`. -/
  have h₂ : ∀ z ∈ spectrum ℂ (algebraMap ℂ A ‖star a * a‖ - star a * a), ‖z‖₊ < ‖star a * a‖₊ := by
    intro z hz
    rw [← spectrum.singleton_sub_eq, Set.singleton_sub] at hz
    have h₃ : z ∈ Set.Icc (0 : ℂ) ‖star a * a‖ := by
      replace hz := Set.image_subset _ (spectrum_star_mul_self_of_isStarNormal a) hz
      rwa [Set.image_const_sub_Icc, sub_self, sub_zero] at hz
    refine' lt_of_le_of_ne (Complex.real_le_real.1 <| Complex.eq_coe_norm_of_nonneg h₃.1 ▸ h₃.2) _
    · intro hz'
      replace hz' := congr_arg (fun x : ℝ≥0 => ((x : ℝ) : ℂ)) hz'
      simp only [coe_nnnorm] at hz'
      rw [← Complex.eq_coe_norm_of_nonneg h₃.1] at hz'
      obtain ⟨w, hw₁, hw₂⟩ := hz
      refine' (spectrum.zero_not_mem_iff ℂ).mpr h _
      rw [hz', sub_eq_self] at hw₂
      rwa [hw₂] at hw₁
  /- The norm of `‖star a * a‖ • 1 - star a * a` in the subalgebra and in `A` coincide. In `A`,
    because this element is selfadjoint, by `IsSelfAdjoint.spectralRadius_eq_nnnorm`, its norm is
    the supremum of the norms of the elements of the spectrum, which is strictly less than
    `‖star a * a‖` by `h₂` and because the spectrum is compact. -/
  exact ENNReal.coe_lt_coe.1
    (calc
      (‖star a' * a' - algebraMap ℂ _ ‖star a * a‖‖₊ : ℝ≥0∞) =
          ‖algebraMap ℂ A ‖star a * a‖ - star a * a‖₊ :=
        by rw [← nnnorm_neg, neg_sub]; rfl
      _ = spectralRadius ℂ (algebraMap ℂ A ‖star a * a‖ - star a * a) := by
        refine' (IsSelfAdjoint.spectralRadius_eq_nnnorm _).symm
        rw [IsSelfAdjoint, star_sub, star_mul, star_star, ← algebraMap_star_comm]
        congr!
        exact IsROrC.conj_ofReal _
      _ < ‖star a * a‖₊ := spectrum.spectralRadius_lt_of_forall_lt _ h₂)
#align elemental_star_algebra.is_unit_of_is_unit_of_is_star_normal elementalStarAlgebra.isUnit_of_isUnit_of_isStarNormal

/-- For `x : A` which is invertible in `A`, the inverse lies in any unital C⋆-subalgebra `S`
containing `x`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/ContinuousFunctionalCalculus/Variantbe6fcf26527e6087e0f0695f8da7811f2b06e2f6a0cc86bbb1809900b38aabf7.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/ContinuousFunctionalCalculus/Variantbe6fcf26527e6087e0f0695f8da7811f2b06e2f6a0cc86bbb1809900b38aabf7.lean#L106).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `717d9efdd9fa976837df0f4a34f7e472a6b41d9c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
