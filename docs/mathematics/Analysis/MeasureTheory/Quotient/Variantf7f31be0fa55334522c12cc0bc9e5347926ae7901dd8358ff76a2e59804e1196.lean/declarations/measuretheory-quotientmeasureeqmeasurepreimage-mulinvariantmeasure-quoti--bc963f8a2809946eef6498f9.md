# MeasureTheory.QuotientMeasureEqMeasurePreimage.mulInvariantMeasure_quotient

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "b71e0a3f773b720ae422a48d3a93e44211f79906",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 129,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/f7/f7f31be0fa55334522c12cc0bc9e5347926ae7901dd8358ff76a2e59804e1196.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:d950315f-7e11-fdc8-ebe9-02b60124f9d5",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:ba03ba06-442e-f2f1-5040-02711ed99d2c",
  "kind": "lemma",
  "lexical_name": "MeasureTheory.QuotientMeasureEqMeasurePreimage.mulInvariantMeasure_quotient",
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
  "slug": "measuretheory-quotientmeasureeqmeasurepreimage-mulinvariantmeasure-quoti--bc963f8a2809946eef6498f9",
  "source": {
    "blob": "b71e0a3f773b720ae422a48d3a93e44211f79906",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 155,
    "line": 129,
    "path": "GRWTSK/Analysis/MeasureTheory/Quotient/Variantf7f31be0fa55334522c12cc0bc9e5347926ae7901dd8358ff76a2e59804e1196.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:bc963f8a2809946eef6498f988e33b98cfceba9b0b45c8a3bb5fc8e40ea64c02",
  "verification": {
    "reference": "docs/verification/Analysis/MeasureTheory/Quotient/Variantf7f31be0fa55334522c12cc0bc9e5347926ae7901dd8358ff76a2e59804e1196.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ba03ba06-442e-f2f1-5040-02711ed99d2c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 129–155.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma MeasureTheory.QuotientMeasureEqMeasurePreimage.mulInvariantMeasure_quotient
    [hasFun : HasFundamentalDomain Γ.op G ν] [QuotientMeasureEqMeasurePreimage ν μ] :
    μ.IsMulLeftInvariant where
  map_mul_left_eq_self x := by
    ext A hA
    obtain ⟨x₁, h⟩ := @Quotient.exists_rep _ (QuotientGroup.leftRel Γ) x
    convert measure_preimage_smul μ x₁ A using 1
    · rw [← h, Measure.map_apply (measurable_const_mul _) hA]
      simp [← MulAction.Quotient.coe_smul_out, ← Quotient.mk''_eq_mk]
    exact smulInvariantMeasure_quotient ν

variable [Countable Γ] [IsMulRightInvariant ν] [SigmaFinite ν]
  [IsMulLeftInvariant μ] [SigmaFinite μ]

local notation "π" => @QuotientGroup.mk G _ Γ

/-- Assume that a measure `μ` is `IsMulLeftInvariant`, that the action of `Γ` on `G` has a
measurable fundamental domain `s` with positive finite volume, and that there is a single measurable
set `V ⊆ G ⧸ Γ` along which the pullback of `μ` and `ν` agree (so the scaling is right). Then
`μ` satisfies `QuotientMeasureEqMeasurePreimage`. The main tool of the proof is the uniqueness of
left invariant measures, if normalized by a single positive finite-measured set. -/
@[to_additive
"Assume that a measure `μ` is `IsAddLeftInvariant`, that the action of `Γ` on `G` has a
measurable fundamental domain `s` with positive finite volume, and that there is a single measurable
set `V ⊆ G ⧸ Γ` along which the pullback of `μ` and `ν` agree (so the scaling is right). Then
`μ` satisfies `AddQuotientMeasureEqMeasurePreimage`. The main tool of the proof is the uniqueness of
left invariant measures, if normalized by a single positive finite-measured set."]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/MeasureTheory/Quotient/Variantf7f31be0fa55334522c12cc0bc9e5347926ae7901dd8358ff76a2e59804e1196.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/MeasureTheory/Quotient/Variantf7f31be0fa55334522c12cc0bc9e5347926ae7901dd8358ff76a2e59804e1196.lean#L129).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b71e0a3f773b720ae422a48d3a93e44211f79906` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
