# variation_vectorMeasure_Iio

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:5ad06d74-4eb8-5035-cc91-90786fe25782",
  "kind": "lemma",
  "lexical_name": "variation_vectorMeasure_Iio",
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
  "slug": "variation-vectormeasure-iio--f89dde0fec82419529a14d58",
  "source": {
    "blob": "ca3053ee83217a2ddf45a8ce3807e402b754acdf",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 524,
    "line": 492,
    "path": "GRWTSK/Analysis/MeasureTheory/BoundedVariation/Variant9ad6f46c14c8669cd86f90af9f36c86a99e228fe24c608f052fdb42f2a26036e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f89dde0fec82419529a14d58932f4d118286a653838ce4a7b0146ecb43aec58e",
  "verification": {
    "reference": "docs/verification/Analysis/MeasureTheory/BoundedVariation/Variant9ad6f46c14c8669cd86f90af9f36c86a99e228fe24c608f052fdb42f2a26036e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:5ad06d74-4eb8-5035-cc91-90786fe25782`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 492–524.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma variation_vectorMeasure_Iio (hf : BoundedVariationOn f univ) {a : α} :
    hf.vectorMeasure.variation (Iio a) = eVariationOn f.leftLim (Iio a) := by
  by_cases hb : ∃ (b : α), IsBot b
  · rcases hb with ⟨b, hb⟩
    rw [show Iio a = Ico b a by grind [IsBot], variation_vectorMeasure_Ico]
  apply le_antisymm
  · have : Nonempty α := ⟨a⟩
    obtain ⟨u, u_mono, hu⟩ : ∃ u, Antitone u ∧ Tendsto u atTop atBot :=
      Filter.exists_seq_antitone_tendsto_atTop_atBot α
    have A : Tendsto (fun n ↦ hf.vectorMeasure.variation (Ico (u n) a)) atTop
        (𝓝 (hf.vectorMeasure.variation (Iio a))) := by
      have : Iio a = ⋃ n, Ico (u n) a := by
        apply le_antisymm ?_ (by simp [Ico_subset_Iio_self])
        intro x (hx : x < a)
        simpa [hx] using (hu.eventually (Iic_mem_atBot x)).exists
      rw [this]
      exact tendsto_measure_iUnion_atTop (fun i j hij x hx ↦ by grind [Antitone])
    apply le_of_tendsto A
    filter_upwards with n
    grw [variation_vectorMeasure_Ico, eVariationOn.mono]
    grind
  · simp only [eVariationOn, iSup_le_iff, Prod.forall, Subtype.forall, mem_Iio, and_imp]
    intro n u u_mono hu
    obtain ⟨b, hb⟩ : ∃ b, b < u 0 := by
      simp only [IsBot, not_exists, not_forall, not_le] at hb
      exact hb (u 0)
    apply (eVariationOn.sum_le_of_monotoneOn_Iic (s := Ioo b a) (u_mono.monotoneOn _) ?_).trans
    · rw [← variation_vectorMeasure_Ioo_left hf]
      exact measure_mono Ioo_subset_Iio_self
    · intro i hi
      have : u 0 ≤ u i := u_mono (Nat.zero_le i)
      grind [Monotone]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/MeasureTheory/BoundedVariation/Variant9ad6f46c14c8669cd86f90af9f36c86a99e228fe24c608f052fdb42f2a26036e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/MeasureTheory/BoundedVariation/Variant9ad6f46c14c8669cd86f90af9f36c86a99e228fe24c608f052fdb42f2a26036e.lean#L492).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ca3053ee83217a2ddf45a8ce3807e402b754acdf` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
