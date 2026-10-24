# HorizontalStrip.exists_norm_deriv_z_coth_z_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:c0b36695-6fcf-2483-c45e-e27b05ca652c",
  "kind": "lemma",
  "lexical_name": "HorizontalStrip.exists_norm_deriv_z_coth_z_le",
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
  "slug": "horizontalstrip-exists-norm-deriv-z-coth-z-le--c99fcd5421da51217fa7e031",
  "source": {
    "blob": "fe1ca3fba3ce69f1a74f1c88c8189358b833ea04",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 5813,
    "line": 5767,
    "path": "GRWTSK/Analysis/AsymptoticAnalysis/CH2Part1/Variant4f15649f23be32b98ef709f89becf48615a1bf670ff3f775310bc6d9b3f66f4a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c99fcd5421da51217fa7e03153169d1ae682b6bd4667142dc92a0b6c4a71a708",
  "verification": {
    "reference": "docs/verification/Analysis/AsymptoticAnalysis/CH2Part1/Variant4f15649f23be32b98ef709f89becf48615a1bf670ff3f775310bc6d9b3f66f4a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c0b36695-6fcf-2483-c45e-e27b05ca652c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 5767–5813.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private lemma HorizontalStrip.exists_norm_deriv_z_coth_z_le (c : ℝ) (hc_lt : c < π) :
    ∃ C > 0, ∀ z : ℂ, |z.im| ≤ c →
      ‖deriv (fun w ↦ w * coth w) z‖ ≤ C := by
  have h_anal : AnalyticOn ℂ (fun w ↦ deriv (fun z ↦ z * coth z) w)
      (Complex.im ⁻¹' Set.Icc (-c) c) := by
    apply analyticOn_deriv_z_coth_z
    intro w hw; simp only [Set.mem_preimage, Set.mem_Icc] at hw
    simp only [Set.mem_setOf_eq]
    rw [abs_lt]
    constructor <;> linarith [Real.pi_pos]
  have h_limit := tendsto_norm_deriv_z_coth_z_atTop_horizontalStrip c
  obtain ⟨S_tail, hS_tail_mem, hS_tail_bounded⟩ :=
    Metric.exists_isBounded_image_of_tendsto h_limit
  obtain ⟨C_tail, hC_tail⟩ := isBounded_iff_forall_norm_le.mp hS_tail_bounded
  have h_basis := HorizontalStrip.hasBasis_atTop c
  obtain ⟨R, -, hR_subset⟩ := h_basis.mem_iff.mp hS_tail_mem
  let S_core := {z : ℂ | |z.re| ≤ R ∧ |z.im| ≤ c}
  have hS_core_compact : IsCompact S_core := by
    have h_eq : S_core = (fun (x : ℝ × ℝ) ↦ (x.1 + x.2 * I : ℂ)) '' (Set.Icc (-R) R ×ˢ Set.Icc (-c) c) := by
      ext z; simp only [S_core, Set.mem_setOf_eq, Set.mem_image, Set.mem_prod, Set.mem_Icc, Prod.exists, Complex.ext_iff, abs_le]
      constructor
      · intro h; use z.re, z.im; simp; grind
      · rintro ⟨x, y, ⟨hx, hy⟩, h_re, h_im⟩; simp at *; constructor <;> grind
    rw [h_eq]
    apply IsCompact.image
    · exact isCompact_Icc.prod isCompact_Icc
    · fun_prop
  have hS_core_bounded : ∃ C_core, ∀ z ∈ S_core, ‖deriv (fun w ↦ w * coth w) z‖ ≤ C_core := by
    have h_cont : ContinuousOn (fun z ↦ deriv (fun w ↦ w * coth w) z) S_core :=
      h_anal.continuousOn.mono (fun z hz ↦ by
        simp only [S_core, Set.mem_setOf_eq, abs_le] at hz
        simp only [Set.mem_preimage, Set.mem_Icc]; constructor <;> linarith)
    rcases isBounded_iff_forall_norm_le.mp (hS_core_compact.image_of_continuousOn h_cont |>.isBounded) with ⟨C_core, hC_core⟩
    exact ⟨C_core, fun z hz ↦ hC_core _ (Set.mem_image_of_mem _ hz)⟩
  obtain ⟨C_core, hC_core⟩ := hS_core_bounded
  let C := max C_core C_tail
  use max C 1
  constructor; · positivity
  intro z hz
  by_cases! h_case : |z.re| ≤ R
  · exact (hC_core z ⟨h_case, hz⟩).trans ((le_max_left C_core C_tail).trans (le_max_left _ _))
  · have hz_mem : z ∈ S_tail := hR_subset ⟨h_case.le, hz⟩
    have h_norm := hC_tail _ (Set.mem_image_of_mem _ hz_mem)
    rw [Real.norm_eq_abs, abs_of_nonneg (norm_nonneg _)] at h_norm
    exact h_norm.trans ((le_max_right C_core C_tail).trans (le_max_left _ _))


```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/AsymptoticAnalysis/CH2Part1/Variant4f15649f23be32b98ef709f89becf48615a1bf670ff3f775310bc6d9b3f66f4a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/AsymptoticAnalysis/CH2Part1/Variant4f15649f23be32b98ef709f89becf48615a1bf670ff3f775310bc6d9b3f66f4a.lean#L5767).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `fe1ca3fba3ce69f1a74f1c88c8189358b833ea04` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
