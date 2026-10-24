# IsFundamentalDomain.QuotientMeasureEqMeasurePreimage_smulHaarMeasure

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
      "line": 293,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/f7/f7f31be0fa55334522c12cc0bc9e5347926ae7901dd8358ff76a2e59804e1196.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:c7aeae35-6c63-9e14-f228-cee1d2f1dc10",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:b1905a04-2593-7065-c81e-efa45a72210f",
  "kind": "theorem",
  "lexical_name": "IsFundamentalDomain.QuotientMeasureEqMeasurePreimage_smulHaarMeasure",
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
  "slug": "isfundamentaldomain-quotientmeasureeqmeasurepreimage-smulhaarmeasure--7cb4dbd2fc84af79cfeec2d5",
  "source": {
    "blob": "b71e0a3f773b720ae422a48d3a93e44211f79906",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 338,
    "line": 293,
    "path": "GRWTSK/Analysis/MeasureTheory/Quotient/Variantf7f31be0fa55334522c12cc0bc9e5347926ae7901dd8358ff76a2e59804e1196.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:7cb4dbd2fc84af79cfeec2d51e0acecb1ed60580f24787f7a2e0e26b172a2d4f",
  "verification": {
    "reference": "docs/verification/Analysis/MeasureTheory/Quotient/Variantf7f31be0fa55334522c12cc0bc9e5347926ae7901dd8358ff76a2e59804e1196.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b1905a04-2593-7065-c81e-efa45a72210f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 293–338.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem IsFundamentalDomain.QuotientMeasureEqMeasurePreimage_smulHaarMeasure {𝓕 : Set G}
    (h𝓕 : IsFundamentalDomain Γ.op 𝓕 ν) (h𝓕_finite : ν 𝓕 ≠ ⊤) :
    QuotientMeasureEqMeasurePreimage ν
      ((ν ((π ⁻¹' (K : Set (G ⧸ Γ))) ∩ 𝓕)) • haarMeasure K) := by
  set c := ν ((π ⁻¹' (K : Set (G ⧸ Γ))) ∩ 𝓕)
  have c_ne_top : c ≠ ∞ := by
    contrapose! h𝓕_finite
    have : c ≤ ν 𝓕 := measure_mono (Set.inter_subset_right)
    rw [h𝓕_finite] at this
    exact top_unique this
  set μ := c • haarMeasure K
  have hμK : μ K = c := by simp [μ, haarMeasure_self]
  haveI : SigmaFinite μ := by
    clear_value c
    lift c to NNReal using c_ne_top
    exact SMul.sigmaFinite c
  apply IsFundamentalDomain.QuotientMeasureEqMeasurePreimage_HaarMeasure (h𝓕 := h𝓕)
    (meas_V := K.isCompact.measurableSet) (μ := μ)
  · exact K.interior_nonempty
  · exact hμK
  · rw [hμK]
    exact c_ne_top

end haarMeasure

end normal

section UnfoldingTrick

variable {G : Type*} [Group G] [MeasurableSpace G] [TopologicalSpace G] [IsTopologicalGroup G]
  [BorelSpace G] {μ : Measure G} {Γ : Subgroup G}

variable {𝓕 : Set G} (h𝓕 : IsFundamentalDomain Γ.op 𝓕 μ)
include h𝓕

variable [Countable Γ] [MeasurableSpace (G ⧸ Γ)] [BorelSpace (G ⧸ Γ)]

local notation "μ_𝓕" => Measure.map (@QuotientGroup.mk G _ Γ) (μ.restrict 𝓕)

/-- The `essSup` of a function `g` on the quotient space `G ⧸ Γ` with respect to the pushforward
  of the restriction, `μ_𝓕`, of a right-invariant measure `μ` to a fundamental domain `𝓕`, is the
  same as the `essSup` of `g`'s lift to the universal cover `G` with respect to `μ`. -/
@[to_additive "The `essSup` of a function `g` on the additive quotient space `G ⧸ Γ` with respect
  to the pushforward of the restriction, `μ_𝓕`, of a right-invariant measure `μ` to a fundamental
  domain `𝓕`, is the same as the `essSup` of `g`'s lift to the universal cover `G` with respect
  to `μ`."]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/MeasureTheory/Quotient/Variantf7f31be0fa55334522c12cc0bc9e5347926ae7901dd8358ff76a2e59804e1196.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/MeasureTheory/Quotient/Variantf7f31be0fa55334522c12cc0bc9e5347926ae7901dd8358ff76a2e59804e1196.lean#L293).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b71e0a3f773b720ae422a48d3a93e44211f79906` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
