# varphi_fourier_ident

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:2424e847-75b1-87e0-4363-3702c616d596",
  "kind": "theorem",
  "lexical_name": "varphi_fourier_ident",
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
  "slug": "varphi-fourier-ident--496c98136b0c84fe144cde1d",
  "source": {
    "blob": "4730827a7084551f7643dc7ab62b8d647252630c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 2807,
    "line": 2773,
    "path": "GRWTSK/Analysis/ComplexAnalysis/CH2Part1/Variant47d05801f669d2ef417f912340c49ea9ce7f627b87d8f49f0b5002fac1f3e7f7.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:496c98136b0c84fe144cde1d9382459cd432a2284129e66299d286e65a06a77c",
  "verification": {
    "reference": "docs/verification/Analysis/ComplexAnalysis/CH2Part1/Variant47d05801f669d2ef417f912340c49ea9ce7f627b87d8f49f0b5002fac1f3e7f7.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:2424e847-75b1-87e0-4363-3702c616d596`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 2773–2807.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem varphi_fourier_ident (ν ε : ℝ) (hlam : ν ≠ 0) (x : ℝ) :
    𝓕 (ϕ_pm ν ε) x =
      (∫ t in Set.Icc (-1 : ℝ) 0, (Phi_circ ν ε t - Phi_star ν ε t) * E (-t * x)) +
      (∫ t in Set.Icc 0 (1 : ℝ), (Phi_circ ν ε t + Phi_star ν ε t) * E (-t * x)) := by
  calc 𝓕 (ϕ_pm ν ε) x
    _ = ∫ (t : ℝ), ϕ_pm ν ε t * E (-t * x) := fourier_eq_E_integral _ x
    _ = ∫ t in Set.Icc (-1:ℝ) 1, ϕ_pm ν ε t * E (-t * x) := by
      apply (setIntegral_eq_integral_of_forall_compl_eq_zero ?_).symm
      intro t ht
      unfold ϕ_pm
      split_ifs with h
      · exact (ht (Set.mem_Icc.mpr h)).elim
      · rw [zero_mul]
    _ = (∫ t in Set.Icc (-1:ℝ) 0, ϕ_pm ν ε t * E (-t * x)) +
        (∫ t in Set.Icc 0 (1:ℝ), ϕ_pm ν ε t * E (-t * x)) := by
      conv_lhs =>
        rw [show Set.Icc (-1 : ℝ) 1 = Set.Icc (-1) 0 ∪ Set.Icc 0 1 from
          (Set.Icc_union_Icc_eq_Icc (by norm_num) (by norm_num)).symm]
      refine MeasureTheory.setIntegral_union₀ ?_ nullMeasurableSet_Icc
        (ϕ_pm_mul_E_integrableOn_Icc ν ε hlam x _ _)
        (ϕ_pm_mul_E_integrableOn_Icc ν ε hlam x _ _)
      have hcap : Set.Icc (-1 : ℝ) 0 ∩ Set.Icc 0 1 = {0} := by
        ext t; simp only [Set.mem_inter_iff, Set.mem_Icc, Set.mem_singleton_iff]
        constructor
        · rintro ⟨⟨-, h1⟩, h2, -⟩; linarith
        · rintro rfl; norm_num
      simp [AEDisjoint, hcap]
    _ = (∫ t in Set.Icc (-1:ℝ) 0, (Phi_circ ν ε t - Phi_star ν ε t) * E (-t * x)) +
        (∫ t in Set.Icc 0 (1:ℝ), (Phi_circ ν ε t + Phi_star ν ε t) * E (-t * x)) := by
      congr 1
      · exact setIntegral_congr_fun measurableSet_Icc fun t ht => by
          rw [ϕ_pm_eq_on_Icc_neg ν ε ht]
      · exact setIntegral_congr_fun measurableSet_Icc fun t ht => by
          rw [ϕ_pm_eq_on_Icc_pos ν ε ht]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/ComplexAnalysis/CH2Part1/Variant47d05801f669d2ef417f912340c49ea9ce7f627b87d8f49f0b5002fac1f3e7f7.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/ComplexAnalysis/CH2Part1/Variant47d05801f669d2ef417f912340c49ea9ce7f627b87d8f49f0b5002fac1f3e7f7.lean#L2773).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4730827a7084551f7643dc7ab62b8d647252630c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
