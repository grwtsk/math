# exists_Gamma_le_conj

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:cfddcb4c-5e11-686a-6eb0-e015dd6e15e2",
  "kind": "theorem",
  "lexical_name": "exists_Gamma_le_conj",
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
  "slug": "exists-gamma-le-conj--b3c1159ab65ed8f85892b08d",
  "source": {
    "blob": "c6fd6d034669498196383626cdc40a785a608d09",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 312,
    "line": 261,
    "path": "GRWTSK/Analysis/SpecialFunctions/CongruenceSubgroups/Variant115025cca05c7411b213e81c73909e2f3af836b1863ad103fa3546d9deefa34f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b3c1159ab65ed8f85892b08dbf100fea67460f9dedac0ccb73bfe508bbcecad5",
  "verification": {
    "reference": "docs/verification/Analysis/SpecialFunctions/CongruenceSubgroups/Variant115025cca05c7411b213e81c73909e2f3af836b1863ad103fa3546d9deefa34f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:cfddcb4c-5e11-686a-6eb0-e015dd6e15e2`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 261–312.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem exists_Gamma_le_conj (g : GL (Fin 2) ℚ) (M : ℕ) [NeZero M] :
    ∃ N ≠ 0, ∀ x ∈ Gamma N, g * (x.map (Int.castRingHom ℚ)).toGL * g⁻¹ ∈
      (fun x : SL(2, ℤ) ↦ (x.map (Int.castRingHom ℚ)).toGL) '' (Gamma M) := by
  -- Give names to the numerators and denominators of `g` and `g⁻¹`
  let A₁ := g.1
  let A₂ := (g⁻¹).1
  have hA₁₂ : A₁ * A₂ = 1 := by simp only [← Matrix.GeneralLinearGroup.coe_mul,
    mul_inv_cancel, Matrix.GeneralLinearGroup.coe_one, A₁, A₂]
  let a₁ := A₁.den
  let a₂ := A₂.den
  -- we take `N = a₁ * a₂`
  refine ⟨a₁ * a₂ * M, mul_ne_zero (mul_ne_zero A₁.den_ne_zero A₂.den_ne_zero) (NeZero.ne _),
    fun ⟨y, hy⟩ hy' ↦ ?_⟩
  -- Show that `y` is of the form `1 + (a₁ * a₂) • k` for some integer matrix `k`.
  obtain ⟨k, hk⟩ : ∃ k, y = 1 + (a₁ * a₂ * M) • k := by
    replace hy' : y.map (Int.cast : ℤ → ZMod (a₁ * a₂ * M)) = 1 := by
      rw [CongruenceSubgroup.Gamma_mem', Subtype.ext_iff] at hy'
      simpa using hy'
    use Matrix.of fun i j ↦ (y - 1) i j / (a₁ * a₂ * M)
    rw [← sub_eq_iff_eq_add']
    ext i j
    simp_rw [Matrix.smul_apply, Matrix.of_apply, nsmul_eq_mul, Nat.cast_mul]
    refine (Int.mul_ediv_cancel_of_dvd ?_).symm
    rw [← Matrix.map_one Int.cast (by simp) (by simp), ← sub_eq_zero,
      ← Matrix.map_sub _ (by simp)] at hy'
    simpa only [Matrix.zero_apply, Matrix.map_apply, ZMod.intCast_zmod_eq_zero_iff_dvd,
      Nat.cast_mul] using congr_fun₂ hy' i j
  -- use this `k` to cook up a new integer matrix, which we will show comes from `SL(2, ℤ)`
  let z := 1 + M • (A₁.num * k * A₂.num)
  have hz_coe : z.map Int.cast = A₁ * (y.map Int.cast) * A₂ := by
    simp only [Matrix.map_add _ Int.cast_add, Matrix.map_one _ Int.cast_zero Int.cast_one, hk,
      mul_add, mul_one, add_mul, hA₁₂, add_right_inj, z]
    conv_rhs => rw [← A₁.inv_denom_smul_num, ← A₂.inv_denom_smul_num, Matrix.map_smul _ _ (by simp)]
    simp only [Matrix.smul_mul, Matrix.mul_smul, Matrix.map_smul (Int.cast : ℤ → ℚ) M (by simp),
      Matrix.map_mul_intCast]
    rw [← Nat.cast_smul_eq_nsmul ℚ (_ * M), ← MulAction.mul_smul, ← MulAction.mul_smul,
      mul_comm a₁ a₂, Nat.cast_mul, Nat.cast_mul, mul_assoc _ _ (M : ℚ), mul_comm _ (M : ℚ),
      inv_mul_cancel_left₀ (mod_cast A₂.den_ne_zero),
      mul_inv_cancel_right₀ (mod_cast A₁.den_ne_zero), Nat.cast_smul_eq_nsmul]
  have hz_det : z.det = 1 := by
    have := congr_arg Matrix.det hz_coe
    simp_rw [Matrix.det_mul, ← Int.cast_det] at this
    rwa [mul_right_comm, ← Matrix.det_mul, hA₁₂, Matrix.det_one, one_mul, hy, Int.cast_inj] at this
  refine ⟨⟨z, hz_det⟩, ?_, by simpa only [Subtype.ext_iff, Subgroup.coe_mul, Units.ext_iff,
    Units.val_mul] using hz_coe⟩
  rw [SetLike.mem_coe, CongruenceSubgroup.Gamma_mem', Subtype.ext_iff]
  ext i j
  simp_rw [map_apply_coe, z, map_add, map_one, RingHom.mapMatrix_apply, Int.coe_castRingHom,
    add_apply, map_apply, coe_one, add_eq_left, Matrix.smul_apply, nsmul_eq_mul, Int.cast_mul,
    Int.cast_natCast, ZMod.natCast_self M, zero_mul]

/-- For any `g ∈ GL(2, ℚ)` and `M ≠ 0`, there exists `N` such that `g Γ(N) g⁻¹ ≤ Γ(M)`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/SpecialFunctions/CongruenceSubgroups/Variant115025cca05c7411b213e81c73909e2f3af836b1863ad103fa3546d9deefa34f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/SpecialFunctions/CongruenceSubgroups/Variant115025cca05c7411b213e81c73909e2f3af836b1863ad103fa3546d9deefa34f.lean#L261).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c6fd6d034669498196383626cdc40a785a608d09` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
