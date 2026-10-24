# tendsto_norm_deriv_z_coth_z_atTop_horizontalStrip

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
      "line": 5733,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/38/3861a18c353a028274e3a45d75582be6d4ddc577bafa3a8147f92e32f09635dc.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:81e105dd-9efc-afd9-e222-8b7cbc8cefc0",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:7e23ed4a-f222-8821-98c7-61cc49ff15da",
  "kind": "lemma",
  "lexical_name": "tendsto_norm_deriv_z_coth_z_atTop_horizontalStrip",
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
  "slug": "tendsto-norm-deriv-z-coth-z-attop-horizontalstrip--78cee638dadd9396952449eb",
  "source": {
    "blob": "ff796b0e5ce50fb625a95391f29798f81bd649bf",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 5758,
    "line": 5733,
    "path": "GRWTSK/Analysis/AsymptoticAnalysis/CH2Part1/Variant3861a18c353a028274e3a45d75582be6d4ddc577bafa3a8147f92e32f09635dc.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:78cee638dadd9396952449eb1f41f81b1b964b9c1783a0d8b6586d97115cbb07",
  "verification": {
    "reference": "docs/verification/Analysis/AsymptoticAnalysis/CH2Part1/Variant3861a18c353a028274e3a45d75582be6d4ddc577bafa3a8147f92e32f09635dc.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:7e23ed4a-f222-8821-98c7-61cc49ff15da`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 5733–5758.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private lemma tendsto_norm_deriv_z_coth_z_atTop_horizontalStrip (c : ℝ) :
    Filter.Tendsto (fun z ↦ ‖deriv (fun w ↦ w * coth w) z‖)
      (Filter.comap (abs ∘ Complex.re) Filter.atTop ⊓ Filter.principal (Complex.im ⁻¹' Set.Icc (-c) c)) (nhds 1) := by
  let F := Filter.comap (abs ∘ Complex.re) Filter.atTop ⊓ Filter.principal (Complex.im ⁻¹' Set.Icc (-c) c)
  have h_basis := HorizontalStrip.hasBasis_atTop c
  have h_deriv_id : ∀ᶠ z in F, deriv (fun w ↦ w * coth w) z = coth z - z / (Complex.sinh z) ^ 2 := by
    refine h_basis.eventually_iff.mpr ⟨1, True.intro, fun z hz ↦ ?_⟩
    simp only [Set.mem_setOf_eq] at hz
    have h_snz : Complex.sinh z ≠ 0 := sinh_ne_zero_of_re_ne_zero (abs_pos.mp (by linarith [hz.1]))
    exact deriv_z_coth_z_eq z h_snz
  have h_deriv_norm : (fun z ↦ ‖deriv (fun w ↦ w * coth w) z‖) =ᶠ[F] (fun z ↦ ‖coth z - z / Complex.sinh z ^ 2‖) :=
    Filter.EventuallyEq.fun_comp h_deriv_id norm
  refine Filter.Tendsto.congr' h_deriv_norm.symm ?_
  have h_lim_diff : Filter.Tendsto (fun z ↦ ‖coth z - z / Complex.sinh z ^ 2‖ - ‖coth z‖) F (nhds 0) := by
    rw [tendsto_zero_iff_norm_tendsto_zero]
    refine Filter.Tendsto.squeeze' (h := fun z ↦ ‖z / Complex.sinh z ^ 2‖) tendsto_const_nhds ?_ ?_ ?_
    · convert (tendsto_z_div_sinh_sq_atTop_horizontalStrip c).norm; simp
    · filter_upwards with z; apply norm_nonneg
    · filter_upwards with z
      rw [Real.norm_eq_abs]
      refine (abs_norm_sub_norm_le _ _).trans ?_
      rw [sub_sub_cancel_left, norm_neg]
  convert Filter.Tendsto.add (tendsto_norm_coth_atTop_horizontalStrip c) h_lim_diff using 1
  · ext z; simp
  · norm_num

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/AsymptoticAnalysis/CH2Part1/Variant3861a18c353a028274e3a45d75582be6d4ddc577bafa3a8147f92e32f09635dc.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/AsymptoticAnalysis/CH2Part1/Variant3861a18c353a028274e3a45d75582be6d4ddc577bafa3a8147f92e32f09635dc.lean#L5733).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ff796b0e5ce50fb625a95391f29798f81bd649bf` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
