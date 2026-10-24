# deriv_z_coth_z_growth_bound_half_pi

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:6f582119-0b22-4940-2f46-b5388aed975b",
  "kind": "lemma",
  "lexical_name": "deriv_z_coth_z_growth_bound_half_pi",
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
  "slug": "deriv-z-coth-z-growth-bound-half-pi--98765b71f95bbe0b8c76333e",
  "source": {
    "blob": "4730827a7084551f7643dc7ab62b8d647252630c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 6064,
    "line": 6036,
    "path": "GRWTSK/Analysis/ComplexAnalysis/CH2Part1/Variant47d05801f669d2ef417f912340c49ea9ce7f627b87d8f49f0b5002fac1f3e7f7.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:98765b71f95bbe0b8c76333e88a0b2948d61cf221585a62a0bd67cfb03f74fcd",
  "verification": {
    "reference": "docs/verification/Analysis/ComplexAnalysis/CH2Part1/Variant47d05801f669d2ef417f912340c49ea9ce7f627b87d8f49f0b5002fac1f3e7f7.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:6f582119-0b22-4940-2f46-b5388aed975b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 6036–6064.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private lemma deriv_z_coth_z_growth_bound_half_pi :
    ∃ c < π / (π / 2 - -(π / 2)), ∃ B,
      Asymptotics.IsBigO (Filter.comap (abs ∘ re) Filter.atTop ⊓ Filter.principal (im ⁻¹' Set.Ioo (-(π / 2)) (π / 2)))
        (fun z ↦ deriv (fun w ↦ w * coth w) z / z) (fun z ↦ rexp (B * rexp (c * |z.re|))) := by
  use 1 / 2
  constructor; · field_simp; linarith [Real.pi_pos]
  obtain ⟨C, hC_pos, hC⟩ := HorizontalStrip.exists_norm_deriv_z_coth_z_le (π / 2) (by linarith [Real.pi_pos])
  use 1
  apply Asymptotics.IsBigO.of_bound C
  let F_closed := Filter.comap (abs ∘ re) Filter.atTop ⊓ Filter.principal (im ⁻¹' Set.Icc (-(π / 2)) (π / 2))
  let F_open := Filter.comap (abs ∘ re) Filter.atTop ⊓ Filter.principal (im ⁻¹' Set.Ioo (-(π / 2)) (π / 2))
  apply Filter.Eventually.filter_mono
  · apply inf_le_inf_left
    exact Filter.principal_mono.mpr (Set.preimage_mono Set.Ioo_subset_Icc_self)
  · have h_basis := HorizontalStrip.hasBasis_atTop (π / 2)
    refine h_basis.eventually_iff.mpr ⟨1, True.intro, fun z hz ↦ ?_⟩
    simp only [Set.mem_setOf_eq] at hz
    have h_norm_z : 1 ≤ ‖z‖ := (Complex.abs_re_le_norm z).trans' hz.1
    have h_fz_le : ‖deriv (fun w ↦ w * coth w) z‖ ≤ C := by
      apply hC; rw [abs_le]; exact abs_le.mp hz.2
    rw [norm_div, Real.norm_eq_abs, abs_of_pos (Real.exp_pos _)]
    have h_nz : ‖z‖ ≠ 0 := by linarith
    calc ‖deriv (fun w ↦ w * coth w) z‖ / ‖z‖
        ≤ C / ‖z‖ := by gcongr
      _ ≤ C     := div_le_self hC_pos.le h_norm_z
      _ ≤ C * rexp (1 * rexp (1 / 2 * |z.re|)) :=
          le_mul_of_one_le_right hC_pos.le
            (Real.one_le_exp_iff.mpr (mul_nonneg (by norm_num) (Real.exp_pos _ |>.le)))

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/ComplexAnalysis/CH2Part1/Variant47d05801f669d2ef417f912340c49ea9ce7f627b87d8f49f0b5002fac1f3e7f7.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/ComplexAnalysis/CH2Part1/Variant47d05801f669d2ef417f912340c49ea9ce7f627b87d8f49f0b5002fac1f3e7f7.lean#L6036).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4730827a7084551f7643dc7ab62b8d647252630c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
