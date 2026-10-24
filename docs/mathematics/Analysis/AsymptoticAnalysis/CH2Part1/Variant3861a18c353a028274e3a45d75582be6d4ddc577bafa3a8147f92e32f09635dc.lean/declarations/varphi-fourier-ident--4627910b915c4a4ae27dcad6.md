# varphi_fourier_ident

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "ff796b0e5ce50fb625a95391f29798f81bd649bf",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 2762,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/38/3861a18c353a028274e3a45d75582be6d4ddc577bafa3a8147f92e32f09635dc.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:6b2d9a4f-8230-b371-5b83-bd20c3538020",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:f16b4051-9ff8-756b-561f-f940fcca914a",
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
  "slug": "varphi-fourier-ident--4627910b915c4a4ae27dcad6",
  "source": {
    "blob": "ff796b0e5ce50fb625a95391f29798f81bd649bf",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 2796,
    "line": 2762,
    "path": "GRWTSK/Analysis/AsymptoticAnalysis/CH2Part1/Variant3861a18c353a028274e3a45d75582be6d4ddc577bafa3a8147f92e32f09635dc.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:4627910b915c4a4ae27dcad6b4ffefd1cbccc90e6580f8e32fc1cb3a81dab841",
  "verification": {
    "reference": "docs/verification/Analysis/AsymptoticAnalysis/CH2Part1/Variant3861a18c353a028274e3a45d75582be6d4ddc577bafa3a8147f92e32f09635dc.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f16b4051-9ff8-756b-561f-f940fcca914a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 2762–2796.

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

[Verification target and public status](../../../../../../verification/Analysis/AsymptoticAnalysis/CH2Part1/Variant3861a18c353a028274e3a45d75582be6d4ddc577bafa3a8147f92e32f09635dc.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/AsymptoticAnalysis/CH2Part1/Variant3861a18c353a028274e3a45d75582be6d4ddc577bafa3a8147f92e32f09635dc.lean#L2762).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ff796b0e5ce50fb625a95391f29798f81bd649bf` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
