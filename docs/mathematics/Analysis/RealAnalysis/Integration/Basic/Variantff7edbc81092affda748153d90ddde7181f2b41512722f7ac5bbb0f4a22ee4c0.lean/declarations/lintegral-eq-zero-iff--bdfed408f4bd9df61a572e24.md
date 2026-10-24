# lintegral_eq_zero_iff'

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:74160f35-0540-2a55-d6b0-dd78cf0d1bae",
  "kind": "theorem",
  "lexical_name": "lintegral_eq_zero_iff'",
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
  "slug": "lintegral-eq-zero-iff--bdfed408f4bd9df61a572e24",
  "source": {
    "blob": "1ef2adeef745c829d65e8d3f90e5e3220c6fa863",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 310,
    "line": 285,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/Basic/Variantff7edbc81092affda748153d90ddde7181f2b41512722f7ac5bbb0f4a22ee4c0.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:bdfed408f4bd9df61a572e24324fddbaba23903d9ed2c4f010bc04f60dbd5163",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/Basic/Variantff7edbc81092affda748153d90ddde7181f2b41512722f7ac5bbb0f4a22ee4c0.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:74160f35-0540-2a55-d6b0-dd78cf0d1bae`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 285–310.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem lintegral_eq_zero_iff' {f : α → ℝ≥0∞} (hf : AEMeasurable f μ) :
    ∫⁻ a, f a ∂μ = 0 ↔ f =ᵐ[μ] 0 := by
  -- The proof implicitly uses Markov's inequality,
  -- but it has been inlined for the sake of imports
  refine ⟨fun h ↦ ?_, fun h ↦ (lintegral_congr_ae h).trans lintegral_zero⟩
  have meas_levels_0 : ∀ ε > 0, μ { x | ε ≤ f x } = 0 := fun ε εpos ↦ by
    by_contra! h'; rw [← zero_lt_iff] at h'
    refine ((mul_pos_iff.mpr ⟨εpos, h'⟩).trans_le ?_).ne' h
    calc
      _ ≥ ∫⁻ a in {x | ε ≤ f x}, f a ∂μ := setLIntegral_le_lintegral _ _
      _ ≥ ∫⁻ _ in {x | ε ≤ f x}, ε ∂μ :=
        setLIntegral_mono_ae hf.restrict (ae_of_all μ fun _ ↦ id)
      _ = _ := setLIntegral_const _ _
  obtain ⟨u, -, bu, tu⟩ := exists_seq_strictAnti_tendsto' (α := ℝ≥0∞) zero_lt_one
  have u_union : {x | f x ≠ 0} = ⋃ n, {x | u n ≤ f x} := by
    ext x; rw [mem_iUnion, mem_setOf_eq, ← zero_lt_iff]
    rw [ENNReal.tendsto_atTop_zero] at tu
    constructor <;> intro h'
    · obtain ⟨n, hn⟩ := tu _ h'; use n, hn _ le_rfl
    · obtain ⟨n, hn⟩ := h'; exact (bu n).1.trans_le hn
  have res := measure_iUnion_null_iff.mpr fun n ↦ meas_levels_0 _ (bu n).1
  rwa [← u_union] at res

/-- The measurability assumption is necessary, otherwise there are counterexamples: for instance,
the conclusion fails if `f` is the characteristic function of a Vitali set. -/
@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/Basic/Variantff7edbc81092affda748153d90ddde7181f2b41512722f7ac5bbb0f4a22ee4c0.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/Basic/Variantff7edbc81092affda748153d90ddde7181f2b41512722f7ac5bbb0f4a22ee4c0.lean#L285).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1ef2adeef745c829d65e8d3f90e5e3220c6fa863` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
