# NullMeasurable.measure_preimage_eq_measure_restrict_preimage_of_ae_compl_eq_const

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:75e61e3e-f828-61d3-eaca-5d1125a37023",
  "kind": "lemma",
  "lexical_name": "NullMeasurable.measure_preimage_eq_measure_restrict_preimage_of_ae_compl_eq_const",
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
  "slug": "nullmeasurable-measure-preimage-eq-measure-restrict-preimage-of-ae-compl--c02807a30d2d1fe53c6d15e7",
  "source": {
    "blob": "586739976534ccc489a1d290abd95e1bf6a55e78",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 757,
    "line": 742,
    "path": "GRWTSK/Analysis/MeasureTheory/Restrict/Variantf527d404cfe2d9202a7b1a919d998452ece3f0885868d3ba91db1f567cf48c3c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c02807a30d2d1fe53c6d15e750424d88c93f3373d98f602e8317b598c2879bc3",
  "verification": {
    "reference": "docs/verification/Analysis/MeasureTheory/Restrict/Variantf527d404cfe2d9202a7b1a919d998452ece3f0885868d3ba91db1f567cf48c3c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:75e61e3e-f828-61d3-eaca-5d1125a37023`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 742–757.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma NullMeasurable.measure_preimage_eq_measure_restrict_preimage_of_ae_compl_eq_const
    {β : Type*} [MeasurableSpace β] {b : β} {f : α → β} {s : Set α}
    (f_mble : NullMeasurable f (μ.restrict s)) (hs : f =ᵐ[Measure.restrict μ sᶜ] (fun _ ↦ b))
    {t : Set β} (t_mble : MeasurableSet t) (ht : b ∉ t) :
    μ (f ⁻¹' t) = μ.restrict s (f ⁻¹' t) := by
  rw [Measure.restrict_apply₀ (f_mble t_mble)]
  rw [EventuallyEq, ae_iff, Measure.restrict_apply₀] at hs
  · apply le_antisymm _ (measure_mono inter_subset_left)
    apply (measure_mono (Eq.symm (inter_union_compl (f ⁻¹' t) s)).le).trans
    apply (measure_union_le _ _).trans
    suffices μ ((f ⁻¹' t) ∩ sᶜ) = 0 by simp [this]
    rw [← nonpos_iff_eq_zero, ← hs]
    gcongr
    exact fun x hx hfx ↦ ht (hfx ▸ hx)
  · exact NullMeasurableSet.of_null hs

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/MeasureTheory/Restrict/Variantf527d404cfe2d9202a7b1a919d998452ece3f0885868d3ba91db1f567cf48c3c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/MeasureTheory/Restrict/Variantf527d404cfe2d9202a7b1a919d998452ece3f0885868d3ba91db1f567cf48c3c.lean#L742).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `586739976534ccc489a1d290abd95e1bf6a55e78` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
