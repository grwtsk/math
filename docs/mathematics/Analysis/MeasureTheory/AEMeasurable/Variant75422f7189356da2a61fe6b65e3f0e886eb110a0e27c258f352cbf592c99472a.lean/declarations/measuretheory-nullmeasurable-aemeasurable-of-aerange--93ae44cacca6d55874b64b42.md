# MeasureTheory.NullMeasurable.aemeasurable_of_aerange

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "748bb26d841794b8faf5c856d8e4b8f4c5eaa722",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 403,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/75/75422f7189356da2a61fe6b65e3f0e886eb110a0e27c258f352cbf592c99472a.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:2b55e26f-eba8-718b-fe17-f5ab30859d4a",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:d4eaba45-0b42-8aea-4a29-99ca0f2e64c3",
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
  "slug": "measuretheory-nullmeasurable-aemeasurable-of-aerange--93ae44cacca6d55874b64b42",
  "source": {
    "blob": "748bb26d841794b8faf5c856d8e4b8f4c5eaa722",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 420,
    "line": 403,
    "path": "GRWTSK/Analysis/MeasureTheory/AEMeasurable/Variant75422f7189356da2a61fe6b65e3f0e886eb110a0e27c258f352cbf592c99472a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:93ae44cacca6d55874b64b4279cb529c2d1c90b906e17e57d119ad9c068002b1",
  "verification": {
    "reference": "docs/verification/Analysis/MeasureTheory/AEMeasurable/Variant75422f7189356da2a61fe6b65e3f0e886eb110a0e27c258f352cbf592c99472a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d4eaba45-0b42-8aea-4a29-99ca0f2e64c3`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 403–420.

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

[Verification target and public status](../../../../../../verification/Analysis/MeasureTheory/AEMeasurable/Variant75422f7189356da2a61fe6b65e3f0e886eb110a0e27c258f352cbf592c99472a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/MeasureTheory/AEMeasurable/Variant75422f7189356da2a61fe6b65e3f0e886eb110a0e27c258f352cbf592c99472a.lean#L403).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `748bb26d841794b8faf5c856d8e4b8f4c5eaa722` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
