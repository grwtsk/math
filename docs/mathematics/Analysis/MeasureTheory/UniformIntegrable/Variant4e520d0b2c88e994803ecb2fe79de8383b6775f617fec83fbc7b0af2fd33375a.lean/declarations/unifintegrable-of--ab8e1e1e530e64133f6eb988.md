# unifIntegrable_of

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:2c190948-d101-762b-8d0f-00df56231264",
  "kind": "theorem",
  "lexical_name": "unifIntegrable_of",
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
  "slug": "unifintegrable-of--ab8e1e1e530e64133f6eb988",
  "source": {
    "blob": "05b804ec4266a0f0d4d53338a30fb2ad9bf4cac9",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 749,
    "line": 708,
    "path": "GRWTSK/Analysis/MeasureTheory/UniformIntegrable/Variant4e520d0b2c88e994803ecb2fe79de8383b6775f617fec83fbc7b0af2fd33375a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ab8e1e1e530e64133f6eb988ad29fd0a6eb4dc5adac0ff6944321c3b0e85951b",
  "verification": {
    "reference": "docs/verification/Analysis/MeasureTheory/UniformIntegrable/Variant4e520d0b2c88e994803ecb2fe79de8383b6775f617fec83fbc7b0af2fd33375a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:2c190948-d101-762b-8d0f-00df56231264`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 708–749.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem unifIntegrable_of (hp : 1 ≤ p) (hp' : p ≠ ∞) {f : ι → α → β}
    (hf : ∀ i, AEStronglyMeasurable (f i) μ)
    (h : ∀ ε : ℝ, 0 < ε → ∃ C : ℝ≥0,
      ∀ i, snorm ({ x | C ≤ ‖f i x‖₊ }.indicator (f i)) p μ ≤ ENNReal.ofReal ε) :
    UnifIntegrable f p μ := by
  set g : ι → α → β := fun i => (hf i).choose
  refine'
    (unifIntegrable_of' μ hp hp' (fun i => (Exists.choose_spec <| hf i).1) fun ε hε => _).ae_eq
      fun i => (Exists.choose_spec <| hf i).2.symm
  obtain ⟨C, hC⟩ := h ε hε
  have hCg : ∀ i, snorm ({ x | C ≤ ‖g i x‖₊ }.indicator (g i)) p μ ≤ ENNReal.ofReal ε := by
    intro i
    refine' le_trans (le_of_eq <| snorm_congr_ae _) (hC i)
    filter_upwards [(Exists.choose_spec <| hf i).2] with x hx
    by_cases hfx : x ∈ { x | C ≤ ‖f i x‖₊ }
    · rw [Set.indicator_of_mem hfx, Set.indicator_of_mem, hx]
      rwa [Set.mem_setOf, hx] at hfx
    · rw [Set.indicator_of_not_mem hfx, Set.indicator_of_not_mem]
      rwa [Set.mem_setOf, hx] at hfx
  refine' ⟨max C 1, lt_max_of_lt_right one_pos, fun i => le_trans (snorm_mono fun x => _) (hCg i)⟩
  rw [norm_indicator_eq_indicator_norm, norm_indicator_eq_indicator_norm]
  exact Set.indicator_le_indicator_of_subset
    (fun x hx => Set.mem_setOf_eq ▸ le_trans (le_max_left _ _) hx) (fun _ => norm_nonneg _) _
#align measure_theory.unif_integrable_of MeasureTheory.unifIntegrable_of

end UnifIntegrable

section UniformIntegrable

/-! `UniformIntegrable`

In probability theory, uniform integrability normally refers to the condition that a sequence
of function `(fₙ)` satisfies for all `ε > 0`, there exists some `C ≥ 0` such that
`∫ x in {|fₙ| ≥ C}, fₙ x ∂μ ≤ ε` for all `n`.

In this section, we will develop some API for `UniformIntegrable` and prove that
`UniformIntegrable` is equivalent to this definition of uniform integrability.
-/


variable {p : ℝ≥0∞} {f : ι → α → β}

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/MeasureTheory/UniformIntegrable/Variant4e520d0b2c88e994803ecb2fe79de8383b6775f617fec83fbc7b0af2fd33375a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/MeasureTheory/UniformIntegrable/Variant4e520d0b2c88e994803ecb2fe79de8383b6775f617fec83fbc7b0af2fd33375a.lean#L708).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `05b804ec4266a0f0d4d53338a30fb2ad9bf4cac9` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
