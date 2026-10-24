# eq_withDensity_rnDeriv

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:0fc14052-fde3-092b-599b-3fcb0905d14e",
  "kind": "theorem",
  "lexical_name": "eq_withDensity_rnDeriv",
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
  "slug": "eq-withdensity-rnderiv--e25abbce901d9a747f68ab40",
  "source": {
    "blob": "8ca321c5b9b5af65d66972a10523cdc7988786c3",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 562,
    "line": 525,
    "path": "GRWTSK/Analysis/MeasureTheory/Lebesgue/Variantdaf85c1d892e051f6a735c9c721bacb7082cfdf335ef94710112b29799c46278.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e25abbce901d9a747f68ab401492e17fb868131e6773c0e782b8a6527b5ece2e",
  "verification": {
    "reference": "docs/verification/Analysis/MeasureTheory/Lebesgue/Variantdaf85c1d892e051f6a735c9c721bacb7082cfdf335ef94710112b29799c46278.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:0fc14052-fde3-092b-599b-3fcb0905d14e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 525–562.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem eq_withDensity_rnDeriv {s : Measure α} {f : α → ℝ≥0∞} (hf : Measurable f) (hs : s ⟂ₘ ν)
    (hadd : μ = s + ν.withDensity f) : ν.withDensity f = ν.withDensity (μ.rnDeriv ν) := by
  have : HaveLebesgueDecomposition μ ν := ⟨⟨⟨s, f⟩, hf, hs, hadd⟩⟩
  obtain ⟨hmeas, hsing, hadd'⟩ := haveLebesgueDecomposition_spec μ ν
  obtain ⟨⟨S, hS₁, hS₂, hS₃⟩, ⟨T, hT₁, hT₂, hT₃⟩⟩ := hs, hsing
  rw [hadd'] at hadd
  have hνinter : ν (S ∩ T)ᶜ = 0 := by
    rw [compl_inter]
    refine nonpos_iff_eq_zero.1 (le_trans (measure_union_le _ _) ?_)
    rw [hT₃, hS₃, add_zero]
  have heq :
    (ν.withDensity f).restrict (S ∩ T) = (ν.withDensity (μ.rnDeriv ν)).restrict (S ∩ T) := by
    ext1 A hA
    have hs : s (A ∩ (S ∩ T)) = 0 := by
      rw [← nonpos_iff_eq_zero]
      exact hS₂ ▸ measure_mono (inter_subset_right.trans inter_subset_left)
    have hsing : μ.singularPart ν (A ∩ (S ∩ T)) = 0 := by
      rw [← nonpos_iff_eq_zero]
      exact hT₂ ▸ measure_mono (inter_subset_right.trans inter_subset_right)
    rw [restrict_apply hA, restrict_apply hA, ← add_zero (ν.withDensity f (A ∩ (S ∩ T))), ← hs, ←
      add_apply, add_comm, ← hadd, add_apply, hsing, zero_add]
  have heq' :
    ∀ A : Set α, MeasurableSet A → ν.withDensity f A = (ν.withDensity f).restrict (S ∩ T) A := by
    intro A hA
    have hνfinter : ν.withDensity f (A ∩ (S ∩ T)ᶜ) = 0 := by
      rw [← nonpos_iff_eq_zero]
      exact withDensity_absolutelyContinuous ν f hνinter ▸ measure_mono inter_subset_right
    rw [restrict_apply hA, ← add_zero (ν.withDensity f (A ∩ (S ∩ T))), ← hνfinter, ← diff_eq,
      measure_inter_add_diff _ (hS₁.inter hT₁)]
  ext1 A hA
  have hνrn : ν.withDensity (μ.rnDeriv ν) (A ∩ (S ∩ T)ᶜ) = 0 := by
    rw [← nonpos_iff_eq_zero]
    exact
      withDensity_absolutelyContinuous ν (μ.rnDeriv ν) hνinter ▸
        measure_mono inter_subset_right
  rw [heq' A hA, heq, ← add_zero ((ν.withDensity (μ.rnDeriv ν)).restrict (S ∩ T) A), ← hνrn,
    restrict_apply hA, ← diff_eq, measure_inter_add_diff _ (hS₁.inter hT₁)]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/MeasureTheory/Lebesgue/Variantdaf85c1d892e051f6a735c9c721bacb7082cfdf335ef94710112b29799c46278.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/MeasureTheory/Lebesgue/Variantdaf85c1d892e051f6a735c9c721bacb7082cfdf335ef94710112b29799c46278.lean#L525).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8ca321c5b9b5af65d66972a10523cdc7988786c3` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
