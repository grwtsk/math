# exists_ae_eq_range_subset

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:77b4eca8-53b3-2a0c-3fff-6de8d4d15780",
  "kind": "theorem",
  "lexical_name": "exists_ae_eq_range_subset",
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
  "slug": "exists-ae-eq-range-subset--0ba77d0d16cf5672486cf438",
  "source": {
    "blob": "46d74f74a00b9241d19a76deea1fe1efdfeff99a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 224,
    "line": 200,
    "path": "GRWTSK/Analysis/MeasureTheory/AEMeasurable/Variant785a45f0870dc5086bdffc4129d6426a851563fd40d9aafc0adf57422f888e9d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:0ba77d0d16cf5672486cf4389447eb505bc7c0de21d0c49ad4b15225a2ebdd32",
  "verification": {
    "reference": "docs/verification/Analysis/MeasureTheory/AEMeasurable/Variant785a45f0870dc5086bdffc4129d6426a851563fd40d9aafc0adf57422f888e9d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:77b4eca8-53b3-2a0c-3fff-6de8d4d15780`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 200–224.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem exists_ae_eq_range_subset (H : AEMeasurable f μ) {t : Set β} (ht : ∀ᵐ x ∂μ, f x ∈ t)
    (h₀ : t.Nonempty) : ∃ g, Measurable g ∧ range g ⊆ t ∧ f =ᵐ[μ] g := by
  classical
  let s : Set α := toMeasurable μ { x | f x = H.mk f x ∧ f x ∈ t }ᶜ
  let g : α → β := piecewise s (fun _ => h₀.some) (H.mk f)
  refine ⟨g, ?_, ?_, ?_⟩
  · exact Measurable.piecewise (measurableSet_toMeasurable _ _) measurable_const H.measurable_mk
  · rintro _ ⟨x, rfl⟩
    by_cases hx : x ∈ s
    · simpa [g, hx] using h₀.some_mem
    · simp only [g, hx, piecewise_eq_of_notMem, not_false_iff]
      contrapose hx
      apply subset_toMeasurable
      simp +contextual only [hx, mem_compl_iff, mem_ofPred_eq, not_and,
        not_false_iff, imp_true_iff]
  · have A : μ (toMeasurable μ { x | f x = H.mk f x ∧ f x ∈ t }ᶜ) = 0 := by
      rw [measure_toMeasurable, ← compl_mem_ae_iff, compl_compl]
      exact H.ae_eq_mk.and ht
    filter_upwards [compl_mem_ae_iff.2 A] with x hx
    rw [mem_compl_iff] at hx
    simp only [s, g, hx, piecewise_eq_of_notMem, not_false_iff]
    contrapose! hx
    apply subset_toMeasurable
    simp only [hx, mem_compl_iff, mem_ofPred_eq, false_and, not_false_iff]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/MeasureTheory/AEMeasurable/Variant785a45f0870dc5086bdffc4129d6426a851563fd40d9aafc0adf57422f888e9d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/MeasureTheory/AEMeasurable/Variant785a45f0870dc5086bdffc4129d6426a851563fd40d9aafc0adf57422f888e9d.lean#L200).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `46d74f74a00b9241d19a76deea1fe1efdfeff99a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
