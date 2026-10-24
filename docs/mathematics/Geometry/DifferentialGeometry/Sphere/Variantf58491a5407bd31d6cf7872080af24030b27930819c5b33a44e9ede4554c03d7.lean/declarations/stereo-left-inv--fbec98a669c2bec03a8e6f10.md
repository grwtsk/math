# stereo_left_inv

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:e2fed2be-ffd3-f295-1b3b-497b5b4cbe23",
  "kind": "theorem",
  "lexical_name": "stereo_left_inv",
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
  "slug": "stereo-left-inv--fbec98a669c2bec03a8e6f10",
  "source": {
    "blob": "b3bea2732c79c6b5954fccb03aede9c3303635cb",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 277,
    "line": 222,
    "path": "GRWTSK/Geometry/DifferentialGeometry/Sphere/Variantf58491a5407bd31d6cf7872080af24030b27930819c5b33a44e9ede4554c03d7.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:fbec98a669c2bec03a8e6f10f015309052e822e0cc8bff5bcf89f7a6cae74f61",
  "verification": {
    "reference": "docs/verification/Geometry/DifferentialGeometry/Sphere/Variantf58491a5407bd31d6cf7872080af24030b27930819c5b33a44e9ede4554c03d7.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e2fed2be-ffd3-f295-1b3b-497b5b4cbe23`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 222–277.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem stereo_left_inv (hv : ‖v‖ = 1) {x : sphere (0 : E) 1} (hx : (x : E) ≠ v) :
    stereoInvFun hv (stereoToFun v x) = x := by
  ext
  simp only [stereoToFun_apply, stereoInvFun_apply, smul_add]
  -- name two frequently-occuring quantities and write down their basic properties
  set a : ℝ := innerSL _ v x
  set y := orthogonalProjection (ℝ ∙ v)ᗮ x
  have split : ↑x = a • v + ↑y := by
    convert (orthogonalProjection_add_orthogonalProjection_orthogonal (ℝ ∙ v) x).symm
    exact (orthogonalProjection_unit_singleton ℝ hv x).symm
  have hvy : ⟪v, y⟫_ℝ = 0 := Submodule.mem_orthogonal_singleton_iff_inner_right.mp y.2
  have pythag : 1 = a ^ 2 + ‖y‖ ^ 2 := by
    have hvy' : ⟪a • v, y⟫_ℝ = 0 := by simp only [inner_smul_left, hvy, mul_zero]
    convert norm_add_sq_eq_norm_sq_add_norm_sq_of_inner_eq_zero _ _ hvy' using 2
    -- Porting note: was simp [← split] but wasn't finding `norm_eq_of_mem_sphere`
    · simp only [norm_eq_of_mem_sphere, Nat.cast_one, mul_one, ← split]
    · simp [norm_smul, hv, ← sq, sq_abs]
    · exact sq _
  -- Porting note : added to work around cancel_denoms and nlinarith failures
  have duh : ‖y.val‖ ^ 2 = 1 - a ^ 2 := by
    rw [←Submodule.coe_norm, pythag]; ring
  -- two facts which will be helpful for clearing denominators in the main calculation
  have ha : 1 - a ≠ 0 := by
    have : a < 1 := (inner_lt_one_iff_real_of_norm_one hv (by simp)).mpr hx.symm
    linarith
  -- the core of the problem is these two algebraic identities:
  have h₁ : (2 ^ 2 / (1 - a) ^ 2 * ‖y‖ ^ 2 + 4)⁻¹ * 4 * (2 / (1 - a)) = 1 := by
    -- Porting note: used to be `field_simp; simp only [Submodule.coe_norm] at *; nlinarith`
    -- but cancel_denoms does not seem to be working and
    -- nlinarith cannot close the goal even if it did
    -- clear_value because field_simp does zeta-reduction (by design?) and is annoying
    clear_value a y
    field_simp
    rw [duh]
    ring
  have h₂ : (2 ^ 2 / (1 - a) ^ 2 * ‖y‖ ^ 2 + 4)⁻¹ * (2 ^ 2 / (1 - a) ^ 2 * ‖y‖ ^ 2 - 4) = a := by
    -- Porting note: field_simp is not behaving as in ml3
    -- see porting note above; previous proof used trans and was comparably complicated
    clear_value a y
    field_simp
    rw [duh]
    ring
  convert
    congr_arg₂ Add.add (congr_arg (fun t => t • (y : E)) h₁) (congr_arg (fun t => t • v) h₂) using 1
  · simp [inner_add_right, inner_smul_right, hvy, real_inner_self_eq_norm_mul_norm, hv, mul_smul,
      mul_pow, Real.norm_eq_abs, sq_abs, norm_smul]
    -- Porting note: used to be simp only [split, add_comm] but get maxRec errors
    · rw [split, add_comm]
      ac_rfl
  -- Porting note: this branch did not exit in ml3
  · rw [split, add_comm]
    congr!
    dsimp
    rw [one_smul]
#align stereo_left_inv stereo_left_inv

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Geometry/DifferentialGeometry/Sphere/Variantf58491a5407bd31d6cf7872080af24030b27930819c5b33a44e9ede4554c03d7.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/DifferentialGeometry/Sphere/Variantf58491a5407bd31d6cf7872080af24030b27930819c5b33a44e9ede4554c03d7.lean#L222).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b3bea2732c79c6b5954fccb03aede9c3303635cb` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
