# iCondIndepFun_iff_condExp_inter_preimage_eq_mul

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:8aaccd39-82a9-3fe0-6f7a-c5f513e6657f",
  "kind": "theorem",
  "lexical_name": "iCondIndepFun_iff_condExp_inter_preimage_eq_mul",
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
  "slug": "icondindepfun-iff-condexp-inter-preimage-eq-mul--e9da9cfb255caef28816fec3",
  "source": {
    "blob": "bba1f952f5c27b2c95bc2c9689fae0e7ad2ff3fd",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 690,
    "line": 665,
    "path": "GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Independence/Conditional/Variantb947ad24b08f51698986c4ec9787127d943d3deca28a7c238ddb102428d98cce.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e9da9cfb255caef28816fec3cb229ae01f4fc4f7a21ed649951fc57ff55dde00",
  "verification": {
    "reference": "docs/verification/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Independence/Conditional/Variantb947ad24b08f51698986c4ec9787127d943d3deca28a7c238ddb102428d98cce.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:8aaccd39-82a9-3fe0-6f7a-c5f513e6657f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 665–690.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem iCondIndepFun_iff_condExp_inter_preimage_eq_mul {β : ι → Type*}
    (m : ∀ x, MeasurableSpace (β x)) (f : ∀ i, Ω → β i) (hf : ∀ i, Measurable (f i)) :
    iCondIndepFun m' hm' f μ ↔
      ∀ (S : Finset ι) {sets : ∀ i : ι, Set (β i)} (_H : ∀ i, i ∈ S → MeasurableSet[m i] (sets i)),
        (μ⟦⋂ i ∈ S, f i ⁻¹' sets i| m'⟧) =ᵐ[μ] ∏ i ∈ S, (μ⟦f i ⁻¹' sets i | m'⟧) := by
  rw [iCondIndepFun_iff]
  swap
  · exact hf
  refine ⟨fun h s sets h_sets ↦ ?_, fun h s sets h_sets ↦ ?_⟩
  · refine h s (g := fun i ↦ f i ⁻¹' (sets i)) (fun i hi ↦ ?_)
    exact ⟨sets i, h_sets i hi, rfl⟩
  · classical
    let g := fun i ↦ if hi : i ∈ s then (h_sets i hi).choose else Set.univ
    specialize h s (sets := g) (fun i hi ↦ ?_)
    · simp only [g, dif_pos hi]
      exact (h_sets i hi).choose_spec.1
    · have hg : ∀ i ∈ s, sets i = f i ⁻¹' g i := by
        intro i hi
        rw [(h_sets i hi).choose_spec.2.symm]
        simp only [g, dif_pos hi]
      convert h with i hi i hi <;> exact hg i hi

@[deprecated (since := "2025-01-21")]
alias iCondIndepFun_iff_condexp_inter_preimage_eq_mul :=
  iCondIndepFun_iff_condExp_inter_preimage_eq_mul

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../verification/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Independence/Conditional/Variantb947ad24b08f51698986c4ec9787127d943d3deca28a7c238ddb102428d98cce.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Independence/Conditional/Variantb947ad24b08f51698986c4ec9787127d943d3deca28a7c238ddb102428d98cce.lean#L665).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `bba1f952f5c27b2c95bc2c9689fae0e7ad2ff3fd` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
