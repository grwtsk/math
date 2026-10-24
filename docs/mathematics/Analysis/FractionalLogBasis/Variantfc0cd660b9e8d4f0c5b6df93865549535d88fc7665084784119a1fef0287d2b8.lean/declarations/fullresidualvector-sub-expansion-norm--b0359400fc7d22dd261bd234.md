# fullResidualVector_sub_expansion_norm

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "163ec9b745033c6e4da2e86774bf0c6afa2fae5b",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 126,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/fc/fc0cd660b9e8d4f0c5b6df93865549535d88fc7665084784119a1fef0287d2b8.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:5c34dabc-9703-e112-57f9-8b5160b3502f",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:312bb15d-613e-e0bf-92a3-61c1dce81d9e",
  "kind": "theorem",
  "lexical_name": "fullResidualVector_sub_expansion_norm",
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
  "slug": "fullresidualvector-sub-expansion-norm--b0359400fc7d22dd261bd234",
  "source": {
    "blob": "163ec9b745033c6e4da2e86774bf0c6afa2fae5b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 173,
    "line": 126,
    "path": "GRWTSK/Analysis/FractionalLogBasis/Variantfc0cd660b9e8d4f0c5b6df93865549535d88fc7665084784119a1fef0287d2b8.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b0359400fc7d22dd261bd2349fd10e5ac78964899a0717100bca6b7366f19e87",
  "verification": {
    "reference": "docs/verification/Analysis/FractionalLogBasis/Variantfc0cd660b9e8d4f0c5b6df93865549535d88fc7665084784119a1fef0287d2b8.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:312bb15d-613e-e0bf-92a3-61c1dce81d9e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 126–173.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem fullResidualVector_sub_expansion_norm (X : ℕ) (ε : ℝ) (hX : 1 ≤ X) :
    fullResidualVector X ε hX - fullResidualVector X 0 hX =
      ∑ d ∈ Finset.Icc 1 X,
        ((dampedCoefficient X ε d - dampedCoefficient X 0 d : ℝ) : ℂ) • fractionalLogVector d ∧
    ‖fullResidualVector X ε hX - fullResidualVector X 0 hX‖ ≤
      ∑ d ∈ Finset.Icc 1 X,
        |dampedCoefficient X ε d - dampedCoefficient X 0 d| * Real.sqrt (2 / (d : ℝ)) := by
  classical
  let c : ℕ → ℂ := fun d => (dampedCoefficient X ε d - dampedCoefficient X 0 d : ℝ)
  have hae (d : ℕ) : (c d • fractionalLogVector d : FullH) =ᵐ[volume]
      fun u => c d * fractionalLogFunction d u := by
    filter_upwards [Lp.coeFn_smul (c d) (fractionalLogVector d), fractionalLogVector_ae d]
      with u hs hb
    simpa only [Pi.smul_apply, RingHom.id_apply, smul_eq_mul, hb] using hs
  have hall : ∀ᵐ u ∂volume, ∀ d : ℕ,
      (c d • fractionalLogVector d : FullH) u = c d * fractionalLogFunction d u :=
    ae_all_iff.mpr hae
  have he : fullResidualVector X ε hX - fullResidualVector X 0 hX =
      ∑ d ∈ Finset.Icc 1 X, c d • fractionalLogVector d := by
    apply Lp.ext
    filter_upwards [fullResidualVector_ae X ε hX, fullResidualVector_ae X 0 hX,
      Lp.coeFn_sub (fullResidualVector X ε hX) (fullResidualVector X 0 hX),
      sum_coe_ae (Finset.Icc 1 X) (fun d => c d • fractionalLogVector d), hall]
      with u hε h0 hsub hsum hall
    simp only [Pi.sub_apply] at hsub
    rw [hsub, hε, h0, hsum]
    simp_rw [hall]
    simp only [logResidual, arithmeticResidual, fractionalLogFunction, c]
    rw [← mul_sub, add_sub_add_left_eq_sub, Finset.sum_sub_distrib, Finset.mul_sum]
    apply Finset.sum_congr rfl
    intro d _
    push_cast
    ring
  refine ⟨he, ?_⟩
  rw [he]
  calc
    _ ≤ ∑ d ∈ Finset.Icc 1 X, ‖c d • fractionalLogVector d‖ := norm_sum_le _ _
    _ ≤ _ := by
      apply Finset.sum_le_sum
      intro d _
      rw [norm_smul]
      have hc : ‖c d‖ = |dampedCoefficient X ε d - dampedCoefficient X 0 d| := by
        simp only [c, Complex.norm_real, Real.norm_eq_abs]
      rw [hc]
      exact mul_le_mul_of_nonneg_left (fractionalLogVector_norm_le d) (abs_nonneg _)

end
end FractionalLogBasisScratch
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Analysis/FractionalLogBasis/Variantfc0cd660b9e8d4f0c5b6df93865549535d88fc7665084784119a1fef0287d2b8.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/FractionalLogBasis/Variantfc0cd660b9e8d4f0c5b6df93865549535d88fc7665084784119a1fef0287d2b8.lean#L126).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `163ec9b745033c6e4da2e86774bf0c6afa2fae5b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
