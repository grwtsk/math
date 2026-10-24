# bessel_of_weighted_gram_rows

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "28e803e649a93dccf50e3d95711b88c7db126c1e",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 129,
      "path": "GRWTSK/Analysis/InnerProductSpace/WeightedSchurBounds.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:5a89111b-ca36-2951-e372-7c91d41548a8",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:5410a159-5ec0-cd45-6a7a-a50a6bb31e23",
  "kind": "theorem",
  "lexical_name": "bessel_of_weighted_gram_rows",
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
  "slug": "bessel-of-weighted-gram-rows--f808c734808d4567786159ed",
  "source": {
    "blob": "28e803e649a93dccf50e3d95711b88c7db126c1e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 173,
    "line": 129,
    "path": "GRWTSK/Analysis/InnerProductSpace/WeightedSchurBounds.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f808c734808d4567786159ed731fe6a71a6867f11173cba27eb4e08add41f7b9",
  "verification": {
    "reference": "docs/verification/Analysis/InnerProductSpace/WeightedSchurBounds.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:5410a159-5ec0-cd45-6a7a-a50a6bb31e23`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 129–173.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem bessel_of_weighted_gram_rows {ι E : Type*}
    [NormedAddCommGroup E] [InnerProductSpace ℂ E]
    (S : Finset ι) (v : ι → E) (u : E) (w : ι → ℝ) {C : ℝ}
    (hC : 0 ≤ C) (hw : ∀ i ∈ S, 0 < w i)
    (hrow : ∀ i ∈ S,
      ∑ j ∈ S, ‖inner ℂ (v i) (v j)‖ * w j ≤ C * w i) :
    (∑ i ∈ S, ‖inner ℂ (v i) u‖ ^ 2) ≤ C * ‖u‖ ^ 2 := by
  let b := fun i => inner ℂ (v i) u
  let z := ∑ i ∈ S, b i • v i
  let A := ∑ i ∈ S, ‖b i‖ ^ 2
  have hA : 0 ≤ A := sum_nonneg (fun _ _ => sq_nonneg _)
  have hz : inner ℂ z u = (A : ℂ) := by
    dsimp only [z, A]
    rw [sum_inner]
    push_cast
    apply sum_congr rfl
    intro i hi
    rw [inner_smul_left]
    exact conj_mul' (b i)
  have hc : A ≤ ‖z‖ * ‖u‖ := by
    calc
      A = ‖inner ℂ z u‖ := by
        rw [hz, Complex.norm_real, Real.norm_eq_abs, abs_of_nonneg hA]
      _ ≤ _ := norm_inner_le_norm _ _
  have hz2 : ‖z‖ ^ 2 ≤ C * A := synthesis_of_weighted_gram_rows S v b w hw hrow
  have hc2 : A ^ 2 ≤ ‖z‖ ^ 2 * ‖u‖ ^ 2 := by
    simpa only [mul_pow] using pow_le_pow_left₀ hA hc 2
  have hprod := mul_le_mul_of_nonneg_right hz2 (sq_nonneg ‖u‖)
  by_cases hAz : A = 0
  · change A ≤ C * ‖u‖ ^ 2
    rw [hAz]
    exact mul_nonneg hC (sq_nonneg _)
  · change A ≤ C * ‖u‖ ^ 2
    have hApos : 0 < A := lt_of_le_of_ne hA (Ne.symm hAz)
    apply (mul_le_mul_iff_right₀ hApos).mp
    calc
      A * A = A ^ 2 := by ring
      _ ≤ C * A * ‖u‖ ^ 2 := hc2.trans hprod
      _ = A * (C * ‖u‖ ^ 2) := by ring

end EulerP04RH.WeightedGram

#print axioms EulerP04RH.WeightedGram.weighted_symmetric_schur
#print axioms EulerP04RH.WeightedGram.synthesis_of_weighted_gram_rows
#print axioms EulerP04RH.WeightedGram.bessel_of_weighted_gram_rows
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Analysis/InnerProductSpace/WeightedSchurBounds.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/InnerProductSpace/WeightedSchurBounds.lean#L129).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `28e803e649a93dccf50e3d95711b88c7db126c1e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
