# evalOnBoxAffine_lo_correct

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "3fc7b63fea392177f936363d2fafd198183fb077",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 1659,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/72/72bc485b659af49356a70de59d30e3683810ca00a4c1936f9079300e73e32393.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:2c50ac96-1897-3f6c-eef4-26cfae871be0",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:55ba69ad-e67f-8b8d-4d21-4b14718e0dbe",
  "kind": "theorem",
  "lexical_name": "evalOnBoxAffine_lo_correct",
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
  "slug": "evalonboxaffine-lo-correct--d0ee3c92daab747ddaa7895a",
  "source": {
    "blob": "3fc7b63fea392177f936363d2fafd198183fb077",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1766,
    "line": 1659,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Global/Variant72bc485b659af49356a70de59d30e3683810ca00a4c1936f9079300e73e32393.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d0ee3c92daab747ddaa7895a002678e45149d4011a2d68472f84e4291a53c30b",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Global/Variant72bc485b659af49356a70de59d30e3683810ca00a4c1936f9079300e73e32393.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:55ba69ad-e67f-8b8d-4d21-4b14718e0dbe`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1659–1766.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem evalOnBoxAffine_lo_correct (e : Expr) (hsupp : ExprSupportedCore e)
    (B : Box) (cfg : GlobalOptConfigAffine) (ρ : Nat → ℝ) (hρ : Box.envMem ρ B)
    (hzero : ∀ i, i ≥ B.length → ρ i = 0)
    (hdom : evalDomainValidAffine e (toAffineEnv B)
      { taylorDepth := cfg.taylorDepth, maxNoiseSymbols := cfg.maxNoiseSymbols }) :
    (evalOnBoxAffine e B cfg).lo ≤ Expr.eval ρ e := by
  set n := B.length
  set affineEnv := toAffineEnv B
  set affineCfg : AffineConfig := { taylorDepth := cfg.taylorDepth, maxNoiseSymbols := cfg.maxNoiseSymbols }
  -- Define noise assignment: for each dimension i, eps[i] encodes where ρ i lies in B[i]
  -- If B[i] = [lo, hi] with mid = (lo+hi)/2 and rad = (hi-lo)/2, then
  -- ρ i = mid + rad * eps[i], so eps[i] = (ρ i - mid) / rad (when rad > 0)
  let eps : AffineForm.NoiseAssignment := List.ofFn (fun i : Fin n =>
    let I := B.getD i.val (IntervalRat.singleton 0)
    let mid := ((I.lo + I.hi) / 2 : ℚ)
    let rad := ((I.hi - I.lo) / 2 : ℚ)
    if hr : (rad : ℝ) = 0 then 0 else (ρ i.val - mid) / rad)
  -- Prove the noise assignment is valid (all values in [-1, 1])
  have hvalid : AffineForm.validNoise eps := by
    apply validNoise_ofFn
    intro ⟨i, hi⟩
    simp only
    set I := B.getD i (IntervalRat.singleton 0) with hI_def
    set mid := ((I.lo + I.hi) / 2 : ℚ) with hmid_def
    set rad := ((I.hi - I.lo) / 2 : ℚ) with hrad_def
    split_ifs with hr
    · exact ⟨by linarith, by linarith⟩
    · have hρi : ρ i ∈ I := by
        have hρ' := hρ ⟨i, hi⟩
        simp only [hI_def, List.getD, List.getElem?_eq_getElem hi, Option.getD]
        convert hρ'
      have habs := abs_sub_mid_le_rad hρi
      have hrad_nonneg : (0 : ℝ) ≤ rad := by
        simp only [hrad_def]
        have hI := I.le
        have h : (0 : ℝ) ≤ ((I.hi - I.lo) / 2 : ℚ) := by
          have : (0 : ℚ) ≤ (I.hi - I.lo) / 2 := by linarith
          exact_mod_cast this
        exact h
      have hrad_pos : (0 : ℝ) < rad := lt_of_le_of_ne hrad_nonneg (Ne.symm hr)
      constructor
      · have h1 : -(rad : ℝ) ≤ ρ i - mid := by
          rw [abs_le] at habs
          exact habs.1
        calc -1 = -(rad : ℝ) / rad := by field_simp
          _ ≤ (ρ i - mid) / rad := div_le_div_of_nonneg_right h1 (le_of_lt hrad_pos)
      · have h1 : ρ i - mid ≤ rad := by
          rw [abs_le] at habs
          exact habs.2
        calc (ρ i - mid) / rad ≤ (rad : ℝ) / rad := div_le_div_of_nonneg_right h1 (le_of_lt hrad_pos)
          _ = 1 := by field_simp
  -- Prove environment membership
  have henv : envMemAffine ρ affineEnv eps := by
    intro i
    simp only [AffineForm.mem_affine, affineEnv, toAffineEnv]
    set I := B.getD i (IntervalRat.singleton 0) with hI_def
    set mid := ((I.lo + I.hi) / 2 : ℚ) with hmid_def
    set rad := ((I.hi - I.lo) / 2 : ℚ) with hrad_def
    simp only [AffineForm.ofInterval, AffineForm.evalLinear]
    use 0
    constructor
    · norm_num
    · simp only [add_zero]
      -- Need to show: ρ i = mid + linearSum (ofFn (fun j => if j = i then rad else 0)) eps
      rw [linearSum_ofFn_basis]
      by_cases hi : i < n
      · -- eps[⟨i, hi⟩] = (let I := ...; if rad = 0 then 0 else (ρ i - mid) / rad)
        -- The goal has a dite on whether (rad : ℝ) = 0
        -- Since I and rad are defined in terms of B.getD i, we need to unfold carefully
        have hI_eq : B.getD i (IntervalRat.singleton 0) = I := rfl
        have hrad_eq : ((I.hi - I.lo) / 2 : ℚ) = rad := rfl
        by_cases hrad0 : (rad : ℝ) = 0
        · -- rad = 0 case: ρ i = mid
          simp only [hI_eq, hrad_eq]
          rw [dif_pos hrad0]
          simp only [hrad0]
          have hρi : ρ i ∈ I := by
            have hρ' := hρ ⟨i, hi⟩
            simp only [hI_def, List.getD, List.getElem?_eq_getElem hi, Option.getD]
            convert hρ'
          have habs := abs_sub_mid_le_rad hρi
          rw [abs_le] at habs
          have hle : ρ i - mid ≤ 0 := by linarith [habs.2, hrad0]
          have hge : 0 ≤ ρ i - mid := by linarith [habs.1, hrad0]
          linarith
        · -- rad ≠ 0 case: reconstruct ρ i = mid + rad * eps[i]
          simp only [hI_eq, hrad_eq]
          rw [dif_neg hrad0, dif_pos hi]
          -- Now goal is: ρ i = mid + rad * ((ρ i - mid) / rad)
          have hrad_ne : (rad : ℝ) ≠ 0 := hrad0
          field_simp [hrad_ne]
          ring
      · -- i ≥ n case: ρ i = 0 and I = singleton 0
        have hzeroi : ρ i = 0 := hzero i (not_lt.mp hi)
        have hI0 : I = IntervalRat.singleton 0 := by
          simp only [hI_def, List.getD, List.getElem?_eq_none (not_lt.mp hi), Option.getD]
        simp only [hI0, IntervalRat.singleton, hzeroi]
        ring
  -- Use evalIntervalAffine_correct to get mem_affine, then mem_toInterval_weak
  have hmem_affine := evalIntervalAffine_correct e hsupp ρ affineEnv eps hvalid henv affineCfg hdom
  have hmem := AffineForm.mem_toInterval_weak hvalid hmem_affine
  have hmem' : Expr.eval ρ e ∈ evalOnBoxAffine e B cfg := by
    simpa [evalOnBoxAffine, affineEnv, affineCfg] using hmem
  exact ((IntervalRat.mem_def _ _).mp hmem').1

/-- The key correctness theorem for Affine minimization.

Note: Requires domain validity for expressions with log. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Global/Variant72bc485b659af49356a70de59d30e3683810ca00a4c1936f9079300e73e32393.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Global/Variant72bc485b659af49356a70de59d30e3683810ca00a4c1936f9079300e73e32393.lean#L1659).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3fc7b63fea392177f936363d2fafd198183fb077` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
