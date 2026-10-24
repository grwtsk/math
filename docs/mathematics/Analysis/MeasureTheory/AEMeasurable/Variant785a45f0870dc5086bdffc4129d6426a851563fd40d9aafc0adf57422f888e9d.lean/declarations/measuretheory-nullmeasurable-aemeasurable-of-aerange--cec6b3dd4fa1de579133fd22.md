# MeasureTheory.NullMeasurable.aemeasurable_of_aerange

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:cb4c64b4-82f9-57cd-a339-b4e547b572f4",
  "kind": "lemma",
  "lexical_name": "MeasureTheory.NullMeasurable.aemeasurable_of_aerange",
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
  "slug": "measuretheory-nullmeasurable-aemeasurable-of-aerange--cec6b3dd4fa1de579133fd22",
  "source": {
    "blob": "46d74f74a00b9241d19a76deea1fe1efdfeff99a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 430,
    "line": 413,
    "path": "GRWTSK/Analysis/MeasureTheory/AEMeasurable/Variant785a45f0870dc5086bdffc4129d6426a851563fd40d9aafc0adf57422f888e9d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:cec6b3dd4fa1de579133fd2215b630c19eedb0e3fad8e39bfd914e50af39645a",
  "verification": {
    "reference": "docs/verification/Analysis/MeasureTheory/AEMeasurable/Variant785a45f0870dc5086bdffc4129d6426a851563fd40d9aafc0adf57422f888e9d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:cb4c64b4-82f9-57cd-a339-b4e547b572f4`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 413–430.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma MeasureTheory.NullMeasurable.aemeasurable_of_aerange {f : α → β} {t : Set β}
    [MeasurableSpace.CountablyGenerated t] (h : NullMeasurable f μ) (hft : ∀ᵐ x ∂μ, f x ∈ t) :
    AEMeasurable f μ := by
  rcases eq_empty_or_nonempty t with rfl | hne
  · obtain rfl : μ = 0 := by simpa using hft
    apply aemeasurable_zero_measure
  · rw [← μ.ae_completion] at hft
    obtain ⟨f', hf'm, hf't, hff'⟩ :
        ∃ f' : α → β, NullMeasurable f' μ ∧ range f' ⊆ t ∧ f =ᵐ[μ] f' :=
      h.measurable'.aemeasurable.exists_ae_eq_range_subset hft hne
    rw [range_subset_iff] at hf't
    lift f' to α → t using hf't
    replace hf'm : NullMeasurable f' μ := hf'm.measurable'.subtype_mk
    exact (measurable_subtype_coe.comp_aemeasurable hf'm.aemeasurable).congr hff'.symm

namespace MeasureTheory
namespace Measure

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/MeasureTheory/AEMeasurable/Variant785a45f0870dc5086bdffc4129d6426a851563fd40d9aafc0adf57422f888e9d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/MeasureTheory/AEMeasurable/Variant785a45f0870dc5086bdffc4129d6426a851563fd40d9aafc0adf57422f888e9d.lean#L413).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `46d74f74a00b9241d19a76deea1fe1efdfeff99a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
