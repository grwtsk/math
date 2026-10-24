# mem_layerNorm

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "da5a10d50af788618bea7e02100745578c59327d",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 554,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/cd/cd315f8cb21b5fd4efdbab04a9b0952409540212c20824e9eaf336360d43c149.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:6275f2c9-ec74-a74c-79bc-93f6a6a2e29e",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:fae9a8e5-91b7-2a2e-c979-9b153e793558",
  "kind": "theorem",
  "lexical_name": "mem_layerNorm",
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
  "slug": "mem-layernorm--3e209f7b2c7bf088fc45174b",
  "source": {
    "blob": "da5a10d50af788618bea7e02100745578c59327d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 735,
    "line": 554,
    "path": "GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/Vector/Variantcd315f8cb21b5fd4efdbab04a9b0952409540212c20824e9eaf336360d43c149.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:3e209f7b2c7bf088fc45174bcab4caf87369450661f636a167c665ed59f05141",
  "verification": {
    "reference": "docs/verification/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/Vector/Variantcd315f8cb21b5fd4efdbab04a9b0952409540212c20824e9eaf336360d43c149.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:fae9a8e5-91b7-2a2e-c979-9b153e793558`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 554–735.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem mem_layerNorm {v_real : List ℝ} {v : AffineVector}
    {eps : AffineForm.NoiseAssignment}
    (gamma beta : List ℚ)
    (epsilon : ℚ)
    (heps_pos : 0 < epsilon)
    (hvalid : AffineForm.validNoise eps)
    (hmem : mem v_real v eps)
    (hne : ¬v.isEmpty)
    -- Additional hypotheses needed for sqrt and inv
    (hlen_eps : eps.length = (variance v |>.add (AffineForm.const epsilon)).coeffs.length)
    (hlen_sqrt : eps.length = ((variance v).add (AffineForm.const epsilon) |> AffineForm.sqrt).coeffs.length)
    (hsqrt_pos : 0 < ((variance v).add (AffineForm.const epsilon) |> AffineForm.sqrt).toInterval.lo) :
    let μ := v_real.sum / v_real.length
    let variance_real := (v_real.map (fun x => (x - μ) * (x - μ))).sum / v_real.length
    let std_real := Real.sqrt (variance_real + epsilon)
    let inv_std_real := 1 / std_real
    let output_real :=
      List.zipWith3 (fun xi (g : ℚ) (b : ℚ) => (xi - μ) * inv_std_real * (g : ℝ) + b)
        v_real gamma beta
    mem output_real (layerNorm v gamma beta epsilon) eps := by
  simp only [layerNorm]

  -- Step 1: Centered values
  have hcentered := mem_centered hvalid hmem

  -- Step 2: Variance
  have hvar := mem_variance hvalid hmem hne

  -- Step 3: Variance + epsilon
  have hvar_eps := AffineForm.mem_add hvar (AffineForm.mem_const epsilon eps)

  -- Step 4: Standard deviation (sqrt)
  -- variance_real ≥ 0 (mean of squares) and epsilon > 0, so variance_real + epsilon > 0
  have hvar_nonneg : 0 ≤ (v_real.map (fun x => (x - v_real.sum / ↑v_real.length) *
                          (x - v_real.sum / ↑v_real.length))).sum / ↑v_real.length := by
    apply div_nonneg
    · apply List.sum_nonneg
      intro x hx
      simp only [List.mem_map] at hx
      obtain ⟨y, _, rfl⟩ := hx
      nlinarith
    · exact Nat.cast_nonneg _

  have hpos : 0 ≤ (v_real.map (fun x => (x - (v_real.sum / ↑v_real.length)) * (x - (v_real.sum / ↑v_real.length)))).sum /
               ↑v_real.length + (epsilon : ℝ) := by
    have heps_pos' : (0 : ℝ) < epsilon := Rat.cast_pos.mpr heps_pos
    linarith

  have hstd := AffineForm.mem_sqrt hvalid hlen_eps hvar_eps hpos

  -- Step 5: Inverse (1/std)
  -- Need to show std > 0 and interval is positive
  have hstd_pos : 0 < Real.sqrt ((v_real.map (fun x => (x - v_real.sum / ↑v_real.length) *
                   (x - v_real.sum / ↑v_real.length))).sum / ↑v_real.length + ↑epsilon) := by
    apply Real.sqrt_pos_of_pos
    have heps_pos' : (0 : ℝ) < epsilon := Rat.cast_pos.mpr heps_pos
    linarith

  have hinv := AffineForm.mem_inv hvalid hlen_sqrt hstd hstd_pos hsqrt_pos

  -- Step 6: Combine for each element using zipWith3

  -- Define abbreviations
  let centered_v := centered v
  let inv_std := AffineForm.inv (AffineForm.sqrt ((variance v).add (AffineForm.const epsilon)))

  -- Helper: the length equality
  have hlen_v : v_real.length = v.length := hmem.1

  simp only [mem, centered]

  constructor
  · -- Length equality for zipWith3
    -- The coercion ℚ → ℝ for list elements preserves length
    simp only [length_zipWith3_aux, List.length_map, hlen_v]
  · -- Element-wise membership
    intro i hi_affine hi_real

    -- Normalize length bounds to min-forms for arithmetic reasoning.
    have hi_affine_min : i < min (min v.length gamma.length) beta.length := by
      simpa [length_zipWith3_aux, List.length_map] using hi_affine
    have hi_real_min : i < min (min v_real.length gamma.length) beta.length := by
      simpa [length_zipWith3_aux] using hi_real

    -- Derive index bounds for component lists
    have hi_v : i < v.length := by
      have h1 : i < min v.length gamma.length :=
        lt_of_lt_of_le hi_affine_min (Nat.min_le_left _ _)
      exact lt_of_lt_of_le h1 (Nat.min_le_left _ _)
    have hi_vreal : i < v_real.length := by
      have h1 : i < min v_real.length gamma.length :=
        lt_of_lt_of_le hi_real_min (Nat.min_le_left _ _)
      exact lt_of_lt_of_le h1 (Nat.min_le_left _ _)
    have hi_gamma : i < gamma.length := by
      have h1 : i < min v.length gamma.length :=
        lt_of_lt_of_le hi_affine_min (Nat.min_le_left _ _)
      exact lt_of_lt_of_le h1 (Nat.min_le_right _ _)
    have hi_beta : i < beta.length := by
      exact lt_of_lt_of_le hi_affine_min (Nat.min_le_right _ _)
    have hi_centered : i < (v.map (fun xi => xi.sub v.mean)).length := by
      simpa [List.length_map] using hi_v

    -- Get membership for centered value at index i
    have hi_centered' : i < (v_real.map (· - v_real.sum / ↑v_real.length)).length := by
      simpa [List.length_map] using hi_vreal
    have hcentered_i := hcentered.2 i hi_centered hi_centered'
    simp only [List.getElem_map] at hcentered_i

    -- Apply mem_layerNorm_elem with the centered value and inverse standard deviation
    have helem := mem_layerNorm_elem (g := gamma[i]) (b := beta[i]) hvalid hcentered_i hinv

    have affine_eq := getElem_zipWith3_aux (fun xi g b =>
        AffineForm.add (AffineForm.scale g (AffineForm.mul xi inv_std)) (AffineForm.const b))
        (v.map (fun xi => xi.sub v.mean)) gamma beta i hi_centered hi_gamma hi_beta

    -- The proof follows from:
    -- 1. Affine output[i] = add (scale gamma[i] (mul centered[i] inv_std)) (const beta[i])
    -- 2. Real output[i] = (v_real[i] - μ) * inv_std_real * gamma[i] + beta[i]
    -- 3. mem_layerNorm_elem shows the affine form represents the real value

    -- Simplify the affine side using affine_eq
    simp only [List.getElem_map] at affine_eq

    -- Get the real zipWith3 element
    have real_eq := getElem_zipWith3_aux (fun xi (g : ℚ) (b : ℚ) =>
        (xi - v_real.sum / ↑v_real.length) *
          (1 / Real.sqrt ((v_real.map (fun x => (x - v_real.sum / ↑v_real.length) *
             (x - v_real.sum / ↑v_real.length))).sum / ↑v_real.length + ↑epsilon)) * (g : ℝ) + b)
        v_real gamma beta i hi_vreal hi_gamma hi_beta

    -- Now we can convert the proof
    -- LHS: (List.zipWith3 ...)[i]'hi_affine
    -- RHS: (List.zipWith3 ...)[i]'hi_real
    -- Both simplify to match helem

    -- Switch list element proofs to the ones from the goal.
    have affine_eq' :
        (List.zipWith3 (fun xi g b =>
          AffineForm.add (AffineForm.scale g (AffineForm.mul xi inv_std)) (AffineForm.const b))
          (v.map (fun xi => xi.sub v.mean)) gamma beta)[i]'hi_affine =
          AffineForm.add (AffineForm.scale gamma[i] (AffineForm.mul (v[i].sub v.mean) inv_std))
            (AffineForm.const beta[i]) := by
      have hproof :
          (List.zipWith3 (fun xi g b =>
            AffineForm.add (AffineForm.scale g (AffineForm.mul xi inv_std)) (AffineForm.const b))
            (v.map (fun xi => xi.sub v.mean)) gamma beta)[i]'hi_affine =
          (List.zipWith3 (fun xi g b =>
            AffineForm.add (AffineForm.scale g (AffineForm.mul xi inv_std)) (AffineForm.const b))
            (v.map (fun xi => xi.sub v.mean)) gamma beta)[i]'(by rw [length_zipWith3_aux]; omega) :=
        getElem_proof_irrel _ _ hi_affine (by rw [length_zipWith3_aux]; omega)
      simpa [hproof] using affine_eq

    have real_eq' :
        (List.zipWith3 (fun xi (g : ℚ) (b : ℚ) =>
          (xi - v_real.sum / ↑v_real.length) *
            (1 / Real.sqrt ((v_real.map (fun x => (x - v_real.sum / ↑v_real.length) *
               (x - v_real.sum / ↑v_real.length))).sum / ↑v_real.length + ↑epsilon)) * (g : ℝ) + b)
          v_real gamma beta)[i]'hi_real =
          (v_real[i] - v_real.sum / ↑v_real.length) *
            (1 / Real.sqrt ((v_real.map (fun x => (x - v_real.sum / ↑v_real.length) *
               (x - v_real.sum / ↑v_real.length))).sum / ↑v_real.length + ↑epsilon)) *
              (gamma[i] : ℝ) + (beta[i] : ℝ) := by
      have hproof :
          (List.zipWith3 (fun xi (g : ℚ) (b : ℚ) =>
            (xi - v_real.sum / ↑v_real.length) *
              (1 / Real.sqrt ((v_real.map (fun x => (x - v_real.sum / ↑v_real.length) *
                 (x - v_real.sum / ↑v_real.length))).sum / ↑v_real.length + ↑epsilon)) * (g : ℝ) + b)
            v_real gamma beta)[i]'hi_real =
          (List.zipWith3 (fun xi (g : ℚ) (b : ℚ) =>
            (xi - v_real.sum / ↑v_real.length) *
              (1 / Real.sqrt ((v_real.map (fun x => (x - v_real.sum / ↑v_real.length) *
                 (x - v_real.sum / ↑v_real.length))).sum / ↑v_real.length + ↑epsilon)) * (g : ℝ) + b)
            v_real gamma beta)[i]'(by rw [length_zipWith3_aux]; omega) :=
        getElem_proof_irrel _ _ hi_real (by rw [length_zipWith3_aux]; omega)
      simpa [hproof] using real_eq

    rw [affine_eq', real_eq']
    simpa [centered, variance, inv_std, List.getElem_map] using helem

end AffineVector

end LeanCert.Engine.Affine
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/Vector/Variantcd315f8cb21b5fd4efdbab04a9b0952409540212c20824e9eaf336360d43c149.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/Vector/Variantcd315f8cb21b5fd4efdbab04a9b0952409540212c20824e9eaf336360d43c149.lean#L554).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `da5a10d50af788618bea7e02100745578c59327d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
